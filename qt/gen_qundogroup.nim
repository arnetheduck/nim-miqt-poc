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
{.compile("gen_qundogroup.cpp", cflags).}


import gen_qundogroup_types
export gen_qundogroup_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qundostack
export
  gen_qaction,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qundostack

type cQUndoGroup*{.exportc: "QUndoGroup", incompleteStruct.} = object

proc fcQUndoGroup_new(): ptr cQUndoGroup {.importc: "QUndoGroup_new".}
proc fcQUndoGroup_new2(parent: pointer): ptr cQUndoGroup {.importc: "QUndoGroup_new2".}
proc fcQUndoGroup_metaObject(self: pointer, ): pointer {.importc: "QUndoGroup_metaObject".}
proc fcQUndoGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoGroup_metacast".}
proc fcQUndoGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoGroup_metacall".}
proc fcQUndoGroup_tr(s: cstring): struct_miqt_string {.importc: "QUndoGroup_tr".}
proc fcQUndoGroup_trUtf8(s: cstring): struct_miqt_string {.importc: "QUndoGroup_trUtf8".}
proc fcQUndoGroup_addStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_addStack".}
proc fcQUndoGroup_removeStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_removeStack".}
proc fcQUndoGroup_stacks(self: pointer, ): struct_miqt_array {.importc: "QUndoGroup_stacks".}
proc fcQUndoGroup_activeStack(self: pointer, ): pointer {.importc: "QUndoGroup_activeStack".}
proc fcQUndoGroup_createUndoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoGroup_createUndoAction".}
proc fcQUndoGroup_createRedoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoGroup_createRedoAction".}
proc fcQUndoGroup_canUndo(self: pointer, ): bool {.importc: "QUndoGroup_canUndo".}
proc fcQUndoGroup_canRedo(self: pointer, ): bool {.importc: "QUndoGroup_canRedo".}
proc fcQUndoGroup_undoText(self: pointer, ): struct_miqt_string {.importc: "QUndoGroup_undoText".}
proc fcQUndoGroup_redoText(self: pointer, ): struct_miqt_string {.importc: "QUndoGroup_redoText".}
proc fcQUndoGroup_isClean(self: pointer, ): bool {.importc: "QUndoGroup_isClean".}
proc fcQUndoGroup_undo(self: pointer, ): void {.importc: "QUndoGroup_undo".}
proc fcQUndoGroup_redo(self: pointer, ): void {.importc: "QUndoGroup_redo".}
proc fcQUndoGroup_setActiveStack(self: pointer, stack: pointer): void {.importc: "QUndoGroup_setActiveStack".}
proc fcQUndoGroup_activeStackChanged(self: pointer, stack: pointer): void {.importc: "QUndoGroup_activeStackChanged".}
proc fQUndoGroup_connect_activeStackChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_activeStackChanged".}
proc fcQUndoGroup_indexChanged(self: pointer, idx: cint): void {.importc: "QUndoGroup_indexChanged".}
proc fQUndoGroup_connect_indexChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_indexChanged".}
proc fcQUndoGroup_cleanChanged(self: pointer, clean: bool): void {.importc: "QUndoGroup_cleanChanged".}
proc fQUndoGroup_connect_cleanChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_cleanChanged".}
proc fcQUndoGroup_canUndoChanged(self: pointer, canUndo: bool): void {.importc: "QUndoGroup_canUndoChanged".}
proc fQUndoGroup_connect_canUndoChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_canUndoChanged".}
proc fcQUndoGroup_canRedoChanged(self: pointer, canRedo: bool): void {.importc: "QUndoGroup_canRedoChanged".}
proc fQUndoGroup_connect_canRedoChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_canRedoChanged".}
proc fcQUndoGroup_undoTextChanged(self: pointer, undoText: struct_miqt_string): void {.importc: "QUndoGroup_undoTextChanged".}
proc fQUndoGroup_connect_undoTextChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_undoTextChanged".}
proc fcQUndoGroup_redoTextChanged(self: pointer, redoText: struct_miqt_string): void {.importc: "QUndoGroup_redoTextChanged".}
proc fQUndoGroup_connect_redoTextChanged(self: pointer, slot: int) {.importc: "QUndoGroup_connect_redoTextChanged".}
proc fcQUndoGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoGroup_tr2".}
proc fcQUndoGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoGroup_tr3".}
proc fcQUndoGroup_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoGroup_trUtf82".}
proc fcQUndoGroup_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoGroup_trUtf83".}
proc fcQUndoGroup_createUndoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoGroup_createUndoAction2".}
proc fcQUndoGroup_createRedoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoGroup_createRedoAction2".}
proc fQUndoGroup_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QUndoGroup_virtualbase_metacall".}
proc fcQUndoGroup_override_virtual_metacall(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_metacall".}
proc fQUndoGroup_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QUndoGroup_virtualbase_event".}
proc fcQUndoGroup_override_virtual_event(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_event".}
proc fQUndoGroup_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QUndoGroup_virtualbase_eventFilter".}
proc fcQUndoGroup_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_eventFilter".}
proc fQUndoGroup_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QUndoGroup_virtualbase_timerEvent".}
proc fcQUndoGroup_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_timerEvent".}
proc fQUndoGroup_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUndoGroup_virtualbase_childEvent".}
proc fcQUndoGroup_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_childEvent".}
proc fQUndoGroup_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUndoGroup_virtualbase_customEvent".}
proc fcQUndoGroup_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_customEvent".}
proc fQUndoGroup_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUndoGroup_virtualbase_connectNotify".}
proc fcQUndoGroup_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_connectNotify".}
proc fQUndoGroup_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUndoGroup_virtualbase_disconnectNotify".}
proc fcQUndoGroup_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUndoGroup_override_virtual_disconnectNotify".}
proc fcQUndoGroup_staticMetaObject(): pointer {.importc: "QUndoGroup_staticMetaObject".}
proc fcQUndoGroup_delete(self: pointer) {.importc: "QUndoGroup_delete".}


func init*(T: type QUndoGroup, h: ptr cQUndoGroup): QUndoGroup =
  T(h: h)
proc create*(T: type QUndoGroup, ): QUndoGroup =

  QUndoGroup.init(fcQUndoGroup_new())
proc create*(T: type QUndoGroup, parent: gen_qobject.QObject): QUndoGroup =

  QUndoGroup.init(fcQUndoGroup_new2(parent.h))
proc metaObject*(self: QUndoGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQUndoGroup_metaObject(self.h))

proc metacast*(self: QUndoGroup, param1: cstring): pointer =

  fcQUndoGroup_metacast(self.h, param1)

proc metacall*(self: QUndoGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQUndoGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QUndoGroup, s: cstring): string =

  let v_ms = fcQUndoGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QUndoGroup, s: cstring): string =

  let v_ms = fcQUndoGroup_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc addStack*(self: QUndoGroup, stack: gen_qundostack.QUndoStack): void =

  fcQUndoGroup_addStack(self.h, stack.h)

proc removeStack*(self: QUndoGroup, stack: gen_qundostack.QUndoStack): void =

  fcQUndoGroup_removeStack(self.h, stack.h)

proc stacks*(self: QUndoGroup, ): seq[gen_qundostack.QUndoStack] =

  var v_ma = fcQUndoGroup_stacks(self.h)
  var vx_ret = newSeq[gen_qundostack.QUndoStack](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qundostack.QUndoStack(h: v_outCast[i])
  vx_ret

proc activeStack*(self: QUndoGroup, ): gen_qundostack.QUndoStack =

  gen_qundostack.QUndoStack(h: fcQUndoGroup_activeStack(self.h))

proc createUndoAction*(self: QUndoGroup, parent: gen_qobject.QObject): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoGroup_createUndoAction(self.h, parent.h))

proc createRedoAction*(self: QUndoGroup, parent: gen_qobject.QObject): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoGroup_createRedoAction(self.h, parent.h))

proc canUndo*(self: QUndoGroup, ): bool =

  fcQUndoGroup_canUndo(self.h)

proc canRedo*(self: QUndoGroup, ): bool =

  fcQUndoGroup_canRedo(self.h)

proc undoText*(self: QUndoGroup, ): string =

  let v_ms = fcQUndoGroup_undoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc redoText*(self: QUndoGroup, ): string =

  let v_ms = fcQUndoGroup_redoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isClean*(self: QUndoGroup, ): bool =

  fcQUndoGroup_isClean(self.h)

proc undo*(self: QUndoGroup, ): void =

  fcQUndoGroup_undo(self.h)

proc redo*(self: QUndoGroup, ): void =

  fcQUndoGroup_redo(self.h)

proc setActiveStack*(self: QUndoGroup, stack: gen_qundostack.QUndoStack): void =

  fcQUndoGroup_setActiveStack(self.h, stack.h)

proc activeStackChanged*(self: QUndoGroup, stack: gen_qundostack.QUndoStack): void =

  fcQUndoGroup_activeStackChanged(self.h, stack.h)

proc miqt_exec_callback_QUndoGroup_activeStackChanged(slot: int, stack: pointer) {.exportc.} =
  type Cb = proc(stack: gen_qundostack.QUndoStack)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qundostack.QUndoStack(h: stack)


  nimfunc[](slotval1)

proc onactiveStackChanged*(self: QUndoGroup, slot: proc(stack: gen_qundostack.QUndoStack)) =
  type Cb = proc(stack: gen_qundostack.QUndoStack)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoGroup_connect_activeStackChanged(self.h, cast[int](addr tmp[]))
proc indexChanged*(self: QUndoGroup, idx: cint): void =

  fcQUndoGroup_indexChanged(self.h, idx)

proc miqt_exec_callback_QUndoGroup_indexChanged(slot: int, idx: cint) {.exportc.} =
  type Cb = proc(idx: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = idx


  nimfunc[](slotval1)

proc onindexChanged*(self: QUndoGroup, slot: proc(idx: cint)) =
  type Cb = proc(idx: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoGroup_connect_indexChanged(self.h, cast[int](addr tmp[]))
proc cleanChanged*(self: QUndoGroup, clean: bool): void =

  fcQUndoGroup_cleanChanged(self.h, clean)

proc miqt_exec_callback_QUndoGroup_cleanChanged(slot: int, clean: bool) {.exportc.} =
  type Cb = proc(clean: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = clean


  nimfunc[](slotval1)

proc oncleanChanged*(self: QUndoGroup, slot: proc(clean: bool)) =
  type Cb = proc(clean: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoGroup_connect_cleanChanged(self.h, cast[int](addr tmp[]))
proc canUndoChanged*(self: QUndoGroup, canUndo: bool): void =

  fcQUndoGroup_canUndoChanged(self.h, canUndo)

proc miqt_exec_callback_QUndoGroup_canUndoChanged(slot: int, canUndo: bool) {.exportc.} =
  type Cb = proc(canUndo: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = canUndo


  nimfunc[](slotval1)

proc oncanUndoChanged*(self: QUndoGroup, slot: proc(canUndo: bool)) =
  type Cb = proc(canUndo: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoGroup_connect_canUndoChanged(self.h, cast[int](addr tmp[]))
proc canRedoChanged*(self: QUndoGroup, canRedo: bool): void =

  fcQUndoGroup_canRedoChanged(self.h, canRedo)

proc miqt_exec_callback_QUndoGroup_canRedoChanged(slot: int, canRedo: bool) {.exportc.} =
  type Cb = proc(canRedo: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = canRedo


  nimfunc[](slotval1)

proc oncanRedoChanged*(self: QUndoGroup, slot: proc(canRedo: bool)) =
  type Cb = proc(canRedo: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoGroup_connect_canRedoChanged(self.h, cast[int](addr tmp[]))
proc undoTextChanged*(self: QUndoGroup, undoText: string): void =

  fcQUndoGroup_undoTextChanged(self.h, struct_miqt_string(data: undoText, len: csize_t(len(undoText))))

proc miqt_exec_callback_QUndoGroup_undoTextChanged(slot: int, undoText: struct_miqt_string) {.exportc.} =
  type Cb = proc(undoText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vundoText_ms = undoText
  let vundoTextx_ret = string.fromBytes(toOpenArrayByte(vundoText_ms.data, 0, int(vundoText_ms.len)-1))
  c_free(vundoText_ms.data)
  let slotval1 = vundoTextx_ret


  nimfunc[](slotval1)

proc onundoTextChanged*(self: QUndoGroup, slot: proc(undoText: string)) =
  type Cb = proc(undoText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoGroup_connect_undoTextChanged(self.h, cast[int](addr tmp[]))
proc redoTextChanged*(self: QUndoGroup, redoText: string): void =

  fcQUndoGroup_redoTextChanged(self.h, struct_miqt_string(data: redoText, len: csize_t(len(redoText))))

proc miqt_exec_callback_QUndoGroup_redoTextChanged(slot: int, redoText: struct_miqt_string) {.exportc.} =
  type Cb = proc(redoText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vredoText_ms = redoText
  let vredoTextx_ret = string.fromBytes(toOpenArrayByte(vredoText_ms.data, 0, int(vredoText_ms.len)-1))
  c_free(vredoText_ms.data)
  let slotval1 = vredoTextx_ret


  nimfunc[](slotval1)

proc onredoTextChanged*(self: QUndoGroup, slot: proc(redoText: string)) =
  type Cb = proc(redoText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoGroup_connect_redoTextChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QUndoGroup, s: cstring, c: cstring): string =

  let v_ms = fcQUndoGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QUndoGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUndoGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QUndoGroup, s: cstring, c: cstring): string =

  let v_ms = fcQUndoGroup_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QUndoGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUndoGroup_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createUndoAction2*(self: QUndoGroup, parent: gen_qobject.QObject, prefix: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoGroup_createUndoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc createRedoAction2*(self: QUndoGroup, parent: gen_qobject.QObject, prefix: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoGroup_createRedoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc callVirtualBase_metacall(self: QUndoGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQUndoGroup_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QUndoGroupmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QUndoGroup, slot: proc(super: QUndoGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_metacall(self: ptr cQUndoGroup, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QUndoGroup_metacall ".} =
  type Cb = proc(super: QUndoGroupmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QUndoGroup(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QUndoGroup, event: gen_qcoreevent.QEvent): bool =


  fQUndoGroup_virtualbase_event(self.h, event.h)

type QUndoGroupeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QUndoGroup, slot: proc(super: QUndoGroupeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_event(self: ptr cQUndoGroup, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoGroup_event ".} =
  type Cb = proc(super: QUndoGroupeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QUndoGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QUndoGroup, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQUndoGroup_virtualbase_eventFilter(self.h, watched.h, event.h)

type QUndoGroupeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QUndoGroup, slot: proc(super: QUndoGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_eventFilter(self: ptr cQUndoGroup, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoGroup_eventFilter ".} =
  type Cb = proc(super: QUndoGroupeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QUndoGroup(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QUndoGroup, event: gen_qcoreevent.QTimerEvent): void =


  fQUndoGroup_virtualbase_timerEvent(self.h, event.h)

type QUndoGrouptimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QUndoGroup, slot: proc(super: QUndoGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_timerEvent(self: ptr cQUndoGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_timerEvent ".} =
  type Cb = proc(super: QUndoGrouptimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QUndoGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QUndoGroup, event: gen_qcoreevent.QChildEvent): void =


  fQUndoGroup_virtualbase_childEvent(self.h, event.h)

type QUndoGroupchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QUndoGroup, slot: proc(super: QUndoGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_childEvent(self: ptr cQUndoGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_childEvent ".} =
  type Cb = proc(super: QUndoGroupchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QUndoGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QUndoGroup, event: gen_qcoreevent.QEvent): void =


  fQUndoGroup_virtualbase_customEvent(self.h, event.h)

type QUndoGroupcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QUndoGroup, slot: proc(super: QUndoGroupcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_customEvent(self: ptr cQUndoGroup, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_customEvent ".} =
  type Cb = proc(super: QUndoGroupcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QUndoGroup(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QUndoGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQUndoGroup_virtualbase_connectNotify(self.h, signal.h)

type QUndoGroupconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QUndoGroup, slot: proc(super: QUndoGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_connectNotify(self: ptr cQUndoGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_connectNotify ".} =
  type Cb = proc(super: QUndoGroupconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QUndoGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QUndoGroup, signal: gen_qmetaobject.QMetaMethod): void =


  fQUndoGroup_virtualbase_disconnectNotify(self.h, signal.h)

type QUndoGroupdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QUndoGroup, slot: proc(super: QUndoGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoGroup_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoGroup_disconnectNotify(self: ptr cQUndoGroup, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoGroup_disconnectNotify ".} =
  type Cb = proc(super: QUndoGroupdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QUndoGroup(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QUndoGroup): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQUndoGroup_staticMetaObject())
proc delete*(self: QUndoGroup) =
  fcQUndoGroup_delete(self.h)
