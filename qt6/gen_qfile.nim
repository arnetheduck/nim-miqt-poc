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
{.compile("gen_qfile.cpp", cflags).}


import gen_qfile_types
export gen_qfile_types

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

type cQFile*{.exportc: "QFile", incompleteStruct.} = object

proc fcQFile_new(): ptr cQFile {.importc: "QFile_new".}
proc fcQFile_new2(name: struct_miqt_string): ptr cQFile {.importc: "QFile_new2".}
proc fcQFile_new3(parent: pointer): ptr cQFile {.importc: "QFile_new3".}
proc fcQFile_new4(name: struct_miqt_string, parent: pointer): ptr cQFile {.importc: "QFile_new4".}
proc fcQFile_metaObject(self: pointer, ): pointer {.importc: "QFile_metaObject".}
proc fcQFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QFile_metacast".}
proc fcQFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QFile_metacall".}
proc fcQFile_tr(s: cstring): struct_miqt_string {.importc: "QFile_tr".}
proc fcQFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QFile_fileName".}
proc fcQFile_setFileName(self: pointer, name: struct_miqt_string): void {.importc: "QFile_setFileName".}
proc fcQFile_encodeName(fileName: struct_miqt_string): struct_miqt_string {.importc: "QFile_encodeName".}
proc fcQFile_decodeName(localFileName: struct_miqt_string): struct_miqt_string {.importc: "QFile_decodeName".}
proc fcQFile_decodeNameWithLocalFileName(localFileName: cstring): struct_miqt_string {.importc: "QFile_decodeNameWithLocalFileName".}
proc fcQFile_exists(self: pointer, ): bool {.importc: "QFile_exists".}
proc fcQFile_existsWithFileName(fileName: struct_miqt_string): bool {.importc: "QFile_existsWithFileName".}
proc fcQFile_symLinkTarget(self: pointer, ): struct_miqt_string {.importc: "QFile_symLinkTarget".}
proc fcQFile_symLinkTargetWithFileName(fileName: struct_miqt_string): struct_miqt_string {.importc: "QFile_symLinkTargetWithFileName".}
proc fcQFile_remove(self: pointer, ): bool {.importc: "QFile_remove".}
proc fcQFile_removeWithFileName(fileName: struct_miqt_string): bool {.importc: "QFile_removeWithFileName".}
proc fcQFile_moveToTrash(self: pointer, ): bool {.importc: "QFile_moveToTrash".}
proc fcQFile_moveToTrashWithFileName(fileName: struct_miqt_string): bool {.importc: "QFile_moveToTrashWithFileName".}
proc fcQFile_rename(self: pointer, newName: struct_miqt_string): bool {.importc: "QFile_rename".}
proc fcQFile_rename2(oldName: struct_miqt_string, newName: struct_miqt_string): bool {.importc: "QFile_rename2".}
proc fcQFile_link(self: pointer, newName: struct_miqt_string): bool {.importc: "QFile_link".}
proc fcQFile_link2(fileName: struct_miqt_string, newName: struct_miqt_string): bool {.importc: "QFile_link2".}
proc fcQFile_copy(self: pointer, newName: struct_miqt_string): bool {.importc: "QFile_copy".}
proc fcQFile_copy2(fileName: struct_miqt_string, newName: struct_miqt_string): bool {.importc: "QFile_copy2".}
proc fcQFile_open(self: pointer, flags: cint): bool {.importc: "QFile_open".}
proc fcQFile_open2(self: pointer, flags: cint, permissions: cint): bool {.importc: "QFile_open2".}
proc fcQFile_open4(self: pointer, fd: cint, ioFlags: cint): bool {.importc: "QFile_open4".}
proc fcQFile_size(self: pointer, ): clonglong {.importc: "QFile_size".}
proc fcQFile_resize(self: pointer, sz: clonglong): bool {.importc: "QFile_resize".}
proc fcQFile_resize2(filename: struct_miqt_string, sz: clonglong): bool {.importc: "QFile_resize2".}
proc fcQFile_permissions(self: pointer, ): cint {.importc: "QFile_permissions".}
proc fcQFile_permissionsWithFilename(filename: struct_miqt_string): cint {.importc: "QFile_permissionsWithFilename".}
proc fcQFile_setPermissions(self: pointer, permissionSpec: cint): bool {.importc: "QFile_setPermissions".}
proc fcQFile_setPermissions2(filename: struct_miqt_string, permissionSpec: cint): bool {.importc: "QFile_setPermissions2".}
proc fcQFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QFile_tr2".}
proc fcQFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QFile_tr3".}
proc fcQFile_open33(self: pointer, fd: cint, ioFlags: cint, handleFlags: cint): bool {.importc: "QFile_open33".}
proc fQFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QFile_virtualbase_metacall".}
proc fcQFile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QFile_override_virtual_metacall".}
proc fQFile_virtualbase_fileName(self: pointer, ): struct_miqt_string{.importc: "QFile_virtualbase_fileName".}
proc fcQFile_override_virtual_fileName(self: pointer, slot: int) {.importc: "QFile_override_virtual_fileName".}
proc fQFile_virtualbase_open(self: pointer, flags: cint): bool{.importc: "QFile_virtualbase_open".}
proc fcQFile_override_virtual_open(self: pointer, slot: int) {.importc: "QFile_override_virtual_open".}
proc fQFile_virtualbase_size(self: pointer, ): clonglong{.importc: "QFile_virtualbase_size".}
proc fcQFile_override_virtual_size(self: pointer, slot: int) {.importc: "QFile_override_virtual_size".}
proc fQFile_virtualbase_resize(self: pointer, sz: clonglong): bool{.importc: "QFile_virtualbase_resize".}
proc fcQFile_override_virtual_resize(self: pointer, slot: int) {.importc: "QFile_override_virtual_resize".}
proc fQFile_virtualbase_permissions(self: pointer, ): cint{.importc: "QFile_virtualbase_permissions".}
proc fcQFile_override_virtual_permissions(self: pointer, slot: int) {.importc: "QFile_override_virtual_permissions".}
proc fQFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool{.importc: "QFile_virtualbase_setPermissions".}
proc fcQFile_override_virtual_setPermissions(self: pointer, slot: int) {.importc: "QFile_override_virtual_setPermissions".}
proc fQFile_virtualbase_close(self: pointer, ): void{.importc: "QFile_virtualbase_close".}
proc fcQFile_override_virtual_close(self: pointer, slot: int) {.importc: "QFile_override_virtual_close".}
proc fQFile_virtualbase_isSequential(self: pointer, ): bool{.importc: "QFile_virtualbase_isSequential".}
proc fcQFile_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QFile_override_virtual_isSequential".}
proc fQFile_virtualbase_pos(self: pointer, ): clonglong{.importc: "QFile_virtualbase_pos".}
proc fcQFile_override_virtual_pos(self: pointer, slot: int) {.importc: "QFile_override_virtual_pos".}
proc fQFile_virtualbase_seek(self: pointer, offset: clonglong): bool{.importc: "QFile_virtualbase_seek".}
proc fcQFile_override_virtual_seek(self: pointer, slot: int) {.importc: "QFile_override_virtual_seek".}
proc fQFile_virtualbase_atEnd(self: pointer, ): bool{.importc: "QFile_virtualbase_atEnd".}
proc fcQFile_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QFile_override_virtual_atEnd".}
proc fQFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QFile_virtualbase_readData".}
proc fcQFile_override_virtual_readData(self: pointer, slot: int) {.importc: "QFile_override_virtual_readData".}
proc fQFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QFile_virtualbase_writeData".}
proc fcQFile_override_virtual_writeData(self: pointer, slot: int) {.importc: "QFile_override_virtual_writeData".}
proc fQFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QFile_virtualbase_readLineData".}
proc fcQFile_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QFile_override_virtual_readLineData".}
proc fQFile_virtualbase_reset(self: pointer, ): bool{.importc: "QFile_virtualbase_reset".}
proc fcQFile_override_virtual_reset(self: pointer, slot: int) {.importc: "QFile_override_virtual_reset".}
proc fQFile_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QFile_virtualbase_bytesAvailable".}
proc fcQFile_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QFile_override_virtual_bytesAvailable".}
proc fQFile_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QFile_virtualbase_bytesToWrite".}
proc fcQFile_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QFile_override_virtual_bytesToWrite".}
proc fQFile_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QFile_virtualbase_canReadLine".}
proc fcQFile_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QFile_override_virtual_canReadLine".}
proc fQFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QFile_virtualbase_waitForReadyRead".}
proc fcQFile_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QFile_override_virtual_waitForReadyRead".}
proc fQFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QFile_virtualbase_waitForBytesWritten".}
proc fcQFile_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QFile_override_virtual_waitForBytesWritten".}
proc fQFile_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QFile_virtualbase_skipData".}
proc fcQFile_override_virtual_skipData(self: pointer, slot: int) {.importc: "QFile_override_virtual_skipData".}
proc fQFile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QFile_virtualbase_event".}
proc fcQFile_override_virtual_event(self: pointer, slot: int) {.importc: "QFile_override_virtual_event".}
proc fQFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QFile_virtualbase_eventFilter".}
proc fcQFile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QFile_override_virtual_eventFilter".}
proc fQFile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QFile_virtualbase_timerEvent".}
proc fcQFile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QFile_override_virtual_timerEvent".}
proc fQFile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QFile_virtualbase_childEvent".}
proc fcQFile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QFile_override_virtual_childEvent".}
proc fQFile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QFile_virtualbase_customEvent".}
proc fcQFile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QFile_override_virtual_customEvent".}
proc fQFile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QFile_virtualbase_connectNotify".}
proc fcQFile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QFile_override_virtual_connectNotify".}
proc fQFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QFile_virtualbase_disconnectNotify".}
proc fcQFile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QFile_override_virtual_disconnectNotify".}
proc fcQFile_staticMetaObject(): pointer {.importc: "QFile_staticMetaObject".}
proc fcQFile_delete(self: pointer) {.importc: "QFile_delete".}


func init*(T: type QFile, h: ptr cQFile): QFile =
  T(h: h)
proc create*(T: type QFile, ): QFile =

  QFile.init(fcQFile_new())
proc create*(T: type QFile, name: string): QFile =

  QFile.init(fcQFile_new2(struct_miqt_string(data: name, len: csize_t(len(name)))))
proc create*(T: type QFile, parent: gen_qobject.QObject): QFile =

  QFile.init(fcQFile_new3(parent.h))
proc create*(T: type QFile, name: string, parent: gen_qobject.QObject): QFile =

  QFile.init(fcQFile_new4(struct_miqt_string(data: name, len: csize_t(len(name))), parent.h))
proc metaObject*(self: QFile, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQFile_metaObject(self.h))

proc metacast*(self: QFile, param1: cstring): pointer =

  fcQFile_metacast(self.h, param1)

proc metacall*(self: QFile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QFile, s: cstring): string =

  let v_ms = fcQFile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileName*(self: QFile, ): string =

  let v_ms = fcQFile_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileName*(self: QFile, name: string): void =

  fcQFile_setFileName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc encodeName*(_: type QFile, fileName: string): seq[byte] =

  var v_bytearray = fcQFile_encodeName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc decodeName*(_: type QFile, localFileName: seq[byte]): string =

  let v_ms = fcQFile_decodeName(struct_miqt_string(data: cast[cstring](if len(localFileName) == 0: nil else: unsafeAddr localFileName[0]), len: csize_t(len(localFileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc decodeNameWithLocalFileName*(_: type QFile, localFileName: cstring): string =

  let v_ms = fcQFile_decodeNameWithLocalFileName(localFileName)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc exists*(self: QFile, ): bool =

  fcQFile_exists(self.h)

proc existsWithFileName*(_: type QFile, fileName: string): bool =

  fcQFile_existsWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc symLinkTarget*(self: QFile, ): string =

  let v_ms = fcQFile_symLinkTarget(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc symLinkTargetWithFileName*(_: type QFile, fileName: string): string =

  let v_ms = fcQFile_symLinkTargetWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc remove*(self: QFile, ): bool =

  fcQFile_remove(self.h)

proc removeWithFileName*(_: type QFile, fileName: string): bool =

  fcQFile_removeWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc moveToTrash*(self: QFile, ): bool =

  fcQFile_moveToTrash(self.h)

proc moveToTrashWithFileName*(_: type QFile, fileName: string): bool =

  fcQFile_moveToTrashWithFileName(struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc rename*(self: QFile, newName: string): bool =

  fcQFile_rename(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc rename2*(_: type QFile, oldName: string, newName: string): bool =

  fcQFile_rename2(struct_miqt_string(data: oldName, len: csize_t(len(oldName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc link*(self: QFile, newName: string): bool =

  fcQFile_link(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc link2*(_: type QFile, fileName: string, newName: string): bool =

  fcQFile_link2(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc copy*(self: QFile, newName: string): bool =

  fcQFile_copy(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc copy2*(_: type QFile, fileName: string, newName: string): bool =

  fcQFile_copy2(struct_miqt_string(data: fileName, len: csize_t(len(fileName))), struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc open*(self: QFile, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQFile_open(self.h, cint(flags))

proc open2*(self: QFile, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, permissions: gen_qfiledevice.QFileDevicePermission): bool =

  fcQFile_open2(self.h, cint(flags), cint(permissions))

proc open4*(self: QFile, fd: cint, ioFlags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =

  fcQFile_open4(self.h, fd, cint(ioFlags))

proc size*(self: QFile, ): clonglong =

  fcQFile_size(self.h)

proc resize*(self: QFile, sz: clonglong): bool =

  fcQFile_resize(self.h, sz)

proc resize2*(_: type QFile, filename: string, sz: clonglong): bool =

  fcQFile_resize2(struct_miqt_string(data: filename, len: csize_t(len(filename))), sz)

proc permissions*(self: QFile, ): gen_qfiledevice.QFileDevicePermission =

  gen_qfiledevice.QFileDevicePermission(fcQFile_permissions(self.h))

proc permissionsWithFilename*(_: type QFile, filename: string): gen_qfiledevice.QFileDevicePermission =

  gen_qfiledevice.QFileDevicePermission(fcQFile_permissionsWithFilename(struct_miqt_string(data: filename, len: csize_t(len(filename)))))

proc setPermissions*(self: QFile, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool =

  fcQFile_setPermissions(self.h, cint(permissionSpec))

proc setPermissions2*(_: type QFile, filename: string, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool =

  fcQFile_setPermissions2(struct_miqt_string(data: filename, len: csize_t(len(filename))), cint(permissionSpec))

proc tr2*(_: type QFile, s: cstring, c: cstring): string =

  let v_ms = fcQFile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QFile, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc open33*(self: QFile, fd: cint, ioFlags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag, handleFlags: gen_qfiledevice.QFileDeviceFileHandleFlag): bool =

  fcQFile_open33(self.h, fd, cint(ioFlags), cint(handleFlags))

proc callVirtualBase_metacall(self: QFile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QFilemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QFile, slot: proc(super: QFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_metacall(self: ptr cQFile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QFile_metacall ".} =
  type Cb = proc(super: QFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QFile(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_fileName(self: QFile, ): string =


  let v_ms = fQFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFilefileNameBase* = proc(): string
proc onfileName*(self: QFile, slot: proc(super: QFilefileNameBase): string) =
  # TODO check subclass
  type Cb = proc(super: QFilefileNameBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_fileName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_fileName(self: ptr cQFile, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QFile_fileName ".} =
  type Cb = proc(super: QFilefileNameBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_fileName(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_open(self: QFile, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQFile_virtualbase_open(self.h, cint(flags))

type QFileopenBase* = proc(flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopen*(self: QFile, slot: proc(super: QFileopenBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileopenBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_open(self: ptr cQFile, slot: int, flags: cint): bool {.exportc: "miqt_exec_callback_QFile_open ".} =
  type Cb = proc(super: QFileopenBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_open(QFile(h: self), flags)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(flags)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_size(self: QFile, ): clonglong =


  fQFile_virtualbase_size(self.h)

type QFilesizeBase* = proc(): clonglong
proc onsize*(self: QFile, slot: proc(super: QFilesizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFilesizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_size(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_size ".} =
  type Cb = proc(super: QFilesizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_resize(self: QFile, sz: clonglong): bool =


  fQFile_virtualbase_resize(self.h, sz)

type QFileresizeBase* = proc(sz: clonglong): bool
proc onresize*(self: QFile, slot: proc(super: QFileresizeBase, sz: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileresizeBase, sz: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_resize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_resize(self: ptr cQFile, slot: int, sz: clonglong): bool {.exportc: "miqt_exec_callback_QFile_resize ".} =
  type Cb = proc(super: QFileresizeBase, sz: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sz: clonglong): auto =
    callVirtualBase_resize(QFile(h: self), sz)
  let slotval1 = sz


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_permissions(self: QFile, ): gen_qfiledevice.QFileDevicePermission =


  gen_qfiledevice.QFileDevicePermission(fQFile_virtualbase_permissions(self.h))

type QFilepermissionsBase* = proc(): gen_qfiledevice.QFileDevicePermission
proc onpermissions*(self: QFile, slot: proc(super: QFilepermissionsBase): gen_qfiledevice.QFileDevicePermission) =
  # TODO check subclass
  type Cb = proc(super: QFilepermissionsBase): gen_qfiledevice.QFileDevicePermission
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_permissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_permissions(self: ptr cQFile, slot: int): cint {.exportc: "miqt_exec_callback_QFile_permissions ".} =
  type Cb = proc(super: QFilepermissionsBase): gen_qfiledevice.QFileDevicePermission
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_permissions(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_setPermissions(self: QFile, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool =


  fQFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

type QFilesetPermissionsBase* = proc(permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
proc onsetPermissions*(self: QFile, slot: proc(super: QFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool) =
  # TODO check subclass
  type Cb = proc(super: QFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_setPermissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_setPermissions(self: ptr cQFile, slot: int, permissionSpec: cint): bool {.exportc: "miqt_exec_callback_QFile_setPermissions ".} =
  type Cb = proc(super: QFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(permissionSpec: gen_qfiledevice.QFileDevicePermission): auto =
    callVirtualBase_setPermissions(QFile(h: self), permissionSpec)
  let slotval1 = gen_qfiledevice.QFileDevicePermission(permissionSpec)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_close(self: QFile, ): void =


  fQFile_virtualbase_close(self.h)

type QFilecloseBase* = proc(): void
proc onclose*(self: QFile, slot: proc(super: QFilecloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QFilecloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_close(self: ptr cQFile, slot: int): void {.exportc: "miqt_exec_callback_QFile_close ".} =
  type Cb = proc(super: QFilecloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QFile(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isSequential(self: QFile, ): bool =


  fQFile_virtualbase_isSequential(self.h)

type QFileisSequentialBase* = proc(): bool
proc onisSequential*(self: QFile, slot: proc(super: QFileisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_isSequential(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_isSequential ".} =
  type Cb = proc(super: QFileisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_pos(self: QFile, ): clonglong =


  fQFile_virtualbase_pos(self.h)

type QFileposBase* = proc(): clonglong
proc onpos*(self: QFile, slot: proc(super: QFileposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFileposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_pos(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_pos ".} =
  type Cb = proc(super: QFileposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QFile, offset: clonglong): bool =


  fQFile_virtualbase_seek(self.h, offset)

type QFileseekBase* = proc(offset: clonglong): bool
proc onseek*(self: QFile, slot: proc(super: QFileseekBase, offset: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileseekBase, offset: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_seek(self: ptr cQFile, slot: int, offset: clonglong): bool {.exportc: "miqt_exec_callback_QFile_seek ".} =
  type Cb = proc(super: QFileseekBase, offset: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: clonglong): auto =
    callVirtualBase_seek(QFile(h: self), offset)
  let slotval1 = offset


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QFile, ): bool =


  fQFile_virtualbase_atEnd(self.h)

type QFileatEndBase* = proc(): bool
proc onatEnd*(self: QFile, slot: proc(super: QFileatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_atEnd(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_atEnd ".} =
  type Cb = proc(super: QFileatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_readData(self: QFile, data: cstring, maxlen: clonglong): clonglong =


  fQFile_virtualbase_readData(self.h, data, maxlen)

type QFilereadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QFile, slot: proc(super: QFilereadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFilereadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_readData(self: ptr cQFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QFile_readData ".} =
  type Cb = proc(super: QFilereadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QFile(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeData(self: QFile, data: cstring, len: clonglong): clonglong =


  fQFile_virtualbase_writeData(self.h, data, len)

type QFilewriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QFile, slot: proc(super: QFilewriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFilewriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_writeData(self: ptr cQFile, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QFile_writeData ".} =
  type Cb = proc(super: QFilewriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QFile(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QFile, data: cstring, maxlen: clonglong): clonglong =


  fQFile_virtualbase_readLineData(self.h, data, maxlen)

type QFilereadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QFile, slot: proc(super: QFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_readLineData(self: ptr cQFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QFile_readLineData ".} =
  type Cb = proc(super: QFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QFile(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_reset(self: QFile, ): bool =


  fQFile_virtualbase_reset(self.h)

type QFileresetBase* = proc(): bool
proc onreset*(self: QFile, slot: proc(super: QFileresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_reset(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_reset ".} =
  type Cb = proc(super: QFileresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QFile, ): clonglong =


  fQFile_virtualbase_bytesAvailable(self.h)

type QFilebytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QFile, slot: proc(super: QFilebytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFilebytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_bytesAvailable(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_bytesAvailable ".} =
  type Cb = proc(super: QFilebytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QFile, ): clonglong =


  fQFile_virtualbase_bytesToWrite(self.h)

type QFilebytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QFile, slot: proc(super: QFilebytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFilebytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_bytesToWrite(self: ptr cQFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QFile_bytesToWrite ".} =
  type Cb = proc(super: QFilebytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QFile, ): bool =


  fQFile_virtualbase_canReadLine(self.h)

type QFilecanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QFile, slot: proc(super: QFilecanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QFilecanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_canReadLine(self: ptr cQFile, slot: int): bool {.exportc: "miqt_exec_callback_QFile_canReadLine ".} =
  type Cb = proc(super: QFilecanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QFile, msecs: cint): bool =


  fQFile_virtualbase_waitForReadyRead(self.h, msecs)

type QFilewaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QFile, slot: proc(super: QFilewaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFilewaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_waitForReadyRead(self: ptr cQFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QFile_waitForReadyRead ".} =
  type Cb = proc(super: QFilewaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QFile(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QFile, msecs: cint): bool =


  fQFile_virtualbase_waitForBytesWritten(self.h, msecs)

type QFilewaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QFile, slot: proc(super: QFilewaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QFilewaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_waitForBytesWritten(self: ptr cQFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QFile_waitForBytesWritten ".} =
  type Cb = proc(super: QFilewaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QFile(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_skipData(self: QFile, maxSize: clonglong): clonglong =


  fQFile_virtualbase_skipData(self.h, maxSize)

type QFileskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QFile, slot: proc(super: QFileskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QFileskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_skipData(self: ptr cQFile, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QFile_skipData ".} =
  type Cb = proc(super: QFileskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QFile(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QFile, event: gen_qcoreevent.QEvent): bool =


  fQFile_virtualbase_event(self.h, event.h)

type QFileeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QFile, slot: proc(super: QFileeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_event(self: ptr cQFile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QFile_event ".} =
  type Cb = proc(super: QFileeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QFile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QFile, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQFile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QFileeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QFile, slot: proc(super: QFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_eventFilter(self: ptr cQFile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QFile_eventFilter ".} =
  type Cb = proc(super: QFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QFile(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QFile, event: gen_qcoreevent.QTimerEvent): void =


  fQFile_virtualbase_timerEvent(self.h, event.h)

type QFiletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QFile, slot: proc(super: QFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_timerEvent(self: ptr cQFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFile_timerEvent ".} =
  type Cb = proc(super: QFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QFile(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QFile, event: gen_qcoreevent.QChildEvent): void =


  fQFile_virtualbase_childEvent(self.h, event.h)

type QFilechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QFile, slot: proc(super: QFilechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_childEvent(self: ptr cQFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFile_childEvent ".} =
  type Cb = proc(super: QFilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QFile(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QFile, event: gen_qcoreevent.QEvent): void =


  fQFile_virtualbase_customEvent(self.h, event.h)

type QFilecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QFile, slot: proc(super: QFilecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QFilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_customEvent(self: ptr cQFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QFile_customEvent ".} =
  type Cb = proc(super: QFilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QFile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QFile, signal: gen_qmetaobject.QMetaMethod): void =


  fQFile_virtualbase_connectNotify(self.h, signal.h)

type QFileconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QFile, slot: proc(super: QFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_connectNotify(self: ptr cQFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFile_connectNotify ".} =
  type Cb = proc(super: QFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QFile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QFile, signal: gen_qmetaobject.QMetaMethod): void =


  fQFile_virtualbase_disconnectNotify(self.h, signal.h)

type QFiledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QFile, slot: proc(super: QFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFile_disconnectNotify(self: ptr cQFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QFile_disconnectNotify ".} =
  type Cb = proc(super: QFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QFile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QFile): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQFile_staticMetaObject())
proc delete*(self: QFile) =
  fcQFile_delete(self.h)
