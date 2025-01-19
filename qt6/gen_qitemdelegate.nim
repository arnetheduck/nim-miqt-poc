import Qt6Widgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6Widgets")
{.compile("gen_qitemdelegate.cpp", cflags).}


import gen_qitemdelegate_types
export gen_qitemdelegate_types

import
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qitemeditorfactory,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpixmap,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qwidget
export
  gen_qabstractitemdelegate,
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qitemeditorfactory,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpixmap,
  gen_qrect,
  gen_qsize,
  gen_qstyleoption,
  gen_qwidget

type cQItemDelegate*{.exportc: "QItemDelegate", incompleteStruct.} = object

proc fcQItemDelegate_new(): ptr cQItemDelegate {.importc: "QItemDelegate_new".}
proc fcQItemDelegate_new2(parent: pointer): ptr cQItemDelegate {.importc: "QItemDelegate_new2".}
proc fcQItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QItemDelegate_metaObject".}
proc fcQItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QItemDelegate_metacast".}
proc fcQItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QItemDelegate_metacall".}
proc fcQItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QItemDelegate_tr".}
proc fcQItemDelegate_hasClipping(self: pointer, ): bool {.importc: "QItemDelegate_hasClipping".}
proc fcQItemDelegate_setClipping(self: pointer, clip: bool): void {.importc: "QItemDelegate_setClipping".}
proc fcQItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_paint".}
proc fcQItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_sizeHint".}
proc fcQItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QItemDelegate_createEditor".}
proc fcQItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QItemDelegate_setEditorData".}
proc fcQItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QItemDelegate_setModelData".}
proc fcQItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QItemDelegate_updateEditorGeometry".}
proc fcQItemDelegate_itemEditorFactory(self: pointer, ): pointer {.importc: "QItemDelegate_itemEditorFactory".}
proc fcQItemDelegate_setItemEditorFactory(self: pointer, factory: pointer): void {.importc: "QItemDelegate_setItemEditorFactory".}
proc fcQItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QItemDelegate_tr2".}
proc fcQItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QItemDelegate_tr3".}
proc fQItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QItemDelegate_virtualbase_metacall".}
proc fcQItemDelegate_override_virtual_metacall(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_metacall".}
proc fQItemDelegate_virtualbase_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_paint".}
proc fcQItemDelegate_override_virtual_paint(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_paint".}
proc fQItemDelegate_virtualbase_sizeHint(self: pointer, option: pointer, index: pointer): pointer{.importc: "QItemDelegate_virtualbase_sizeHint".}
proc fcQItemDelegate_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_sizeHint".}
proc fQItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer{.importc: "QItemDelegate_virtualbase_createEditor".}
proc fcQItemDelegate_override_virtual_createEditor(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_createEditor".}
proc fQItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_setEditorData".}
proc fcQItemDelegate_override_virtual_setEditorData(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_setEditorData".}
proc fQItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_setModelData".}
proc fcQItemDelegate_override_virtual_setModelData(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_setModelData".}
proc fQItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQItemDelegate_override_virtual_updateEditorGeometry(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_updateEditorGeometry".}
proc fQItemDelegate_virtualbase_drawDisplay(self: pointer, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void{.importc: "QItemDelegate_virtualbase_drawDisplay".}
proc fcQItemDelegate_override_virtual_drawDisplay(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawDisplay".}
proc fQItemDelegate_virtualbase_drawDecoration(self: pointer, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void{.importc: "QItemDelegate_virtualbase_drawDecoration".}
proc fcQItemDelegate_override_virtual_drawDecoration(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawDecoration".}
proc fQItemDelegate_virtualbase_drawFocus(self: pointer, painter: pointer, option: pointer, rect: pointer): void{.importc: "QItemDelegate_virtualbase_drawFocus".}
proc fcQItemDelegate_override_virtual_drawFocus(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawFocus".}
proc fQItemDelegate_virtualbase_drawCheck(self: pointer, painter: pointer, option: pointer, rect: pointer, state: cint): void{.importc: "QItemDelegate_virtualbase_drawCheck".}
proc fcQItemDelegate_override_virtual_drawCheck(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_drawCheck".}
proc fQItemDelegate_virtualbase_eventFilter(self: pointer, objectVal: pointer, event: pointer): bool{.importc: "QItemDelegate_virtualbase_eventFilter".}
proc fcQItemDelegate_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_eventFilter".}
proc fQItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool{.importc: "QItemDelegate_virtualbase_editorEvent".}
proc fcQItemDelegate_override_virtual_editorEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_editorEvent".}
proc fQItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void{.importc: "QItemDelegate_virtualbase_destroyEditor".}
proc fcQItemDelegate_override_virtual_destroyEditor(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_destroyEditor".}
proc fQItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool{.importc: "QItemDelegate_virtualbase_helpEvent".}
proc fcQItemDelegate_override_virtual_helpEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_helpEvent".}
proc fQItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array{.importc: "QItemDelegate_virtualbase_paintingRoles".}
proc fcQItemDelegate_override_virtual_paintingRoles(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_paintingRoles".}
proc fQItemDelegate_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QItemDelegate_virtualbase_event".}
proc fcQItemDelegate_override_virtual_event(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_event".}
proc fQItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QItemDelegate_virtualbase_timerEvent".}
proc fcQItemDelegate_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_timerEvent".}
proc fQItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QItemDelegate_virtualbase_childEvent".}
proc fcQItemDelegate_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_childEvent".}
proc fQItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QItemDelegate_virtualbase_customEvent".}
proc fcQItemDelegate_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_customEvent".}
proc fQItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QItemDelegate_virtualbase_connectNotify".}
proc fcQItemDelegate_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_connectNotify".}
proc fQItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QItemDelegate_virtualbase_disconnectNotify".}
proc fcQItemDelegate_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QItemDelegate_override_virtual_disconnectNotify".}
proc fcQItemDelegate_staticMetaObject(): pointer {.importc: "QItemDelegate_staticMetaObject".}
proc fcQItemDelegate_delete(self: pointer) {.importc: "QItemDelegate_delete".}


func init*(T: type QItemDelegate, h: ptr cQItemDelegate): QItemDelegate =
  T(h: h)
proc create*(T: type QItemDelegate, ): QItemDelegate =

  QItemDelegate.init(fcQItemDelegate_new())
proc create*(T: type QItemDelegate, parent: gen_qobject.QObject): QItemDelegate =

  QItemDelegate.init(fcQItemDelegate_new2(parent.h))
proc metaObject*(self: QItemDelegate, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQItemDelegate_metaObject(self.h))

proc metacast*(self: QItemDelegate, param1: cstring): pointer =

  fcQItemDelegate_metacast(self.h, param1)

proc metacall*(self: QItemDelegate, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QItemDelegate, s: cstring): string =

  let v_ms = fcQItemDelegate_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasClipping*(self: QItemDelegate, ): bool =

  fcQItemDelegate_hasClipping(self.h)

proc setClipping*(self: QItemDelegate, clip: bool): void =

  fcQItemDelegate_setClipping(self.h, clip)

proc paint*(self: QItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: QItemDelegate, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQItemDelegate_sizeHint(self.h, option.h, index.h))

proc createEditor*(self: QItemDelegate, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQItemDelegate_createEditor(self.h, parent.h, option.h, index.h))

proc setEditorData*(self: QItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: QItemDelegate, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: QItemDelegate, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc itemEditorFactory*(self: QItemDelegate, ): gen_qitemeditorfactory.QItemEditorFactory =

  gen_qitemeditorfactory.QItemEditorFactory(h: fcQItemDelegate_itemEditorFactory(self.h))

proc setItemEditorFactory*(self: QItemDelegate, factory: gen_qitemeditorfactory.QItemEditorFactory): void =

  fcQItemDelegate_setItemEditorFactory(self.h, factory.h)

proc tr2*(_: type QItemDelegate, s: cstring, c: cstring): string =

  let v_ms = fcQItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QItemDelegate, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QItemDelegate, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QItemDelegatemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QItemDelegate, slot: proc(super: QItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_metacall(self: ptr cQItemDelegate, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QItemDelegate_metacall ".} =
  type Cb = proc(super: QItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QItemDelegate(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_paint(self: QItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQItemDelegate_virtualbase_paint(self.h, painter.h, option.h, index.h)

type QItemDelegatepaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc onpaint*(self: QItemDelegate, slot: proc(super: QItemDelegatepaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatepaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_paint(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_paint ".} =
  type Cb = proc(super: QItemDelegatepaintBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_paint(QItemDelegate(h: self), painter, option, index)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_sizeHint(self: QItemDelegate, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =


  gen_qsize.QSize(h: fQItemDelegate_virtualbase_sizeHint(self.h, option.h, index.h))

type QItemDelegatesizeHintBase* = proc(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onsizeHint*(self: QItemDelegate, slot: proc(super: QItemDelegatesizeHintBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatesizeHintBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_sizeHint(self: ptr cQItemDelegate, slot: int, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QItemDelegate_sizeHint ".} =
  type Cb = proc(super: QItemDelegatesizeHintBase, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_sizeHint(QItemDelegate(h: self), option, index)
  let slotval1 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_createEditor(self: QItemDelegate, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

type QItemDelegatecreateEditorBase* = proc(parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
proc oncreateEditor*(self: QItemDelegate, slot: proc(super: QItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_createEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_createEditor(self: ptr cQItemDelegate, slot: int, parent: pointer, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QItemDelegate_createEditor ".} =
  type Cb = proc(super: QItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_createEditor(QItemDelegate(h: self), parent, option, index)
  let slotval1 = gen_qwidget.QWidget(h: parent)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_setEditorData(self: QItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

type QItemDelegatesetEditorDataBase* = proc(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
proc onsetEditorData*(self: QItemDelegate, slot: proc(super: QItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_setEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_setEditorData(self: ptr cQItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_setEditorData ".} =
  type Cb = proc(super: QItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setEditorData(QItemDelegate(h: self), editor, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setModelData(self: QItemDelegate, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void =


  fQItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

type QItemDelegatesetModelDataBase* = proc(editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
proc onsetModelData*(self: QItemDelegate, slot: proc(super: QItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_setModelData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_setModelData(self: ptr cQItemDelegate, slot: int, editor: pointer, model: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_setModelData ".} =
  type Cb = proc(super: QItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setModelData(QItemDelegate(h: self), editor, model, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QAbstractItemModel(h: model)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_updateEditorGeometry(self: QItemDelegate, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

type QItemDelegateupdateEditorGeometryBase* = proc(editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc onupdateEditorGeometry*(self: QItemDelegate, slot: proc(super: QItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_updateEditorGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_updateEditorGeometry(self: ptr cQItemDelegate, slot: int, editor: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_updateEditorGeometry ".} =
  type Cb = proc(super: QItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_updateEditorGeometry(QItemDelegate(h: self), editor, option, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawDisplay(self: QItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, text: string): void =


  fQItemDelegate_virtualbase_drawDisplay(self.h, painter.h, option.h, rect.h, struct_miqt_string(data: text, len: csize_t(len(text))))

type QItemDelegatedrawDisplayBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, text: string): void
proc ondrawDisplay*(self: QItemDelegate, slot: proc(super: QItemDelegatedrawDisplayBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, text: string): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatedrawDisplayBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, text: string): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawDisplay(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawDisplay(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer, text: struct_miqt_string): void {.exportc: "miqt_exec_callback_QItemDelegate_drawDisplay ".} =
  type Cb = proc(super: QItemDelegatedrawDisplayBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, text: string): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, text: string): auto =
    callVirtualBase_drawDisplay(QItemDelegate(h: self), painter, option, rect, text)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect.QRect(h: rect)

  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval4 = vtextx_ret


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_drawDecoration(self: QItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, pixmap: gen_qpixmap.QPixmap): void =


  fQItemDelegate_virtualbase_drawDecoration(self.h, painter.h, option.h, rect.h, pixmap.h)

type QItemDelegatedrawDecorationBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, pixmap: gen_qpixmap.QPixmap): void
proc ondrawDecoration*(self: QItemDelegate, slot: proc(super: QItemDelegatedrawDecorationBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, pixmap: gen_qpixmap.QPixmap): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatedrawDecorationBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, pixmap: gen_qpixmap.QPixmap): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawDecoration(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawDecoration(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer, pixmap: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_drawDecoration ".} =
  type Cb = proc(super: QItemDelegatedrawDecorationBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, pixmap: gen_qpixmap.QPixmap): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, pixmap: gen_qpixmap.QPixmap): auto =
    callVirtualBase_drawDecoration(QItemDelegate(h: self), painter, option, rect, pixmap)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect.QRect(h: rect)

  let slotval4 = gen_qpixmap.QPixmap(h: pixmap)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_drawFocus(self: QItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect): void =


  fQItemDelegate_virtualbase_drawFocus(self.h, painter.h, option.h, rect.h)

type QItemDelegatedrawFocusBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect): void
proc ondrawFocus*(self: QItemDelegate, slot: proc(super: QItemDelegatedrawFocusBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatedrawFocusBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawFocus(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawFocus(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_drawFocus ".} =
  type Cb = proc(super: QItemDelegatedrawFocusBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect): auto =
    callVirtualBase_drawFocus(QItemDelegate(h: self), painter, option, rect)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect.QRect(h: rect)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_drawCheck(self: QItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, state: gen_qnamespace.CheckState): void =


  fQItemDelegate_virtualbase_drawCheck(self.h, painter.h, option.h, rect.h, cint(state))

type QItemDelegatedrawCheckBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, state: gen_qnamespace.CheckState): void
proc ondrawCheck*(self: QItemDelegate, slot: proc(super: QItemDelegatedrawCheckBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, state: gen_qnamespace.CheckState): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatedrawCheckBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, state: gen_qnamespace.CheckState): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_drawCheck(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_drawCheck(self: ptr cQItemDelegate, slot: int, painter: pointer, option: pointer, rect: pointer, state: cint): void {.exportc: "miqt_exec_callback_QItemDelegate_drawCheck ".} =
  type Cb = proc(super: QItemDelegatedrawCheckBase, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, state: gen_qnamespace.CheckState): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, rect: gen_qrect.QRect, state: gen_qnamespace.CheckState): auto =
    callVirtualBase_drawCheck(QItemDelegate(h: self), painter, option, rect, state)
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qrect.QRect(h: rect)

  let slotval4 = gen_qnamespace.CheckState(state)


  nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4)
proc callVirtualBase_eventFilter(self: QItemDelegate, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQItemDelegate_virtualbase_eventFilter(self.h, objectVal.h, event.h)

type QItemDelegateeventFilterBase* = proc(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QItemDelegate, slot: proc(super: QItemDelegateeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegateeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_eventFilter(self: ptr cQItemDelegate, slot: int, objectVal: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_eventFilter ".} =
  type Cb = proc(super: QItemDelegateeventFilterBase, objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QItemDelegate(h: self), objectVal, event)
  let slotval1 = gen_qobject.QObject(h: objectVal)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_editorEvent(self: QItemDelegate, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

type QItemDelegateeditorEventBase* = proc(event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
proc oneditorEvent*(self: QItemDelegate, slot: proc(super: QItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_editorEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_editorEvent(self: ptr cQItemDelegate, slot: int, event: pointer, model: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_editorEvent ".} =
  type Cb = proc(super: QItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_editorEvent(QItemDelegate(h: self), event, model, option, index)
  let slotval1 = gen_qcoreevent.QEvent(h: event)

  let slotval2 = gen_qabstractitemmodel.QAbstractItemModel(h: model)

  let slotval3 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_destroyEditor(self: QItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

type QItemDelegatedestroyEditorBase* = proc(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
proc ondestroyEditor*(self: QItemDelegate, slot: proc(super: QItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_destroyEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_destroyEditor(self: ptr cQItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_destroyEditor ".} =
  type Cb = proc(super: QItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_destroyEditor(QItemDelegate(h: self), editor, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_helpEvent(self: QItemDelegate, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

type QItemDelegatehelpEventBase* = proc(event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
proc onhelpEvent*(self: QItemDelegate, slot: proc(super: QItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_helpEvent(self: ptr cQItemDelegate, slot: int, event: pointer, view: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_helpEvent ".} =
  type Cb = proc(super: QItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_helpEvent(QItemDelegate(h: self), event, view, option, index)
  let slotval1 = gen_qevent.QHelpEvent(h: event)

  let slotval2 = gen_qabstractitemview.QAbstractItemView(h: view)

  let slotval3 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_paintingRoles(self: QItemDelegate, ): seq[cint] =


  var v_ma = fQItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

type QItemDelegatepaintingRolesBase* = proc(): seq[cint]
proc onpaintingRoles*(self: QItemDelegate, slot: proc(super: QItemDelegatepaintingRolesBase): seq[cint]) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatepaintingRolesBase): seq[cint]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_paintingRoles(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_paintingRoles(self: ptr cQItemDelegate, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QItemDelegate_paintingRoles ".} =
  type Cb = proc(super: QItemDelegatepaintingRolesBase): seq[cint]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintingRoles(QItemDelegate(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_event(self: QItemDelegate, event: gen_qcoreevent.QEvent): bool =


  fQItemDelegate_virtualbase_event(self.h, event.h)

type QItemDelegateeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QItemDelegate, slot: proc(super: QItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_event(self: ptr cQItemDelegate, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QItemDelegate_event ".} =
  type Cb = proc(super: QItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QItemDelegate, event: gen_qcoreevent.QTimerEvent): void =


  fQItemDelegate_virtualbase_timerEvent(self.h, event.h)

type QItemDelegatetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QItemDelegate, slot: proc(super: QItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_timerEvent(self: ptr cQItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_timerEvent ".} =
  type Cb = proc(super: QItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QItemDelegate, event: gen_qcoreevent.QChildEvent): void =


  fQItemDelegate_virtualbase_childEvent(self.h, event.h)

type QItemDelegatechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QItemDelegate, slot: proc(super: QItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_childEvent(self: ptr cQItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_childEvent ".} =
  type Cb = proc(super: QItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QItemDelegate, event: gen_qcoreevent.QEvent): void =


  fQItemDelegate_virtualbase_customEvent(self.h, event.h)

type QItemDelegatecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QItemDelegate, slot: proc(super: QItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_customEvent(self: ptr cQItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_customEvent ".} =
  type Cb = proc(super: QItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QItemDelegate, signal: gen_qmetaobject.QMetaMethod): void =


  fQItemDelegate_virtualbase_connectNotify(self.h, signal.h)

type QItemDelegateconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QItemDelegate, slot: proc(super: QItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_connectNotify(self: ptr cQItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_connectNotify ".} =
  type Cb = proc(super: QItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QItemDelegate(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QItemDelegate, signal: gen_qmetaobject.QMetaMethod): void =


  fQItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

type QItemDelegatedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QItemDelegate, slot: proc(super: QItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQItemDelegate_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QItemDelegate_disconnectNotify(self: ptr cQItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QItemDelegate_disconnectNotify ".} =
  type Cb = proc(super: QItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QItemDelegate(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QItemDelegate): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQItemDelegate_staticMetaObject())
proc delete*(self: QItemDelegate) =
  fcQItemDelegate_delete(self.h)
