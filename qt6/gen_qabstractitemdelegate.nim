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
{.compile("gen_qabstractitemdelegate.cpp", cflags).}


type QAbstractItemDelegateEndEditHint* = cint
const
  QAbstractItemDelegateNoHint* = 0
  QAbstractItemDelegateEditNextItem* = 1
  QAbstractItemDelegateEditPreviousItem* = 2
  QAbstractItemDelegateSubmitModelCache* = 3
  QAbstractItemDelegateRevertModelCache* = 4



import gen_qabstractitemdelegate_types
export gen_qabstractitemdelegate_types

import
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qsize,
  gen_qstyleoption,
  gen_qwidget
export
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qsize,
  gen_qstyleoption,
  gen_qwidget

type cQAbstractItemDelegate*{.exportc: "QAbstractItemDelegate", incompleteStruct.} = object

proc fcQAbstractItemDelegate_new(): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new".}
proc fcQAbstractItemDelegate_new2(parent: pointer): ptr cQAbstractItemDelegate {.importc: "QAbstractItemDelegate_new2".}
proc fcQAbstractItemDelegate_metaObject(self: pointer, ): pointer {.importc: "QAbstractItemDelegate_metaObject".}
proc fcQAbstractItemDelegate_metacast(self: pointer, param1: cstring): pointer {.importc: "QAbstractItemDelegate_metacast".}
proc fcQAbstractItemDelegate_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAbstractItemDelegate_metacall".}
proc fcQAbstractItemDelegate_tr(s: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_tr".}
proc fcQAbstractItemDelegate_paint(self: pointer, painter: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_paint".}
proc fcQAbstractItemDelegate_sizeHint(self: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_sizeHint".}
proc fcQAbstractItemDelegate_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer {.importc: "QAbstractItemDelegate_createEditor".}
proc fcQAbstractItemDelegate_destroyEditor(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_destroyEditor".}
proc fcQAbstractItemDelegate_setEditorData(self: pointer, editor: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_setEditorData".}
proc fcQAbstractItemDelegate_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_setModelData".}
proc fcQAbstractItemDelegate_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void {.importc: "QAbstractItemDelegate_updateEditorGeometry".}
proc fcQAbstractItemDelegate_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_editorEvent".}
proc fcQAbstractItemDelegate_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool {.importc: "QAbstractItemDelegate_helpEvent".}
proc fcQAbstractItemDelegate_paintingRoles(self: pointer, ): struct_miqt_array {.importc: "QAbstractItemDelegate_paintingRoles".}
proc fcQAbstractItemDelegate_commitData(self: pointer, editor: pointer): void {.importc: "QAbstractItemDelegate_commitData".}
proc fQAbstractItemDelegate_connect_commitData(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_commitData".}
proc fcQAbstractItemDelegate_closeEditor(self: pointer, editor: pointer): void {.importc: "QAbstractItemDelegate_closeEditor".}
proc fQAbstractItemDelegate_connect_closeEditor(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_closeEditor".}
proc fcQAbstractItemDelegate_sizeHintChanged(self: pointer, param1: pointer): void {.importc: "QAbstractItemDelegate_sizeHintChanged".}
proc fQAbstractItemDelegate_connect_sizeHintChanged(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_sizeHintChanged".}
proc fcQAbstractItemDelegate_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAbstractItemDelegate_tr2".}
proc fcQAbstractItemDelegate_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAbstractItemDelegate_tr3".}
proc fcQAbstractItemDelegate_closeEditor2(self: pointer, editor: pointer, hint: cint): void {.importc: "QAbstractItemDelegate_closeEditor2".}
proc fQAbstractItemDelegate_connect_closeEditor2(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_connect_closeEditor2".}
proc fQAbstractItemDelegate_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAbstractItemDelegate_virtualbase_metacall".}
proc fcQAbstractItemDelegate_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_metacall".}
proc fcQAbstractItemDelegate_override_virtual_paint(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_paint".}
proc fcQAbstractItemDelegate_override_virtual_sizeHint(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_sizeHint".}
proc fQAbstractItemDelegate_virtualbase_createEditor(self: pointer, parent: pointer, option: pointer, index: pointer): pointer{.importc: "QAbstractItemDelegate_virtualbase_createEditor".}
proc fcQAbstractItemDelegate_override_virtual_createEditor(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_createEditor".}
proc fQAbstractItemDelegate_virtualbase_destroyEditor(self: pointer, editor: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_destroyEditor".}
proc fcQAbstractItemDelegate_override_virtual_destroyEditor(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_destroyEditor".}
proc fQAbstractItemDelegate_virtualbase_setEditorData(self: pointer, editor: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_setEditorData".}
proc fcQAbstractItemDelegate_override_virtual_setEditorData(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_setEditorData".}
proc fQAbstractItemDelegate_virtualbase_setModelData(self: pointer, editor: pointer, model: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_setModelData".}
proc fcQAbstractItemDelegate_override_virtual_setModelData(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_setModelData".}
proc fQAbstractItemDelegate_virtualbase_updateEditorGeometry(self: pointer, editor: pointer, option: pointer, index: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_updateEditorGeometry".}
proc fcQAbstractItemDelegate_override_virtual_updateEditorGeometry(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_updateEditorGeometry".}
proc fQAbstractItemDelegate_virtualbase_editorEvent(self: pointer, event: pointer, model: pointer, option: pointer, index: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_editorEvent".}
proc fcQAbstractItemDelegate_override_virtual_editorEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_editorEvent".}
proc fQAbstractItemDelegate_virtualbase_helpEvent(self: pointer, event: pointer, view: pointer, option: pointer, index: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_helpEvent".}
proc fcQAbstractItemDelegate_override_virtual_helpEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_helpEvent".}
proc fQAbstractItemDelegate_virtualbase_paintingRoles(self: pointer, ): struct_miqt_array{.importc: "QAbstractItemDelegate_virtualbase_paintingRoles".}
proc fcQAbstractItemDelegate_override_virtual_paintingRoles(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_paintingRoles".}
proc fQAbstractItemDelegate_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_event".}
proc fcQAbstractItemDelegate_override_virtual_event(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_event".}
proc fQAbstractItemDelegate_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAbstractItemDelegate_virtualbase_eventFilter".}
proc fcQAbstractItemDelegate_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_eventFilter".}
proc fQAbstractItemDelegate_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_timerEvent".}
proc fcQAbstractItemDelegate_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_timerEvent".}
proc fQAbstractItemDelegate_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_childEvent".}
proc fcQAbstractItemDelegate_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_childEvent".}
proc fQAbstractItemDelegate_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_customEvent".}
proc fcQAbstractItemDelegate_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_customEvent".}
proc fQAbstractItemDelegate_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_connectNotify".}
proc fcQAbstractItemDelegate_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_connectNotify".}
proc fQAbstractItemDelegate_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAbstractItemDelegate_virtualbase_disconnectNotify".}
proc fcQAbstractItemDelegate_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAbstractItemDelegate_override_virtual_disconnectNotify".}
proc fcQAbstractItemDelegate_staticMetaObject(): pointer {.importc: "QAbstractItemDelegate_staticMetaObject".}
proc fcQAbstractItemDelegate_delete(self: pointer) {.importc: "QAbstractItemDelegate_delete".}


func init*(T: type QAbstractItemDelegate, h: ptr cQAbstractItemDelegate): QAbstractItemDelegate =
  T(h: h)
proc create*(T: type QAbstractItemDelegate, ): QAbstractItemDelegate =

  QAbstractItemDelegate.init(fcQAbstractItemDelegate_new())
proc create*(T: type QAbstractItemDelegate, parent: gen_qobject.QObject): QAbstractItemDelegate =

  QAbstractItemDelegate.init(fcQAbstractItemDelegate_new2(parent.h))
proc metaObject*(self: QAbstractItemDelegate, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAbstractItemDelegate_metaObject(self.h))

proc metacast*(self: QAbstractItemDelegate, param1: cstring): pointer =

  fcQAbstractItemDelegate_metacast(self.h, param1)

proc metacall*(self: QAbstractItemDelegate, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAbstractItemDelegate_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAbstractItemDelegate, s: cstring): string =

  let v_ms = fcQAbstractItemDelegate_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc paint*(self: QAbstractItemDelegate, painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemDelegate_paint(self.h, painter.h, option.h, index.h)

proc sizeHint*(self: QAbstractItemDelegate, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQAbstractItemDelegate_sizeHint(self.h, option.h, index.h))

proc createEditor*(self: QAbstractItemDelegate, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQAbstractItemDelegate_createEditor(self.h, parent.h, option.h, index.h))

proc destroyEditor*(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemDelegate_destroyEditor(self.h, editor.h, index.h)

proc setEditorData*(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemDelegate_setEditorData(self.h, editor.h, index.h)

proc setModelData*(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemDelegate_setModelData(self.h, editor.h, model.h, index.h)

proc updateEditorGeometry*(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemDelegate_updateEditorGeometry(self.h, editor.h, option.h, index.h)

proc editorEvent*(self: QAbstractItemDelegate, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQAbstractItemDelegate_editorEvent(self.h, event.h, model.h, option.h, index.h)

proc helpEvent*(self: QAbstractItemDelegate, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =

  fcQAbstractItemDelegate_helpEvent(self.h, event.h, view.h, option.h, index.h)

proc paintingRoles*(self: QAbstractItemDelegate, ): seq[cint] =

  var v_ma = fcQAbstractItemDelegate_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

proc commitData*(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget): void =

  fcQAbstractItemDelegate_commitData(self.h, editor.h)

proc miqt_exec_callback_QAbstractItemDelegate_commitData(slot: int, editor: pointer) {.exportc.} =
  type Cb = proc(editor: gen_qwidget.QWidget)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](slotval1)

proc oncommitData*(self: QAbstractItemDelegate, slot: proc(editor: gen_qwidget.QWidget)) =
  type Cb = proc(editor: gen_qwidget.QWidget)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemDelegate_connect_commitData(self.h, cast[int](addr tmp[]))
proc closeEditor*(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget): void =

  fcQAbstractItemDelegate_closeEditor(self.h, editor.h)

proc miqt_exec_callback_QAbstractItemDelegate_closeEditor(slot: int, editor: pointer) {.exportc.} =
  type Cb = proc(editor: gen_qwidget.QWidget)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: editor)


  nimfunc[](slotval1)

proc oncloseEditor*(self: QAbstractItemDelegate, slot: proc(editor: gen_qwidget.QWidget)) =
  type Cb = proc(editor: gen_qwidget.QWidget)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemDelegate_connect_closeEditor(self.h, cast[int](addr tmp[]))
proc sizeHintChanged*(self: QAbstractItemDelegate, param1: gen_qabstractitemmodel.QModelIndex): void =

  fcQAbstractItemDelegate_sizeHintChanged(self.h, param1.h)

proc miqt_exec_callback_QAbstractItemDelegate_sizeHintChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: param1)


  nimfunc[](slotval1)

proc onsizeHintChanged*(self: QAbstractItemDelegate, slot: proc(param1: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(param1: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemDelegate_connect_sizeHintChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAbstractItemDelegate, s: cstring, c: cstring): string =

  let v_ms = fcQAbstractItemDelegate_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAbstractItemDelegate, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAbstractItemDelegate_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc closeEditor2*(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, hint: QAbstractItemDelegateEndEditHint): void =

  fcQAbstractItemDelegate_closeEditor2(self.h, editor.h, cint(hint))

proc miqt_exec_callback_QAbstractItemDelegate_closeEditor2(slot: int, editor: pointer, hint: cint) {.exportc.} =
  type Cb = proc(editor: gen_qwidget.QWidget, hint: QAbstractItemDelegateEndEditHint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = QAbstractItemDelegateEndEditHint(hint)


  nimfunc[](slotval1, slotval2)

proc oncloseEditor2*(self: QAbstractItemDelegate, slot: proc(editor: gen_qwidget.QWidget, hint: QAbstractItemDelegateEndEditHint)) =
  type Cb = proc(editor: gen_qwidget.QWidget, hint: QAbstractItemDelegateEndEditHint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAbstractItemDelegate_connect_closeEditor2(self.h, cast[int](addr tmp[]))
proc callVirtualBase_metacall(self: QAbstractItemDelegate, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAbstractItemDelegate_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAbstractItemDelegatemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_metacall(self: ptr cQAbstractItemDelegate, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAbstractItemDelegate_metacall ".} =
  type Cb = proc(super: QAbstractItemDelegatemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAbstractItemDelegate(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAbstractItemDelegatepaintBase* = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc onpaint*(self: QAbstractItemDelegate, slot: proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_paint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_paint(self: ptr cQAbstractItemDelegate, slot: int, painter: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_paint ".} =
  type Cb = proc(painter: gen_qpainter.QPainter, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1, slotval2, slotval3)
type QAbstractItemDelegatesizeHintBase* = proc(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
proc onsizeHint*(self: QAbstractItemDelegate, slot: proc(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_sizeHint(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_sizeHint(self: ptr cQAbstractItemDelegate, slot: int, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemDelegate_sizeHint ".} =
  type Cb = proc(option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_createEditor(self: QAbstractItemDelegate, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget =


  gen_qwidget.QWidget(h: fQAbstractItemDelegate_virtualbase_createEditor(self.h, parent.h, option.h, index.h))

type QAbstractItemDelegatecreateEditorBase* = proc(parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
proc oncreateEditor*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_createEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_createEditor(self: ptr cQAbstractItemDelegate, slot: int, parent: pointer, option: pointer, index: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractItemDelegate_createEditor ".} =
  type Cb = proc(super: QAbstractItemDelegatecreateEditorBase, parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): gen_qwidget.QWidget
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(parent: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_createEditor(QAbstractItemDelegate(h: self), parent, option, index)
  let slotval1 = gen_qwidget.QWidget(h: parent)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_destroyEditor(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQAbstractItemDelegate_virtualbase_destroyEditor(self.h, editor.h, index.h)

type QAbstractItemDelegatedestroyEditorBase* = proc(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
proc ondestroyEditor*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_destroyEditor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_destroyEditor(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_destroyEditor ".} =
  type Cb = proc(super: QAbstractItemDelegatedestroyEditorBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_destroyEditor(QAbstractItemDelegate(h: self), editor, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setEditorData(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void =


  fQAbstractItemDelegate_virtualbase_setEditorData(self.h, editor.h, index.h)

type QAbstractItemDelegatesetEditorDataBase* = proc(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
proc onsetEditorData*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_setEditorData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_setEditorData(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_setEditorData ".} =
  type Cb = proc(super: QAbstractItemDelegatesetEditorDataBase, editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setEditorData(QAbstractItemDelegate(h: self), editor, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2)
proc callVirtualBase_setModelData(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void =


  fQAbstractItemDelegate_virtualbase_setModelData(self.h, editor.h, model.h, index.h)

type QAbstractItemDelegatesetModelDataBase* = proc(editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
proc onsetModelData*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_setModelData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_setModelData(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, model: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_setModelData ".} =
  type Cb = proc(super: QAbstractItemDelegatesetModelDataBase, editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, model: gen_qabstractitemmodel.QAbstractItemModel, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_setModelData(QAbstractItemDelegate(h: self), editor, model, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qabstractitemmodel.QAbstractItemModel(h: model)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_updateEditorGeometry(self: QAbstractItemDelegate, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void =


  fQAbstractItemDelegate_virtualbase_updateEditorGeometry(self.h, editor.h, option.h, index.h)

type QAbstractItemDelegateupdateEditorGeometryBase* = proc(editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
proc onupdateEditorGeometry*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_updateEditorGeometry(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_updateEditorGeometry(self: ptr cQAbstractItemDelegate, slot: int, editor: pointer, option: pointer, index: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_updateEditorGeometry ".} =
  type Cb = proc(super: QAbstractItemDelegateupdateEditorGeometryBase, editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(editor: gen_qwidget.QWidget, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_updateEditorGeometry(QAbstractItemDelegate(h: self), editor, option, index)
  let slotval1 = gen_qwidget.QWidget(h: editor)

  let slotval2 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval3 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](superCall, slotval1, slotval2, slotval3)
proc callVirtualBase_editorEvent(self: QAbstractItemDelegate, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractItemDelegate_virtualbase_editorEvent(self.h, event.h, model.h, option.h, index.h)

type QAbstractItemDelegateeditorEventBase* = proc(event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
proc oneditorEvent*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_editorEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_editorEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer, model: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_editorEvent ".} =
  type Cb = proc(super: QAbstractItemDelegateeditorEventBase, event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent, model: gen_qabstractitemmodel.QAbstractItemModel, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_editorEvent(QAbstractItemDelegate(h: self), event, model, option, index)
  let slotval1 = gen_qcoreevent.QEvent(h: event)

  let slotval2 = gen_qabstractitemmodel.QAbstractItemModel(h: model)

  let slotval3 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_helpEvent(self: QAbstractItemDelegate, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool =


  fQAbstractItemDelegate_virtualbase_helpEvent(self.h, event.h, view.h, option.h, index.h)

type QAbstractItemDelegatehelpEventBase* = proc(event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
proc onhelpEvent*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_helpEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_helpEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer, view: pointer, option: pointer, index: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_helpEvent ".} =
  type Cb = proc(super: QAbstractItemDelegatehelpEventBase, event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qevent.QHelpEvent, view: gen_qabstractitemview.QAbstractItemView, option: gen_qstyleoption.QStyleOptionViewItem, index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_helpEvent(QAbstractItemDelegate(h: self), event, view, option, index)
  let slotval1 = gen_qevent.QHelpEvent(h: event)

  let slotval2 = gen_qabstractitemview.QAbstractItemView(h: view)

  let slotval3 = gen_qstyleoption.QStyleOptionViewItem(h: option)

  let slotval4 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3, slotval4 )

  virtualReturn
proc callVirtualBase_paintingRoles(self: QAbstractItemDelegate, ): seq[cint] =


  var v_ma = fQAbstractItemDelegate_virtualbase_paintingRoles(self.h)
  var vx_ret = newSeq[cint](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[cint]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = v_outCast[i]
  vx_ret

type QAbstractItemDelegatepaintingRolesBase* = proc(): seq[cint]
proc onpaintingRoles*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatepaintingRolesBase): seq[cint]) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatepaintingRolesBase): seq[cint]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_paintingRoles(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_paintingRoles(self: ptr cQAbstractItemDelegate, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QAbstractItemDelegate_paintingRoles ".} =
  type Cb = proc(super: QAbstractItemDelegatepaintingRolesBase): seq[cint]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_paintingRoles(QAbstractItemDelegate(h: self), )

  let virtualReturn = nimfunc[](superCall )
  var virtualReturn_CArray = newSeq[cint](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i]


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_event(self: QAbstractItemDelegate, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemDelegate_virtualbase_event(self.h, event.h)

type QAbstractItemDelegateeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_event(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_event ".} =
  type Cb = proc(super: QAbstractItemDelegateeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAbstractItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAbstractItemDelegate, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAbstractItemDelegate_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAbstractItemDelegateeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_eventFilter(self: ptr cQAbstractItemDelegate, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAbstractItemDelegate_eventFilter ".} =
  type Cb = proc(super: QAbstractItemDelegateeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAbstractItemDelegate(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAbstractItemDelegate, event: gen_qcoreevent.QTimerEvent): void =


  fQAbstractItemDelegate_virtualbase_timerEvent(self.h, event.h)

type QAbstractItemDelegatetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_timerEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_timerEvent ".} =
  type Cb = proc(super: QAbstractItemDelegatetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAbstractItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAbstractItemDelegate, event: gen_qcoreevent.QChildEvent): void =


  fQAbstractItemDelegate_virtualbase_childEvent(self.h, event.h)

type QAbstractItemDelegatechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_childEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_childEvent ".} =
  type Cb = proc(super: QAbstractItemDelegatechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAbstractItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAbstractItemDelegate, event: gen_qcoreevent.QEvent): void =


  fQAbstractItemDelegate_virtualbase_customEvent(self.h, event.h)

type QAbstractItemDelegatecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_customEvent(self: ptr cQAbstractItemDelegate, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_customEvent ".} =
  type Cb = proc(super: QAbstractItemDelegatecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAbstractItemDelegate(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAbstractItemDelegate, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractItemDelegate_virtualbase_connectNotify(self.h, signal.h)

type QAbstractItemDelegateconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_connectNotify(self: ptr cQAbstractItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_connectNotify ".} =
  type Cb = proc(super: QAbstractItemDelegateconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAbstractItemDelegate(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAbstractItemDelegate, signal: gen_qmetaobject.QMetaMethod): void =


  fQAbstractItemDelegate_virtualbase_disconnectNotify(self.h, signal.h)

type QAbstractItemDelegatedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAbstractItemDelegate, slot: proc(super: QAbstractItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractItemDelegate_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractItemDelegate_disconnectNotify(self: ptr cQAbstractItemDelegate, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAbstractItemDelegate_disconnectNotify ".} =
  type Cb = proc(super: QAbstractItemDelegatedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAbstractItemDelegate(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QAbstractItemDelegate): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQAbstractItemDelegate_staticMetaObject())
proc delete*(self: QAbstractItemDelegate) =
  fcQAbstractItemDelegate_delete(self.h)
