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
{.compile("gen_qcompleter.cpp", cflags).}


type QCompleterCompletionMode* = cint
const
  QCompleterPopupCompletion* = 0
  QCompleterUnfilteredPopupCompletion* = 1
  QCompleterInlineCompletion* = 2



type QCompleterModelSorting* = cint
const
  QCompleterUnsortedModel* = 0
  QCompleterCaseSensitivelySortedModel* = 1
  QCompleterCaseInsensitivelySortedModel* = 2



import gen_qcompleter_types
export gen_qcompleter_types

import
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qwidget
export
  gen_qabstractitemmodel,
  gen_qabstractitemview,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qwidget

type cQCompleter*{.exportc: "QCompleter", incompleteStruct.} = object

proc fcQCompleter_new(): ptr cQCompleter {.importc: "QCompleter_new".}
proc fcQCompleter_new2(model: pointer): ptr cQCompleter {.importc: "QCompleter_new2".}
proc fcQCompleter_new3(completions: struct_miqt_array): ptr cQCompleter {.importc: "QCompleter_new3".}
proc fcQCompleter_new4(parent: pointer): ptr cQCompleter {.importc: "QCompleter_new4".}
proc fcQCompleter_new5(model: pointer, parent: pointer): ptr cQCompleter {.importc: "QCompleter_new5".}
proc fcQCompleter_new6(completions: struct_miqt_array, parent: pointer): ptr cQCompleter {.importc: "QCompleter_new6".}
proc fcQCompleter_metaObject(self: pointer, ): pointer {.importc: "QCompleter_metaObject".}
proc fcQCompleter_metacast(self: pointer, param1: cstring): pointer {.importc: "QCompleter_metacast".}
proc fcQCompleter_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCompleter_metacall".}
proc fcQCompleter_tr(s: cstring): struct_miqt_string {.importc: "QCompleter_tr".}
proc fcQCompleter_setWidget(self: pointer, widget: pointer): void {.importc: "QCompleter_setWidget".}
proc fcQCompleter_widget(self: pointer, ): pointer {.importc: "QCompleter_widget".}
proc fcQCompleter_setModel(self: pointer, c: pointer): void {.importc: "QCompleter_setModel".}
proc fcQCompleter_model(self: pointer, ): pointer {.importc: "QCompleter_model".}
proc fcQCompleter_setCompletionMode(self: pointer, mode: cint): void {.importc: "QCompleter_setCompletionMode".}
proc fcQCompleter_completionMode(self: pointer, ): cint {.importc: "QCompleter_completionMode".}
proc fcQCompleter_setFilterMode(self: pointer, filterMode: cint): void {.importc: "QCompleter_setFilterMode".}
proc fcQCompleter_filterMode(self: pointer, ): cint {.importc: "QCompleter_filterMode".}
proc fcQCompleter_popup(self: pointer, ): pointer {.importc: "QCompleter_popup".}
proc fcQCompleter_setPopup(self: pointer, popup: pointer): void {.importc: "QCompleter_setPopup".}
proc fcQCompleter_setCaseSensitivity(self: pointer, caseSensitivity: cint): void {.importc: "QCompleter_setCaseSensitivity".}
proc fcQCompleter_caseSensitivity(self: pointer, ): cint {.importc: "QCompleter_caseSensitivity".}
proc fcQCompleter_setModelSorting(self: pointer, sorting: cint): void {.importc: "QCompleter_setModelSorting".}
proc fcQCompleter_modelSorting(self: pointer, ): cint {.importc: "QCompleter_modelSorting".}
proc fcQCompleter_setCompletionColumn(self: pointer, column: cint): void {.importc: "QCompleter_setCompletionColumn".}
proc fcQCompleter_completionColumn(self: pointer, ): cint {.importc: "QCompleter_completionColumn".}
proc fcQCompleter_setCompletionRole(self: pointer, role: cint): void {.importc: "QCompleter_setCompletionRole".}
proc fcQCompleter_completionRole(self: pointer, ): cint {.importc: "QCompleter_completionRole".}
proc fcQCompleter_wrapAround(self: pointer, ): bool {.importc: "QCompleter_wrapAround".}
proc fcQCompleter_maxVisibleItems(self: pointer, ): cint {.importc: "QCompleter_maxVisibleItems".}
proc fcQCompleter_setMaxVisibleItems(self: pointer, maxItems: cint): void {.importc: "QCompleter_setMaxVisibleItems".}
proc fcQCompleter_completionCount(self: pointer, ): cint {.importc: "QCompleter_completionCount".}
proc fcQCompleter_setCurrentRow(self: pointer, row: cint): bool {.importc: "QCompleter_setCurrentRow".}
proc fcQCompleter_currentRow(self: pointer, ): cint {.importc: "QCompleter_currentRow".}
proc fcQCompleter_currentIndex(self: pointer, ): pointer {.importc: "QCompleter_currentIndex".}
proc fcQCompleter_currentCompletion(self: pointer, ): struct_miqt_string {.importc: "QCompleter_currentCompletion".}
proc fcQCompleter_completionModel(self: pointer, ): pointer {.importc: "QCompleter_completionModel".}
proc fcQCompleter_completionPrefix(self: pointer, ): struct_miqt_string {.importc: "QCompleter_completionPrefix".}
proc fcQCompleter_setCompletionPrefix(self: pointer, prefix: struct_miqt_string): void {.importc: "QCompleter_setCompletionPrefix".}
proc fcQCompleter_complete(self: pointer, ): void {.importc: "QCompleter_complete".}
proc fcQCompleter_setWrapAround(self: pointer, wrap: bool): void {.importc: "QCompleter_setWrapAround".}
proc fcQCompleter_pathFromIndex(self: pointer, index: pointer): struct_miqt_string {.importc: "QCompleter_pathFromIndex".}
proc fcQCompleter_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array {.importc: "QCompleter_splitPath".}
proc fcQCompleter_activated(self: pointer, text: struct_miqt_string): void {.importc: "QCompleter_activated".}
proc fQCompleter_connect_activated(self: pointer, slot: int) {.importc: "QCompleter_connect_activated".}
proc fcQCompleter_activatedWithIndex(self: pointer, index: pointer): void {.importc: "QCompleter_activatedWithIndex".}
proc fQCompleter_connect_activatedWithIndex(self: pointer, slot: int) {.importc: "QCompleter_connect_activatedWithIndex".}
proc fcQCompleter_highlighted(self: pointer, text: struct_miqt_string): void {.importc: "QCompleter_highlighted".}
proc fQCompleter_connect_highlighted(self: pointer, slot: int) {.importc: "QCompleter_connect_highlighted".}
proc fcQCompleter_highlightedWithIndex(self: pointer, index: pointer): void {.importc: "QCompleter_highlightedWithIndex".}
proc fQCompleter_connect_highlightedWithIndex(self: pointer, slot: int) {.importc: "QCompleter_connect_highlightedWithIndex".}
proc fcQCompleter_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCompleter_tr2".}
proc fcQCompleter_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCompleter_tr3".}
proc fcQCompleter_complete1(self: pointer, rect: pointer): void {.importc: "QCompleter_complete1".}
proc fQCompleter_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCompleter_virtualbase_metacall".}
proc fcQCompleter_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_metacall".}
proc fQCompleter_virtualbase_pathFromIndex(self: pointer, index: pointer): struct_miqt_string{.importc: "QCompleter_virtualbase_pathFromIndex".}
proc fcQCompleter_override_virtual_pathFromIndex(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_pathFromIndex".}
proc fQCompleter_virtualbase_splitPath(self: pointer, path: struct_miqt_string): struct_miqt_array{.importc: "QCompleter_virtualbase_splitPath".}
proc fcQCompleter_override_virtual_splitPath(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_splitPath".}
proc fQCompleter_virtualbase_eventFilter(self: pointer, o: pointer, e: pointer): bool{.importc: "QCompleter_virtualbase_eventFilter".}
proc fcQCompleter_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_eventFilter".}
proc fQCompleter_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QCompleter_virtualbase_event".}
proc fcQCompleter_override_virtual_event(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_event".}
proc fQCompleter_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCompleter_virtualbase_timerEvent".}
proc fcQCompleter_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_timerEvent".}
proc fQCompleter_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCompleter_virtualbase_childEvent".}
proc fcQCompleter_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_childEvent".}
proc fQCompleter_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCompleter_virtualbase_customEvent".}
proc fcQCompleter_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_customEvent".}
proc fQCompleter_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCompleter_virtualbase_connectNotify".}
proc fcQCompleter_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_connectNotify".}
proc fQCompleter_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCompleter_virtualbase_disconnectNotify".}
proc fcQCompleter_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCompleter_override_virtual_disconnectNotify".}
proc fcQCompleter_staticMetaObject(): pointer {.importc: "QCompleter_staticMetaObject".}
proc fcQCompleter_delete(self: pointer) {.importc: "QCompleter_delete".}


func init*(T: type QCompleter, h: ptr cQCompleter): QCompleter =
  T(h: h)
proc create*(T: type QCompleter, ): QCompleter =

  QCompleter.init(fcQCompleter_new())
proc create*(T: type QCompleter, model: gen_qabstractitemmodel.QAbstractItemModel): QCompleter =

  QCompleter.init(fcQCompleter_new2(model.h))
proc create*(T: type QCompleter, completions: seq[string]): QCompleter =

  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: completions[i], len: csize_t(len(completions[i])))

  QCompleter.init(fcQCompleter_new3(struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0]))))
proc create2*(T: type QCompleter, parent: gen_qobject.QObject): QCompleter =

  QCompleter.init(fcQCompleter_new4(parent.h))
proc create*(T: type QCompleter, model: gen_qabstractitemmodel.QAbstractItemModel, parent: gen_qobject.QObject): QCompleter =

  QCompleter.init(fcQCompleter_new5(model.h, parent.h))
proc create*(T: type QCompleter, completions: seq[string], parent: gen_qobject.QObject): QCompleter =

  var completions_CArray = newSeq[struct_miqt_string](len(completions))
  for i in 0..<len(completions):
    completions_CArray[i] = struct_miqt_string(data: completions[i], len: csize_t(len(completions[i])))

  QCompleter.init(fcQCompleter_new6(struct_miqt_array(len: csize_t(len(completions)), data: if len(completions) == 0: nil else: addr(completions_CArray[0])), parent.h))
proc metaObject*(self: QCompleter, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCompleter_metaObject(self.h))

proc metacast*(self: QCompleter, param1: cstring): pointer =

  fcQCompleter_metacast(self.h, param1)

proc metacall*(self: QCompleter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCompleter_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCompleter, s: cstring): string =

  let v_ms = fcQCompleter_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWidget*(self: QCompleter, widget: gen_qwidget.QWidget): void =

  fcQCompleter_setWidget(self.h, widget.h)

proc widget*(self: QCompleter, ): gen_qwidget.QWidget =

  gen_qwidget.QWidget(h: fcQCompleter_widget(self.h))

proc setModel*(self: QCompleter, c: gen_qabstractitemmodel.QAbstractItemModel): void =

  fcQCompleter_setModel(self.h, c.h)

proc model*(self: QCompleter, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQCompleter_model(self.h))

proc setCompletionMode*(self: QCompleter, mode: QCompleterCompletionMode): void =

  fcQCompleter_setCompletionMode(self.h, cint(mode))

proc completionMode*(self: QCompleter, ): QCompleterCompletionMode =

  QCompleterCompletionMode(fcQCompleter_completionMode(self.h))

proc setFilterMode*(self: QCompleter, filterMode: gen_qnamespace.MatchFlag): void =

  fcQCompleter_setFilterMode(self.h, cint(filterMode))

proc filterMode*(self: QCompleter, ): gen_qnamespace.MatchFlag =

  gen_qnamespace.MatchFlag(fcQCompleter_filterMode(self.h))

proc popup*(self: QCompleter, ): gen_qabstractitemview.QAbstractItemView =

  gen_qabstractitemview.QAbstractItemView(h: fcQCompleter_popup(self.h))

proc setPopup*(self: QCompleter, popup: gen_qabstractitemview.QAbstractItemView): void =

  fcQCompleter_setPopup(self.h, popup.h)

proc setCaseSensitivity*(self: QCompleter, caseSensitivity: gen_qnamespace.CaseSensitivity): void =

  fcQCompleter_setCaseSensitivity(self.h, cint(caseSensitivity))

proc caseSensitivity*(self: QCompleter, ): gen_qnamespace.CaseSensitivity =

  gen_qnamespace.CaseSensitivity(fcQCompleter_caseSensitivity(self.h))

proc setModelSorting*(self: QCompleter, sorting: QCompleterModelSorting): void =

  fcQCompleter_setModelSorting(self.h, cint(sorting))

proc modelSorting*(self: QCompleter, ): QCompleterModelSorting =

  QCompleterModelSorting(fcQCompleter_modelSorting(self.h))

proc setCompletionColumn*(self: QCompleter, column: cint): void =

  fcQCompleter_setCompletionColumn(self.h, column)

proc completionColumn*(self: QCompleter, ): cint =

  fcQCompleter_completionColumn(self.h)

proc setCompletionRole*(self: QCompleter, role: cint): void =

  fcQCompleter_setCompletionRole(self.h, role)

proc completionRole*(self: QCompleter, ): cint =

  fcQCompleter_completionRole(self.h)

proc wrapAround*(self: QCompleter, ): bool =

  fcQCompleter_wrapAround(self.h)

proc maxVisibleItems*(self: QCompleter, ): cint =

  fcQCompleter_maxVisibleItems(self.h)

proc setMaxVisibleItems*(self: QCompleter, maxItems: cint): void =

  fcQCompleter_setMaxVisibleItems(self.h, maxItems)

proc completionCount*(self: QCompleter, ): cint =

  fcQCompleter_completionCount(self.h)

proc setCurrentRow*(self: QCompleter, row: cint): bool =

  fcQCompleter_setCurrentRow(self.h, row)

proc currentRow*(self: QCompleter, ): cint =

  fcQCompleter_currentRow(self.h)

proc currentIndex*(self: QCompleter, ): gen_qabstractitemmodel.QModelIndex =

  gen_qabstractitemmodel.QModelIndex(h: fcQCompleter_currentIndex(self.h))

proc currentCompletion*(self: QCompleter, ): string =

  let v_ms = fcQCompleter_currentCompletion(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc completionModel*(self: QCompleter, ): gen_qabstractitemmodel.QAbstractItemModel =

  gen_qabstractitemmodel.QAbstractItemModel(h: fcQCompleter_completionModel(self.h))

proc completionPrefix*(self: QCompleter, ): string =

  let v_ms = fcQCompleter_completionPrefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setCompletionPrefix*(self: QCompleter, prefix: string): void =

  fcQCompleter_setCompletionPrefix(self.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc complete*(self: QCompleter, ): void =

  fcQCompleter_complete(self.h)

proc setWrapAround*(self: QCompleter, wrap: bool): void =

  fcQCompleter_setWrapAround(self.h, wrap)

proc pathFromIndex*(self: QCompleter, index: gen_qabstractitemmodel.QModelIndex): string =

  let v_ms = fcQCompleter_pathFromIndex(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc splitPath*(self: QCompleter, path: string): seq[string] =

  var v_ma = fcQCompleter_splitPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc activated*(self: QCompleter, text: string): void =

  fcQCompleter_activated(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_QCompleter_activated(slot: int, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)

proc onactivated*(self: QCompleter, slot: proc(text: string)) =
  type Cb = proc(text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCompleter_connect_activated(self.h, cast[int](addr tmp[]))
proc activatedWithIndex*(self: QCompleter, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQCompleter_activatedWithIndex(self.h, index.h)

proc miqt_exec_callback_QCompleter_activatedWithIndex(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onactivatedWithIndex*(self: QCompleter, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCompleter_connect_activatedWithIndex(self.h, cast[int](addr tmp[]))
proc highlighted*(self: QCompleter, text: string): void =

  fcQCompleter_highlighted(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc miqt_exec_callback_QCompleter_highlighted(slot: int, text: struct_miqt_string) {.exportc.} =
  type Cb = proc(text: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vtext_ms = text
  let vtextx_ret = string.fromBytes(toOpenArrayByte(vtext_ms.data, 0, int(vtext_ms.len)-1))
  c_free(vtext_ms.data)
  let slotval1 = vtextx_ret


  nimfunc[](slotval1)

proc onhighlighted*(self: QCompleter, slot: proc(text: string)) =
  type Cb = proc(text: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCompleter_connect_highlighted(self.h, cast[int](addr tmp[]))
proc highlightedWithIndex*(self: QCompleter, index: gen_qabstractitemmodel.QModelIndex): void =

  fcQCompleter_highlightedWithIndex(self.h, index.h)

proc miqt_exec_callback_QCompleter_highlightedWithIndex(slot: int, index: pointer) {.exportc.} =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  nimfunc[](slotval1)

proc onhighlightedWithIndex*(self: QCompleter, slot: proc(index: gen_qabstractitemmodel.QModelIndex)) =
  type Cb = proc(index: gen_qabstractitemmodel.QModelIndex)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCompleter_connect_highlightedWithIndex(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCompleter, s: cstring, c: cstring): string =

  let v_ms = fcQCompleter_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCompleter, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCompleter_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc complete1*(self: QCompleter, rect: gen_qrect.QRect): void =

  fcQCompleter_complete1(self.h, rect.h)

proc callVirtualBase_metacall(self: QCompleter, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCompleter_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCompletermetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCompleter, slot: proc(super: QCompletermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCompletermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_metacall(self: ptr cQCompleter, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCompleter_metacall ".} =
  type Cb = proc(super: QCompletermetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCompleter(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_pathFromIndex(self: QCompleter, index: gen_qabstractitemmodel.QModelIndex): string =


  let v_ms = fQCompleter_virtualbase_pathFromIndex(self.h, index.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QCompleterpathFromIndexBase* = proc(index: gen_qabstractitemmodel.QModelIndex): string
proc onpathFromIndex*(self: QCompleter, slot: proc(super: QCompleterpathFromIndexBase, index: gen_qabstractitemmodel.QModelIndex): string) =
  # TODO check subclass
  type Cb = proc(super: QCompleterpathFromIndexBase, index: gen_qabstractitemmodel.QModelIndex): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_pathFromIndex(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_pathFromIndex(self: ptr cQCompleter, slot: int, index: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QCompleter_pathFromIndex ".} =
  type Cb = proc(super: QCompleterpathFromIndexBase, index: gen_qabstractitemmodel.QModelIndex): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(index: gen_qabstractitemmodel.QModelIndex): auto =
    callVirtualBase_pathFromIndex(QCompleter(h: self), index)
  let slotval1 = gen_qabstractitemmodel.QModelIndex(h: index)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_splitPath(self: QCompleter, path: string): seq[string] =


  var v_ma = fQCompleter_virtualbase_splitPath(self.h, struct_miqt_string(data: path, len: csize_t(len(path))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

type QCompletersplitPathBase* = proc(path: string): seq[string]
proc onsplitPath*(self: QCompleter, slot: proc(super: QCompletersplitPathBase, path: string): seq[string]) =
  # TODO check subclass
  type Cb = proc(super: QCompletersplitPathBase, path: string): seq[string]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_splitPath(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_splitPath(self: ptr cQCompleter, slot: int, path: struct_miqt_string): struct_miqt_array {.exportc: "miqt_exec_callback_QCompleter_splitPath ".} =
  type Cb = proc(super: QCompletersplitPathBase, path: string): seq[string]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(path: string): auto =
    callVirtualBase_splitPath(QCompleter(h: self), path)
  let vpath_ms = path
  let vpathx_ret = string.fromBytes(toOpenArrayByte(vpath_ms.data, 0, int(vpath_ms.len)-1))
  c_free(vpath_ms.data)
  let slotval1 = vpathx_ret


  let virtualReturn = nimfunc[](superCall, slotval1 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: virtualReturn[i], len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_eventFilter(self: QCompleter, o: gen_qobject.QObject, e: gen_qcoreevent.QEvent): bool =


  fQCompleter_virtualbase_eventFilter(self.h, o.h, e.h)

type QCompletereventFilterBase* = proc(o: gen_qobject.QObject, e: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCompleter, slot: proc(super: QCompletereventFilterBase, o: gen_qobject.QObject, e: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCompletereventFilterBase, o: gen_qobject.QObject, e: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_eventFilter(self: ptr cQCompleter, slot: int, o: pointer, e: pointer): bool {.exportc: "miqt_exec_callback_QCompleter_eventFilter ".} =
  type Cb = proc(super: QCompletereventFilterBase, o: gen_qobject.QObject, e: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(o: gen_qobject.QObject, e: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCompleter(h: self), o, e)
  let slotval1 = gen_qobject.QObject(h: o)

  let slotval2 = gen_qcoreevent.QEvent(h: e)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QCompleter, param1: gen_qcoreevent.QEvent): bool =


  fQCompleter_virtualbase_event(self.h, param1.h)

type QCompletereventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCompleter, slot: proc(super: QCompletereventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCompletereventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_event(self: ptr cQCompleter, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QCompleter_event ".} =
  type Cb = proc(super: QCompletereventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCompleter(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QCompleter, event: gen_qcoreevent.QTimerEvent): void =


  fQCompleter_virtualbase_timerEvent(self.h, event.h)

type QCompletertimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCompleter, slot: proc(super: QCompletertimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCompletertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_timerEvent(self: ptr cQCompleter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCompleter_timerEvent ".} =
  type Cb = proc(super: QCompletertimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCompleter(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QCompleter, event: gen_qcoreevent.QChildEvent): void =


  fQCompleter_virtualbase_childEvent(self.h, event.h)

type QCompleterchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCompleter, slot: proc(super: QCompleterchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCompleterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_childEvent(self: ptr cQCompleter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCompleter_childEvent ".} =
  type Cb = proc(super: QCompleterchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCompleter(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCompleter, event: gen_qcoreevent.QEvent): void =


  fQCompleter_virtualbase_customEvent(self.h, event.h)

type QCompletercustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCompleter, slot: proc(super: QCompletercustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCompletercustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_customEvent(self: ptr cQCompleter, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCompleter_customEvent ".} =
  type Cb = proc(super: QCompletercustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCompleter(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCompleter, signal: gen_qmetaobject.QMetaMethod): void =


  fQCompleter_virtualbase_connectNotify(self.h, signal.h)

type QCompleterconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCompleter, slot: proc(super: QCompleterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCompleterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_connectNotify(self: ptr cQCompleter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCompleter_connectNotify ".} =
  type Cb = proc(super: QCompleterconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCompleter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCompleter, signal: gen_qmetaobject.QMetaMethod): void =


  fQCompleter_virtualbase_disconnectNotify(self.h, signal.h)

type QCompleterdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCompleter, slot: proc(super: QCompleterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCompleterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCompleter_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCompleter_disconnectNotify(self: ptr cQCompleter, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCompleter_disconnectNotify ".} =
  type Cb = proc(super: QCompleterdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCompleter(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QCompleter): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCompleter_staticMetaObject())
proc delete*(self: QCompleter) =
  fcQCompleter_delete(self.h)
