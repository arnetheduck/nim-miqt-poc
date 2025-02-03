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
{.compile("gen_qscriptcontext.cpp", cflags).}


type QScriptContextExecutionState* = cint
const
  QScriptContextNormalState* = 0
  QScriptContextExceptionState* = 1



type QScriptContextError* = cint
const
  QScriptContextUnknownError* = 0
  QScriptContextReferenceError* = 1
  QScriptContextSyntaxError* = 2
  QScriptContextTypeError* = 3
  QScriptContextRangeError* = 4
  QScriptContextURIError* = 5



import gen_qscriptcontext_types
export gen_qscriptcontext_types

import
  gen_qscriptengine,
  gen_qscriptvalue
export
  gen_qscriptengine,
  gen_qscriptvalue

type cQScriptContext*{.exportc: "QScriptContext", incompleteStruct.} = object

proc fcQScriptContext_parentContext(self: pointer, ): pointer {.importc: "QScriptContext_parentContext".}
proc fcQScriptContext_engine(self: pointer, ): pointer {.importc: "QScriptContext_engine".}
proc fcQScriptContext_state(self: pointer, ): cint {.importc: "QScriptContext_state".}
proc fcQScriptContext_callee(self: pointer, ): pointer {.importc: "QScriptContext_callee".}
proc fcQScriptContext_argumentCount(self: pointer, ): cint {.importc: "QScriptContext_argumentCount".}
proc fcQScriptContext_argument(self: pointer, index: cint): pointer {.importc: "QScriptContext_argument".}
proc fcQScriptContext_argumentsObject(self: pointer, ): pointer {.importc: "QScriptContext_argumentsObject".}
proc fcQScriptContext_scopeChain(self: pointer, ): struct_miqt_array {.importc: "QScriptContext_scopeChain".}
proc fcQScriptContext_pushScope(self: pointer, objectVal: pointer): void {.importc: "QScriptContext_pushScope".}
proc fcQScriptContext_popScope(self: pointer, ): pointer {.importc: "QScriptContext_popScope".}
proc fcQScriptContext_returnValue(self: pointer, ): pointer {.importc: "QScriptContext_returnValue".}
proc fcQScriptContext_setReturnValue(self: pointer, resultVal: pointer): void {.importc: "QScriptContext_setReturnValue".}
proc fcQScriptContext_activationObject(self: pointer, ): pointer {.importc: "QScriptContext_activationObject".}
proc fcQScriptContext_setActivationObject(self: pointer, activation: pointer): void {.importc: "QScriptContext_setActivationObject".}
proc fcQScriptContext_thisObject(self: pointer, ): pointer {.importc: "QScriptContext_thisObject".}
proc fcQScriptContext_setThisObject(self: pointer, thisObject: pointer): void {.importc: "QScriptContext_setThisObject".}
proc fcQScriptContext_isCalledAsConstructor(self: pointer, ): bool {.importc: "QScriptContext_isCalledAsConstructor".}
proc fcQScriptContext_throwValue(self: pointer, value: pointer): pointer {.importc: "QScriptContext_throwValue".}
proc fcQScriptContext_throwError(self: pointer, error: cint, text: struct_miqt_string): pointer {.importc: "QScriptContext_throwError".}
proc fcQScriptContext_throwErrorWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QScriptContext_throwErrorWithText".}
proc fcQScriptContext_backtrace(self: pointer, ): struct_miqt_array {.importc: "QScriptContext_backtrace".}
proc fcQScriptContext_toString(self: pointer, ): struct_miqt_string {.importc: "QScriptContext_toString".}
proc fcQScriptContext_delete(self: pointer) {.importc: "QScriptContext_delete".}


func init*(T: type QScriptContext, h: ptr cQScriptContext): QScriptContext =
  T(h: h)
proc parentContext*(self: QScriptContext, ): QScriptContext =

  QScriptContext(h: fcQScriptContext_parentContext(self.h))

proc engine*(self: QScriptContext, ): gen_qscriptengine.QScriptEngine =

  gen_qscriptengine.QScriptEngine(h: fcQScriptContext_engine(self.h))

proc state*(self: QScriptContext, ): QScriptContextExecutionState =

  QScriptContextExecutionState(fcQScriptContext_state(self.h))

proc callee*(self: QScriptContext, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_callee(self.h))

proc argumentCount*(self: QScriptContext, ): cint =

  fcQScriptContext_argumentCount(self.h)

proc argument*(self: QScriptContext, index: cint): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_argument(self.h, index))

proc argumentsObject*(self: QScriptContext, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_argumentsObject(self.h))

proc scopeChain*(self: QScriptContext, ): seq[gen_qscriptvalue.QScriptValue] =

  var v_ma = fcQScriptContext_scopeChain(self.h)
  var vx_ret = newSeq[gen_qscriptvalue.QScriptValue](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qscriptvalue.QScriptValue(h: v_outCast[i])
  vx_ret

proc pushScope*(self: QScriptContext, objectVal: gen_qscriptvalue.QScriptValue): void =

  fcQScriptContext_pushScope(self.h, objectVal.h)

proc popScope*(self: QScriptContext, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_popScope(self.h))

proc returnValue*(self: QScriptContext, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_returnValue(self.h))

proc setReturnValue*(self: QScriptContext, resultVal: gen_qscriptvalue.QScriptValue): void =

  fcQScriptContext_setReturnValue(self.h, resultVal.h)

proc activationObject*(self: QScriptContext, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_activationObject(self.h))

proc setActivationObject*(self: QScriptContext, activation: gen_qscriptvalue.QScriptValue): void =

  fcQScriptContext_setActivationObject(self.h, activation.h)

proc thisObject*(self: QScriptContext, ): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_thisObject(self.h))

proc setThisObject*(self: QScriptContext, thisObject: gen_qscriptvalue.QScriptValue): void =

  fcQScriptContext_setThisObject(self.h, thisObject.h)

proc isCalledAsConstructor*(self: QScriptContext, ): bool =

  fcQScriptContext_isCalledAsConstructor(self.h)

proc throwValue*(self: QScriptContext, value: gen_qscriptvalue.QScriptValue): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_throwValue(self.h, value.h))

proc throwError*(self: QScriptContext, error: QScriptContextError, text: string): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_throwError(self.h, cint(error), struct_miqt_string(data: text, len: csize_t(len(text)))))

proc throwErrorWithText*(self: QScriptContext, text: string): gen_qscriptvalue.QScriptValue =

  gen_qscriptvalue.QScriptValue(h: fcQScriptContext_throwErrorWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc backtrace*(self: QScriptContext, ): seq[string] =

  var v_ma = fcQScriptContext_backtrace(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc toString*(self: QScriptContext, ): string =

  let v_ms = fcQScriptContext_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QScriptContext) =
  fcQScriptContext_delete(self.h)
