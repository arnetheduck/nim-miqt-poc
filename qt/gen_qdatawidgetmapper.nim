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
{.compile("gen_qdatawidgetmapper.cpp", cflags).}


type QDataWidgetMapperSubmitPolicy* = cint
const
  QDataWidgetMapperAutoSubmit* = 0
  QDataWidgetMapperManualSubmit* = 1



import gen_qdatawidgetmapper_types
export gen_qdatawidgetmapper_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qwidget

type cQDataWidgetMapper*{.exportc: "QDataWidgetMapper", incompleteStruct.} = object

proc fcQDataWidgetMapper_new(): ptr cQDataWidgetMapper {.importc: "QDataWidgetMapper_new".}
proc fcQDataWidgetMapper_new2(parent: pointer): ptr cQDataWidgetMapper {.importc: "QDataWidgetMapper_new2".}
proc fcQDataWidgetMapper_metaObject(self: pointer, ): pointer {.importc: "QDataWidgetMapper_metaObject".}
proc fcQDataWidgetMapper_metacast(self: pointer, param1: cstring): pointer {.importc: "QDataWidgetMapper_metacast".}
proc fcQDataWidgetMapper_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QDataWidgetMapper_metacall".}
proc fcQDataWidgetMapper_tr(s: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_tr".}
proc fcQDataWidgetMapper_trUtf8(s: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_trUtf8".}
proc fcQDataWidgetMapper_setModel(self: pointer, model: pointer): void {.importc: "QDataWidgetMapper_setModel".}
proc fcQDataWidgetMapper_model(self: pointer, ): pointer {.importc: "QDataWidgetMapper_model".}
proc fcQDataWidgetMapper_setItemDelegate(self: pointer, delegate: pointer): void {.importc: "QDataWidgetMapper_setItemDelegate".}
proc fcQDataWidgetMapper_itemDelegate(self: pointer, ): pointer {.importc: "QDataWidgetMapper_itemDelegate".}
proc fcQDataWidgetMapper_setRootIndex(self: pointer, index: pointer): void {.importc: "QDataWidgetMapper_setRootIndex".}
proc fcQDataWidgetMapper_rootIndex(self: pointer, ): pointer {.importc: "QDataWidgetMapper_rootIndex".}
proc fcQDataWidgetMapper_setOrientation(self: pointer, aOrientation: cint): void {.importc: "QDataWidgetMapper_setOrientation".}
proc fcQDataWidgetMapper_orientation(self: pointer, ): cint {.importc: "QDataWidgetMapper_orientation".}
proc fcQDataWidgetMapper_setSubmitPolicy(self: pointer, policy: cint): void {.importc: "QDataWidgetMapper_setSubmitPolicy".}
proc fcQDataWidgetMapper_submitPolicy(self: pointer, ): cint {.importc: "QDataWidgetMapper_submitPolicy".}
proc fcQDataWidgetMapper_addMapping(self: pointer, widget: pointer, section: cint): void {.importc: "QDataWidgetMapper_addMapping".}
proc fcQDataWidgetMapper_addMapping2(self: pointer, widget: pointer, section: cint, propertyName: struct_miqt_string): void {.importc: "QDataWidgetMapper_addMapping2".}
proc fcQDataWidgetMapper_removeMapping(self: pointer, widget: pointer): void {.importc: "QDataWidgetMapper_removeMapping".}
proc fcQDataWidgetMapper_mappedSection(self: pointer, widget: pointer): cint {.importc: "QDataWidgetMapper_mappedSection".}
proc fcQDataWidgetMapper_mappedPropertyName(self: pointer, widget: pointer): struct_miqt_string {.importc: "QDataWidgetMapper_mappedPropertyName".}
proc fcQDataWidgetMapper_mappedWidgetAt(self: pointer, section: cint): pointer {.importc: "QDataWidgetMapper_mappedWidgetAt".}
proc fcQDataWidgetMapper_clearMapping(self: pointer, ): void {.importc: "QDataWidgetMapper_clearMapping".}
proc fcQDataWidgetMapper_currentIndex(self: pointer, ): cint {.importc: "QDataWidgetMapper_currentIndex".}
proc fcQDataWidgetMapper_revert(self: pointer, ): void {.importc: "QDataWidgetMapper_revert".}
proc fcQDataWidgetMapper_submit(self: pointer, ): bool {.importc: "QDataWidgetMapper_submit".}
proc fcQDataWidgetMapper_toFirst(self: pointer, ): void {.importc: "QDataWidgetMapper_toFirst".}
proc fcQDataWidgetMapper_toLast(self: pointer, ): void {.importc: "QDataWidgetMapper_toLast".}
proc fcQDataWidgetMapper_toNext(self: pointer, ): void {.importc: "QDataWidgetMapper_toNext".}
proc fcQDataWidgetMapper_toPrevious(self: pointer, ): void {.importc: "QDataWidgetMapper_toPrevious".}
proc fcQDataWidgetMapper_setCurrentIndex(self: pointer, index: cint): void {.importc: "QDataWidgetMapper_setCurrentIndex".}
proc fcQDataWidgetMapper_setCurrentModelIndex(self: pointer, index: pointer): void {.importc: "QDataWidgetMapper_setCurrentModelIndex".}
proc fcQDataWidgetMapper_currentIndexChanged(self: pointer, index: cint): void {.importc: "QDataWidgetMapper_currentIndexChanged".}
proc fQDataWidgetMapper_connect_currentIndexChanged(self: pointer, slot: int) {.importc: "QDataWidgetMapper_connect_currentIndexChanged".}
proc fcQDataWidgetMapper_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_tr2".}
proc fcQDataWidgetMapper_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDataWidgetMapper_tr3".}
proc fcQDataWidgetMapper_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QDataWidgetMapper_trUtf82".}
proc fcQDataWidgetMapper_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QDataWidgetMapper_trUtf83".}
proc fQDataWidgetMapper_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QDataWidgetMapper_virtualbase_metacall".}
proc fcQDataWidgetMapper_override_virtual_metacall(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_metacall".}
proc fQDataWidgetMapper_virtualbase_setCurrentIndex(self: pointer, index: cint): void{.importc: "QDataWidgetMapper_virtualbase_setCurrentIndex".}
proc fcQDataWidgetMapper_override_virtual_setCurrentIndex(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_setCurrentIndex".}
proc fQDataWidgetMapper_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QDataWidgetMapper_virtualbase_event".}
proc fcQDataWidgetMapper_override_virtual_event(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_event".}
proc fQDataWidgetMapper_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QDataWidgetMapper_virtualbase_eventFilter".}
proc fcQDataWidgetMapper_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_eventFilter".}
proc fQDataWidgetMapper_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QDataWidgetMapper_virtualbase_timerEvent".}
proc fcQDataWidgetMapper_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_timerEvent".}
proc fQDataWidgetMapper_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QDataWidgetMapper_virtualbase_childEvent".}
proc fcQDataWidgetMapper_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_childEvent".}
proc fQDataWidgetMapper_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QDataWidgetMapper_virtualbase_customEvent".}
proc fcQDataWidgetMapper_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_customEvent".}
proc fQDataWidgetMapper_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QDataWidgetMapper_virtualbase_connectNotify".}
proc fcQDataWidgetMapper_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_connectNotify".}
proc fQDataWidgetMapper_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QDataWidgetMapper_virtualbase_disconnectNotify".}
proc fcQDataWidgetMapper_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QDataWidgetMapper_override_virtual_disconnectNotify".}
proc fcQDataWidgetMapper_staticMetaObject(): pointer {.importc: "QDataWidgetMapper_staticMetaObject".}
proc fcQDataWidgetMapper_delete(self: pointer) {.importc: "QDataWidgetMapper_delete".}


func init*(T: type QDataWidgetMapper, h: ptr cQDataWidgetMapper): QDataWidgetMapper =
  T(h: h)
proc create*(T: type QDataWidgetMapper, ): QDataWidgetMapper =

  QDataWidgetMapper.init(fcQDataWidgetMapper_new())
proc create*(T: type QDataWidgetMapper, parent: gen_qobject.QObject): QDataWidgetMapper =

  QDataWidgetMapper.init(fcQDataWidgetMapper_new2(parent.h))
proc metaObject*(self: QDataWidgetMapper, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQDataWidgetMapper_metaObject(self.h))

proc metacast*(self: QDataWidgetMapper, param1: cstring): pointer =

  fcQDataWidgetMapper_metacast(self.h, param1)

proc metacall*(self: QDataWidgetMapper, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQDataWidgetMapper_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QDataWidgetMapper, s: cstring): string =

  let v_ms = fcQDataWidgetMapper_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QDataWidgetMapper, s: cstring): string =

  let v_ms = fcQDataWidgetMapper_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setModel*(self: QDataWidgetMapper, model: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQDataWidgetMapper_setModel(self.h, model.h)

proc model*(self: QDataWidgetMapper, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQDataWidgetMapper_model(self.h))

proc setItemDelegate*(self: QDataWidgetMapper, delegate: gen_qabstractitemdelegate.QAbstractItemDelegate): void =

  fcQDataWidgetMapper_setItemDelegate(self.h, delegate.h)

proc itemDelegate*(self: QDataWidgetMapper, ): gen_qabstractitemdelegate.QAbstractItemDelegate =

  gen_qabstractitemdelegate.QAbstractItemDelegate(h: fcQDataWidgetMapper_itemDelegate(self.h))

proc setRootIndex*(self: QDataWidgetMapper, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQDataWidgetMapper_setRootIndex(self.h, index.h)

proc rootIndex*(self: QDataWidgetMapper, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQDataWidgetMapper_rootIndex(self.h))

proc setOrientation*(self: QDataWidgetMapper, aOrientation: gen_qnamespace.Orientation): void =

  fcQDataWidgetMapper_setOrientation(self.h, cint(aOrientation))

proc orientation*(self: QDataWidgetMapper, ): gen_qnamespace.Orientation =

  gen_qnamespace.Orientation(fcQDataWidgetMapper_orientation(self.h))

proc setSubmitPolicy*(self: QDataWidgetMapper, policy: QDataWidgetMapperSubmitPolicy): void =

  fcQDataWidgetMapper_setSubmitPolicy(self.h, cint(policy))

proc submitPolicy*(self: QDataWidgetMapper, ): QDataWidgetMapperSubmitPolicy =

  QDataWidgetMapperSubmitPolicy(fcQDataWidgetMapper_submitPolicy(self.h))

proc addMapping*(self: QDataWidgetMapper, widget: gen_qwidget.QWidget, section: cint): void =

  fcQDataWidgetMapper_addMapping(self.h, widget.h, section)

proc addMapping2*(self: QDataWidgetMapper, widget: gen_qwidget.QWidget, section: cint, propertyName: seq[byte]): void =

  fcQDataWidgetMapper_addMapping2(self.h, widget.h, section, struct_miqt_string(data: cast[cstring](if len(propertyName) == 0: nil else: unsafeAddr propertyName[0]), len: csize_t(len(propertyName))))

proc removeMapping*(self: QDataWidgetMapper, widget: gen_qwidget.QWidget): void =

  fcQDataWidgetMapper_removeMapping(self.h, widget.h)

proc mappedSection*(self: QDataWidgetMapper, widget: gen_qwidget.QWidget): cint =

  fcQDataWidgetMapper_mappedSection(self.h, widget.h)

proc mappedPropertyName*(self: QDataWidgetMapper, widget: gen_qwidget.QWidget): seq[byte] =

  var v_bytearray = fcQDataWidgetMapper_mappedPropertyName(self.h, widget.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc mappedWidgetAt*(self: QDataWidgetMapper, section: cint): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQDataWidgetMapper_mappedWidgetAt(self.h, section))

proc clearMapping*(self: QDataWidgetMapper, ): void =

  fcQDataWidgetMapper_clearMapping(self.h)

proc currentIndex*(self: QDataWidgetMapper, ): cint =

  fcQDataWidgetMapper_currentIndex(self.h)

proc revert*(self: QDataWidgetMapper, ): void =

  fcQDataWidgetMapper_revert(self.h)

proc submit*(self: QDataWidgetMapper, ): bool =

  fcQDataWidgetMapper_submit(self.h)

proc toFirst*(self: QDataWidgetMapper, ): void =

  fcQDataWidgetMapper_toFirst(self.h)

proc toLast*(self: QDataWidgetMapper, ): void =

  fcQDataWidgetMapper_toLast(self.h)

proc toNext*(self: QDataWidgetMapper, ): void =

  fcQDataWidgetMapper_toNext(self.h)

proc toPrevious*(self: QDataWidgetMapper, ): void =

  fcQDataWidgetMapper_toPrevious(self.h)

proc setCurrentIndex*(self: QDataWidgetMapper, index: cint): void =

  fcQDataWidgetMapper_setCurrentIndex(self.h, index)

proc setCurrentModelIndex*(self: QDataWidgetMapper, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQDataWidgetMapper_setCurrentModelIndex(self.h, index.h)

proc currentIndexChanged*(self: QDataWidgetMapper, index: cint): void =

  fcQDataWidgetMapper_currentIndexChanged(self.h, index)

proc miqt_exec_callback_QDataWidgetMapper_currentIndexChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc oncurrentIndexChanged*(self: QDataWidgetMapper, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQDataWidgetMapper_connect_currentIndexChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QDataWidgetMapper, s: cstring, c: cstring): string =

  let v_ms = fcQDataWidgetMapper_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QDataWidgetMapper, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDataWidgetMapper_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QDataWidgetMapper, s: cstring, c: cstring): string =

  let v_ms = fcQDataWidgetMapper_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QDataWidgetMapper, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQDataWidgetMapper_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QDataWidgetMapper, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQDataWidgetMapper_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QDataWidgetMappermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMappermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMappermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_metacall(self: ptr cQDataWidgetMapper, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QDataWidgetMapper_metacall ".} =
  type Cb = proc(super: QDataWidgetMappermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QDataWidgetMapper(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_setCurrentIndex(self: QDataWidgetMapper, index: cint): void =


  fQDataWidgetMapper_virtualbase_setCurrentIndex(self.h, index)

type QDataWidgetMappersetCurrentIndexBase* = proc(index: cint): void
proc onsetCurrentIndex*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMappersetCurrentIndexBase, index: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMappersetCurrentIndexBase, index: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_setCurrentIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_setCurrentIndex(self: ptr cQDataWidgetMapper, slot: int, index: cint): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_setCurrentIndex ".} =
  type Cb = proc(super: QDataWidgetMappersetCurrentIndexBase, index: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: cint): auto =
    callVirtualBase_setCurrentIndex(QDataWidgetMapper(h: self), index)
  let slotval1 = index


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QDataWidgetMapper, event: gen_qcoreevent.QEvent): bool =


  fQDataWidgetMapper_virtualbase_event(self.h, event.h)

type QDataWidgetMappereventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMappereventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMappereventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_event(self: ptr cQDataWidgetMapper, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QDataWidgetMapper_event ".} =
  type Cb = proc(super: QDataWidgetMappereventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QDataWidgetMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QDataWidgetMapper, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQDataWidgetMapper_virtualbase_eventFilter(self.h, watched.h, event.h)

type QDataWidgetMappereventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMappereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMappereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_eventFilter(self: ptr cQDataWidgetMapper, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QDataWidgetMapper_eventFilter ".} =
  type Cb = proc(super: QDataWidgetMappereventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QDataWidgetMapper(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QDataWidgetMapper, event: gen_qcoreevent.QTimerEvent): void =


  fQDataWidgetMapper_virtualbase_timerEvent(self.h, event.h)

type QDataWidgetMappertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMappertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMappertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_timerEvent(self: ptr cQDataWidgetMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_timerEvent ".} =
  type Cb = proc(super: QDataWidgetMappertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QDataWidgetMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QDataWidgetMapper, event: gen_qcoreevent.QChildEvent): void =


  fQDataWidgetMapper_virtualbase_childEvent(self.h, event.h)

type QDataWidgetMapperchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMapperchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMapperchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_childEvent(self: ptr cQDataWidgetMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_childEvent ".} =
  type Cb = proc(super: QDataWidgetMapperchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QDataWidgetMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QDataWidgetMapper, event: gen_qcoreevent.QEvent): void =


  fQDataWidgetMapper_virtualbase_customEvent(self.h, event.h)

type QDataWidgetMappercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMappercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMappercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_customEvent(self: ptr cQDataWidgetMapper, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_customEvent ".} =
  type Cb = proc(super: QDataWidgetMappercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QDataWidgetMapper(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QDataWidgetMapper, signal: gen_qmetaobject.QMetaMethod): void =


  fQDataWidgetMapper_virtualbase_connectNotify(self.h, signal.h)

type QDataWidgetMapperconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMapperconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMapperconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_connectNotify(self: ptr cQDataWidgetMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_connectNotify ".} =
  type Cb = proc(super: QDataWidgetMapperconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QDataWidgetMapper(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QDataWidgetMapper, signal: gen_qmetaobject.QMetaMethod): void =


  fQDataWidgetMapper_virtualbase_disconnectNotify(self.h, signal.h)

type QDataWidgetMapperdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QDataWidgetMapper, slot: proc(super: QDataWidgetMapperdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QDataWidgetMapperdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDataWidgetMapper_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDataWidgetMapper_disconnectNotify(self: ptr cQDataWidgetMapper, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QDataWidgetMapper_disconnectNotify ".} =
  type Cb = proc(super: QDataWidgetMapperdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QDataWidgetMapper(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QDataWidgetMapper): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQDataWidgetMapper_staticMetaObject())
proc delete*(self: QDataWidgetMapper) =
  fcQDataWidgetMapper_delete(self.h)
