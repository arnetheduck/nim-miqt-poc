import Qt5Core_libs

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

const cflags = gorge("pkg-config --cflags Qt5Core")
{.compile("gen_qsignalmapper.cpp", cflags).}


import gen_qsignalmapper_types
export gen_qsignalmapper_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types

type cQSignalMapper*{.exportc: "QSignalMapper", incompleteStruct.} = object

proc fcQSignalMapper_new(): ptr cQSignalMapper {.importc: "QSignalMapper_new".}
proc fcQSignalMapper_new2(parent: pointer): ptr cQSignalMapper {.importc: "QSignalMapper_new2".}
proc fcQSignalMapper_metaObject(self: pointer, ): pointer {.importc: "QSignalMapper_metaObject".}
proc fcQSignalMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QSignalMapper_metacast".}
proc fcQSignalMapper_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSignalMapper_metacall".}
proc fcQSignalMapper_tr(s: cstring): struct_miqt_string {.importc: "QSignalMapper_tr".}
proc fcQSignalMapper_trUtf8(s: cstring): struct_miqt_string {.importc: "QSignalMapper_trUtf8".}
proc fcQSignalMapper_setMapping(self: pointer, sender: pointer, id: cint): void {.importc: "QSignalMapper_setMapping".}
proc fcQSignalMapper_setMapping2(self: pointer, sender: pointer, text: struct_miqt_string): void {.importc: "QSignalMapper_setMapping2".}
proc fcQSignalMapper_setMapping3(self: pointer, sender: pointer, widget: ptr cQWidget): void {.importc: "QSignalMapper_setMapping3".}
proc fcQSignalMapper_setMapping4(self: pointer, sender: pointer, objectVal: pointer): void {.importc: "QSignalMapper_setMapping4".}
proc fcQSignalMapper_removeMappings(self: pointer, sender: pointer): void {.importc: "QSignalMapper_removeMappings".}
proc fcQSignalMapper_mapping(self: pointer, id: cint): pointer {.importc: "QSignalMapper_mapping".}
proc fcQSignalMapper_mappingWithText(self: pointer, text: struct_miqt_string): pointer {.importc: "QSignalMapper_mappingWithText".}
proc fcQSignalMapper_mappingWithWidget(self: pointer, widget: ptr cQWidget): pointer {.importc: "QSignalMapper_mappingWithWidget".}
proc fcQSignalMapper_mappingWithObject(self: pointer, objectVal: pointer): pointer {.importc: "QSignalMapper_mappingWithObject".}
proc fcQSignalMapper_mapped(self: pointer, param1: cint): void {.importc: "QSignalMapper_mapped".}
proc fQSignalMapper_connect_mapped(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mapped".}
proc fcQSignalMapper_mappedWithQString(self: pointer, param1: struct_miqt_string): void {.importc: "QSignalMapper_mappedWithQString".}
proc fQSignalMapper_connect_mappedWithQString(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedWithQString".}
proc fcQSignalMapper_mappedWithQWidget(self: pointer, param1: ptr cQWidget): void {.importc: "QSignalMapper_mappedWithQWidget".}
proc fQSignalMapper_connect_mappedWithQWidget(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedWithQWidget".}
proc fcQSignalMapper_mappedWithQObject(self: pointer, param1: pointer): void {.importc: "QSignalMapper_mappedWithQObject".}
proc fQSignalMapper_connect_mappedWithQObject(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedWithQObject".}
proc fcQSignalMapper_mappedInt(self: pointer, param1: cint): void {.importc: "QSignalMapper_mappedInt".}
proc fQSignalMapper_connect_mappedInt(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedInt".}
proc fcQSignalMapper_mappedString(self: pointer, param1: struct_miqt_string): void {.importc: "QSignalMapper_mappedString".}
proc fQSignalMapper_connect_mappedString(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedString".}
proc fcQSignalMapper_mappedWidget(self: pointer, param1: ptr cQWidget): void {.importc: "QSignalMapper_mappedWidget".}
proc fQSignalMapper_connect_mappedWidget(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedWidget".}
proc fcQSignalMapper_mappedObject(self: pointer, param1: pointer): void {.importc: "QSignalMapper_mappedObject".}
proc fQSignalMapper_connect_mappedObject(self: pointer, slot: int) {.importc: "QSignalMapper_connect_mappedObject".}
proc fcQSignalMapper_map(self: pointer, ): void {.importc: "QSignalMapper_map".}
proc fcQSignalMapper_mapWithSender(self: pointer, sender: pointer): void {.importc: "QSignalMapper_mapWithSender".}
proc fcQSignalMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalMapper_tr2".}
proc fcQSignalMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalMapper_tr3".}
proc fcQSignalMapper_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSignalMapper_trUtf82".}
proc fcQSignalMapper_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSignalMapper_trUtf83".}
proc fQSignalMapper_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSignalMapper_virtualbase_metacall".}
proc fcQSignalMapper_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_metacall".}
proc fQSignalMapper_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSignalMapper_virtualbase_event".}
proc fcQSignalMapper_override_virtual_event(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_event".}
proc fQSignalMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSignalMapper_virtualbase_eventFilter".}
proc fcQSignalMapper_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_eventFilter".}
proc fQSignalMapper_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_timerEvent".}
proc fcQSignalMapper_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_timerEvent".}
proc fQSignalMapper_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_childEvent".}
proc fcQSignalMapper_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_childEvent".}
proc fQSignalMapper_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSignalMapper_virtualbase_customEvent".}
proc fcQSignalMapper_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_customEvent".}
proc fQSignalMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSignalMapper_virtualbase_connectNotify".}
proc fcQSignalMapper_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_connectNotify".}
proc fQSignalMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSignalMapper_virtualbase_disconnectNotify".}
proc fcQSignalMapper_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSignalMapper_override_virtual_disconnectNotify".}
proc fcQSignalMapper_staticMetaObject(): pointer {.importc: "QSignalMapper_staticMetaObject".}
proc fcQSignalMapper_delete(self: pointer) {.importc: "QSignalMapper_delete".}


func init*(T: type gen_qsignalmapper_types.QSignalMapper, h: ptr cQSignalMapper): gen_qsignalmapper_types.QSignalMapper =
  T(h: h)
proc create*(T: type gen_qsignalmapper_types.QSignalMapper, ): gen_qsignalmapper_types.QSignalMapper =
  gen_qsignalmapper_types.QSignalMapper.init(fcQSignalMapper_new())

proc create*(T: type gen_qsignalmapper_types.QSignalMapper, parent: gen_qobject_types.QObject): gen_qsignalmapper_types.QSignalMapper =
  gen_qsignalmapper_types.QSignalMapper.init(fcQSignalMapper_new2(parent.h))

proc metaObject*(self: gen_qsignalmapper_types.QSignalMapper, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQSignalMapper_metaObject(self.h))

proc metacast*(self: gen_qsignalmapper_types.QSignalMapper, param1: cstring): pointer =
  fcQSignalMapper_metacast(self.h, param1)

proc metacall*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint, param2: cint, param3: pointer): cint =
  fcQSignalMapper_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring): string =
  let v_ms = fcQSignalMapper_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring): string =
  let v_ms = fcQSignalMapper_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, id: cint): void =
  fcQSignalMapper_setMapping(self.h, sender.h, id)

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, text: string): void =
  fcQSignalMapper_setMapping2(self.h, sender.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, widget: ptr QWidget): void =
  fcQSignalMapper_setMapping3(self.h, sender.h, widget)

proc setMapping*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject, objectVal: gen_qobject_types.QObject): void =
  fcQSignalMapper_setMapping4(self.h, sender.h, objectVal.h)

proc removeMappings*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject): void =
  fcQSignalMapper_removeMappings(self.h, sender.h)

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, id: cint): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mapping(self.h, id))

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, text: string): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mappingWithText(self.h, struct_miqt_string(data: text, len: csize_t(len(text)))))

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, widget: ptr QWidget): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mappingWithWidget(self.h, widget))

proc mapping*(self: gen_qsignalmapper_types.QSignalMapper, objectVal: gen_qobject_types.QObject): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQSignalMapper_mappingWithObject(self.h, objectVal.h))

proc mapped*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint): void =
  fcQSignalMapper_mapped(self.h, param1)

type QSignalMappermappedSlot* = proc(param1: cint)
proc miqt_exec_callback_QSignalMapper_mapped(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmapped*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedSlot) =
  var tmp = new QSignalMappermappedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mapped(self.h, cast[int](addr tmp[]))

proc mapped*(self: gen_qsignalmapper_types.QSignalMapper, param1: string): void =
  fcQSignalMapper_mappedWithQString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QSignalMappermappedWithQStringSlot* = proc(param1: string)
proc miqt_exec_callback_QSignalMapper_mappedWithQString(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedWithQStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onmapped*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedWithQStringSlot) =
  var tmp = new QSignalMappermappedWithQStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedWithQString(self.h, cast[int](addr tmp[]))

proc mapped*(self: gen_qsignalmapper_types.QSignalMapper, param1: ptr QWidget): void =
  fcQSignalMapper_mappedWithQWidget(self.h, param1)

type QSignalMappermappedWithQWidgetSlot* = proc(param1: ptr QWidget)
proc miqt_exec_callback_QSignalMapper_mappedWithQWidget(slot: int, param1: ptr cQWidget) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedWithQWidgetSlot](cast[pointer](slot))
TODO QWidget
  nimfunc[](slotval1)

proc onmapped*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedWithQWidgetSlot) =
  var tmp = new QSignalMappermappedWithQWidgetSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedWithQWidget(self.h, cast[int](addr tmp[]))

proc mapped*(self: gen_qsignalmapper_types.QSignalMapper, param1: gen_qobject_types.QObject): void =
  fcQSignalMapper_mappedWithQObject(self.h, param1.h)

type QSignalMappermappedWithQObjectSlot* = proc(param1: gen_qobject_types.QObject)
proc miqt_exec_callback_QSignalMapper_mappedWithQObject(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedWithQObjectSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  nimfunc[](slotval1)

proc onmapped*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedWithQObjectSlot) =
  var tmp = new QSignalMappermappedWithQObjectSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedWithQObject(self.h, cast[int](addr tmp[]))

proc mappedInt*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint): void =
  fcQSignalMapper_mappedInt(self.h, param1)

type QSignalMappermappedIntSlot* = proc(param1: cint)
proc miqt_exec_callback_QSignalMapper_mappedInt(slot: int, param1: cint) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedIntSlot](cast[pointer](slot))
  let slotval1 = param1

  nimfunc[](slotval1)

proc onmappedInt*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedIntSlot) =
  var tmp = new QSignalMappermappedIntSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedInt(self.h, cast[int](addr tmp[]))

proc mappedString*(self: gen_qsignalmapper_types.QSignalMapper, param1: string): void =
  fcQSignalMapper_mappedString(self.h, struct_miqt_string(data: param1, len: csize_t(len(param1))))

type QSignalMappermappedStringSlot* = proc(param1: string)
proc miqt_exec_callback_QSignalMapper_mappedString(slot: int, param1: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedStringSlot](cast[pointer](slot))
  let vparam1_ms = param1
  let vparam1x_ret = string.fromBytes(toOpenArrayByte(vparam1_ms.data, 0, int(vparam1_ms.len)-1))
  c_free(vparam1_ms.data)
  let slotval1 = vparam1x_ret

  nimfunc[](slotval1)

proc onmappedString*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedStringSlot) =
  var tmp = new QSignalMappermappedStringSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedString(self.h, cast[int](addr tmp[]))

proc mappedWidget*(self: gen_qsignalmapper_types.QSignalMapper, param1: ptr QWidget): void =
  fcQSignalMapper_mappedWidget(self.h, param1)

type QSignalMappermappedWidgetSlot* = proc(param1: ptr QWidget)
proc miqt_exec_callback_QSignalMapper_mappedWidget(slot: int, param1: ptr cQWidget) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedWidgetSlot](cast[pointer](slot))
TODO QWidget
  nimfunc[](slotval1)

proc onmappedWidget*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedWidgetSlot) =
  var tmp = new QSignalMappermappedWidgetSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedWidget(self.h, cast[int](addr tmp[]))

proc mappedObject*(self: gen_qsignalmapper_types.QSignalMapper, param1: gen_qobject_types.QObject): void =
  fcQSignalMapper_mappedObject(self.h, param1.h)

type QSignalMappermappedObjectSlot* = proc(param1: gen_qobject_types.QObject)
proc miqt_exec_callback_QSignalMapper_mappedObject(slot: int, param1: pointer) {.exportc.} =
  let nimfunc = cast[ptr QSignalMappermappedObjectSlot](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: param1)

  nimfunc[](slotval1)

proc onmappedObject*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermappedObjectSlot) =
  var tmp = new QSignalMappermappedObjectSlot
  tmp[] = slot
  GC_ref(tmp)
  fQSignalMapper_connect_mappedObject(self.h, cast[int](addr tmp[]))

proc map*(self: gen_qsignalmapper_types.QSignalMapper, ): void =
  fcQSignalMapper_map(self.h)

proc map*(self: gen_qsignalmapper_types.QSignalMapper, sender: gen_qobject_types.QObject): void =
  fcQSignalMapper_mapWithSender(self.h, sender.h)

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring): string =
  let v_ms = fcQSignalMapper_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalMapper_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring): string =
  let v_ms = fcQSignalMapper_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qsignalmapper_types.QSignalMapper, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQSignalMapper_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QSignalMappermetacall*(self: gen_qsignalmapper_types.QSignalMapper, param1: cint, param2: cint, param3: pointer): cint =
  fQSignalMapper_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSignalMappermetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappermetacallProc) =
  # TODO check subclass
  var tmp = new QSignalMappermetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_metacall(self: ptr cQSignalMapper, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSignalMapper_metacall ".} =
  var nimfunc = cast[ptr QSignalMappermetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QSignalMapperevent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): bool =
  fQSignalMapper_virtualbase_event(self.h, event.h)

type QSignalMappereventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappereventProc) =
  # TODO check subclass
  var tmp = new QSignalMappereventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_event(self: ptr cQSignalMapper, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalMapper_event ".} =
  var nimfunc = cast[ptr QSignalMappereventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QSignalMappereventFilter*(self: gen_qsignalmapper_types.QSignalMapper, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQSignalMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSignalMappereventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappereventFilterProc) =
  # TODO check subclass
  var tmp = new QSignalMappereventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_eventFilter(self: ptr cQSignalMapper, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSignalMapper_eventFilter ".} =
  var nimfunc = cast[ptr QSignalMappereventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QSignalMappertimerEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QTimerEvent): void =
  fQSignalMapper_virtualbase_timerEvent(self.h, event.h)

type QSignalMappertimerEventProc* = proc(event: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappertimerEventProc) =
  # TODO check subclass
  var tmp = new QSignalMappertimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_timerEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_timerEvent ".} =
  var nimfunc = cast[ptr QSignalMappertimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QSignalMapperchildEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QChildEvent): void =
  fQSignalMapper_virtualbase_childEvent(self.h, event.h)

type QSignalMapperchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMapperchildEventProc) =
  # TODO check subclass
  var tmp = new QSignalMapperchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_childEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_childEvent ".} =
  var nimfunc = cast[ptr QSignalMapperchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QSignalMappercustomEvent*(self: gen_qsignalmapper_types.QSignalMapper, event: gen_qcoreevent_types.QEvent): void =
  fQSignalMapper_virtualbase_customEvent(self.h, event.h)

type QSignalMappercustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMappercustomEventProc) =
  # TODO check subclass
  var tmp = new QSignalMappercustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_customEvent(self: ptr cQSignalMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_customEvent ".} =
  var nimfunc = cast[ptr QSignalMappercustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QSignalMapperconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSignalMapper_virtualbase_connectNotify(self.h, signal.h)

type QSignalMapperconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMapperconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSignalMapperconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_connectNotify(self: ptr cQSignalMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_connectNotify ".} =
  var nimfunc = cast[ptr QSignalMapperconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QSignalMapperdisconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQSignalMapper_virtualbase_disconnectNotify(self.h, signal.h)

type QSignalMapperdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qsignalmapper_types.QSignalMapper, slot: QSignalMapperdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QSignalMapperdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQSignalMapper_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSignalMapper_disconnectNotify(self: ptr cQSignalMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSignalMapper_disconnectNotify ".} =
  var nimfunc = cast[ptr QSignalMapperdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qsignalmapper_types.QSignalMapper): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSignalMapper_staticMetaObject())
proc delete*(self: gen_qsignalmapper_types.QSignalMapper) =
  fcQSignalMapper_delete(self.h)
