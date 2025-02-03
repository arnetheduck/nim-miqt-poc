import Qt5Script_libs

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

const cflags = gorge("pkg-config -cflags Qt5Script")
{.compile("gen_qscriptengineagent.cpp", cflags).}


type QScriptEngineAgentExtension* = cint
const
  QScriptEngineAgentDebuggerInvocationRequest* = 0



import gen_qscriptengineagent_types
export gen_qscriptengineagent_types

import
  gen_qscriptengine,
  gen_qscriptvalue,
  gen_qvariant
export
  gen_qscriptengine,
  gen_qscriptvalue,
  gen_qvariant

type cQScriptEngineAgent*{.exportc: "QScriptEngineAgent", incompleteStruct.} = object

proc fcQScriptEngineAgent_new(engine: pointer): ptr cQScriptEngineAgent {.importc: "QScriptEngineAgent_new".}
proc fcQScriptEngineAgent_scriptLoad(self: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.importc: "QScriptEngineAgent_scriptLoad".}
proc fcQScriptEngineAgent_scriptUnload(self: pointer, id: clonglong): void {.importc: "QScriptEngineAgent_scriptUnload".}
proc fcQScriptEngineAgent_contextPush(self: pointer, ): void {.importc: "QScriptEngineAgent_contextPush".}
proc fcQScriptEngineAgent_contextPop(self: pointer, ): void {.importc: "QScriptEngineAgent_contextPop".}
proc fcQScriptEngineAgent_functionEntry(self: pointer, scriptId: clonglong): void {.importc: "QScriptEngineAgent_functionEntry".}
proc fcQScriptEngineAgent_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void {.importc: "QScriptEngineAgent_functionExit".}
proc fcQScriptEngineAgent_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.importc: "QScriptEngineAgent_positionChange".}
proc fcQScriptEngineAgent_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.importc: "QScriptEngineAgent_exceptionThrow".}
proc fcQScriptEngineAgent_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void {.importc: "QScriptEngineAgent_exceptionCatch".}
proc fcQScriptEngineAgent_supportsExtension(self: pointer, extension: cint): bool {.importc: "QScriptEngineAgent_supportsExtension".}
proc fcQScriptEngineAgent_extension(self: pointer, extension: cint, argument: pointer): pointer {.importc: "QScriptEngineAgent_extension".}
proc fcQScriptEngineAgent_engine(self: pointer, ): pointer {.importc: "QScriptEngineAgent_engine".}
proc fQScriptEngineAgent_virtualbase_scriptLoad(self: pointer, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void{.importc: "QScriptEngineAgent_virtualbase_scriptLoad".}
proc fcQScriptEngineAgent_override_virtual_scriptLoad(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_scriptLoad".}
proc fQScriptEngineAgent_virtualbase_scriptUnload(self: pointer, id: clonglong): void{.importc: "QScriptEngineAgent_virtualbase_scriptUnload".}
proc fcQScriptEngineAgent_override_virtual_scriptUnload(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_scriptUnload".}
proc fQScriptEngineAgent_virtualbase_contextPush(self: pointer, ): void{.importc: "QScriptEngineAgent_virtualbase_contextPush".}
proc fcQScriptEngineAgent_override_virtual_contextPush(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_contextPush".}
proc fQScriptEngineAgent_virtualbase_contextPop(self: pointer, ): void{.importc: "QScriptEngineAgent_virtualbase_contextPop".}
proc fcQScriptEngineAgent_override_virtual_contextPop(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_contextPop".}
proc fQScriptEngineAgent_virtualbase_functionEntry(self: pointer, scriptId: clonglong): void{.importc: "QScriptEngineAgent_virtualbase_functionEntry".}
proc fcQScriptEngineAgent_override_virtual_functionEntry(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_functionEntry".}
proc fQScriptEngineAgent_virtualbase_functionExit(self: pointer, scriptId: clonglong, returnValue: pointer): void{.importc: "QScriptEngineAgent_virtualbase_functionExit".}
proc fcQScriptEngineAgent_override_virtual_functionExit(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_functionExit".}
proc fQScriptEngineAgent_virtualbase_positionChange(self: pointer, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void{.importc: "QScriptEngineAgent_virtualbase_positionChange".}
proc fcQScriptEngineAgent_override_virtual_positionChange(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_positionChange".}
proc fQScriptEngineAgent_virtualbase_exceptionThrow(self: pointer, scriptId: clonglong, exception: pointer, hasHandler: bool): void{.importc: "QScriptEngineAgent_virtualbase_exceptionThrow".}
proc fcQScriptEngineAgent_override_virtual_exceptionThrow(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_exceptionThrow".}
proc fQScriptEngineAgent_virtualbase_exceptionCatch(self: pointer, scriptId: clonglong, exception: pointer): void{.importc: "QScriptEngineAgent_virtualbase_exceptionCatch".}
proc fcQScriptEngineAgent_override_virtual_exceptionCatch(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_exceptionCatch".}
proc fQScriptEngineAgent_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QScriptEngineAgent_virtualbase_supportsExtension".}
proc fcQScriptEngineAgent_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_supportsExtension".}
proc fQScriptEngineAgent_virtualbase_extension(self: pointer, extension: cint, argument: pointer): pointer{.importc: "QScriptEngineAgent_virtualbase_extension".}
proc fcQScriptEngineAgent_override_virtual_extension(self: pointer, slot: int) {.importc: "QScriptEngineAgent_override_virtual_extension".}
proc fcQScriptEngineAgent_delete(self: pointer) {.importc: "QScriptEngineAgent_delete".}


func init*(T: type QScriptEngineAgent, h: ptr cQScriptEngineAgent): QScriptEngineAgent =
  T(h: h)
proc create*(T: type QScriptEngineAgent, engine: gen_qscriptengine.QScriptEngine): QScriptEngineAgent =

  QScriptEngineAgent.init(fcQScriptEngineAgent_new(engine.h))
proc scriptLoad*(self: QScriptEngineAgent, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void =

  fcQScriptEngineAgent_scriptLoad(self.h, id, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), baseLineNumber)

proc scriptUnload*(self: QScriptEngineAgent, id: clonglong): void =

  fcQScriptEngineAgent_scriptUnload(self.h, id)

proc contextPush*(self: QScriptEngineAgent, ): void =

  fcQScriptEngineAgent_contextPush(self.h)

proc contextPop*(self: QScriptEngineAgent, ): void =

  fcQScriptEngineAgent_contextPop(self.h)

proc functionEntry*(self: QScriptEngineAgent, scriptId: clonglong): void =

  fcQScriptEngineAgent_functionEntry(self.h, scriptId)

proc functionExit*(self: QScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue.QScriptValue): void =

  fcQScriptEngineAgent_functionExit(self.h, scriptId, returnValue.h)

proc positionChange*(self: QScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void =

  fcQScriptEngineAgent_positionChange(self.h, scriptId, lineNumber, columnNumber)

proc exceptionThrow*(self: QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue, hasHandler: bool): void =

  fcQScriptEngineAgent_exceptionThrow(self.h, scriptId, exception.h, hasHandler)

proc exceptionCatch*(self: QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue): void =

  fcQScriptEngineAgent_exceptionCatch(self.h, scriptId, exception.h)

proc supportsExtension*(self: QScriptEngineAgent, extension: QScriptEngineAgentExtension): bool =

  fcQScriptEngineAgent_supportsExtension(self.h, cint(extension))

proc extension*(self: QScriptEngineAgent, extension: QScriptEngineAgentExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQScriptEngineAgent_extension(self.h, cint(extension), argument.h))

proc engine*(self: QScriptEngineAgent, ): gen_qscriptengine.QScriptEngine =

  gen_qscriptengine.QScriptEngine(h: fcQScriptEngineAgent_engine(self.h))

proc callVirtualBase_scriptLoad(self: QScriptEngineAgent, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void =


  fQScriptEngineAgent_virtualbase_scriptLoad(self.h, id, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), baseLineNumber)

type QScriptEngineAgentscriptLoadBase* = proc(id: clonglong, program: string, fileName: string, baseLineNumber: cint): void
proc onscriptLoad*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentscriptLoadBase, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentscriptLoadBase, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_scriptLoad(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_scriptLoad(self: ptr cQScriptEngineAgent, slot: int, id: clonglong, program: struct_miqt_string, fileName: struct_miqt_string, baseLineNumber: cint): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_scriptLoad ".} =
  type Cb = proc(super: QScriptEngineAgentscriptLoadBase, id: clonglong, program: string, fileName: string, baseLineNumber: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: clonglong, program: string, fileName: string, baseLineNumber: cint): auto =
    callVirtualBase_scriptLoad(QScriptEngineAgent(h: self), id, program, fileName, baseLineNumber)
  let slotval1 = id

  let vprogram_ms = program
  let vprogramx_ret = string.fromBytes(toOpenArrayByte(vprogram_ms.data, 0, int(vprogram_ms.len)-1))
  c_free(vprogram_ms.data)
  let slotval2 = vprogramx_ret

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval3 = vfileNamex_ret

  let slotval4 = baseLineNumber


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_scriptUnload(self: QScriptEngineAgent, id: clonglong): void =


  fQScriptEngineAgent_virtualbase_scriptUnload(self.h, id)

type QScriptEngineAgentscriptUnloadBase* = proc(id: clonglong): void
proc onscriptUnload*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentscriptUnloadBase, id: clonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentscriptUnloadBase, id: clonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_scriptUnload(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_scriptUnload(self: ptr cQScriptEngineAgent, slot: int, id: clonglong): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_scriptUnload ".} =
  type Cb = proc(super: QScriptEngineAgentscriptUnloadBase, id: clonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: clonglong): auto =
    callVirtualBase_scriptUnload(QScriptEngineAgent(h: self), id)
  let slotval1 = id


  nimfunc[](superCall, slotval1)
proc callVirtualBase_contextPush(self: QScriptEngineAgent, ): void =


  fQScriptEngineAgent_virtualbase_contextPush(self.h)

type QScriptEngineAgentcontextPushBase* = proc(): void
proc oncontextPush*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentcontextPushBase): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentcontextPushBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_contextPush(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_contextPush(self: ptr cQScriptEngineAgent, slot: int): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_contextPush ".} =
  type Cb = proc(super: QScriptEngineAgentcontextPushBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_contextPush(QScriptEngineAgent(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_contextPop(self: QScriptEngineAgent, ): void =


  fQScriptEngineAgent_virtualbase_contextPop(self.h)

type QScriptEngineAgentcontextPopBase* = proc(): void
proc oncontextPop*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentcontextPopBase): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentcontextPopBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_contextPop(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_contextPop(self: ptr cQScriptEngineAgent, slot: int): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_contextPop ".} =
  type Cb = proc(super: QScriptEngineAgentcontextPopBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_contextPop(QScriptEngineAgent(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_functionEntry(self: QScriptEngineAgent, scriptId: clonglong): void =


  fQScriptEngineAgent_virtualbase_functionEntry(self.h, scriptId)

type QScriptEngineAgentfunctionEntryBase* = proc(scriptId: clonglong): void
proc onfunctionEntry*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentfunctionEntryBase, scriptId: clonglong): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentfunctionEntryBase, scriptId: clonglong): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_functionEntry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_functionEntry(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_functionEntry ".} =
  type Cb = proc(super: QScriptEngineAgentfunctionEntryBase, scriptId: clonglong): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(scriptId: clonglong): auto =
    callVirtualBase_functionEntry(QScriptEngineAgent(h: self), scriptId)
  let slotval1 = scriptId


  nimfunc[](superCall, slotval1)
proc callVirtualBase_functionExit(self: QScriptEngineAgent, scriptId: clonglong, returnValue: gen_qscriptvalue.QScriptValue): void =


  fQScriptEngineAgent_virtualbase_functionExit(self.h, scriptId, returnValue.h)

type QScriptEngineAgentfunctionExitBase* = proc(scriptId: clonglong, returnValue: gen_qscriptvalue.QScriptValue): void
proc onfunctionExit*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentfunctionExitBase, scriptId: clonglong, returnValue: gen_qscriptvalue.QScriptValue): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentfunctionExitBase, scriptId: clonglong, returnValue: gen_qscriptvalue.QScriptValue): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_functionExit(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_functionExit(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, returnValue: pointer): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_functionExit ".} =
  type Cb = proc(super: QScriptEngineAgentfunctionExitBase, scriptId: clonglong, returnValue: gen_qscriptvalue.QScriptValue): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(scriptId: clonglong, returnValue: gen_qscriptvalue.QScriptValue): auto =
    callVirtualBase_functionExit(QScriptEngineAgent(h: self), scriptId, returnValue)
  let slotval1 = scriptId

  let slotval2 = gen_qscriptvalue.QScriptValue(h: returnValue)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_positionChange(self: QScriptEngineAgent, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void =


  fQScriptEngineAgent_virtualbase_positionChange(self.h, scriptId, lineNumber, columnNumber)

type QScriptEngineAgentpositionChangeBase* = proc(scriptId: clonglong, lineNumber: cint, columnNumber: cint): void
proc onpositionChange*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentpositionChangeBase, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentpositionChangeBase, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_positionChange(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_positionChange(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_positionChange ".} =
  type Cb = proc(super: QScriptEngineAgentpositionChangeBase, scriptId: clonglong, lineNumber: cint, columnNumber: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(scriptId: clonglong, lineNumber: cint, columnNumber: cint): auto =
    callVirtualBase_positionChange(QScriptEngineAgent(h: self), scriptId, lineNumber, columnNumber)
  let slotval1 = scriptId

  let slotval2 = lineNumber

  let slotval3 = columnNumber


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_exceptionThrow(self: QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue, hasHandler: bool): void =


  fQScriptEngineAgent_virtualbase_exceptionThrow(self.h, scriptId, exception.h, hasHandler)

type QScriptEngineAgentexceptionThrowBase* = proc(scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue, hasHandler: bool): void
proc onexceptionThrow*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentexceptionThrowBase, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue, hasHandler: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentexceptionThrowBase, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue, hasHandler: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_exceptionThrow(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_exceptionThrow(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, exception: pointer, hasHandler: bool): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_exceptionThrow ".} =
  type Cb = proc(super: QScriptEngineAgentexceptionThrowBase, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue, hasHandler: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue, hasHandler: bool): auto =
    callVirtualBase_exceptionThrow(QScriptEngineAgent(h: self), scriptId, exception, hasHandler)
  let slotval1 = scriptId

  let slotval2 = gen_qscriptvalue.QScriptValue(h: exception)

  let slotval3 = hasHandler


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_exceptionCatch(self: QScriptEngineAgent, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue): void =


  fQScriptEngineAgent_virtualbase_exceptionCatch(self.h, scriptId, exception.h)

type QScriptEngineAgentexceptionCatchBase* = proc(scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue): void
proc onexceptionCatch*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentexceptionCatchBase, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue): void) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentexceptionCatchBase, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_exceptionCatch(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_exceptionCatch(self: ptr cQScriptEngineAgent, slot: int, scriptId: clonglong, exception: pointer): void {.exportc: "miqt_exec_callback_QScriptEngineAgent_exceptionCatch ".} =
  type Cb = proc(super: QScriptEngineAgentexceptionCatchBase, scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(scriptId: clonglong, exception: gen_qscriptvalue.QScriptValue): auto =
    callVirtualBase_exceptionCatch(QScriptEngineAgent(h: self), scriptId, exception)
  let slotval1 = scriptId

  let slotval2 = gen_qscriptvalue.QScriptValue(h: exception)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_supportsExtension(self: QScriptEngineAgent, extension: QScriptEngineAgentExtension): bool =


  fQScriptEngineAgent_virtualbase_supportsExtension(self.h, cint(extension))

type QScriptEngineAgentsupportsExtensionBase* = proc(extension: QScriptEngineAgentExtension): bool
proc onsupportsExtension*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentsupportsExtensionBase, extension: QScriptEngineAgentExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentsupportsExtensionBase, extension: QScriptEngineAgentExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_supportsExtension(self: ptr cQScriptEngineAgent, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QScriptEngineAgent_supportsExtension ".} =
  type Cb = proc(super: QScriptEngineAgentsupportsExtensionBase, extension: QScriptEngineAgentExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QScriptEngineAgentExtension): auto =
    callVirtualBase_supportsExtension(QScriptEngineAgent(h: self), extension)
  let slotval1 = QScriptEngineAgentExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_extension(self: QScriptEngineAgent, extension: QScriptEngineAgentExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant =


  gen_qvariant.QVariant(h: fQScriptEngineAgent_virtualbase_extension(self.h, cint(extension), argument.h))

type QScriptEngineAgentextensionBase* = proc(extension: QScriptEngineAgentExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant
proc onextension*(self: QScriptEngineAgent, slot: proc(super: QScriptEngineAgentextensionBase, extension: QScriptEngineAgentExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant) =
  # TODO check subclass
  type Cb = proc(super: QScriptEngineAgentextensionBase, extension: QScriptEngineAgentExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQScriptEngineAgent_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QScriptEngineAgent_extension(self: ptr cQScriptEngineAgent, slot: int, extension: cint, argument: pointer): pointer {.exportc: "miqt_exec_callback_QScriptEngineAgent_extension ".} =
  type Cb = proc(super: QScriptEngineAgentextensionBase, extension: QScriptEngineAgentExtension, argument: gen_qvariant.QVariant): gen_qvariant.QVariant
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: QScriptEngineAgentExtension, argument: gen_qvariant.QVariant): auto =
    callVirtualBase_extension(QScriptEngineAgent(h: self), extension, argument)
  let slotval1 = QScriptEngineAgentExtension(extension)

  let slotval2 = gen_qvariant.QVariant(h: argument)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc delete*(self: QScriptEngineAgent) =
  fcQScriptEngineAgent_delete(self.h)
