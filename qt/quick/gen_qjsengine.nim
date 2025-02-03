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
{.compile("gen_qjsengine.cpp", cflags).}


type QJSEngineExtension* = cint
const
  QJSEngineTranslationExtension* = 1
  QJSEngineConsoleExtension* = 2
  QJSEngineGarbageCollectionExtension* = 4
  QJSEngineAllExtensions* = 4294967295



import gen_qjsengine_types
export gen_qjsengine_types

import
  gen_qcoreevent,
  gen_qjsvalue,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qjsvalue,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQJSEngine*{.exportc: "QJSEngine", incompleteStruct.} = object

proc fcQJSEngine_new(): ptr cQJSEngine {.importc: "QJSEngine_new".}
proc fcQJSEngine_new2(parent: pointer): ptr cQJSEngine {.importc: "QJSEngine_new2".}
proc fcQJSEngine_metaObject(self: pointer, ): pointer {.importc: "QJSEngine_metaObject".}
proc fcQJSEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QJSEngine_metacast".}
proc fcQJSEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QJSEngine_metacall".}
proc fcQJSEngine_tr(s: cstring): struct_miqt_string {.importc: "QJSEngine_tr".}
proc fcQJSEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QJSEngine_trUtf8".}
proc fcQJSEngine_globalObject(self: pointer, ): pointer {.importc: "QJSEngine_globalObject".}
proc fcQJSEngine_evaluate(self: pointer, program: struct_miqt_string): pointer {.importc: "QJSEngine_evaluate".}
proc fcQJSEngine_importModule(self: pointer, fileName: struct_miqt_string): pointer {.importc: "QJSEngine_importModule".}
proc fcQJSEngine_newObject(self: pointer, ): pointer {.importc: "QJSEngine_newObject".}
proc fcQJSEngine_newArray(self: pointer, ): pointer {.importc: "QJSEngine_newArray".}
proc fcQJSEngine_newQObject(self: pointer, objectVal: pointer): pointer {.importc: "QJSEngine_newQObject".}
proc fcQJSEngine_newQMetaObject(self: pointer, metaObject: pointer): pointer {.importc: "QJSEngine_newQMetaObject".}
proc fcQJSEngine_newErrorObject(self: pointer, errorType: cint): pointer {.importc: "QJSEngine_newErrorObject".}
proc fcQJSEngine_collectGarbage(self: pointer, ): void {.importc: "QJSEngine_collectGarbage".}
proc fcQJSEngine_installTranslatorFunctions(self: pointer, ): void {.importc: "QJSEngine_installTranslatorFunctions".}
proc fcQJSEngine_installExtensions(self: pointer, extensions: cint): void {.importc: "QJSEngine_installExtensions".}
proc fcQJSEngine_setInterrupted(self: pointer, interrupted: bool): void {.importc: "QJSEngine_setInterrupted".}
proc fcQJSEngine_isInterrupted(self: pointer, ): bool {.importc: "QJSEngine_isInterrupted".}
proc fcQJSEngine_throwError(self: pointer, message: struct_miqt_string): void {.importc: "QJSEngine_throwError".}
proc fcQJSEngine_throwErrorWithErrorType(self: pointer, errorType: cint): void {.importc: "QJSEngine_throwErrorWithErrorType".}
proc fcQJSEngine_uiLanguage(self: pointer, ): struct_miqt_string {.importc: "QJSEngine_uiLanguage".}
proc fcQJSEngine_setUiLanguage(self: pointer, language: struct_miqt_string): void {.importc: "QJSEngine_setUiLanguage".}
proc fcQJSEngine_uiLanguageChanged(self: pointer, ): void {.importc: "QJSEngine_uiLanguageChanged".}
proc fQJSEngine_connect_uiLanguageChanged(self: pointer, slot: int) {.importc: "QJSEngine_connect_uiLanguageChanged".}
proc fcQJSEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QJSEngine_tr2".}
proc fcQJSEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QJSEngine_tr3".}
proc fcQJSEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QJSEngine_trUtf82".}
proc fcQJSEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QJSEngine_trUtf83".}
proc fcQJSEngine_evaluate2(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string): pointer {.importc: "QJSEngine_evaluate2".}
proc fcQJSEngine_evaluate3(self: pointer, program: struct_miqt_string, fileName: struct_miqt_string, lineNumber: cint): pointer {.importc: "QJSEngine_evaluate3".}
proc fcQJSEngine_newArray1(self: pointer, length: cuint): pointer {.importc: "QJSEngine_newArray1".}
proc fcQJSEngine_newErrorObject2(self: pointer, errorType: cint, message: struct_miqt_string): pointer {.importc: "QJSEngine_newErrorObject2".}
proc fcQJSEngine_installTranslatorFunctions1(self: pointer, objectVal: pointer): void {.importc: "QJSEngine_installTranslatorFunctions1".}
proc fcQJSEngine_installExtensions2(self: pointer, extensions: cint, objectVal: pointer): void {.importc: "QJSEngine_installExtensions2".}
proc fcQJSEngine_throwError2(self: pointer, errorType: cint, message: struct_miqt_string): void {.importc: "QJSEngine_throwError2".}
proc fQJSEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QJSEngine_virtualbase_metacall".}
proc fcQJSEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_metacall".}
proc fQJSEngine_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QJSEngine_virtualbase_event".}
proc fcQJSEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_event".}
proc fQJSEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QJSEngine_virtualbase_eventFilter".}
proc fcQJSEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_eventFilter".}
proc fQJSEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QJSEngine_virtualbase_timerEvent".}
proc fcQJSEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_timerEvent".}
proc fQJSEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QJSEngine_virtualbase_childEvent".}
proc fcQJSEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_childEvent".}
proc fQJSEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QJSEngine_virtualbase_customEvent".}
proc fcQJSEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_customEvent".}
proc fQJSEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QJSEngine_virtualbase_connectNotify".}
proc fcQJSEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_connectNotify".}
proc fQJSEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QJSEngine_virtualbase_disconnectNotify".}
proc fcQJSEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QJSEngine_override_virtual_disconnectNotify".}
proc fcQJSEngine_delete(self: pointer) {.importc: "QJSEngine_delete".}


func init*(T: type QJSEngine, h: ptr cQJSEngine): QJSEngine =
  T(h: h)
proc create*(T: type QJSEngine, ): QJSEngine =

  QJSEngine.init(fcQJSEngine_new())
proc create*(T: type QJSEngine, parent: gen_qobject.QObject): QJSEngine =

  QJSEngine.init(fcQJSEngine_new2(parent.h))
proc metaObject*(self: QJSEngine, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQJSEngine_metaObject(self.h))

proc metacast*(self: QJSEngine, param1: cstring): pointer =

  fcQJSEngine_metacast(self.h, param1)

proc metacall*(self: QJSEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQJSEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QJSEngine, s: cstring): string =

  let v_ms = fcQJSEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QJSEngine, s: cstring): string =

  let v_ms = fcQJSEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc globalObject*(self: QJSEngine, ): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_globalObject(self.h))

proc evaluate*(self: QJSEngine, program: string): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_evaluate(self.h, struct_miqt_string(data: program, len: csize_t(len(program)))))

proc importModule*(self: QJSEngine, fileName: string): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_importModule(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc newObject*(self: QJSEngine, ): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_newObject(self.h))

proc newArray*(self: QJSEngine, ): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_newArray(self.h))

proc newQObject*(self: QJSEngine, objectVal: gen_qobject.QObject): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_newQObject(self.h, objectVal.h))

proc newQMetaObject*(self: QJSEngine, metaObject: gen_qobjectdefs.QMetaObject): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_newQMetaObject(self.h, metaObject.h))

proc newErrorObject*(self: QJSEngine, errorType: gen_qjsvalue.QJSValueErrorType): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_newErrorObject(self.h, cint(errorType)))

proc collectGarbage*(self: QJSEngine, ): void =

  fcQJSEngine_collectGarbage(self.h)

proc installTranslatorFunctions*(self: QJSEngine, ): void =

  fcQJSEngine_installTranslatorFunctions(self.h)

proc installExtensions*(self: QJSEngine, extensions: QJSEngineExtension): void =

  fcQJSEngine_installExtensions(self.h, cint(extensions))

proc setInterrupted*(self: QJSEngine, interrupted: bool): void =

  fcQJSEngine_setInterrupted(self.h, interrupted)

proc isInterrupted*(self: QJSEngine, ): bool =

  fcQJSEngine_isInterrupted(self.h)

proc throwError*(self: QJSEngine, message: string): void =

  fcQJSEngine_throwError(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc throwErrorWithErrorType*(self: QJSEngine, errorType: gen_qjsvalue.QJSValueErrorType): void =

  fcQJSEngine_throwErrorWithErrorType(self.h, cint(errorType))

proc uiLanguage*(self: QJSEngine, ): string =

  let v_ms = fcQJSEngine_uiLanguage(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setUiLanguage*(self: QJSEngine, language: string): void =

  fcQJSEngine_setUiLanguage(self.h, struct_miqt_string(data: language, len: csize_t(len(language))))

proc uiLanguageChanged*(self: QJSEngine, ): void =

  fcQJSEngine_uiLanguageChanged(self.h)

proc miqt_exec_callback_QJSEngine_uiLanguageChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onuiLanguageChanged*(self: QJSEngine, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQJSEngine_connect_uiLanguageChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QJSEngine, s: cstring, c: cstring): string =

  let v_ms = fcQJSEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QJSEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQJSEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QJSEngine, s: cstring, c: cstring): string =

  let v_ms = fcQJSEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QJSEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQJSEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc evaluate2*(self: QJSEngine, program: string, fileName: string): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_evaluate2(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc evaluate3*(self: QJSEngine, program: string, fileName: string, lineNumber: cint): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_evaluate3(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))), lineNumber))

proc newArray1*(self: QJSEngine, length: cuint): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_newArray1(self.h, length))

proc newErrorObject2*(self: QJSEngine, errorType: gen_qjsvalue.QJSValueErrorType, message: string): gen_qjsvalue.QJSValue =

  gen_qjsvalue.QJSValue(h: fcQJSEngine_newErrorObject2(self.h, cint(errorType), struct_miqt_string(data: message, len: csize_t(len(message)))))

proc installTranslatorFunctions1*(self: QJSEngine, objectVal: gen_qjsvalue.QJSValue): void =

  fcQJSEngine_installTranslatorFunctions1(self.h, objectVal.h)

proc installExtensions2*(self: QJSEngine, extensions: QJSEngineExtension, objectVal: gen_qjsvalue.QJSValue): void =

  fcQJSEngine_installExtensions2(self.h, cint(extensions), objectVal.h)

proc throwError2*(self: QJSEngine, errorType: gen_qjsvalue.QJSValueErrorType, message: string): void =

  fcQJSEngine_throwError2(self.h, cint(errorType), struct_miqt_string(data: message, len: csize_t(len(message))))

proc callVirtualBase_metacall(self: QJSEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQJSEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QJSEnginemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QJSEngine, slot: proc(super: QJSEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QJSEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_metacall(self: ptr cQJSEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QJSEngine_metacall ".} =
  type Cb = proc(super: QJSEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QJSEngine(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QJSEngine, event: gen_qcoreevent.QEvent): bool =


  fQJSEngine_virtualbase_event(self.h, event.h)

type QJSEngineeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QJSEngine, slot: proc(super: QJSEngineeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QJSEngineeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_event(self: ptr cQJSEngine, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QJSEngine_event ".} =
  type Cb = proc(super: QJSEngineeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QJSEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QJSEngine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQJSEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QJSEngineeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QJSEngine, slot: proc(super: QJSEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QJSEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_eventFilter(self: ptr cQJSEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QJSEngine_eventFilter ".} =
  type Cb = proc(super: QJSEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QJSEngine(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QJSEngine, event: gen_qcoreevent.QTimerEvent): void =


  fQJSEngine_virtualbase_timerEvent(self.h, event.h)

type QJSEnginetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QJSEngine, slot: proc(super: QJSEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QJSEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_timerEvent(self: ptr cQJSEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_timerEvent ".} =
  type Cb = proc(super: QJSEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QJSEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QJSEngine, event: gen_qcoreevent.QChildEvent): void =


  fQJSEngine_virtualbase_childEvent(self.h, event.h)

type QJSEnginechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QJSEngine, slot: proc(super: QJSEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QJSEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_childEvent(self: ptr cQJSEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_childEvent ".} =
  type Cb = proc(super: QJSEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QJSEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QJSEngine, event: gen_qcoreevent.QEvent): void =


  fQJSEngine_virtualbase_customEvent(self.h, event.h)

type QJSEnginecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QJSEngine, slot: proc(super: QJSEnginecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QJSEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_customEvent(self: ptr cQJSEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_customEvent ".} =
  type Cb = proc(super: QJSEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QJSEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QJSEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQJSEngine_virtualbase_connectNotify(self.h, signal.h)

type QJSEngineconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QJSEngine, slot: proc(super: QJSEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QJSEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_connectNotify(self: ptr cQJSEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_connectNotify ".} =
  type Cb = proc(super: QJSEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QJSEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QJSEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQJSEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QJSEnginedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QJSEngine, slot: proc(super: QJSEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QJSEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQJSEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QJSEngine_disconnectNotify(self: ptr cQJSEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QJSEngine_disconnectNotify ".} =
  type Cb = proc(super: QJSEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QJSEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QJSEngine) =
  fcQJSEngine_delete(self.h)
