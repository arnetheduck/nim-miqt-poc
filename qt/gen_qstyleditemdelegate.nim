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
{.compile("gen_qstyleditemdelegate.cpp", cflags).}


import gen_qstyleditemdelegate_types
export gen_qstyleditemdelegate_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qitemeditorfactory,
  gen_qlocale,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qitemeditorfactory,
  gen_qlocale,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qsize,
  gen_qstyleoption,
  gen_qvariant,
  gen_qwidget

type cQStyledItemDelegate*{.exportc: "QStyledItemDelegate", incompleteStruct.} = object

proc fcQStyledItemDelegate_new(): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new".}
proc fcQStyledItemDelegate_new2(parent: pointer): ptr cQStyledItemDelegate {.importc: "QStyledItemDelegate_new2".}
proc fcQStyledItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QStyledItemDelegate_metaObject".}
proc fcQStyledItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QStyledItemDelegate_metacast".}
proc fcQStyledItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QStyledItemDelegate_metacall".}
proc fcQStyledItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_tr".}
proc fcQStyledItemDelegate_trUtf8(s: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_trUtf8".}
proc fcQStyledItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_paint".}
proc fcQStyledItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_sizeHint".}
proc fcQStyledItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QStyledItemDelegate_createEditor".}
proc fcQStyledItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QStyledItemDelegate_setEditorData".}
proc fcQStyledItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QStyledItemDelegate_setModelData".}
proc fcQStyledItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QStyledItemDelegate_updateEditorGeometry".}
proc fcQStyledItemDelegate_itemEditorFactory(self: pointer, ): pointer {.importc: "QStyledItemDelegate_itemEditorFactory".}
proc fcQStyledItemDelegate_setItemEditorFactory(self: pointer, factory: pointer): void {.importc: "QStyledItemDelegate_setItemEditorFactory".}
proc fcQStyledItemDelegate_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string {.importc: "QStyledItemDelegate_displayText".}
proc fcQStyledItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_tr2".}
proc fcQStyledItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyledItemDelegate_tr3".}
proc fcQStyledItemDelegate_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QStyledItemDelegate_trUtf82".}
proc fcQStyledItemDelegate_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QStyledItemDelegate_trUtf83".}
proc fQStyledItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QStyledItemDelegate_virtualbase_metacall".}
proc fcQStyledItemDelegate_override_virtual_metacall(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_metacall".}
proc fQStyledItemDelegate_virtualbase_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_paint".}
proc fcQStyledItemDelegate_override_virtual_paint(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_paint".}
proc fQStyledItemDelegate_virtualbase_sizeHint(self: pointer, option: pointer, index: pointer): pointer{.importc: "QStyledItemDelegate_virtualbase_sizeHint".}
proc fcQStyledItemDelegate_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_sizeHint".}
proc fQStyledItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer{.importc: "QStyledItemDelegate_virtualbase_createEditor".}
proc fcQStyledItemDelegate_override_virtual_createEditor(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_createEditor".}
proc fQStyledItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_setEditorData".}
proc fcQStyledItemDelegate_override_virtual_setEditorData(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_setEditorData".}
proc fQStyledItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_setModelData".}
proc fcQStyledItemDelegate_override_virtual_setModelData(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_setModelData".}
proc fQStyledItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQStyledItemDelegate_override_virtual_updateEditorGeometry(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_updateEditorGeometry".}
proc fQStyledItemDelegate_virtualbase_displayText(self: pointer, value: pointer, locale: pointer): struct_miqt_string{.importc: "QStyledItemDelegate_virtualbase_displayText".}
proc fcQStyledItemDelegate_override_virtual_displayText(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_displayText".}
proc fQStyledItemDelegate_virtualbase_initStyleOption(self: pointer, option: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_initStyleOption".}
proc fcQStyledItemDelegate_override_virtual_initStyleOption(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_initStyleOption".}
proc fQStyledItemDelegate_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_eventFilter".}
proc fcQStyledItemDelegate_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_eventFilter".}
proc fQStyledItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_editorEvent".}
proc fcQStyledItemDelegate_override_virtual_editorEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_editorEvent".}
proc fQStyledItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void{.importc: "QStyledItemDelegate_virtualbase_destroyEditor".}
proc fcQStyledItemDelegate_override_virtual_destroyEditor(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_destroyEditor".}
proc fQStyledItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_helpEvent".}
proc fcQStyledItemDelegate_override_virtual_helpEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_helpEvent".}
proc fQStyledItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array{.importc: "QStyledItemDelegate_virtualbase_paintingRoles".}
proc fcQStyledItemDelegate_override_virtual_paintingRoles(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_paintingRoles".}
proc fQStyledItemDelegate_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QStyledItemDelegate_virtualbase_event".}
proc fcQStyledItemDelegate_override_virtual_event(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_event".}
proc fQStyledItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QStyledItemDelegate_virtualbase_timerEvent".}
proc fcQStyledItemDelegate_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_timerEvent".}
proc fQStyledItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QStyledItemDelegate_virtualbase_childEvent".}
proc fcQStyledItemDelegate_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_childEvent".}
proc fQStyledItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QStyledItemDelegate_virtualbase_customEvent".}
proc fcQStyledItemDelegate_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_customEvent".}
proc fQStyledItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QStyledItemDelegate_virtualbase_connectNotify".}
proc fcQStyledItemDelegate_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_connectNotify".}
proc fQStyledItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QStyledItemDelegate_virtualbase_disconnectNotify".}
proc fcQStyledItemDelegate_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QStyledItemDelegate_override_virtual_disconnectNotify".}
proc fcQStyledItemDelegate_staticMetaObject(): pointer {.importc: "QStyledItemDelegate_staticMetaObject".}
proc fcQStyledItemDelegate_delete(self: pointer) {.importc: "QStyledItemDelegate_delete".}


func init*(T: type QStyledItemDelegate, h: ptr cQStyledItemDelegate): QStyledItemDelegate =
  T(h: h)
proc create*(T: type QStyledItemDelegate, ): QStyledItemDelegate =

  QStyledItemDelegate.init(fcQStyledItemDelegate_new())
proc create*(T: type QStyledItemDelegate, parent: gen_qobject.QObject): QStyledItemDelegate =

  QStyledItemDelegate.init(fcQStyledItemDelegate_new2(parent.h))
proc metaObject*(self: QStyledItemDelegate, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQStyledItemDelegate_metaObject(self.h))

proc metacast*(self: QStyledItemDelegate, param1: cstring): pointer =

  fcQStyledItemDelegate_metacast(self.h, param1)

proc metacall*(self: QStyledItemDelegate, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQStyledItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QStyledItemDelegate, s: cstring): string =

  let v_ms = fcQStyledItemDelegate_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QStyledItemDelegate, s: cstring): string =

  let v_ms = fcQStyledItemDelegate_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc paint*(self: QStyledItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQStyledItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: QStyledItemDelegate, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQStyledItemDelegate_sizeHint(self.h, option.h, index.h))

proc createEditor*(self: QStyledItemDelegate, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQStyledItemDelegate_createEditor(self.h, parent.h, option.h, index.h))

proc setEditorData*(self: QStyledItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQStyledItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: QStyledItemDelegate, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQStyledItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: QStyledItemDelegate, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQStyledItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc itemEditorFactory*(self: QStyledItemDelegate, ): gen_qitemeditorfactory.QItemEditorFactory =

  gen_qitemeditorfactory.QItemEditorFactory(h: fcQStyledItemDelegate_itemEditorFactory(self.h))

proc setItemEditorFactory*(self: QStyledItemDelegate, factory: gen_qitemeditorfactory.QItemEditorFactory): void =

  fcQStyledItemDelegate_setItemEditorFactory(self.h, factory.h)

proc displayText*(self: QStyledItemDelegate, value: gen_qvariant.QVariant, locale: gen_qlocale.QLocale): string =

  let v_ms = fcQStyledItemDelegate_displayText(self.h, value.h, locale.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QStyledItemDelegate, s: cstring, c: cstring): string =

  let v_ms = fcQStyledItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QStyledItemDelegate, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStyledItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QStyledItemDelegate, s: cstring, c: cstring): string =

  let v_ms = fcQStyledItemDelegate_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QStyledItemDelegate, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQStyledItemDelegate_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QStyledItemDelegate, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQStyledItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QStyledItemDelegatemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_metacall(self: ptr cQStyledItemDelegate, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QStyledItemDelegate_metacall ".} =
  type Cb = proc(super: QStyledItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QStyledItemDelegate(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_paint(self: QStyledItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQStyledItemDelegate_virtualbase_paint(self.h, painter.h, option.h, index.h)

type QStyledItemDelegatepaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc onpaint*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatepaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatepaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_paint(self: ptr cQStyledItemDelegate, slot: int, painter: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_paint ".} =
  type Cb = proc(super: QStyledItemDelegatepaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_paint(QStyledItemDelegate(h: self), painter, option, index)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_sizeHint(self: QStyledItemDelegate, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQStyledItemDelegate_virtualbase_sizeHint(self.h, option.h, index.h))

type QStyledItemDelegatesizeHintBase* = proc(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onsizeHint*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatesizeHintBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatesizeHintBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_sizeHint(self: ptr cQStyledItemDelegate, slot: int, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QStyledItemDelegate_sizeHint ".} =
  type Cb = proc(super: QStyledItemDelegatesizeHintBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sizeHint(QStyledItemDelegate(h: self), option, index)
  let slotval1 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_createEditor(self: QStyledItemDelegate, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQStyledItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

type QStyledItemDelegatecreateEditorBase* = proc(parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
proc oncreateEditor*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_createEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_createEditor(self: ptr cQStyledItemDelegate, slot: int, parent: pointer, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QStyledItemDelegate_createEditor ".} =
  type Cb = proc(super: QStyledItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_createEditor(QStyledItemDelegate(h: self), parent, option, index)
  let slotval1 = gen_qwidget.QWidget(h: parent)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setEditorData(self: QStyledItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQStyledItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

type QStyledItemDelegatesetEditorDataBase* = proc(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
proc onsetEditorData*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_setEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_setEditorData(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_setEditorData ".} =
  type Cb = proc(super: QStyledItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setEditorData(QStyledItemDelegate(h: self), editor, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setModelData(self: QStyledItemDelegate, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void =


  fQStyledItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

type QStyledItemDelegatesetModelDataBase* = proc(editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
proc onsetModelData*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_setModelData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_setModelData(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, model: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_setModelData ".} =
  type Cb = proc(super: QStyledItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setModelData(QStyledItemDelegate(h: self), editor, model, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QAbstractItemModel(h: model)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_updateEditorGeometry(self: QStyledItemDelegate, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQStyledItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

type QStyledItemDelegateupdateEditorGeometryBase* = proc(editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc onupdateEditorGeometry*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_updateEditorGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_updateEditorGeometry(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_updateEditorGeometry ".} =
  type Cb = proc(super: QStyledItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_updateEditorGeometry(QStyledItemDelegate(h: self), editor, option, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_displayText(self: QStyledItemDelegate, value: gen_qvariant.QVariant, locale: gen_qlocale.QLocale): string =


  let v_ms = fQStyledItemDelegate_virtualbase_displayText(self.h, value.h, locale.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QStyledItemDelegatedisplayTextBase* = proc(value: gen_qvariant.QVariant, locale: gen_qlocale.QLocale): string
proc ondisplayText*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatedisplayTextBase, value: gen_qvariant.QVariant, locale: gen_qlocale.QLocale): string) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatedisplayTextBase, value: gen_qvariant.QVariant, locale: gen_qlocale.QLocale): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_displayText(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_displayText(self: ptr cQStyledItemDelegate, slot: int, value: pointer, locale: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QStyledItemDelegate_displayText ".} =
  type Cb = proc(super: QStyledItemDelegatedisplayTextBase, value: gen_qvariant.QVariant, locale: gen_qlocale.QLocale): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(value: gen_qvariant.QVariant, locale: gen_qlocale.QLocale): auto =
    callVirtualBase_displayText(QStyledItemDelegate(h: self), value, locale)
  let slotval1 = gen_qvariant.QVariant(h: value)

  let slotval2 = gen_qlocale.QLocale(h: locale)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_initStyleOption(self: QStyledItemDelegate, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQStyledItemDelegate_virtualbase_initStyleOption(self.h, option.h, index.h)

type QStyledItemDelegateinitStyleOptionBase* = proc(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc oninitStyleOption*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegateinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegateinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_initStyleOption(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_initStyleOption(self: ptr cQStyledItemDelegate, slot: int, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_initStyleOption ".} =
  type Cb = proc(super: QStyledItemDelegateinitStyleOptionBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_initStyleOption(QStyledItemDelegate(h: self), option, index)
  let slotval1 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_eventFilter(self: QStyledItemDelegate, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQStyledItemDelegate_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QStyledItemDelegateeventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegateeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegateeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_eventFilter(self: ptr cQStyledItemDelegate, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_eventFilter ".} =
  type Cb = proc(super: QStyledItemDelegateeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QStyledItemDelegate(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_editorEvent(self: QStyledItemDelegate, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQStyledItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

type QStyledItemDelegateeditorEventBase* = proc(event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
proc oneditorEvent*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_editorEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_editorEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer, model: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_editorEvent ".} =
  type Cb = proc(super: QStyledItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_editorEvent(QStyledItemDelegate(h: self), event, model, option, index)
  let slotval1 = gen_qcoreevent.QEvent(h: event)

  let slotval2 = gen_qabstractitemmodel.QAbstractItemModel(h: model)

  let slotval3 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_destroyEditor(self: QStyledItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQStyledItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

type QStyledItemDelegatedestroyEditorBase* = proc(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
proc ondestroyEditor*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_destroyEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_destroyEditor(self: ptr cQStyledItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_destroyEditor ".} =
  type Cb = proc(super: QStyledItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_destroyEditor(QStyledItemDelegate(h: self), editor, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_helpEvent(self: QStyledItemDelegate, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQStyledItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

type QStyledItemDelegatehelpEventBase* = proc(event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
proc onhelpEvent*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_helpEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer, view: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_helpEvent ".} =
  type Cb = proc(super: QStyledItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_helpEvent(QStyledItemDelegate(h: self), event, view, option, index)
  let slotval1 = gen_qevent.QHelpEvent(h: event)

  let slotval2 = gen_qabstractitemview.QAbstractItemView(h: view)

  let slotval3 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_paintingRoles(self: QStyledItemDelegate, ): seq[cint] =


  var v_ma = fQStyledItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

type QStyledItemDelegatepaintingRolesBase* = proc(): seq[cint]
proc onpaintingRoles*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatepaintingRolesBase): seq[cint]) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatepaintingRolesBase): seq[cint]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_paintingRoles(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_paintingRoles(self: ptr cQStyledItemDelegate, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QStyledItemDelegate_paintingRoles ".} =
  type Cb = proc(super: QStyledItemDelegatepaintingRolesBase): seq[cint]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintingRoles(QStyledItemDelegate(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_event(self: QStyledItemDelegate, event: gen_qcoreevent.QEvent): bool =


  fQStyledItemDelegate_virtualbase_event(self.h, event.h)

type QStyledItemDelegateeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_event(self: ptr cQStyledItemDelegate, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QStyledItemDelegate_event ".} =
  type Cb = proc(super: QStyledItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QStyledItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QStyledItemDelegate, event: gen_qcoreevent.QTimerEvent): void =


  fQStyledItemDelegate_virtualbase_timerEvent(self.h, event.h)

type QStyledItemDelegatetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_timerEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_timerEvent ".} =
  type Cb = proc(super: QStyledItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QStyledItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QStyledItemDelegate, event: gen_qcoreevent.QChildEvent): void =


  fQStyledItemDelegate_virtualbase_childEvent(self.h, event.h)

type QStyledItemDelegatechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_childEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_childEvent ".} =
  type Cb = proc(super: QStyledItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QStyledItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QStyledItemDelegate, event: gen_qcoreevent.QEvent): void =


  fQStyledItemDelegate_virtualbase_customEvent(self.h, event.h)

type QStyledItemDelegatecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_customEvent(self: ptr cQStyledItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_customEvent ".} =
  type Cb = proc(super: QStyledItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QStyledItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QStyledItemDelegate, signal: gen_qmetaobject.QMetaMethod): void =


  fQStyledItemDelegate_virtualbase_connectNotify(self.h, signal.h)

type QStyledItemDelegateconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_connectNotify(self: ptr cQStyledItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_connectNotify ".} =
  type Cb = proc(super: QStyledItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QStyledItemDelegate(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QStyledItemDelegate, signal: gen_qmetaobject.QMetaMethod): void =


  fQStyledItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

type QStyledItemDelegatedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QStyledItemDelegate, slot: proc(super: QStyledItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QStyledItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQStyledItemDelegate_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QStyledItemDelegate_disconnectNotify(self: ptr cQStyledItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QStyledItemDelegate_disconnectNotify ".} =
  type Cb = proc(super: QStyledItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QStyledItemDelegate(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QStyledItemDelegate): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQStyledItemDelegate_staticMetaObject())
proc delete*(self: QStyledItemDelegate) =
  fcQStyledItemDelegate_delete(self.h)
