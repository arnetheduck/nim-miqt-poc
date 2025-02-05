package main

import (
	"C"
	"fmt"
	"path"
	"sort"
	"strings"
)

type nimFileState struct {
	stdImports         map[string]struct{}
	preImports         map[string]struct{}
	imports            map[string]struct{}
	currentPackageName string
	currentModuleName  string
	ind                string
}

func nimReservedWord(s string) bool {
	switch s {
	case "addr", "and", "as", "asm", "bind", "block", "break", "case", "cast",
		"concept", "const", "continue", "converter", "defer", "discard", "distinct",
		"div", "do", "elif", "else", "end", "enum", "except", "export", "finally",
		"for", "from", "func", "if", "import", "in", "include", "interface", "is",
		"isnot", "iterator", "let", "macro", "method", "mixin", "mod", "nil", "not",
		"notin", "object", "of", "or", "out", "proc", "ptr", "raise", "ref", "return",
		"shl", "shr", "static", "template", "try", "tuple", "type", "using", "var",
		"when", "while", "xor", "yield",
		"super", "ret", "result": // not language-reserved words, but a binding-reserved words
		return true
	default:
		return false
	}
}

func (nm CppMethod) nimMethodName() string {
	// Also make the first letter uppercase so it becomes public in Go
	tmp := nm.SafeMethodName()
	if nimReservedWord(tmp) {
		tmp += "X"
	}
	return tmp
}

func (p CppParameter) nimParameterName() string {
	// Also make the first letter uppercase so it becomes public in Go
	parmName := p.ParameterName
	if nimReservedWord(parmName) {
		parmName += "Val"
	}

	if strings.HasPrefix(parmName, "_") {
		parmName = "x" + parmName
	}
	if strings.HasSuffix(parmName, "_") {
		parmName += "x"
	}

	return parmName
}

func cabiClassNameNim(className string, cabi bool) string {
	className = cabiClassName(className)
	className = strings.Replace(className, `__`, ``, -1)
	if cabi {
		return "c" + cabiClassName((className))
	} else {
		className = strings.TrimSuffix(className, "_")

		return cabiClassName((className))
	}
}

func (e CppEnum) nimEnumName() string {
	enumName := cabiClassNameNim(ifv(strings.HasSuffix(e.EnumName, "::"), e.EnumName+"Enum", e.EnumName), false) // Fully qualified name of the enum itself
	if _, ok := KnownClassnames[enumName]; ok {
		enumName = enumName + "Enum"
	}
	return enumName
}

func (gfs *nimFileState) indent() {
	gfs.ind += "  "
}
func (gfs *nimFileState) dedent() {
	gfs.ind = gfs.ind[:len(gfs.ind)-2]
}

func (p CppParameter) renderTypeNim(gfs *nimFileState, cabi bool) string {
	if p.Pointer && p.ParameterType == "char" {
		if cabi {
			return "cstring"
		} else {
			return "cstring"
		}
	}
	if p.ParameterType == "QString" {
		if cabi {
			return "struct_miqt_string"
		} else {
			return "string"
		}
	}
	if p.ParameterType == "QByteArray" {
		if cabi {
			return "struct_miqt_string"
		} else {
			return "seq[byte]"
		}
	}

	if t, ok := p.QListOf(); ok {
		if cabi {
			return "struct_miqt_array"
		} else {
			return "seq[" + t.renderTypeNim(gfs, cabi) + "]"
		}
	}

	if t, ok := p.QSetOf(); ok {
		gfs.stdImports["std/sets"] = struct{}{}
		return "HashSet[" + t.renderTypeNim(gfs, cabi) + "]"
	}

	if t1, t2, ok := p.QMapOf(); ok {
		if cabi {
			return "struct_miqt_map"
		} else {
			gfs.stdImports["std/tables"] = struct{}{}
			return "Table[" + t1.renderTypeNim(gfs, cabi) + "," + t2.renderTypeNim(gfs, cabi) + "]"
		}
	}

	if t1, t2, ok := p.QPairOf(); ok {
		if cabi {
			return "struct_miqt_map"
		} else {

			// Design QPair using capital-named members, in case it gets passed
			// across packages
			return "tuple[first: " + t1.renderTypeNim(gfs, cabi) + ", second: " + t2.renderTypeNim(gfs, cabi) + "]"
		}
	}

	if p.ParameterType == "void" && p.Pointer {
		return "pointer"
	}
	if p.ParameterType == "void" {
		return "void"
	}

	ret := ""
	isclass := false
	switch p.ParameterType {
	case "bool", "volatile bool":
		ret += "bool"
	case "char":
		ret += "cchar"
	case "unsigned char", "uchar":
		ret += "uint8" // TODO investigate better options
	case "quint8", "uint8_t":
		ret += "uint8"
	case "signed char":
		ret += "cschar"
	case "qint8", "int8_t":
		ret += "int8"
	case "short":
		ret += "cshort"
	case "qint16", "int16_t":
		ret += "int16"
	case "ushort", "unsigned short":
		ret += "cushort"
	case "quint16", "uint16_t":
		ret += "uint16"
	case "long":
		ret += "clong"
	case "ulong", "unsigned long":
		ret += "culong"
	case "int":
		ret += "cint"
	case "unsigned int":
		ret += "cuint"
	case "qint32":
		ret += "int32"
	case "quint32":
		ret += "uint32"
	case "qlonglong", "long long":
		ret += "clonglong"
	case "qint64":
		ret += "int64"
	case "qulonglong", "unsigned long long":
		ret += "culonglong"
	case "quint64":
		ret += "uint64"
	case "float":
		ret += "float32"
	case "double", "qreal":
		ret += "float64"
	case "size_t", "qsizetype":
		ret += "csize_t"
	case "QIntegerForSizeof<std::size_t>::Signed", "qptrdiff", "ptrdiff_t": // all signed
		if C.sizeof_size_t == 4 {
			ret += "int32"
		} else {
			ret += "int64"
		}
	case "qintptr", "intptr_t":
		ret += "miqt_intptr_t"
	case "quintptr", "uintptr_t":
		ret += "miqt_uintptr_t"
	case "QIntegerForSizeof<void *>::Unsigned", "QIntegerForSizeof<void *>::Signed":
		ret += "uint"
	default:

		if ft, ok := p.QFlagsOf(); ok {
			if cabi {
				ret += "cint"
			} else {
				if enumInfo, ok := KnownEnums[ft.ParameterType]; ok && enumInfo.ModuleName != gfs.currentModuleName {
					// Cross-package
					ret += enumInfo.ModuleName + "." + cabiClassNameNim(ft.ParameterType, cabi)
					gfs.imports[enumInfo.ModuleName] = struct{}{}
				} else {
					// Same package
					ret += cabiClassNameNim(ft.ParameterType, cabi)
				}
			}
		} else if enumInfo, ok := KnownEnums[p.ParameterType]; ok {
			if cabi {
				ret += "cint"
			} else {
				if enumInfo.ModuleName != gfs.currentModuleName {
					// Cross-package
					ret += enumInfo.ModuleName + "." + enumInfo.Enum.nimEnumName()
					gfs.imports[enumInfo.ModuleName] = struct{}{}
				} else {
					// Same package
					ret += enumInfo.Enum.nimEnumName()
				}
			}
		} else if strings.Contains(p.ParameterType, `::`) {
			// Inner class
			ret += cabiClassNameNim(p.ParameterType, cabi)

		} else {
			// Do not transform this type
			ret += cabiClassNameNim(p.ParameterType, cabi)
		}

	}

	if pkg, ok := KnownClassnames[p.ParameterType]; ok {
		isclass = true
		if pkg.ModuleName != gfs.currentModuleName {
			ret = pkg.ModuleName + "." + ret
			gfs.imports[pkg.ModuleName] = struct{}{}
		}
	}

	if cabi && p.QtClassType() {
		ret = "pointer"
	} else if (cabi || !isclass) && (p.ByRef || p.Pointer) {
		ret = "ptr " + ret
	}

	return ret // ignore const
}

func (p CppParameter) renderReturnTypeNim(gfs *nimFileState, cabi bool) string {
	ret := p.renderTypeNim(gfs, cabi)
	if ret == "void" {
		ret = "void"
	}

	if p.QtClassType() && p.ParameterType != "QString" && p.ParameterType != "QByteArray" && !(p.Pointer || p.ByRef) {
		// FIXME normalize this part
		ret = ret
	}

	return ret
}

func (p CppParameter) parameterTypeNim(gfs *nimFileState) string {
	if p.ParameterType == "QString" {
		return "struct_miqt_string"
	}

	if p.ParameterType == "QByteArray" {
		return "struct_miqt_string"
	}

	if _, ok := p.QListOf(); ok {
		return "struct_miqt_array"
	}

	if _, ok := p.QSetOf(); ok {
		return "struct_miqt_array"
	}

	if _, _, ok := p.QMapOf(); ok {
		return "struct_miqt_map"
	}

	if _, _, ok := p.QPairOf(); ok {
		return "struct_miqt_map"
	}

	return p.renderTypeNim(gfs, true)
}

func (gfs *nimFileState) emitParametersNim(params []CppParameter, cabi bool) string {
	tmp := make([]string, 0, len(params))

	skipNext := false

	for i, p := range params {
		if IsArgcArgv(params, i) {
			skipNext = true
			if cabi {
				tmp = append(tmp, "argc: ptr cint, argv: cstringArray")
			}

		} else if skipNext {
			// Skip this parameter, already handled
			skipNext = false

		} else {
			// Ordinary parameter
			tmp = append(tmp, p.nimParameterName()+": "+p.renderTypeNim(gfs, cabi))

		}
	}
	return strings.Join(tmp, ", ")
}

func (gfs *nimFileState) emitParametersNim2CABIForwarding(m CppMethod) (preamble string, forwarding string) {
	tmp := make([]string, 0, len(m.Parameters)+2)

	if !m.IsStatic {
		tmp = append(tmp, "self.h")
	}

	skipNext := false

	preamble += "\n"
	for i, p := range m.Parameters {

		if IsArgcArgv(m.Parameters, i) {
			skipNext = true
			// QApplication constructor. Convert 'args' into Qt's wanted types
			// Qt has a warning in the docs saying these pointers must be valid
			// for the entire lifetype of QApplication, so, malloc + never free
			// This transformation only affects the Go side. The CABI side is
			// projected naturally

			preamble += gfs.ind + "# Convert []string to long-lived int& argc, char** argv, never call free()\n"
			preamble += gfs.ind + "var args2 = @[getAppFilename()]\n"
			preamble += gfs.ind + "args2.add commandLineParams()\n"
			preamble += gfs.ind + "var argv: cStringArray = allocCstringArray(args2)\n"
			preamble += gfs.ind + "var argc {.threadvar.}: cint\n"
			preamble += gfs.ind + "argc = args2.len.cint\n"

			tmp = append(tmp, "addr argc, argv")

			gfs.stdImports["std/cmdline"] = struct{}{}
			gfs.stdImports["std/os"] = struct{}{}

		} else if skipNext {
			// Skip this parameter, already handled
			skipNext = false

		} else {
			addPreamble, rvalue := gfs.emitParameterNim2CABIForwarding(p)
			preamble += addPreamble
			tmp = append(tmp, rvalue)
		}
	}

	return preamble, strings.Join(tmp, ", ")
}

func (gfs *nimFileState) emitParameterNim2CABIForwarding(p CppParameter) (preamble string, rvalue string) {
	nameprefix := makeNamePrefix(p.nimParameterName())

	if p.ParameterType == "QString" {
		// Go: convert string -> miqt_string*
		// CABI: convert miqt_string* -> real QString
		rvalue = "struct_miqt_string(data: " + p.nimParameterName() + ", len: csize_t(len(" + p.nimParameterName() + ")))"

	} else if p.ParameterType == "QByteArray" {
		// Go: convert []byte -> miqt_string
		// CABI: convert miqt_string -> QByteArray
		// n.b. This can ALIAS the existing []byte data

		rvalue = "struct_miqt_string(data: cast[cstring](if len(" + p.nimParameterName() + ") == 0: nil else: unsafeAddr " + p.nimParameterName() + "[0]), len: csize_t(len(" + p.nimParameterName() + ")))"

	} else if listType, ok := p.QListOf(); ok {
		// QList<T>
		// Go: convert T[] -> t* and len
		// CABI: create a real QList<>

		preamble += gfs.ind + "var " + nameprefix + "_CArray = newSeq[" + listType.parameterTypeNim(gfs) + "](len(" + p.nimParameterName() + "))\n"
		preamble += gfs.ind + "for i in 0..<len(" + p.nimParameterName() + "):\n"
		gfs.indent()

		listType.ParameterName = p.nimParameterName() + "[i]"
		addPreamble, innerRvalue := gfs.emitParameterNim2CABIForwarding(listType)
		preamble += addPreamble
		preamble += gfs.ind + nameprefix + "_CArray[i] = " + innerRvalue + "\n"
		preamble += "\n"
		gfs.dedent()

		rvalue = "struct_miqt_array(len: csize_t(len(" + p.nimParameterName() + ")), data: if len(" + p.nimParameterName() + ") == 0: nil else: addr(" + nameprefix + "_CArray[0]))"

	} else if _, ok := p.QSetOf(); ok {
		panic("QSet<> arguments are not yet implemented") // n.b. doesn't seem to exist in QtCore/QtGui/QtWidgets at all

	} else if kType, vType, ok := p.QMapOf(); ok {
		// QMap<T>

		preamble += gfs.ind + "var " + nameprefix + "_Keys_CArray = newSeq[" + kType.parameterTypeNim(gfs) + "](len(" + p.nimParameterName() + "))\n"
		preamble += gfs.ind + "var " + nameprefix + "_Values_CArray = newSeq[" + vType.parameterTypeNim(gfs) + "](len(" + p.nimParameterName() + "))\n"

		preamble += gfs.ind + "var " + nameprefix + "_ctr = 0\n"

		preamble += gfs.ind + "for " + nameprefix + "k, " + nameprefix + "v in " + p.nimParameterName() + ":\n"
		gfs.indent()
		kType.ParameterName = nameprefix + "_k"
		addPreamble, innerRvalue := gfs.emitParameterNim2CABIForwarding(kType)
		preamble += addPreamble
		preamble += gfs.ind + nameprefix + "_Keys_CArray[" + nameprefix + "_ctr] = " + innerRvalue + "\n"

		vType.ParameterName = nameprefix + "_v"
		addPreamble, innerRvalue = gfs.emitParameterNim2CABIForwarding(vType)
		preamble += addPreamble
		preamble += gfs.ind + nameprefix + "_Values_CArray[" + nameprefix + "_ctr] = " + innerRvalue + "\n"

		preamble += gfs.ind + nameprefix + "_ctr += 1\n"

		preamble += "\n"
		gfs.dedent()

		rvalue = "struct_miqt_map(len: csize_t(len(" + p.nimParameterName() + ")),keys: if len(" + p.nimParameterName() + ") == 0: nil else: addr(" + nameprefix + "_Keys_CArray[0]), values: if len(" + p.nimParameterName() + ") == 0: nil else: addr(" + nameprefix + "_Values_CArray[0]),)"

	} else if kType, vType, ok := p.QPairOf(); ok {
		// QPair<T>

		preamble += gfs.ind + "var " + nameprefix + "_CArray_First: " + kType.parameterTypeNim(gfs) + "\n"
		preamble += gfs.ind + "var " + nameprefix + "_CArray_Second: " + vType.parameterTypeNim(gfs) + "\n"

		kType.ParameterName = p.nimParameterName() + ".first"
		addPreamble, innerRvalue := gfs.emitParameterNim2CABIForwarding(kType)
		preamble += addPreamble
		preamble += gfs.ind + nameprefix + "_CArray_First = " + innerRvalue + "\n"

		vType.ParameterName = p.nimParameterName() + ".second"
		addPreamble, innerRvalue = gfs.emitParameterNim2CABIForwarding(vType)
		preamble += addPreamble
		preamble += gfs.ind + nameprefix + "_CArray_Second = " + innerRvalue + "\n"

		rvalue = "struct_miqt_map(len: 1,keys: addr(" + nameprefix + "_CArray_First),values: addr(" + nameprefix + "_CArray_Second),)"

	} else if p.Pointer && p.ParameterType == "char" {
		// Single char* argument
		rvalue = p.nimParameterName()

	} else if /*(p.Pointer || p.ByRef) &&*/ p.QtClassType() {
		// The C++ type is a pointer to Qt class
		// We want our functions to accept the Go wrapper type, and forward as cPointer()
		// cPointer() returns the cgo pointer which only works in the same package -
		// anything cross-package needs to go via unsafe.Pointer

		rvalue = p.nimParameterName() + ".h"

	} else if p.IntType() || p.IsFlagType() || p.IsKnownEnum() || p.ParameterType == "bool" {
		if p.Pointer || p.ByRef {
			rvalue = p.nimParameterName() // n.b. This may not work if the integer type conversion was wrong
		} else if p.IsFlagType() || p.IsKnownEnum() {
			rvalue = "cint(" + p.nimParameterName() + ")"

		} else {
			rvalue = p.nimParameterName()
		}

	} else {
		// Default
		rvalue = p.nimParameterName()
	}

	return preamble, rvalue
}

func (gfs *nimFileState) emitCabiToNim(assignExpr string, rt CppParameter, rvalue string) string {

	lines := ""
	namePrefix := "v" + makeNamePrefix(rt.nimParameterName())

	if rt.Void() {
		return gfs.ind + rvalue + "\n"

	} else if rt.ParameterType == "void" && rt.Pointer {
		return gfs.ind + assignExpr + rvalue + "\n"

	} else if rt.ParameterType == "char" && rt.Pointer {
		// Qt functions normally return QString - anything returning char*
		// is something like QByteArray.Data() where it returns an unsafe
		// internal pointer
		// However in case this is a signal, we need to be able to marshal both
		// forwards and backwards with the same types, this has to be a string
		// in both cases
		// This is not a miqt_string and therefore MIQT did not allocate it,
		// and therefore we don't have to free it either

		lines += gfs.ind + assignExpr + "(" + rvalue + ")\n"

	} else if rt.ParameterType == "QString" {

		lines += gfs.ind + "let " + namePrefix + "_ms = " + rvalue + "\n"
		lines += gfs.ind + "let " + namePrefix + "x_ret = string.fromBytes(toOpenArrayByte(" + namePrefix + "_ms.data, 0, int(" + namePrefix + "_ms.len)-1))\n"
		lines += gfs.ind + "c_free(" + namePrefix + "_ms.data)\n"
		lines += gfs.ind + assignExpr + namePrefix + "x_ret\n"

	} else if rt.ParameterType == "QByteArray" {
		// We receive the CABI type of a miqt_string. Convert it into []byte
		// We must free the miqt_string data pointer - this is a data copy,
		// not an alias

		lines += gfs.ind + "var " + namePrefix + "_bytearray = " + rvalue + "\n"
		lines += gfs.ind + "var " + namePrefix + "x_ret = @(toOpenArrayByte(" + namePrefix + "_bytearray.data, 0, int(" + namePrefix + "_bytearray.len)-1))\n"
		lines += gfs.ind + "c_free(" + namePrefix + "_bytearray.data)\n"
		lines += gfs.ind + assignExpr + namePrefix + "x_ret\n"

	} else if t, ok := rt.QListOf(); ok {
		lines += gfs.ind + "var " + namePrefix + "_ma = " + rvalue + "\n"

		lines += gfs.ind + "var " + namePrefix + "x_ret = newSeq[" + t.renderTypeNim(gfs, false) + "](int(" + namePrefix + "_ma.len))\n"
		lines += gfs.ind + "let " + namePrefix + "_outCast = cast[ptr UncheckedArray[" + t.parameterTypeNim(gfs) + "]](" + namePrefix + "_ma.data)\n"
		lines += gfs.ind + "for i in 0 ..< " + namePrefix + "_ma.len:\n"
		gfs.indent()
		lines += gfs.emitCabiToNim(namePrefix+"x_ret[i] = ", t, namePrefix+"_outCast[i]")
		gfs.dedent()
		lines += gfs.ind + assignExpr + namePrefix + "x_ret\n"

	} else if t, ok := rt.QSetOf(); ok {

		lines += gfs.ind + "var " + namePrefix + "_ma = " + rvalue + "\n"

		lines += gfs.ind + namePrefix + "x_ret: HashSet[" + t.renderTypeNim(gfs, false) + "])\n"
		lines += gfs.ind + namePrefix + "_outCast = cast[ptr UncheckedArray[" + t.parameterTypeNim(gfs) + "](" + namePrefix + "_ma.data))\n"
		lines += gfs.ind + "for i in 0..<" + namePrefix + "_ma.len:\n"
		gfs.indent()
		lines += gfs.emitCabiToNim(namePrefix+"x_ret.incl ", t, namePrefix+"_outCast[i]")
		gfs.dedent()

		lines += gfs.ind + assignExpr + namePrefix + "x_ret\n"

	} else if kType, vType, ok := rt.QMapOf(); ok {
		lines += gfs.ind + "var " + namePrefix + "_mm = " + rvalue + "\n"

		lines += gfs.ind + "var " + namePrefix + "x_ret: Table[" + kType.renderTypeNim(gfs, false) + ", " + vType.renderTypeNim(gfs, false) + "]\n"
		lines += gfs.ind + "var " + namePrefix + "_Keys = cast[ptr UncheckedArray[" + kType.parameterTypeNim(gfs) + "]](" + namePrefix + "_mm.keys)\n"
		lines += gfs.ind + "var " + namePrefix + "_Values = cast[ptr UncheckedArray[" + vType.parameterTypeNim(gfs) + "]](" + namePrefix + "_mm.values)\n"
		lines += gfs.ind + "for i in 0..<" + namePrefix + "_mm.len:\n"
		gfs.indent()
		lines += gfs.emitCabiToNim("var "+namePrefix+"_entry_Key = ", kType, namePrefix+"_Keys[i]") + "\n"
		lines += gfs.emitCabiToNim("var "+namePrefix+"_entry_Value = ", vType, namePrefix+"_Values[i]") + "\n"
		lines += gfs.ind + namePrefix + "x_ret[" + namePrefix + "_entry_Key] = " + namePrefix + "_entry_Value\n"
		gfs.dedent()

		lines += gfs.ind + assignExpr + namePrefix + "x_ret\n"

	} else if kType, vType, ok := rt.QPairOf(); ok {
		lines += gfs.ind + "var " + namePrefix + "_mm = " + rvalue + "\n"

		lines += gfs.ind + "var " + namePrefix + "_First_CArray = cast[ptr UncheckedArray[" + kType.parameterTypeNim(gfs) + "]](" + namePrefix + "_mm.keys)\n"
		lines += gfs.ind + "var " + namePrefix + "_Second_CArray = cast[ptr UncheckedArray[" + vType.parameterTypeNim(gfs) + "]](" + namePrefix + "_mm.values)\n"

		lines += gfs.emitCabiToNim("var "+namePrefix+"_entry_First = ", kType, namePrefix+"_First_CArray[0]") + "\n"
		lines += gfs.emitCabiToNim("var "+namePrefix+"_entry_Second = ", vType, namePrefix+"_Second_CArray[0]") + "\n"

		lines += gfs.ind + assignExpr + "(first: " + namePrefix + "_entry_First , second: " + namePrefix + "_entry_Second )\n"

	} else if rt.QtClassType() {
		// Construct our Go type based on this inner CABI type

		crossPackage := ""
		pkg, ok := KnownClassnames[rt.ParameterType]
		if !ok {
			panic("emitCabiToNim: Encountered an unknown Qt class")
		}

		if pkg.ModuleName != gfs.currentModuleName {
			crossPackage = pkg.ModuleName + "."
			gfs.imports[pkg.ModuleName] = struct{}{}
		}

		// We can only reference the rvalue once, in case it is a complex
		// expression

		rvalue = crossPackage + cabiClassNameNim(rt.ParameterType, false) + "(h: " + rvalue + ")"

		if !(rt.Pointer || rt.ByRef) {
			// This is return by value, but CABI has new'd it into a
			// heap type for us
			// To preserve Qt's approximate semantics, add a runtime
			// finalizer to automatically Delete once the type goes out
			// of Go scope
			// lines += namePrefix + "_goptr := " + rvalue + "\n"
			// lines += namePrefix + "_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer\n"

			// If this is a function return, we have converted value-returned Qt types to pointers
			// If this is a slot return, we haven't
			// TODO standardize this
			// e.g. QStringListModel::ItemData
			// if strings.Contains(assignExpr, `return`) {
			// 	lines += assignExpr + "" + namePrefix + "_goptr\n"
			// } else {
			// 	lines += assignExpr + "*" + namePrefix + "_goptr\n"
			// }

			// TODO
			lines += gfs.ind + assignExpr + rvalue + "\n"
		} else {
			// No need for temporary _goptr variable
			lines += gfs.ind + assignExpr + rvalue + "\n"
		}

		return lines

	} else if rt.IntType() || rt.IsKnownEnum() || rt.IsFlagType() || rt.ParameterType == "bool" || rt.QtCppOriginalType != nil {

		if rt.Pointer || rt.ByRef {
			//return assignExpr + "(" + rt.renderTypeNim(gfs, false) + "(" + rvalue + "))\n"
			lines += gfs.ind + assignExpr + rvalue + "\n"
		} else if rt.IsKnownEnum() || rt.IsFlagType() {
			lines += gfs.ind + assignExpr + rt.renderTypeNim(gfs, false) + "(" + rvalue + ")\n"
		} else {

			// Need to cast Cgo type to Go int type
			// Optimize assignment to avoid temporary
			lines += gfs.ind + assignExpr + rvalue + "\n"
		}
	} else {
		// panic(fmt.Sprintf("emitgo::emitCabiToNim missing type handler for parameter %+v", rt))
		return "TODO " + rt.ParameterType
	}

	return lines
}

func emitNim(src *CppParsedHeader, headerName string, packageName string, pkgConfigModule string) (string, string, error) {

	ret := strings.Builder{}
	cabi := strings.Builder{}
	types := strings.Builder{}

	if len(pkgConfigModule) == 0 {
		pkgConfigModule = "Qt5Widgets"
	}

	ret.WriteString(`import ` + strings.ReplaceAll(pkgConfigModule, " ", "_") + `_libs

{.push raises: [].}

from system/ansi_c import c_free

type
  struct_miqt_string {.used.} = object
    len: csize_t
    data: cstring

  struct_miqt_array {.used.} = object
    len: csize_t
    data: pointer

  struct_miqt_map {.used.} = object
    len: csize_t
    keys: pointer
    values: pointer

  miqt_uintptr_t {.importc: "uintptr_t", header: "stdint.h", used.} = uint
  miqt_intptr_t {.importc: "intptr_t", header: "stdint.h", used.} = int

func fromBytes(T: type string, v: openArray[byte]): string {.used.} =
  if v.len > 0:
    result = newString(v.len)
    when nimvm:
      for i, c in v:
        result[i] = cast[char](c)
    else:
      copyMem(addr result[0], unsafeAddr v[0], v.len)

const cflags = gorge("pkg-config -cflags ` + pkgConfigModule + `")
{.compile("gen_` + strings.Replace(headerName, ".h", ".cpp", -1) + `", cflags).}

`)
	// Type definition
	gfs := nimFileState{
		imports:            map[string]struct{}{},
		preImports:         map[string]struct{}{},
		stdImports:         map[string]struct{}{},
		currentPackageName: packageName,
		currentModuleName:  moduleName(headerName),
		ind:                "  ",
	}

	for _, c := range src.Classes {
		rawClassName := cabiClassNameNim(c.ClassName, true)
		nimClassName := cabiClassNameNim(c.ClassName, false)
		importClassName := cabiClassName(c.ClassName)

		pragmas := "{.inheritable, pure.}"
		inherit := ""
		mi := false
		for _, base := range c.DirectInherits {

			if mi {
				types.WriteString("# TODO Multiple inheritance from " + base + "\n")
			} else {
				if strings.HasPrefix(base, `QList<`) {
					// Can't inherit
					continue
				} else if pkg, ok := KnownClassnames[base]; ok && pkg.ModuleName != gfs.currentModuleName {
					// Cross-package parent class
					inherit = " of " + path.Base(pkg.ModuleName) + "_types." + cabiClassNameNim(base, false)
					types.WriteString(`import ` + pkg.ModuleName + `_types
export ` + pkg.ModuleName + `_types
`)

					gfs.imports[pkg.ModuleName] = struct{}{}
				} else {
					// Same-package parent class
					inherit = " of " + cabiClassNameNim(base, false)
				}
				pragmas = ""
				mi = true
			}
		}

		fmt.Fprintf(&cabi, `type %[1]s*{.exportc: "%[2]s", incompleteStruct.} = object
`, rawClassName, importClassName)

		fmt.Fprintf(&types, `type %[1]s* %[2]s = object%[3]s
`, nimClassName, pragmas, inherit)

		if inherit == "" {
			types.WriteString(`  h*: pointer
`)
		}
	}

	cabi.WriteString("\n")

	// Check if short-named enums are allowed.
	// We only allow short names if there are no conflicts anywhere in the whole
	// file. This doesn't fully defend against cross-file conflicts but those
	// should hopefully be rare enough
	preventShortNames := map[string]struct{}{}
	{
		nameTest := map[string]string{}
	nextEnum:
		for _, e := range src.Enums {

			shortEnumName := e.ShortEnumName()

			// Disallow entry<-->entry collisions
			for _, ee := range e.Entries {
				if other, ok := nameTest[shortEnumName+"::"+ee.EntryName]; ok {
					preventShortNames[e.nimEnumName()] = struct{}{} // Our full enum name
					preventShortNames[other] = struct{}{}           // Their full enum name
					continue nextEnum
				}
				nameTest[shortEnumName+"::"+ee.EntryName] = e.nimEnumName()

				if _, ok := KnownClassnames[shortEnumName+"::"+ee.EntryName]; ok {
					preventShortNames[e.nimEnumName()] = struct{}{}
					continue nextEnum
				}
				if _, ok := KnownEnums[shortEnumName+"::"+ee.EntryName]; ok {
					preventShortNames[e.nimEnumName()] = struct{}{}
					continue nextEnum
				}

			}
		}
	}

	for _, e := range src.Enums {
		if e.EnumName == "" {
			continue // Removed by transformRedundant AST pass
		}

		// "::" at the end means an anonymous nested enum
		enumName := e.nimEnumName()

		enumShortName := enumName // Shorter name, so that enum elements are reachable from the surrounding namespace
		if _, ok := preventShortNames[enumName]; !ok {
			enumShortName = cabiClassNameNim(e.ShortEnumName(), false)
		}

		underlyingType := e.UnderlyingType.renderTypeNim(&gfs, false)
		ret.WriteString(`
type ` + enumName + `* = ` + underlyingType + `
`)

		if len(e.Entries) > 0 {
			var smallvalues []string
			zoo := map[string]struct{}{}
			for _, ee := range e.Entries {
				i := 0

				basename := titleCase(cabiClassNameNim(enumShortName+ee.EntryName, false))

				nimbase := strings.ReplaceAll(strings.ToLower(basename), "_", "")
				nimname := nimbase + maybeSuffix(i)
				for {
					if _, ok := zoo[nimname]; ok {
						i += 1
						nimname = nimbase + maybeSuffix(i)
					} else if _, ok := KnownClassnames[nimname]; ok {
						i += 1
						nimname = nimbase + maybeSuffix(i)
					} else if _, ok := KnownClassnames[basename+maybeSuffix(i)]; ok {
						i += 1
						nimname = nimbase + maybeSuffix(i)
					} else {
						break
					}
				}
				zoo[nimname] = struct{}{}
				enumname := basename + maybeSuffix(i)
				enumConstDeclaration := "  " + enumname + "* = " + ee.EntryValue + "\n"

				smallvalues = append(smallvalues, enumConstDeclaration)
			}

			if len(smallvalues) > 0 {
				ret.WriteString("const\n")
				ret.WriteString(strings.Join(smallvalues, ""))
				ret.WriteString("\n\n")
			}

		}
	}

	ret.WriteString(
		`
import ` + moduleName(headerName) + `_types
export ` + moduleName(headerName) + `_types

%%_IMPORTLIBS_%%
%%_CABI_%%
`)
	for _, c := range src.Classes {
		nimClassName := cabiClassNameNim(c.ClassName, false)
		rawClassName := cabiClassNameNim(c.ClassName, true)

		fmt.Fprintf(&ret, `
func init*(T: type %[1]s, h: ptr %[2]s): %[1]s =
  T(h: h)
`, nimClassName, rawClassName)

		// Qt has some overloads (const vs non-const, & vs *) that don't result in
		// a distinct parameter set on the nim side
		sigs := map[string]struct{}{}

		for i, ctor := range c.Ctors {
			preamble, forwarding := gfs.emitParametersNim2CABIForwarding(ctor)
			cabiParams := gfs.emitParametersNim(ctor.Parameters, true)
			fmt.Fprintf(&cabi, `proc f%[1]s_new%[2]s(%[3]s): ptr %[1]s {.importc: "%[4]s".}
`, rawClassName, maybeSuffix(i), cabiParams, cabiNewName(c, i))

			nimParams := gfs.emitParametersNim(ctor.Parameters, false)
			// Use c abi for uniqueness to avoid enum typedef-driven conflicts
			paramsX := ""
			for _, p := range ctor.Parameters {
				paramsX = paramsX + "," + p.renderTypeNim(&gfs, true)
			}
			j := 0
			for {
				if _, ok := sigs[paramsX]; ok {
					j += 1
					paramsX = maybeSuffix(j) + nimParams
				} else {
					sigs[paramsX] = struct{}{}
					break
				}
			}

			fmt.Fprintf(&ret, `proc create%[2]s*(T: type %[3]s, %[4]s): %[3]s =
%[5]s  %[3]s.init(f%[6]s_new%[1]s(%[7]s))
`, maybeSuffix(i), maybeSuffix(j), nimClassName, nimParams,
				preamble, rawClassName, forwarding)
		}

		for _, m := range c.Methods {

			if m.IsProtected {
				continue // Don't add a direct call for it
			}

			preamble, forwarding := gfs.emitParametersNim2CABIForwarding(m)

			returnTypeDecl := m.ReturnType.renderReturnTypeNim(&gfs, false)
			rawReturnTypeDecl := m.ReturnType.renderReturnTypeNim(&gfs, true)
			rawMethodName := "f" + rawClassName + `_` + m.nimMethodName()
			rvalue := rawMethodName + `(` + forwarding + `)`

			params := ifv(m.IsStatic, `_: type `, `self: `) + nimClassName + ", " + gfs.emitParametersNim(m.Parameters, false)

			// TOOD `this: ptr ` + rawClassName + `, `?
			rawParams := ifv(m.IsStatic, "", "self: pointer, ") + gfs.emitParametersNim(m.Parameters, true)

			fmt.Fprintf(&cabi, `proc %[1]s(%[2]s): %[3]s {.importc: "%[4]s".}
`, rawMethodName, rawParams, rawReturnTypeDecl, cabiMethodName(c, m))

			fmt.Fprintf(&ret, `proc %[1]s*(%[2]s): %[3]s =
%[4]s%[5]s
`, m.nimMethodName(), params, returnTypeDecl, preamble, gfs.emitCabiToNim("", m.ReturnType, rvalue))

			// Add Connect() wrappers for signal functions
			if m.IsSignal {
				var namedParams []string
				var paramNames []string
				conversion := ""

				namedParams = append(namedParams, "slot: int")
				for i, pp := range m.Parameters {
					namedParams = append(namedParams, pp.nimParameterName()+": "+pp.parameterTypeNim(&gfs))

					paramNames = append(paramNames, fmt.Sprintf("slotval%d", i+1))
					conversion += gfs.emitCabiToNim(fmt.Sprintf("let slotval%d = ", i+1), pp, pp.nimParameterName()) + "\n"
				}

				cbType := `proc(` + gfs.emitParametersNim(m.Parameters, false) + `)`

				fmt.Fprintf(&cabi, `proc f%[1]s(self: pointer, slot: int) {.importc: "%[1]s".}
`,
					cabiConnectName(c, m))

				fmt.Fprintf(&ret, `proc %[1]s(%[2]s) {.exportc.} =
  type Cb = %[3]s
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
%[4]s
  nimfunc[](%[5]s)

proc on%[7]s*(self: %[8]s, slot: %[3]s) =
  type Cb = %[3]s
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  f%[6]s(self.h, cast[int](addr tmp[]))
`,
					cabiCallbackName(c, m), strings.Join(namedParams, ", "), cbType, conversion,
					strings.Join(paramNames, `, `), cabiConnectName(c, m), m.nimMethodName(), nimClassName)
			}
		}

		for _, m := range c.VirtualMethods() {
			// Add a package-private function to call the C++ base class method
			// QWidget_virtualbase_PaintEvent
			// This is only possible if the function is not pure-virtual

			if !m.IsPureVirtual {
				preamble, forwarding := gfs.emitParametersNim2CABIForwarding(m)

				forwarding = "self.h" + strings.TrimPrefix(forwarding, `self.h`) // TODO integrate properly

				returnTypeDecl := m.ReturnType.renderReturnTypeNim(&gfs, false)
				rawReturnTypeDecl := m.ReturnType.renderReturnTypeNim(&gfs, true)

				fmt.Fprintf(&cabi, `proc f%[1]s(self: pointer, %[2]s): %[3]s{.importc: "%[1]s".}
`, cabiVirtualBaseName(c, m), gfs.emitParametersNim(m.Parameters, true), rawReturnTypeDecl)

				fmt.Fprintf(&ret, `proc callVirtualBase_%[1]s(self: %[2]s, %[3]s): %[4]s =
%[5]s
%[6]s
`,
					m.nimMethodName(), nimClassName, gfs.emitParametersNim(m.Parameters, false), returnTypeDecl,
					preamble,
					gfs.emitCabiToNim("", m.ReturnType, `f`+cabiVirtualBaseName(c, m)+`(`+forwarding+`)`),
				)
			}

			// Add a function to set the virtual override handle
			// It must be possible to call the base class version, so pass
			// that a as a 'super' callback as an extra parameter

			conversion := ""

			{
				var namedParams []string
				var paramNames []string

				if !m.IsPureVirtual {
					var fparamNames []string
					var superNames []string
					for i, p := range m.Parameters {
						superNames = append(superNames, p.nimParameterName())
						fparamNames = append(fparamNames, fmt.Sprintf("slotval%d", i+1))
					}
					conversion += gfs.ind + "proc superCall(" + gfs.emitParametersNim(m.Parameters, false) + `): auto =
    callVirtualBase_` + m.nimMethodName() + "(" + nimClassName + "(h: self), " + strings.Join(superNames, `, `) + ")\n"
					paramNames = append(paramNames, "superCall")
				}

				for i, pp := range m.Parameters {
					namedParams = append(namedParams, pp.nimParameterName()+": "+pp.parameterTypeNim(&gfs))

					paramNames = append(paramNames, fmt.Sprintf("slotval%d", i+1))
					conversion += gfs.emitCabiToNim(fmt.Sprintf("let slotval%d = ", i+1), pp, pp.nimParameterName()) + "\n"
				}

				cabiReturnType := m.ReturnType.parameterTypeNim(&gfs)

				superCbType := `proc(` + gfs.emitParametersNim(m.Parameters, false) + `): ` + m.ReturnType.renderReturnTypeNim(&gfs, false)
				superCbName := nimClassName + m.nimMethodName() + `Base`

				cbType := `proc(`
				if !m.IsPureVirtual {
					cbType += `super: ` + superCbName
					if len(m.Parameters) > 0 {
						cbType += `, `
					}
				}
				cbType += gfs.emitParametersNim(m.Parameters, false)
				cbType += `): ` + m.ReturnType.renderReturnTypeNim(&gfs, false)

				cabi.WriteString(`proc f` + rawClassName + `_override_virtual_` + m.nimMethodName() + `(self: pointer, slot: int) {.importc: "` + cabiOverrideVirtualName(c, m) + `".}
`)

				ret.WriteString(`type ` + superCbName + `* = ` + superCbType + `
proc on` + m.nimMethodName() + `*(self: ` + nimClassName + `, slot: ` + cbType + `) =
  # TODO check subclass
  type Cb = ` + cbType + `
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  f` + rawClassName + `_override_virtual_` + m.nimMethodName() + `(self.h, cast[int](addr tmp[]))

proc ` + cabiCallbackName(c, m) + `(self: ptr ` + rawClassName + `, slot: int` + ifv(len(m.Parameters) > 0, ", ", "") + strings.Join(namedParams, `, `) + `): ` + cabiReturnType + ` {.exportc: "` + cabiCallbackName(c, m) + ` ".} =
  type Cb = ` + cbType + `
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
`)
				ret.WriteString(conversion + "\n")
				if cabiReturnType == "void" {
					ret.WriteString(gfs.ind + `nimfunc[](` + strings.Join(paramNames, `, `) + ")\n")
				} else {
					ret.WriteString(gfs.ind + `let virtualReturn = nimfunc[](` + strings.Join(paramNames, `, `) + " )\n")
					virtualRetP := m.ReturnType // copy
					virtualRetP.ParameterName = "virtualReturn"
					binding, rvalue := gfs.emitParameterNim2CABIForwarding(virtualRetP)
					ret.WriteString(binding + "\n")
					ret.WriteString(gfs.ind + rvalue + "\n")
				}
			}
		}

		for _, p := range c.Props {
			gfs.imports["gen_qobjectdefs"] = struct{}{}

			if p.PropertyName == "staticMetaObject" {
				fmt.Fprintf(&cabi, `proc fc%[1]s(): pointer {.importc: "%[1]s".}
`, cabiStaticMetaObjectName(c))

				fmt.Fprintf(&ret, `proc staticMetaObject*(_: type %s): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fc%s())
`, nimClassName, cabiStaticMetaObjectName(c))
			}
		}

		if c.CanDelete {
			cabi.WriteString(`proc f` + rawClassName + `_delete(self: pointer) {.importc: "` + cabiDeleteName(c) + `".}
`)

			ret.WriteString(`proc delete*(self: ` + nimClassName + `) =
  f` + rawClassName + `_delete(self.h)
`)

			// // GoGC adds a Go Finalizer to this pointer, so that it will be deleted
			// // from C++ memory once it is unreachable from Go memory.
			// func (self *` + nimClassName + `) GoGC() {
			// 	runtime.SetFinalizer(self, func(self *` + nimClassName + `) {
			// 		self.Delete()
			// 		runtime.KeepAlive(self.h)
			// 	})
			// }
			// `)

		}

	}

	nimSrc := ret.String()

	// Fixup imports
	for k := range gfs.preImports {
		delete(gfs.imports, k)
	}
	if len(gfs.imports) > 0 {
		allImports := make([]string, 0, len(gfs.imports))
		imports := make([]string, 0, len(gfs.imports))
		for k := range gfs.imports {
			allImports = append(allImports, k)
			imports = append(imports, k)
		}
		for k := range gfs.stdImports {
			allImports = append(allImports, k)
		}

		sort.Strings(imports)
		sort.Strings(allImports)
		nimSrc = strings.Replace(nimSrc, `%%_IMPORTLIBS_%%`, "import\n  "+strings.Join(allImports, ",\n  ")+"\n"+"export\n  "+strings.Join(imports, ",\n  ")+"\n", 1)
	} else {
		nimSrc = strings.Replace(nimSrc, `%%_IMPORTLIBS_%%`, "", 1)
	}

	nimSrc = strings.Replace(nimSrc, `%%_CABI_%%`, cabi.String(), 1)

	// Determine if we need to produce a _64bit.go file
	typesSrc := types.String() + "\n"
	// 	if len(bigints) > 0 {
	// 		typesSrc = `//go:build !386 && !arm
	// // +build !386,!arm

	// package ` + path.Base(packageName) + "\n\n" + strings.Join(bigints, "") + "\n"
	// 	}

	return nimSrc, typesSrc, nil
}
