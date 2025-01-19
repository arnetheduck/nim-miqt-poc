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
{.compile("gen_qundostack.cpp", cflags).}


import gen_qundostack_types
export gen_qundostack_types

import
  gen_qaction,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaction,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQUndoCommand*{.exportc: "QUndoCommand", incompleteStruct.} = object
type cQUndoStack*{.exportc: "QUndoStack", incompleteStruct.} = object

proc fcQUndoCommand_new(): ptr cQUndoCommand {.importc: "QUndoCommand_new".}
proc fcQUndoCommand_new2(text: struct_miqt_string): ptr cQUndoCommand {.importc: "QUndoCommand_new2".}
proc fcQUndoCommand_new3(parent: pointer): ptr cQUndoCommand {.importc: "QUndoCommand_new3".}
proc fcQUndoCommand_new4(text: struct_miqt_string, parent: pointer): ptr cQUndoCommand {.importc: "QUndoCommand_new4".}
proc fcQUndoCommand_undo(self: pointer, ): void {.importc: "QUndoCommand_undo".}
proc fcQUndoCommand_redo(self: pointer, ): void {.importc: "QUndoCommand_redo".}
proc fcQUndoCommand_text(self: pointer, ): struct_miqt_string {.importc: "QUndoCommand_text".}
proc fcQUndoCommand_actionText(self: pointer, ): struct_miqt_string {.importc: "QUndoCommand_actionText".}
proc fcQUndoCommand_setText(self: pointer, text: struct_miqt_string): void {.importc: "QUndoCommand_setText".}
proc fcQUndoCommand_isObsolete(self: pointer, ): bool {.importc: "QUndoCommand_isObsolete".}
proc fcQUndoCommand_setObsolete(self: pointer, obsolete: bool): void {.importc: "QUndoCommand_setObsolete".}
proc fcQUndoCommand_id(self: pointer, ): cint {.importc: "QUndoCommand_id".}
proc fcQUndoCommand_mergeWith(self: pointer, other: pointer): bool {.importc: "QUndoCommand_mergeWith".}
proc fcQUndoCommand_childCount(self: pointer, ): cint {.importc: "QUndoCommand_childCount".}
proc fcQUndoCommand_child(self: pointer, index: cint): pointer {.importc: "QUndoCommand_child".}
proc fQUndoCommand_virtualbase_undo(self: pointer, ): void{.importc: "QUndoCommand_virtualbase_undo".}
proc fcQUndoCommand_override_virtual_undo(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_undo".}
proc fQUndoCommand_virtualbase_redo(self: pointer, ): void{.importc: "QUndoCommand_virtualbase_redo".}
proc fcQUndoCommand_override_virtual_redo(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_redo".}
proc fQUndoCommand_virtualbase_id(self: pointer, ): cint{.importc: "QUndoCommand_virtualbase_id".}
proc fcQUndoCommand_override_virtual_id(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_id".}
proc fQUndoCommand_virtualbase_mergeWith(self: pointer, other: pointer): bool{.importc: "QUndoCommand_virtualbase_mergeWith".}
proc fcQUndoCommand_override_virtual_mergeWith(self: pointer, slot: int) {.importc: "QUndoCommand_override_virtual_mergeWith".}
proc fcQUndoCommand_delete(self: pointer) {.importc: "QUndoCommand_delete".}
proc fcQUndoStack_new(): ptr cQUndoStack {.importc: "QUndoStack_new".}
proc fcQUndoStack_new2(parent: pointer): ptr cQUndoStack {.importc: "QUndoStack_new2".}
proc fcQUndoStack_metaObject(self: pointer, ): pointer {.importc: "QUndoStack_metaObject".}
proc fcQUndoStack_metacast(self: pointer, param1: cstring): pointer {.importc: "QUndoStack_metacast".}
proc fcQUndoStack_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QUndoStack_metacall".}
proc fcQUndoStack_tr(s: cstring): struct_miqt_string {.importc: "QUndoStack_tr".}
proc fcQUndoStack_trUtf8(s: cstring): struct_miqt_string {.importc: "QUndoStack_trUtf8".}
proc fcQUndoStack_clear(self: pointer, ): void {.importc: "QUndoStack_clear".}
proc fcQUndoStack_push(self: pointer, cmd: pointer): void {.importc: "QUndoStack_push".}
proc fcQUndoStack_canUndo(self: pointer, ): bool {.importc: "QUndoStack_canUndo".}
proc fcQUndoStack_canRedo(self: pointer, ): bool {.importc: "QUndoStack_canRedo".}
proc fcQUndoStack_undoText(self: pointer, ): struct_miqt_string {.importc: "QUndoStack_undoText".}
proc fcQUndoStack_redoText(self: pointer, ): struct_miqt_string {.importc: "QUndoStack_redoText".}
proc fcQUndoStack_count(self: pointer, ): cint {.importc: "QUndoStack_count".}
proc fcQUndoStack_index(self: pointer, ): cint {.importc: "QUndoStack_index".}
proc fcQUndoStack_text(self: pointer, idx: cint): struct_miqt_string {.importc: "QUndoStack_text".}
proc fcQUndoStack_createUndoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoStack_createUndoAction".}
proc fcQUndoStack_createRedoAction(self: pointer, parent: pointer): pointer {.importc: "QUndoStack_createRedoAction".}
proc fcQUndoStack_isActive(self: pointer, ): bool {.importc: "QUndoStack_isActive".}
proc fcQUndoStack_isClean(self: pointer, ): bool {.importc: "QUndoStack_isClean".}
proc fcQUndoStack_cleanIndex(self: pointer, ): cint {.importc: "QUndoStack_cleanIndex".}
proc fcQUndoStack_beginMacro(self: pointer, text: struct_miqt_string): void {.importc: "QUndoStack_beginMacro".}
proc fcQUndoStack_endMacro(self: pointer, ): void {.importc: "QUndoStack_endMacro".}
proc fcQUndoStack_setUndoLimit(self: pointer, limit: cint): void {.importc: "QUndoStack_setUndoLimit".}
proc fcQUndoStack_undoLimit(self: pointer, ): cint {.importc: "QUndoStack_undoLimit".}
proc fcQUndoStack_command(self: pointer, index: cint): pointer {.importc: "QUndoStack_command".}
proc fcQUndoStack_setClean(self: pointer, ): void {.importc: "QUndoStack_setClean".}
proc fcQUndoStack_resetClean(self: pointer, ): void {.importc: "QUndoStack_resetClean".}
proc fcQUndoStack_setIndex(self: pointer, idx: cint): void {.importc: "QUndoStack_setIndex".}
proc fcQUndoStack_undo(self: pointer, ): void {.importc: "QUndoStack_undo".}
proc fcQUndoStack_redo(self: pointer, ): void {.importc: "QUndoStack_redo".}
proc fcQUndoStack_setActive(self: pointer, ): void {.importc: "QUndoStack_setActive".}
proc fcQUndoStack_indexChanged(self: pointer, idx: cint): void {.importc: "QUndoStack_indexChanged".}
proc fQUndoStack_connect_indexChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_indexChanged".}
proc fcQUndoStack_cleanChanged(self: pointer, clean: bool): void {.importc: "QUndoStack_cleanChanged".}
proc fQUndoStack_connect_cleanChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_cleanChanged".}
proc fcQUndoStack_canUndoChanged(self: pointer, canUndo: bool): void {.importc: "QUndoStack_canUndoChanged".}
proc fQUndoStack_connect_canUndoChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_canUndoChanged".}
proc fcQUndoStack_canRedoChanged(self: pointer, canRedo: bool): void {.importc: "QUndoStack_canRedoChanged".}
proc fQUndoStack_connect_canRedoChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_canRedoChanged".}
proc fcQUndoStack_undoTextChanged(self: pointer, undoText: struct_miqt_string): void {.importc: "QUndoStack_undoTextChanged".}
proc fQUndoStack_connect_undoTextChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_undoTextChanged".}
proc fcQUndoStack_redoTextChanged(self: pointer, redoText: struct_miqt_string): void {.importc: "QUndoStack_redoTextChanged".}
proc fQUndoStack_connect_redoTextChanged(self: pointer, slot: int) {.importc: "QUndoStack_connect_redoTextChanged".}
proc fcQUndoStack_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoStack_tr2".}
proc fcQUndoStack_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoStack_tr3".}
proc fcQUndoStack_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QUndoStack_trUtf82".}
proc fcQUndoStack_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QUndoStack_trUtf83".}
proc fcQUndoStack_createUndoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoStack_createUndoAction2".}
proc fcQUndoStack_createRedoAction2(self: pointer, parent: pointer, prefix: struct_miqt_string): pointer {.importc: "QUndoStack_createRedoAction2".}
proc fcQUndoStack_setActive1(self: pointer, active: bool): void {.importc: "QUndoStack_setActive1".}
proc fQUndoStack_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QUndoStack_virtualbase_metacall".}
proc fcQUndoStack_override_virtual_metacall(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_metacall".}
proc fQUndoStack_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QUndoStack_virtualbase_event".}
proc fcQUndoStack_override_virtual_event(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_event".}
proc fQUndoStack_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QUndoStack_virtualbase_eventFilter".}
proc fcQUndoStack_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_eventFilter".}
proc fQUndoStack_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QUndoStack_virtualbase_timerEvent".}
proc fcQUndoStack_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_timerEvent".}
proc fQUndoStack_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QUndoStack_virtualbase_childEvent".}
proc fcQUndoStack_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_childEvent".}
proc fQUndoStack_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QUndoStack_virtualbase_customEvent".}
proc fcQUndoStack_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_customEvent".}
proc fQUndoStack_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QUndoStack_virtualbase_connectNotify".}
proc fcQUndoStack_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_connectNotify".}
proc fQUndoStack_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QUndoStack_virtualbase_disconnectNotify".}
proc fcQUndoStack_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QUndoStack_override_virtual_disconnectNotify".}
proc fcQUndoStack_staticMetaObject(): pointer {.importc: "QUndoStack_staticMetaObject".}
proc fcQUndoStack_delete(self: pointer) {.importc: "QUndoStack_delete".}


func init*(T: type QUndoCommand, h: ptr cQUndoCommand): QUndoCommand =
  T(h: h)
proc create*(T: type QUndoCommand, ): QUndoCommand =

  QUndoCommand.init(fcQUndoCommand_new())
proc create*(T: type QUndoCommand, text: string): QUndoCommand =

  QUndoCommand.init(fcQUndoCommand_new2(struct_miqt_string(data: text, len: csize_t(len(text)))))
proc create*(T: type QUndoCommand, parent: QUndoCommand): QUndoCommand =

  QUndoCommand.init(fcQUndoCommand_new3(parent.h))
proc create*(T: type QUndoCommand, text: string, parent: QUndoCommand): QUndoCommand =

  QUndoCommand.init(fcQUndoCommand_new4(struct_miqt_string(data: text, len: csize_t(len(text))), parent.h))
proc undo*(self: QUndoCommand, ): void =

  fcQUndoCommand_undo(self.h)

proc redo*(self: QUndoCommand, ): void =

  fcQUndoCommand_redo(self.h)

proc text*(self: QUndoCommand, ): string =

  let v_ms = fcQUndoCommand_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc actionText*(self: QUndoCommand, ): string =

  let v_ms = fcQUndoCommand_actionText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setText*(self: QUndoCommand, text: string): void =

  fcQUndoCommand_setText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc isObsolete*(self: QUndoCommand, ): bool =

  fcQUndoCommand_isObsolete(self.h)

proc setObsolete*(self: QUndoCommand, obsolete: bool): void =

  fcQUndoCommand_setObsolete(self.h, obsolete)

proc id*(self: QUndoCommand, ): cint =

  fcQUndoCommand_id(self.h)

proc mergeWith*(self: QUndoCommand, other: QUndoCommand): bool =

  fcQUndoCommand_mergeWith(self.h, other.h)

proc childCount*(self: QUndoCommand, ): cint =

  fcQUndoCommand_childCount(self.h)

proc child*(self: QUndoCommand, index: cint): QUndoCommand =

  QUndoCommand(h: fcQUndoCommand_child(self.h, index))

proc callVirtualBase_undo(self: QUndoCommand, ): void =


  fQUndoCommand_virtualbase_undo(self.h)

type QUndoCommandundoBase* = proc(): void
proc onundo*(self: QUndoCommand, slot: proc(super: QUndoCommandundoBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoCommandundoBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_undo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_undo(self: ptr cQUndoCommand, slot: int): void {.exportc: "miqt_exec_callback_QUndoCommand_undo ".} =
  type Cb = proc(super: QUndoCommandundoBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_undo(QUndoCommand(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_redo(self: QUndoCommand, ): void =


  fQUndoCommand_virtualbase_redo(self.h)

type QUndoCommandredoBase* = proc(): void
proc onredo*(self: QUndoCommand, slot: proc(super: QUndoCommandredoBase): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoCommandredoBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_redo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_redo(self: ptr cQUndoCommand, slot: int): void {.exportc: "miqt_exec_callback_QUndoCommand_redo ".} =
  type Cb = proc(super: QUndoCommandredoBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_redo(QUndoCommand(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_id(self: QUndoCommand, ): cint =


  fQUndoCommand_virtualbase_id(self.h)

type QUndoCommandidBase* = proc(): cint
proc onid*(self: QUndoCommand, slot: proc(super: QUndoCommandidBase): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoCommandidBase): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_id(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_id(self: ptr cQUndoCommand, slot: int): cint {.exportc: "miqt_exec_callback_QUndoCommand_id ".} =
  type Cb = proc(super: QUndoCommandidBase): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_id(QUndoCommand(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_mergeWith(self: QUndoCommand, other: QUndoCommand): bool =


  fQUndoCommand_virtualbase_mergeWith(self.h, other.h)

type QUndoCommandmergeWithBase* = proc(other: QUndoCommand): bool
proc onmergeWith*(self: QUndoCommand, slot: proc(super: QUndoCommandmergeWithBase, other: QUndoCommand): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoCommandmergeWithBase, other: QUndoCommand): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoCommand_override_virtual_mergeWith(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoCommand_mergeWith(self: ptr cQUndoCommand, slot: int, other: pointer): bool {.exportc: "miqt_exec_callback_QUndoCommand_mergeWith ".} =
  type Cb = proc(super: QUndoCommandmergeWithBase, other: QUndoCommand): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(other: QUndoCommand): auto =
    callVirtualBase_mergeWith(QUndoCommand(h: self), other)
  let slotval1 = QUndoCommand(h: other)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc delete*(self: QUndoCommand) =
  fcQUndoCommand_delete(self.h)

func init*(T: type QUndoStack, h: ptr cQUndoStack): QUndoStack =
  T(h: h)
proc create*(T: type QUndoStack, ): QUndoStack =

  QUndoStack.init(fcQUndoStack_new())
proc create*(T: type QUndoStack, parent: gen_qobject.QObject): QUndoStack =

  QUndoStack.init(fcQUndoStack_new2(parent.h))
proc metaObject*(self: QUndoStack, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQUndoStack_metaObject(self.h))

proc metacast*(self: QUndoStack, param1: cstring): pointer =

  fcQUndoStack_metacast(self.h, param1)

proc metacall*(self: QUndoStack, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQUndoStack_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QUndoStack, s: cstring): string =

  let v_ms = fcQUndoStack_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QUndoStack, s: cstring): string =

  let v_ms = fcQUndoStack_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc clear*(self: QUndoStack, ): void =

  fcQUndoStack_clear(self.h)

proc push*(self: QUndoStack, cmd: QUndoCommand): void =

  fcQUndoStack_push(self.h, cmd.h)

proc canUndo*(self: QUndoStack, ): bool =

  fcQUndoStack_canUndo(self.h)

proc canRedo*(self: QUndoStack, ): bool =

  fcQUndoStack_canRedo(self.h)

proc undoText*(self: QUndoStack, ): string =

  let v_ms = fcQUndoStack_undoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc redoText*(self: QUndoStack, ): string =

  let v_ms = fcQUndoStack_redoText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc count*(self: QUndoStack, ): cint =

  fcQUndoStack_count(self.h)

proc index*(self: QUndoStack, ): cint =

  fcQUndoStack_index(self.h)

proc text*(self: QUndoStack, idx: cint): string =

  let v_ms = fcQUndoStack_text(self.h, idx)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createUndoAction*(self: QUndoStack, parent: gen_qobject.QObject): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoStack_createUndoAction(self.h, parent.h))

proc createRedoAction*(self: QUndoStack, parent: gen_qobject.QObject): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoStack_createRedoAction(self.h, parent.h))

proc isActive*(self: QUndoStack, ): bool =

  fcQUndoStack_isActive(self.h)

proc isClean*(self: QUndoStack, ): bool =

  fcQUndoStack_isClean(self.h)

proc cleanIndex*(self: QUndoStack, ): cint =

  fcQUndoStack_cleanIndex(self.h)

proc beginMacro*(self: QUndoStack, text: string): void =

  fcQUndoStack_beginMacro(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc endMacro*(self: QUndoStack, ): void =

  fcQUndoStack_endMacro(self.h)

proc setUndoLimit*(self: QUndoStack, limit: cint): void =

  fcQUndoStack_setUndoLimit(self.h, limit)

proc undoLimit*(self: QUndoStack, ): cint =

  fcQUndoStack_undoLimit(self.h)

proc command*(self: QUndoStack, index: cint): QUndoCommand =

  QUndoCommand(h: fcQUndoStack_command(self.h, index))

proc setClean*(self: QUndoStack, ): void =

  fcQUndoStack_setClean(self.h)

proc resetClean*(self: QUndoStack, ): void =

  fcQUndoStack_resetClean(self.h)

proc setIndex*(self: QUndoStack, idx: cint): void =

  fcQUndoStack_setIndex(self.h, idx)

proc undo*(self: QUndoStack, ): void =

  fcQUndoStack_undo(self.h)

proc redo*(self: QUndoStack, ): void =

  fcQUndoStack_redo(self.h)

proc setActive*(self: QUndoStack, ): void =

  fcQUndoStack_setActive(self.h)

proc indexChanged*(self: QUndoStack, idx: cint): void =

  fcQUndoStack_indexChanged(self.h, idx)

proc miqt_exec_callback_QUndoStack_indexChanged(slot: int, idx: cint) {.exportc.} =
  type Cb = proc(idx: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = idx


  nimfunc[](slotval1)

proc onindexChanged*(self: QUndoStack, slot: proc(idx: cint)) =
  type Cb = proc(idx: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoStack_connect_indexChanged(self.h, cast[int](addr tmp[]))
proc cleanChanged*(self: QUndoStack, clean: bool): void =

  fcQUndoStack_cleanChanged(self.h, clean)

proc miqt_exec_callback_QUndoStack_cleanChanged(slot: int, clean: bool) {.exportc.} =
  type Cb = proc(clean: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = clean


  nimfunc[](slotval1)

proc oncleanChanged*(self: QUndoStack, slot: proc(clean: bool)) =
  type Cb = proc(clean: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoStack_connect_cleanChanged(self.h, cast[int](addr tmp[]))
proc canUndoChanged*(self: QUndoStack, canUndo: bool): void =

  fcQUndoStack_canUndoChanged(self.h, canUndo)

proc miqt_exec_callback_QUndoStack_canUndoChanged(slot: int, canUndo: bool) {.exportc.} =
  type Cb = proc(canUndo: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = canUndo


  nimfunc[](slotval1)

proc oncanUndoChanged*(self: QUndoStack, slot: proc(canUndo: bool)) =
  type Cb = proc(canUndo: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoStack_connect_canUndoChanged(self.h, cast[int](addr tmp[]))
proc canRedoChanged*(self: QUndoStack, canRedo: bool): void =

  fcQUndoStack_canRedoChanged(self.h, canRedo)

proc miqt_exec_callback_QUndoStack_canRedoChanged(slot: int, canRedo: bool) {.exportc.} =
  type Cb = proc(canRedo: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = canRedo


  nimfunc[](slotval1)

proc oncanRedoChanged*(self: QUndoStack, slot: proc(canRedo: bool)) =
  type Cb = proc(canRedo: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoStack_connect_canRedoChanged(self.h, cast[int](addr tmp[]))
proc undoTextChanged*(self: QUndoStack, undoText: string): void =

  fcQUndoStack_undoTextChanged(self.h, struct_miqt_string(data: undoText, len: csize_t(len(undoText))))

proc miqt_exec_callback_QUndoStack_undoTextChanged(slot: int, undoText: struct_miqt_string) {.exportc.} =
  type Cb = proc(undoText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vundoText_ms = undoText
  let vundoTextx_ret = string.fromBytes(toOpenArrayByte(vundoText_ms.data, 0, int(vundoText_ms.len)-1))
  c_free(vundoText_ms.data)
  let slotval1 = vundoTextx_ret


  nimfunc[](slotval1)

proc onundoTextChanged*(self: QUndoStack, slot: proc(undoText: string)) =
  type Cb = proc(undoText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoStack_connect_undoTextChanged(self.h, cast[int](addr tmp[]))
proc redoTextChanged*(self: QUndoStack, redoText: string): void =

  fcQUndoStack_redoTextChanged(self.h, struct_miqt_string(data: redoText, len: csize_t(len(redoText))))

proc miqt_exec_callback_QUndoStack_redoTextChanged(slot: int, redoText: struct_miqt_string) {.exportc.} =
  type Cb = proc(redoText: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vredoText_ms = redoText
  let vredoTextx_ret = string.fromBytes(toOpenArrayByte(vredoText_ms.data, 0, int(vredoText_ms.len)-1))
  c_free(vredoText_ms.data)
  let slotval1 = vredoTextx_ret


  nimfunc[](slotval1)

proc onredoTextChanged*(self: QUndoStack, slot: proc(redoText: string)) =
  type Cb = proc(redoText: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQUndoStack_connect_redoTextChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QUndoStack, s: cstring, c: cstring): string =

  let v_ms = fcQUndoStack_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QUndoStack, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUndoStack_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QUndoStack, s: cstring, c: cstring): string =

  let v_ms = fcQUndoStack_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QUndoStack, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQUndoStack_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createUndoAction2*(self: QUndoStack, parent: gen_qobject.QObject, prefix: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoStack_createUndoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc createRedoAction2*(self: QUndoStack, parent: gen_qobject.QObject, prefix: string): gen_qaction.QAction =

  gen_qaction.QAction(h: fcQUndoStack_createRedoAction2(self.h, parent.h, struct_miqt_string(data: prefix, len: csize_t(len(prefix)))))

proc setActive1*(self: QUndoStack, active: bool): void =

  fcQUndoStack_setActive1(self.h, active)

proc callVirtualBase_metacall(self: QUndoStack, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQUndoStack_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QUndoStackmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QUndoStack, slot: proc(super: QUndoStackmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QUndoStackmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_metacall(self: ptr cQUndoStack, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QUndoStack_metacall ".} =
  type Cb = proc(super: QUndoStackmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QUndoStack(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QUndoStack, event: gen_qcoreevent.QEvent): bool =


  fQUndoStack_virtualbase_event(self.h, event.h)

type QUndoStackeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QUndoStack, slot: proc(super: QUndoStackeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoStackeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_event(self: ptr cQUndoStack, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoStack_event ".} =
  type Cb = proc(super: QUndoStackeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QUndoStack(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QUndoStack, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQUndoStack_virtualbase_eventFilter(self.h, watched.h, event.h)

type QUndoStackeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QUndoStack, slot: proc(super: QUndoStackeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QUndoStackeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_eventFilter(self: ptr cQUndoStack, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QUndoStack_eventFilter ".} =
  type Cb = proc(super: QUndoStackeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QUndoStack(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QUndoStack, event: gen_qcoreevent.QTimerEvent): void =


  fQUndoStack_virtualbase_timerEvent(self.h, event.h)

type QUndoStacktimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QUndoStack, slot: proc(super: QUndoStacktimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoStacktimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_timerEvent(self: ptr cQUndoStack, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_timerEvent ".} =
  type Cb = proc(super: QUndoStacktimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QUndoStack(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QUndoStack, event: gen_qcoreevent.QChildEvent): void =


  fQUndoStack_virtualbase_childEvent(self.h, event.h)

type QUndoStackchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QUndoStack, slot: proc(super: QUndoStackchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoStackchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_childEvent(self: ptr cQUndoStack, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_childEvent ".} =
  type Cb = proc(super: QUndoStackchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QUndoStack(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QUndoStack, event: gen_qcoreevent.QEvent): void =


  fQUndoStack_virtualbase_customEvent(self.h, event.h)

type QUndoStackcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QUndoStack, slot: proc(super: QUndoStackcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoStackcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_customEvent(self: ptr cQUndoStack, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_customEvent ".} =
  type Cb = proc(super: QUndoStackcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QUndoStack(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QUndoStack, signal: gen_qmetaobject.QMetaMethod): void =


  fQUndoStack_virtualbase_connectNotify(self.h, signal.h)

type QUndoStackconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QUndoStack, slot: proc(super: QUndoStackconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoStackconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_connectNotify(self: ptr cQUndoStack, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_connectNotify ".} =
  type Cb = proc(super: QUndoStackconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QUndoStack(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QUndoStack, signal: gen_qmetaobject.QMetaMethod): void =


  fQUndoStack_virtualbase_disconnectNotify(self.h, signal.h)

type QUndoStackdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QUndoStack, slot: proc(super: QUndoStackdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QUndoStackdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQUndoStack_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QUndoStack_disconnectNotify(self: ptr cQUndoStack, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QUndoStack_disconnectNotify ".} =
  type Cb = proc(super: QUndoStackdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QUndoStack(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QUndoStack): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQUndoStack_staticMetaObject())
proc delete*(self: QUndoStack) =
  fcQUndoStack_delete(self.h)
