import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlexpression.cpp", cflags).}


import gen_qqmlexpression_types
export gen_qqmlexpression_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qqmlscriptstring,
  gen_qvariant
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qqmlscriptstring,
  gen_qvariant

type cQQmlExpression*{.exportc: "QQmlExpression", incompleteStruct.} = object

proc fcQQmlExpression_new(): ptr cQQmlExpression {.importc: "QQmlExpression_new".}
proc fcQQmlExpression_new2(param1: pointer, param2: pointer, param3: struct_miqt_string): ptr cQQmlExpression {.importc: "QQmlExpression_new2".}
proc fcQQmlExpression_new3(param1: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new3".}
proc fcQQmlExpression_new4(param1: pointer, param2: pointer, param3: struct_miqt_string, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new4".}
proc fcQQmlExpression_new5(param1: pointer, param2: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new5".}
proc fcQQmlExpression_new6(param1: pointer, param2: pointer, param3: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new6".}
proc fcQQmlExpression_new7(param1: pointer, param2: pointer, param3: pointer, param4: pointer): ptr cQQmlExpression {.importc: "QQmlExpression_new7".}
proc fcQQmlExpression_metaObject(self: pointer, ): pointer {.importc: "QQmlExpression_metaObject".}
proc fcQQmlExpression_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlExpression_metacast".}
proc fcQQmlExpression_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlExpression_metacall".}
proc fcQQmlExpression_tr(s: cstring): struct_miqt_string {.importc: "QQmlExpression_tr".}
proc fcQQmlExpression_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlExpression_trUtf8".}
proc fcQQmlExpression_engine(self: pointer, ): pointer {.importc: "QQmlExpression_engine".}
proc fcQQmlExpression_context(self: pointer, ): pointer {.importc: "QQmlExpression_context".}
proc fcQQmlExpression_expression(self: pointer, ): struct_miqt_string {.importc: "QQmlExpression_expression".}
proc fcQQmlExpression_setExpression(self: pointer, expression: struct_miqt_string): void {.importc: "QQmlExpression_setExpression".}
proc fcQQmlExpression_notifyOnValueChanged(self: pointer, ): bool {.importc: "QQmlExpression_notifyOnValueChanged".}
proc fcQQmlExpression_setNotifyOnValueChanged(self: pointer, notifyOnValueChanged: bool): void {.importc: "QQmlExpression_setNotifyOnValueChanged".}
proc fcQQmlExpression_sourceFile(self: pointer, ): struct_miqt_string {.importc: "QQmlExpression_sourceFile".}
proc fcQQmlExpression_lineNumber(self: pointer, ): cint {.importc: "QQmlExpression_lineNumber".}
proc fcQQmlExpression_columnNumber(self: pointer, ): cint {.importc: "QQmlExpression_columnNumber".}
proc fcQQmlExpression_setSourceLocation(self: pointer, fileName: struct_miqt_string, line: cint): void {.importc: "QQmlExpression_setSourceLocation".}
proc fcQQmlExpression_scopeObject(self: pointer, ): pointer {.importc: "QQmlExpression_scopeObject".}
proc fcQQmlExpression_hasError(self: pointer, ): bool {.importc: "QQmlExpression_hasError".}
proc fcQQmlExpression_clearError(self: pointer, ): void {.importc: "QQmlExpression_clearError".}
proc fcQQmlExpression_error(self: pointer, ): pointer {.importc: "QQmlExpression_error".}
proc fcQQmlExpression_evaluate(self: pointer, ): pointer {.importc: "QQmlExpression_evaluate".}
proc fcQQmlExpression_valueChanged(self: pointer, ): void {.importc: "QQmlExpression_valueChanged".}
proc fQQmlExpression_connect_valueChanged(self: pointer, slot: int) {.importc: "QQmlExpression_connect_valueChanged".}
proc fcQQmlExpression_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExpression_tr2".}
proc fcQQmlExpression_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExpression_tr3".}
proc fcQQmlExpression_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlExpression_trUtf82".}
proc fcQQmlExpression_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlExpression_trUtf83".}
proc fcQQmlExpression_setSourceLocation3(self: pointer, fileName: struct_miqt_string, line: cint, column: cint): void {.importc: "QQmlExpression_setSourceLocation3".}
proc fcQQmlExpression_evaluate1(self: pointer, valueIsUndefined: ptr bool): pointer {.importc: "QQmlExpression_evaluate1".}
proc fQQmlExpression_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlExpression_virtualbase_metacall".}
proc fcQQmlExpression_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_metacall".}
proc fQQmlExpression_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlExpression_virtualbase_event".}
proc fcQQmlExpression_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_event".}
proc fQQmlExpression_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlExpression_virtualbase_eventFilter".}
proc fcQQmlExpression_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_eventFilter".}
proc fQQmlExpression_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlExpression_virtualbase_timerEvent".}
proc fcQQmlExpression_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_timerEvent".}
proc fQQmlExpression_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlExpression_virtualbase_childEvent".}
proc fcQQmlExpression_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_childEvent".}
proc fQQmlExpression_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlExpression_virtualbase_customEvent".}
proc fcQQmlExpression_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_customEvent".}
proc fQQmlExpression_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExpression_virtualbase_connectNotify".}
proc fcQQmlExpression_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_connectNotify".}
proc fQQmlExpression_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlExpression_virtualbase_disconnectNotify".}
proc fcQQmlExpression_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlExpression_override_virtual_disconnectNotify".}
proc fcQQmlExpression_delete(self: pointer) {.importc: "QQmlExpression_delete".}


func init*(T: type QQmlExpression, h: ptr cQQmlExpression): QQmlExpression =
  T(h: h)
proc create*(T: type QQmlExpression, ): QQmlExpression =

  QQmlExpression.init(fcQQmlExpression_new())
proc create*(T: type QQmlExpression, param1: gen_qqmlcontext.QQmlContext, param2: gen_qobject.QObject, param3: string): QQmlExpression =

  QQmlExpression.init(fcQQmlExpression_new2(param1.h, param2.h, struct_miqt_string(data: param3, len: csize_t(len(param3)))))
proc create*(T: type QQmlExpression, param1: gen_qqmlscriptstring.QQmlScriptString): QQmlExpression =

  QQmlExpression.init(fcQQmlExpression_new3(param1.h))
proc create*(T: type QQmlExpression, param1: gen_qqmlcontext.QQmlContext, param2: gen_qobject.QObject, param3: string, param4: gen_qobject.QObject): QQmlExpression =

  QQmlExpression.init(fcQQmlExpression_new4(param1.h, param2.h, struct_miqt_string(data: param3, len: csize_t(len(param3))), param4.h))
proc create*(T: type QQmlExpression, param1: gen_qqmlscriptstring.QQmlScriptString, param2: gen_qqmlcontext.QQmlContext): QQmlExpression =

  QQmlExpression.init(fcQQmlExpression_new5(param1.h, param2.h))
proc create*(T: type QQmlExpression, param1: gen_qqmlscriptstring.QQmlScriptString, param2: gen_qqmlcontext.QQmlContext, param3: gen_qobject.QObject): QQmlExpression =

  QQmlExpression.init(fcQQmlExpression_new6(param1.h, param2.h, param3.h))
proc create*(T: type QQmlExpression, param1: gen_qqmlscriptstring.QQmlScriptString, param2: gen_qqmlcontext.QQmlContext, param3: gen_qobject.QObject, param4: gen_qobject.QObject): QQmlExpression =

  QQmlExpression.init(fcQQmlExpression_new7(param1.h, param2.h, param3.h, param4.h))
proc metaObject*(self: QQmlExpression, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlExpression_metaObject(self.h))

proc metacast*(self: QQmlExpression, param1: cstring): pointer =

  fcQQmlExpression_metacast(self.h, param1)

proc metacall*(self: QQmlExpression, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlExpression_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlExpression, s: cstring): string =

  let v_ms = fcQQmlExpression_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlExpression, s: cstring): string =

  let v_ms = fcQQmlExpression_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc engine*(self: QQmlExpression, ): gen_qqmlengine.QQmlEngine =

  gen_qqmlengine.QQmlEngine(h: fcQQmlExpression_engine(self.h))

proc context*(self: QQmlExpression, ): gen_qqmlcontext.QQmlContext =

  gen_qqmlcontext.QQmlContext(h: fcQQmlExpression_context(self.h))

proc expression*(self: QQmlExpression, ): string =

  let v_ms = fcQQmlExpression_expression(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setExpression*(self: QQmlExpression, expression: string): void =

  fcQQmlExpression_setExpression(self.h, struct_miqt_string(data: expression, len: csize_t(len(expression))))

proc notifyOnValueChanged*(self: QQmlExpression, ): bool =

  fcQQmlExpression_notifyOnValueChanged(self.h)

proc setNotifyOnValueChanged*(self: QQmlExpression, notifyOnValueChanged: bool): void =

  fcQQmlExpression_setNotifyOnValueChanged(self.h, notifyOnValueChanged)

proc sourceFile*(self: QQmlExpression, ): string =

  let v_ms = fcQQmlExpression_sourceFile(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc lineNumber*(self: QQmlExpression, ): cint =

  fcQQmlExpression_lineNumber(self.h)

proc columnNumber*(self: QQmlExpression, ): cint =

  fcQQmlExpression_columnNumber(self.h)

proc setSourceLocation*(self: QQmlExpression, fileName: string, line: cint): void =

  fcQQmlExpression_setSourceLocation(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), line)

proc scopeObject*(self: QQmlExpression, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQmlExpression_scopeObject(self.h))

proc hasError*(self: QQmlExpression, ): bool =

  fcQQmlExpression_hasError(self.h)

proc clearError*(self: QQmlExpression, ): void =

  fcQQmlExpression_clearError(self.h)

proc error*(self: QQmlExpression, ): gen_qqmlerror.QQmlError =

  gen_qqmlerror.QQmlError(h: fcQQmlExpression_error(self.h))

proc evaluate*(self: QQmlExpression, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQmlExpression_evaluate(self.h))

proc valueChanged*(self: QQmlExpression, ): void =

  fcQQmlExpression_valueChanged(self.h)

proc miqt_exec_callback_QQmlExpression_valueChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onvalueChanged*(self: QQmlExpression, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQmlExpression_connect_valueChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQmlExpression, s: cstring, c: cstring): string =

  let v_ms = fcQQmlExpression_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlExpression, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlExpression_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlExpression, s: cstring, c: cstring): string =

  let v_ms = fcQQmlExpression_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlExpression, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlExpression_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSourceLocation3*(self: QQmlExpression, fileName: string, line: cint, column: cint): void =

  fcQQmlExpression_setSourceLocation3(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), line, column)

proc evaluate1*(self: QQmlExpression, valueIsUndefined: ptr bool): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQQmlExpression_evaluate1(self.h, valueIsUndefined))

proc callVirtualBase_metacall(self: QQmlExpression, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlExpression_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlExpressionmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlExpression, slot: proc(super: QQmlExpressionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_metacall(self: ptr cQQmlExpression, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlExpression_metacall ".} =
  type Cb = proc(super: QQmlExpressionmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlExpression(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QQmlExpression, event: gen_qcoreevent.QEvent): bool =


  fQQmlExpression_virtualbase_event(self.h, event.h)

type QQmlExpressioneventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlExpression, slot: proc(super: QQmlExpressioneventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressioneventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_event(self: ptr cQQmlExpression, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExpression_event ".} =
  type Cb = proc(super: QQmlExpressioneventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlExpression(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlExpression, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlExpression_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlExpressioneventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlExpression, slot: proc(super: QQmlExpressioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_eventFilter(self: ptr cQQmlExpression, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlExpression_eventFilter ".} =
  type Cb = proc(super: QQmlExpressioneventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlExpression(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlExpression, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlExpression_virtualbase_timerEvent(self.h, event.h)

type QQmlExpressiontimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlExpression, slot: proc(super: QQmlExpressiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_timerEvent(self: ptr cQQmlExpression, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_timerEvent ".} =
  type Cb = proc(super: QQmlExpressiontimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlExpression(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlExpression, event: gen_qcoreevent.QChildEvent): void =


  fQQmlExpression_virtualbase_childEvent(self.h, event.h)

type QQmlExpressionchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlExpression, slot: proc(super: QQmlExpressionchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_childEvent(self: ptr cQQmlExpression, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_childEvent ".} =
  type Cb = proc(super: QQmlExpressionchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlExpression(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlExpression, event: gen_qcoreevent.QEvent): void =


  fQQmlExpression_virtualbase_customEvent(self.h, event.h)

type QQmlExpressioncustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlExpression, slot: proc(super: QQmlExpressioncustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_customEvent(self: ptr cQQmlExpression, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_customEvent ".} =
  type Cb = proc(super: QQmlExpressioncustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlExpression(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlExpression, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlExpression_virtualbase_connectNotify(self.h, signal.h)

type QQmlExpressionconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlExpression, slot: proc(super: QQmlExpressionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_connectNotify(self: ptr cQQmlExpression, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_connectNotify ".} =
  type Cb = proc(super: QQmlExpressionconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlExpression(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlExpression, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlExpression_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlExpressiondisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlExpression, slot: proc(super: QQmlExpressiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlExpressiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlExpression_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlExpression_disconnectNotify(self: ptr cQQmlExpression, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlExpression_disconnectNotify ".} =
  type Cb = proc(super: QQmlExpressiondisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlExpression(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQmlExpression) =
  fcQQmlExpression_delete(self.h)
