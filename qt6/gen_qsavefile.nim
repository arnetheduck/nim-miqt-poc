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
{.compile("gen_qsavefile.cpp", cflags).}


import gen_qsavefile_types
export gen_qsavefile_types

import
  gen_qcoreevent,
  gen_qfiledevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qfiledevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQSaveFile*{.exportc: "QSaveFile", incompleteStruct.} = object

proc fcQSaveFile_new(name: struct_miqt_string): ptr cQSaveFile {.importc: "QSaveFile_new".}
proc fcQSaveFile_new2(): ptr cQSaveFile {.importc: "QSaveFile_new2".}
proc fcQSaveFile_new3(name: struct_miqt_string, parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new3".}
proc fcQSaveFile_new4(parent: pointer): ptr cQSaveFile {.importc: "QSaveFile_new4".}
proc fcQSaveFile_metaObject(self: pointer, ): pointer {.importc: "QSaveFile_metaObject".}
proc fcQSaveFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QSaveFile_metacast".}
proc fcQSaveFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSaveFile_metacall".}
proc fcQSaveFile_tr(s: cstring): struct_miqt_string {.importc: "QSaveFile_tr".}
proc fcQSaveFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QSaveFile_fileName".}
proc fcQSaveFile_setFileName(self: pointer, name: struct_miqt_string): void {.importc: "QSaveFile_setFileName".}
proc fcQSaveFile_open(self: pointer, flags: cint): bool {.importc: "QSaveFile_open".}
proc fcQSaveFile_commit(self: pointer, ): bool {.importc: "QSaveFile_commit".}
proc fcQSaveFile_cancelWriting(self: pointer, ): void {.importc: "QSaveFile_cancelWriting".}
proc fcQSaveFile_setDirectWriteFallback(self: pointer, enabled: bool): void {.importc: "QSaveFile_setDirectWriteFallback".}
proc fcQSaveFile_directWriteFallback(self: pointer, ): bool {.importc: "QSaveFile_directWriteFallback".}
proc fcQSaveFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSaveFile_tr2".}
proc fcQSaveFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSaveFile_tr3".}
proc fQSaveFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSaveFile_virtualbase_metacall".}
proc fcQSaveFile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_metacall".}
proc fQSaveFile_virtualbase_fileName(self: pointer, ): struct_miqt_string{.importc: "QSaveFile_virtualbase_fileName".}
proc fcQSaveFile_override_virtual_fileName(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_fileName".}
proc fQSaveFile_virtualbase_open(self: pointer, flags: cint): bool{.importc: "QSaveFile_virtualbase_open".}
proc fcQSaveFile_override_virtual_open(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_open".}
proc fQSaveFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QSaveFile_virtualbase_writeData".}
proc fcQSaveFile_override_virtual_writeData(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_writeData".}
proc fQSaveFile_virtualbase_isSequential(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_isSequential".}
proc fcQSaveFile_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_isSequential".}
proc fQSaveFile_virtualbase_pos(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_pos".}
proc fcQSaveFile_override_virtual_pos(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_pos".}
proc fQSaveFile_virtualbase_seek(self: pointer, offset: clonglong): bool{.importc: "QSaveFile_virtualbase_seek".}
proc fcQSaveFile_override_virtual_seek(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_seek".}
proc fQSaveFile_virtualbase_atEnd(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_atEnd".}
proc fcQSaveFile_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_atEnd".}
proc fQSaveFile_virtualbase_size(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_size".}
proc fcQSaveFile_override_virtual_size(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_size".}
proc fQSaveFile_virtualbase_resize(self: pointer, sz: clonglong): bool{.importc: "QSaveFile_virtualbase_resize".}
proc fcQSaveFile_override_virtual_resize(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_resize".}
proc fQSaveFile_virtualbase_permissions(self: pointer, ): cint{.importc: "QSaveFile_virtualbase_permissions".}
proc fcQSaveFile_override_virtual_permissions(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_permissions".}
proc fQSaveFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool{.importc: "QSaveFile_virtualbase_setPermissions".}
proc fcQSaveFile_override_virtual_setPermissions(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_setPermissions".}
proc fQSaveFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSaveFile_virtualbase_readData".}
proc fcQSaveFile_override_virtual_readData(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_readData".}
proc fQSaveFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QSaveFile_virtualbase_readLineData".}
proc fcQSaveFile_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_readLineData".}
proc fQSaveFile_virtualbase_reset(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_reset".}
proc fcQSaveFile_override_virtual_reset(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_reset".}
proc fQSaveFile_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_bytesAvailable".}
proc fcQSaveFile_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_bytesAvailable".}
proc fQSaveFile_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QSaveFile_virtualbase_bytesToWrite".}
proc fcQSaveFile_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_bytesToWrite".}
proc fQSaveFile_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QSaveFile_virtualbase_canReadLine".}
proc fcQSaveFile_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_canReadLine".}
proc fQSaveFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QSaveFile_virtualbase_waitForReadyRead".}
proc fcQSaveFile_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_waitForReadyRead".}
proc fQSaveFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QSaveFile_virtualbase_waitForBytesWritten".}
proc fcQSaveFile_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_waitForBytesWritten".}
proc fQSaveFile_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QSaveFile_virtualbase_skipData".}
proc fcQSaveFile_override_virtual_skipData(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_skipData".}
proc fQSaveFile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSaveFile_virtualbase_event".}
proc fcQSaveFile_override_virtual_event(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_event".}
proc fQSaveFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSaveFile_virtualbase_eventFilter".}
proc fcQSaveFile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_eventFilter".}
proc fQSaveFile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSaveFile_virtualbase_timerEvent".}
proc fcQSaveFile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_timerEvent".}
proc fQSaveFile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSaveFile_virtualbase_childEvent".}
proc fcQSaveFile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_childEvent".}
proc fQSaveFile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSaveFile_virtualbase_customEvent".}
proc fcQSaveFile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_customEvent".}
proc fQSaveFile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSaveFile_virtualbase_connectNotify".}
proc fcQSaveFile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_connectNotify".}
proc fQSaveFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSaveFile_virtualbase_disconnectNotify".}
proc fcQSaveFile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSaveFile_override_virtual_disconnectNotify".}
proc fcQSaveFile_staticMetaObject(): pointer {.importc: "QSaveFile_staticMetaObject".}
proc fcQSaveFile_delete(self: pointer) {.importc: "QSaveFile_delete".}


func init*(T: type QSaveFile, h: ptr cQSaveFile): QSaveFile =
  T(h: h)
proc create*(T: type QSaveFile, name: string): QSaveFile =

  QSaveFile.init(fcQSaveFile_new(struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QSaveFile, ): QSaveFile =

  QSaveFile.init(fcQSaveFile_new2())
proc create*(T: type QSaveFile, name: string, parent: gen_qobject.QObject): QSaveFile =

  QSaveFile.init(fcQSaveFile_new3(struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))
proc create*(T: type QSaveFile, parent: gen_qobject.QObject): QSaveFile =

  QSaveFile.init(fcQSaveFile_new4(parent.h))
proc metaObject*(self: QSaveFile, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSaveFile_metaObject(self.h))

proc metacast*(self: QSaveFile, param1: cstring): pointer =

  fcQSaveFile_metacast(self.h, param1)

proc metacall*(self: QSaveFile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSaveFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSaveFile, s: cstring): string =

  let v_ms = fcQSaveFile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: QSaveFile, ): string =

  let v_ms = fcQSaveFile_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: QSaveFile, name: string): void =

  fcQSaveFile_setFileName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc open*(self: QSaveFile, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQSaveFile_open(self.h, cint(flags))

proc commit*(self: QSaveFile, ): bool =

  fcQSaveFile_commit(self.h)

proc cancelWriting*(self: QSaveFile, ): void =

  fcQSaveFile_cancelWriting(self.h)

proc setDirectWriteFallback*(self: QSaveFile, enabled: bool): void =

  fcQSaveFile_setDirectWriteFallback(self.h, enabled)

proc directWriteFallback*(self: QSaveFile, ): bool =

  fcQSaveFile_directWriteFallback(self.h)

proc tr2*(_: type QSaveFile, s: cstring, c: cstring): string =

  let v_ms = fcQSaveFile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSaveFile, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSaveFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSaveFile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSaveFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSaveFilemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSaveFile, slot: proc(super: QSaveFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_metacall(self: ptr cQSaveFile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSaveFile_metacall ".} =
  type Cb = proc(super: QSaveFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSaveFile(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_fileName(self: QSaveFile, ): string =


  let v_ms = fQSaveFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QSaveFilefileNameBase* = proc(): string
proc onfileName*(self: QSaveFile, slot: proc(super: QSaveFilefileNameBase): string) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilefileNameBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_fileName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_fileName(self: ptr cQSaveFile, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QSaveFile_fileName ".} =
  type Cb = proc(super: QSaveFilefileNameBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_fileName(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_open(self: QSaveFile, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQSaveFile_virtualbase_open(self.h, cint(flags))

type QSaveFileopenBase* = proc(flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QSaveFile, slot: proc(super: QSaveFileopenBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileopenBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_open(self: ptr cQSaveFile, slot: int, flags: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_open ".} =
  type Cb = proc(super: QSaveFileopenBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QSaveFile(h: self), flags)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(flags)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_writeData(self: QSaveFile, data: cstring, len: clonglong): clonglong =


  fQSaveFile_virtualbase_writeData(self.h, data, len)

type QSaveFilewriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QSaveFile, slot: proc(super: QSaveFilewriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilewriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_writeData(self: ptr cQSaveFile, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QSaveFile_writeData ".} =
  type Cb = proc(super: QSaveFilewriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QSaveFile(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_isSequential(self: QSaveFile, ): bool =


  fQSaveFile_virtualbase_isSequential(self.h)

type QSaveFileisSequentialBase* = proc(): bool
proc onisSequential*(self: QSaveFile, slot: proc(super: QSaveFileisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_isSequential(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_isSequential ".} =
  type Cb = proc(super: QSaveFileisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_pos(self: QSaveFile, ): clonglong =


  fQSaveFile_virtualbase_pos(self.h)

type QSaveFileposBase* = proc(): clonglong
proc onpos*(self: QSaveFile, slot: proc(super: QSaveFileposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_pos(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_pos ".} =
  type Cb = proc(super: QSaveFileposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QSaveFile, offset: clonglong): bool =


  fQSaveFile_virtualbase_seek(self.h, offset)

type QSaveFileseekBase* = proc(offset: clonglong): bool
proc onseek*(self: QSaveFile, slot: proc(super: QSaveFileseekBase, offset: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileseekBase, offset: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_seek(self: ptr cQSaveFile, slot: int, offset: clonglong): bool {.exportc: "miqt_exec_callback_QSaveFile_seek ".} =
  type Cb = proc(super: QSaveFileseekBase, offset: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: clonglong): auto =
    callVirtualBase_seek(QSaveFile(h: self), offset)
  let slotval1 = offset


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QSaveFile, ): bool =


  fQSaveFile_virtualbase_atEnd(self.h)

type QSaveFileatEndBase* = proc(): bool
proc onatEnd*(self: QSaveFile, slot: proc(super: QSaveFileatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_atEnd(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_atEnd ".} =
  type Cb = proc(super: QSaveFileatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QSaveFile, ): clonglong =


  fQSaveFile_virtualbase_size(self.h)

type QSaveFilesizeBase* = proc(): clonglong
proc onsize*(self: QSaveFile, slot: proc(super: QSaveFilesizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilesizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_size(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_size ".} =
  type Cb = proc(super: QSaveFilesizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_resize(self: QSaveFile, sz: clonglong): bool =


  fQSaveFile_virtualbase_resize(self.h, sz)

type QSaveFileresizeBase* = proc(sz: clonglong): bool
proc onresize*(self: QSaveFile, slot: proc(super: QSaveFileresizeBase, sz: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileresizeBase, sz: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_resize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_resize(self: ptr cQSaveFile, slot: int, sz: clonglong): bool {.exportc: "miqt_exec_callback_QSaveFile_resize ".} =
  type Cb = proc(super: QSaveFileresizeBase, sz: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sz: clonglong): auto =
    callVirtualBase_resize(QSaveFile(h: self), sz)
  let slotval1 = sz


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_permissions(self: QSaveFile, ): gen_qfiledevice.QFileDevicePermission =


  gen_qfiledevice.QFileDevicePermission(fQSaveFile_virtualbase_permissions(self.h))

type QSaveFilepermissionsBase* = proc(): gen_qfiledevice.QFileDevicePermission
proc onpermissions*(self: QSaveFile, slot: proc(super: QSaveFilepermissionsBase): gen_qfiledevice.QFileDevicePermission) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilepermissionsBase): gen_qfiledevice.QFileDevicePermission
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_permissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_permissions(self: ptr cQSaveFile, slot: int): cint {.exportc: "miqt_exec_callback_QSaveFile_permissions ".} =
  type Cb = proc(super: QSaveFilepermissionsBase): gen_qfiledevice.QFileDevicePermission
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_permissions(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_setPermissions(self: QSaveFile, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool =


  fQSaveFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

type QSaveFilesetPermissionsBase* = proc(permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
proc onsetPermissions*(self: QSaveFile, slot: proc(super: QSaveFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_setPermissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_setPermissions(self: ptr cQSaveFile, slot: int, permissionSpec: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_setPermissions ".} =
  type Cb = proc(super: QSaveFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(permissionSpec: gen_qfiledevice.QFileDevicePermission): auto =
    callVirtualBase_setPermissions(QSaveFile(h: self), permissionSpec)
  let slotval1 = gen_qfiledevice.QFileDevicePermission(permissionSpec)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_readData(self: QSaveFile, data: cstring, maxlen: clonglong): clonglong =


  fQSaveFile_virtualbase_readData(self.h, data, maxlen)

type QSaveFilereadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QSaveFile, slot: proc(super: QSaveFilereadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilereadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_readData(self: ptr cQSaveFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSaveFile_readData ".} =
  type Cb = proc(super: QSaveFilereadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QSaveFile(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QSaveFile, data: cstring, maxlen: clonglong): clonglong =


  fQSaveFile_virtualbase_readLineData(self.h, data, maxlen)

type QSaveFilereadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QSaveFile, slot: proc(super: QSaveFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_readLineData(self: ptr cQSaveFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QSaveFile_readLineData ".} =
  type Cb = proc(super: QSaveFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QSaveFile(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_reset(self: QSaveFile, ): bool =


  fQSaveFile_virtualbase_reset(self.h)

type QSaveFileresetBase* = proc(): bool
proc onreset*(self: QSaveFile, slot: proc(super: QSaveFileresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_reset(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_reset ".} =
  type Cb = proc(super: QSaveFileresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QSaveFile, ): clonglong =


  fQSaveFile_virtualbase_bytesAvailable(self.h)

type QSaveFilebytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QSaveFile, slot: proc(super: QSaveFilebytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilebytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_bytesAvailable(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_bytesAvailable ".} =
  type Cb = proc(super: QSaveFilebytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QSaveFile, ): clonglong =


  fQSaveFile_virtualbase_bytesToWrite(self.h)

type QSaveFilebytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QSaveFile, slot: proc(super: QSaveFilebytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilebytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_bytesToWrite(self: ptr cQSaveFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QSaveFile_bytesToWrite ".} =
  type Cb = proc(super: QSaveFilebytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QSaveFile, ): bool =


  fQSaveFile_virtualbase_canReadLine(self.h)

type QSaveFilecanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QSaveFile, slot: proc(super: QSaveFilecanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilecanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_canReadLine(self: ptr cQSaveFile, slot: int): bool {.exportc: "miqt_exec_callback_QSaveFile_canReadLine ".} =
  type Cb = proc(super: QSaveFilecanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QSaveFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QSaveFile, msecs: cint): bool =


  fQSaveFile_virtualbase_waitForReadyRead(self.h, msecs)

type QSaveFilewaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QSaveFile, slot: proc(super: QSaveFilewaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilewaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_waitForReadyRead(self: ptr cQSaveFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_waitForReadyRead ".} =
  type Cb = proc(super: QSaveFilewaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QSaveFile(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QSaveFile, msecs: cint): bool =


  fQSaveFile_virtualbase_waitForBytesWritten(self.h, msecs)

type QSaveFilewaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QSaveFile, slot: proc(super: QSaveFilewaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilewaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_waitForBytesWritten(self: ptr cQSaveFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QSaveFile_waitForBytesWritten ".} =
  type Cb = proc(super: QSaveFilewaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QSaveFile(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_skipData(self: QSaveFile, maxSize: clonglong): clonglong =


  fQSaveFile_virtualbase_skipData(self.h, maxSize)

type QSaveFileskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QSaveFile, slot: proc(super: QSaveFileskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_skipData(self: ptr cQSaveFile, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QSaveFile_skipData ".} =
  type Cb = proc(super: QSaveFileskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QSaveFile(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QSaveFile, event: gen_qcoreevent.QEvent): bool =


  fQSaveFile_virtualbase_event(self.h, event.h)

type QSaveFileeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSaveFile, slot: proc(super: QSaveFileeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_event(self: ptr cQSaveFile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSaveFile_event ".} =
  type Cb = proc(super: QSaveFileeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSaveFile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSaveFile, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSaveFile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSaveFileeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSaveFile, slot: proc(super: QSaveFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_eventFilter(self: ptr cQSaveFile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSaveFile_eventFilter ".} =
  type Cb = proc(super: QSaveFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSaveFile(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSaveFile, event: gen_qcoreevent.QTimerEvent): void =


  fQSaveFile_virtualbase_timerEvent(self.h, event.h)

type QSaveFiletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSaveFile, slot: proc(super: QSaveFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSaveFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_timerEvent(self: ptr cQSaveFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_timerEvent ".} =
  type Cb = proc(super: QSaveFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSaveFile(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSaveFile, event: gen_qcoreevent.QChildEvent): void =


  fQSaveFile_virtualbase_childEvent(self.h, event.h)

type QSaveFilechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSaveFile, slot: proc(super: QSaveFilechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_childEvent(self: ptr cQSaveFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_childEvent ".} =
  type Cb = proc(super: QSaveFilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSaveFile(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSaveFile, event: gen_qcoreevent.QEvent): void =


  fQSaveFile_virtualbase_customEvent(self.h, event.h)

type QSaveFilecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSaveFile, slot: proc(super: QSaveFilecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSaveFilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_customEvent(self: ptr cQSaveFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_customEvent ".} =
  type Cb = proc(super: QSaveFilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSaveFile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSaveFile, signal: gen_qmetaobject.QMetaMethod): void =


  fQSaveFile_virtualbase_connectNotify(self.h, signal.h)

type QSaveFileconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSaveFile, slot: proc(super: QSaveFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSaveFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_connectNotify(self: ptr cQSaveFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_connectNotify ".} =
  type Cb = proc(super: QSaveFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSaveFile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSaveFile, signal: gen_qmetaobject.QMetaMethod): void =


  fQSaveFile_virtualbase_disconnectNotify(self.h, signal.h)

type QSaveFiledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSaveFile, slot: proc(super: QSaveFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSaveFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSaveFile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSaveFile_disconnectNotify(self: ptr cQSaveFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSaveFile_disconnectNotify ".} =
  type Cb = proc(super: QSaveFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSaveFile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QSaveFile): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQSaveFile_staticMetaObject())
proc delete*(self: QSaveFile) =
  fcQSaveFile_delete(self.h)
