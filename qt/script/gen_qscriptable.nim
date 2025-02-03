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
{.compile("gen_qscriptable.cpp", cflags).}


import gen_qscriptable_types
export gen_qscriptable_types

import
  gen_qscriptcontext,
  gen_qscriptengine,
  gen_qscriptvalue
export
  gen_qscriptcontext,
  gen_qscriptengine,
  gen_qscriptvalue

type cQScriptable*{.exportc: "QScriptable", incompleteStruct.} = object

proc fcQScriptable_new(): ptr cQScriptable {.importc: "QScriptable_new".}
proc fcQScriptable_engine(self: pointer, ): pointer {.importc: "QScriptable_engine".}
proc fcQScriptable_context(self: pointer, ): pointer {.importc: "QScriptable_context".}
proc fcQScriptable_thisObject(self: pointer, ): pointer {.importc: "QScriptable_thisObject".}
proc fcQScriptable_argumentCount(self: pointer, ): cint {.importc: "QScriptable_argumentCount".}
proc fcQScriptable_argument(self: pointer, index: cint): pointer {.importc: "QScriptable_argument".}
proc fcQScriptable_delete(self: pointer) {.importc: "QScriptable_delete".}


func init*(T: type QScriptable, h: ptr cQScriptable): QScriptable =
  T(h: h)
proc create*(T: type QScriptable, ): QScriptable =

  QScriptable.init(fcQScriptable_new())
proc engine*(self: QScriptable, ): gen_qscriptengine.QScriptEngine =

  gen_qscriptengine.QScriptEngine(h: fcQScriptable_engine(self.h))

proc context*(self: QScriptable, ): gen_qscriptcontext.QScriptContext =

  gen_qscriptcontext.QScriptContext(h: fcQScriptable_context(self.h))

proc thisObject*(self: QScriptable, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptable_thisObject(self.h))

proc argumentCount*(self: QScriptable, ): cint =

  fcQScriptable_argumentCount(self.h)

proc argument*(self: QScriptable, index: cint): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptable_argument(self.h, index))

proc delete*(self: QScriptable) =
  fcQScriptable_delete(self.h)
