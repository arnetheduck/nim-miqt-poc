import Qt5Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5Widgets")
{.compile("gen_qtranslator.cpp", cflags).}


import gen_qtranslator_types
export gen_qtranslator_types

import
  gen_qcoreevent,
  gen_qlocale,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qlocale,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQTranslator*{.exportc: "QTranslator", incompleteStruct.} = object

proc fcQTranslator_new(): ptr cQTranslator {.importc: "QTranslator_new".}
proc fcQTranslator_new2(parent: pointer): ptr cQTranslator {.importc: "QTranslator_new2".}
proc fcQTranslator_metaObject(self: pointer, ): pointer {.importc: "QTranslator_metaObject".}
proc fcQTranslator_metacast(self: pointer, param1: cstring): pointer {.importc: "QTranslator_metacast".}
proc fcQTranslator_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTranslator_metacall".}
proc fcQTranslator_tr(s: cstring): struct_miqt_string {.importc: "QTranslator_tr".}
proc fcQTranslator_trUtf8(s: cstring): struct_miqt_string {.importc: "QTranslator_trUtf8".}
proc fcQTranslator_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_translate".}
proc fcQTranslator_isEmpty(self: pointer, ): bool {.importc: "QTranslator_isEmpty".}
proc fcQTranslator_language(self: pointer, ): struct_miqt_string {.importc: "QTranslator_language".}
proc fcQTranslator_filePath(self: pointer, ): struct_miqt_string {.importc: "QTranslator_filePath".}
proc fcQTranslator_load(self: pointer, filename: struct_miqt_string): bool {.importc: "QTranslator_load".}
proc fcQTranslator_load2(self: pointer, locale: pointer, filename: struct_miqt_string): bool {.importc: "QTranslator_load2".}
proc fcQTranslator_load3(self: pointer, data: ptr uint8, len: cint): bool {.importc: "QTranslator_load3".}
proc fcQTranslator_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTranslator_tr2".}
proc fcQTranslator_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_tr3".}
proc fcQTranslator_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QTranslator_trUtf82".}
proc fcQTranslator_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTranslator_trUtf83".}
proc fcQTranslator_load22(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string): bool {.importc: "QTranslator_load22".}
proc fcQTranslator_load32(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string, search_delimiters: struct_miqt_string): bool {.importc: "QTranslator_load32".}
proc fcQTranslator_load4(self: pointer, filename: struct_miqt_string, directory: struct_miqt_string, search_delimiters: struct_miqt_string, suffix: struct_miqt_string): bool {.importc: "QTranslator_load4".}
proc fcQTranslator_load33(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string): bool {.importc: "QTranslator_load33".}
proc fcQTranslator_load42(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string, directory: struct_miqt_string): bool {.importc: "QTranslator_load42".}
proc fcQTranslator_load5(self: pointer, locale: pointer, filename: struct_miqt_string, prefix: struct_miqt_string, directory: struct_miqt_string, suffix: struct_miqt_string): bool {.importc: "QTranslator_load5".}
proc fcQTranslator_load34(self: pointer, data: ptr uint8, len: cint, directory: struct_miqt_string): bool {.importc: "QTranslator_load34".}
proc fQTranslator_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTranslator_virtualbase_metacall".}
proc fcQTranslator_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_metacall".}
proc fQTranslator_virtualbase_translate(self: pointer, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string{.importc: "QTranslator_virtualbase_translate".}
proc fcQTranslator_override_virtual_translate(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_translate".}
proc fQTranslator_virtualbase_isEmpty(self: pointer, ): bool{.importc: "QTranslator_virtualbase_isEmpty".}
proc fcQTranslator_override_virtual_isEmpty(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_isEmpty".}
proc fQTranslator_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTranslator_virtualbase_event".}
proc fcQTranslator_override_virtual_event(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_event".}
proc fQTranslator_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTranslator_virtualbase_eventFilter".}
proc fcQTranslator_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_eventFilter".}
proc fQTranslator_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTranslator_virtualbase_timerEvent".}
proc fcQTranslator_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_timerEvent".}
proc fQTranslator_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTranslator_virtualbase_childEvent".}
proc fcQTranslator_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_childEvent".}
proc fQTranslator_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTranslator_virtualbase_customEvent".}
proc fcQTranslator_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_customEvent".}
proc fQTranslator_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTranslator_virtualbase_connectNotify".}
proc fcQTranslator_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_connectNotify".}
proc fQTranslator_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTranslator_virtualbase_disconnectNotify".}
proc fcQTranslator_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTranslator_override_virtual_disconnectNotify".}
proc fcQTranslator_delete(self: pointer) {.importc: "QTranslator_delete".}


func init*(T: type QTranslator, h: ptr cQTranslator): QTranslator =
  T(h: h)
proc create*(T: type QTranslator, ): QTranslator =

  QTranslator.init(fcQTranslator_new())
proc create*(T: type QTranslator, parent: gen_qobject.QObject): QTranslator =

  QTranslator.init(fcQTranslator_new2(parent.h))
proc metaObject*(self: QTranslator, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTranslator_metaObject(self.h))

proc metacast*(self: QTranslator, param1: cstring): pointer =

  fcQTranslator_metacast(self.h, param1)

proc metacall*(self: QTranslator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTranslator_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTranslator, s: cstring): string =

  let v_ms = fcQTranslator_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QTranslator, s: cstring): string =

  let v_ms = fcQTranslator_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc translate*(self: QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string =

  let v_ms = fcQTranslator_translate(self.h, context, sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isEmpty*(self: QTranslator, ): bool =

  fcQTranslator_isEmpty(self.h)

proc language*(self: QTranslator, ): string =

  let v_ms = fcQTranslator_language(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc filePath*(self: QTranslator, ): string =

  let v_ms = fcQTranslator_filePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load*(self: QTranslator, filename: string): bool =

  fcQTranslator_load(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc load2*(self: QTranslator, locale: gen_qlocale.QLocale, filename: string): bool =

  fcQTranslator_load2(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))))

proc load3*(self: QTranslator, data: ptr uint8, len: cint): bool =

  fcQTranslator_load3(self.h, data, len)

proc tr2*(_: type QTranslator, s: cstring, c: cstring): string =

  let v_ms = fcQTranslator_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTranslator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTranslator_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QTranslator, s: cstring, c: cstring): string =

  let v_ms = fcQTranslator_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QTranslator, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTranslator_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc load22*(self: QTranslator, filename: string, directory: string): bool =

  fcQTranslator_load22(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc load32*(self: QTranslator, filename: string, directory: string, search_delimiters: string): bool =

  fcQTranslator_load32(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: search_delimiters, len: csize_t(len(search_delimiters))))

proc load4*(self: QTranslator, filename: string, directory: string, search_delimiters: string, suffix: string): bool =

  fcQTranslator_load4(self.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: search_delimiters, len: csize_t(len(search_delimiters))), struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc load33*(self: QTranslator, locale: gen_qlocale.QLocale, filename: string, prefix: string): bool =

  fcQTranslator_load33(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc load42*(self: QTranslator, locale: gen_qlocale.QLocale, filename: string, prefix: string, directory: string): bool =

  fcQTranslator_load42(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))), struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc load5*(self: QTranslator, locale: gen_qlocale.QLocale, filename: string, prefix: string, directory: string, suffix: string): bool =

  fcQTranslator_load5(self.h, locale.h, struct_miqt_string(data: filename, len: csize_t(len(filename))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))), struct_miqt_string(data: directory, len: csize_t(len(directory))), struct_miqt_string(data: suffix, len: csize_t(len(suffix))))

proc load34*(self: QTranslator, data: ptr uint8, len: cint, directory: string): bool =

  fcQTranslator_load34(self.h, data, len, struct_miqt_string(data: directory, len: csize_t(len(directory))))

proc callVirtualBase_metacall(self: QTranslator, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTranslator_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTranslatormetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTranslator, slot: proc(super: QTranslatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTranslatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_metacall(self: ptr cQTranslator, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTranslator_metacall ".} =
  type Cb = proc(super: QTranslatormetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTranslator(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_translate(self: QTranslator, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string =


  let v_ms = fQTranslator_virtualbase_translate(self.h, context, sourceText, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTranslatortranslateBase* = proc(context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string
proc ontranslate*(self: QTranslator, slot: proc(super: QTranslatortranslateBase, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string) =
  # TODO check subclass
  type Cb = proc(super: QTranslatortranslateBase, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_translate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_translate(self: ptr cQTranslator, slot: int, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.exportc: "miqt_exec_callback_QTranslator_translate ".} =
  type Cb = proc(super: QTranslatortranslateBase, context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(context: cstring, sourceText: cstring, disambiguation: cstring, n: cint): auto =
    callVirtualBase_translate(QTranslator(h: self), context, sourceText, disambiguation, n)
  let slotval1 = (context)

  let slotval2 = (sourceText)

  let slotval3 = (disambiguation)

  let slotval4 = n


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_isEmpty(self: QTranslator, ): bool =


  fQTranslator_virtualbase_isEmpty(self.h)

type QTranslatorisEmptyBase* = proc(): bool
proc onisEmpty*(self: QTranslator, slot: proc(super: QTranslatorisEmptyBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTranslatorisEmptyBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_isEmpty(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_isEmpty(self: ptr cQTranslator, slot: int): bool {.exportc: "miqt_exec_callback_QTranslator_isEmpty ".} =
  type Cb = proc(super: QTranslatorisEmptyBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isEmpty(QTranslator(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_event(self: QTranslator, event: gen_qcoreevent.QEvent): bool =


  fQTranslator_virtualbase_event(self.h, event.h)

type QTranslatoreventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTranslator, slot: proc(super: QTranslatoreventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTranslatoreventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_event(self: ptr cQTranslator, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTranslator_event ".} =
  type Cb = proc(super: QTranslatoreventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTranslator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTranslator, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTranslator_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTranslatoreventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTranslator, slot: proc(super: QTranslatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTranslatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_eventFilter(self: ptr cQTranslator, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTranslator_eventFilter ".} =
  type Cb = proc(super: QTranslatoreventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTranslator(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTranslator, event: gen_qcoreevent.QTimerEvent): void =


  fQTranslator_virtualbase_timerEvent(self.h, event.h)

type QTranslatortimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTranslator, slot: proc(super: QTranslatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTranslatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_timerEvent(self: ptr cQTranslator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTranslator_timerEvent ".} =
  type Cb = proc(super: QTranslatortimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTranslator(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTranslator, event: gen_qcoreevent.QChildEvent): void =


  fQTranslator_virtualbase_childEvent(self.h, event.h)

type QTranslatorchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTranslator, slot: proc(super: QTranslatorchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTranslatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_childEvent(self: ptr cQTranslator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTranslator_childEvent ".} =
  type Cb = proc(super: QTranslatorchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTranslator(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTranslator, event: gen_qcoreevent.QEvent): void =


  fQTranslator_virtualbase_customEvent(self.h, event.h)

type QTranslatorcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTranslator, slot: proc(super: QTranslatorcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTranslatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_customEvent(self: ptr cQTranslator, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTranslator_customEvent ".} =
  type Cb = proc(super: QTranslatorcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTranslator(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTranslator, signal: gen_qmetaobject.QMetaMethod): void =


  fQTranslator_virtualbase_connectNotify(self.h, signal.h)

type QTranslatorconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTranslator, slot: proc(super: QTranslatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTranslatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_connectNotify(self: ptr cQTranslator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTranslator_connectNotify ".} =
  type Cb = proc(super: QTranslatorconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTranslator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTranslator, signal: gen_qmetaobject.QMetaMethod): void =


  fQTranslator_virtualbase_disconnectNotify(self.h, signal.h)

type QTranslatordisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTranslator, slot: proc(super: QTranslatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTranslatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTranslator_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTranslator_disconnectNotify(self: ptr cQTranslator, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTranslator_disconnectNotify ".} =
  type Cb = proc(super: QTranslatordisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTranslator(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QTranslator) =
  fcQTranslator_delete(self.h)
