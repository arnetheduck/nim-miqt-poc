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
{.compile("gen_qtemporaryfile.cpp", cflags).}


import gen_qtemporaryfile_types
export gen_qtemporaryfile_types

import
  gen_qcoreevent,
  gen_qfile,
  gen_qfiledevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qfile,
  gen_qfiledevice,
  gen_qiodevicebase,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQTemporaryFile*{.exportc: "QTemporaryFile", incompleteStruct.} = object

proc fcQTemporaryFile_new(): ptr cQTemporaryFile {.importc: "QTemporaryFile_new".}
proc fcQTemporaryFile_new2(templateName: struct_miqt_string): ptr cQTemporaryFile {.importc: "QTemporaryFile_new2".}
proc fcQTemporaryFile_new3(parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new3".}
proc fcQTemporaryFile_new4(templateName: struct_miqt_string, parent: pointer): ptr cQTemporaryFile {.importc: "QTemporaryFile_new4".}
proc fcQTemporaryFile_metaObject(self: pointer, ): pointer {.importc: "QTemporaryFile_metaObject".}
proc fcQTemporaryFile_metacast(self: pointer, param1: cstring): pointer {.importc: "QTemporaryFile_metacast".}
proc fcQTemporaryFile_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTemporaryFile_metacall".}
proc fcQTemporaryFile_tr(s: cstring): struct_miqt_string {.importc: "QTemporaryFile_tr".}
proc fcQTemporaryFile_autoRemove(self: pointer, ): bool {.importc: "QTemporaryFile_autoRemove".}
proc fcQTemporaryFile_setAutoRemove(self: pointer, b: bool): void {.importc: "QTemporaryFile_setAutoRemove".}
proc fcQTemporaryFile_open(self: pointer, ): bool {.importc: "QTemporaryFile_open".}
proc fcQTemporaryFile_fileName(self: pointer, ): struct_miqt_string {.importc: "QTemporaryFile_fileName".}
proc fcQTemporaryFile_fileTemplate(self: pointer, ): struct_miqt_string {.importc: "QTemporaryFile_fileTemplate".}
proc fcQTemporaryFile_setFileTemplate(self: pointer, name: struct_miqt_string): void {.importc: "QTemporaryFile_setFileTemplate".}
proc fcQTemporaryFile_rename(self: pointer, newName: struct_miqt_string): bool {.importc: "QTemporaryFile_rename".}
proc fcQTemporaryFile_createNativeFile(fileName: struct_miqt_string): pointer {.importc: "QTemporaryFile_createNativeFile".}
proc fcQTemporaryFile_createNativeFileWithFile(file: pointer): pointer {.importc: "QTemporaryFile_createNativeFileWithFile".}
proc fcQTemporaryFile_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTemporaryFile_tr2".}
proc fcQTemporaryFile_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTemporaryFile_tr3".}
proc fQTemporaryFile_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTemporaryFile_virtualbase_metaObject".}
proc fcQTemporaryFile_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_metaObject".}
proc fQTemporaryFile_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTemporaryFile_virtualbase_metacast".}
proc fcQTemporaryFile_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_metacast".}
proc fQTemporaryFile_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTemporaryFile_virtualbase_metacall".}
proc fcQTemporaryFile_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_metacall".}
proc fQTemporaryFile_virtualbase_fileName(self: pointer, ): struct_miqt_string{.importc: "QTemporaryFile_virtualbase_fileName".}
proc fcQTemporaryFile_override_virtual_fileName(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_fileName".}
proc fQTemporaryFile_virtualbase_openWithFlags(self: pointer, flags: cint): bool{.importc: "QTemporaryFile_virtualbase_openWithFlags".}
proc fcQTemporaryFile_override_virtual_openWithFlags(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_openWithFlags".}
proc fQTemporaryFile_virtualbase_size(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_size".}
proc fcQTemporaryFile_override_virtual_size(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_size".}
proc fQTemporaryFile_virtualbase_resize(self: pointer, sz: clonglong): bool{.importc: "QTemporaryFile_virtualbase_resize".}
proc fcQTemporaryFile_override_virtual_resize(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_resize".}
proc fQTemporaryFile_virtualbase_permissions(self: pointer, ): cint{.importc: "QTemporaryFile_virtualbase_permissions".}
proc fcQTemporaryFile_override_virtual_permissions(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_permissions".}
proc fQTemporaryFile_virtualbase_setPermissions(self: pointer, permissionSpec: cint): bool{.importc: "QTemporaryFile_virtualbase_setPermissions".}
proc fcQTemporaryFile_override_virtual_setPermissions(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_setPermissions".}
proc fQTemporaryFile_virtualbase_close(self: pointer, ): void{.importc: "QTemporaryFile_virtualbase_close".}
proc fcQTemporaryFile_override_virtual_close(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_close".}
proc fQTemporaryFile_virtualbase_isSequential(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_isSequential".}
proc fcQTemporaryFile_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_isSequential".}
proc fQTemporaryFile_virtualbase_pos(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_pos".}
proc fcQTemporaryFile_override_virtual_pos(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_pos".}
proc fQTemporaryFile_virtualbase_seek(self: pointer, offset: clonglong): bool{.importc: "QTemporaryFile_virtualbase_seek".}
proc fcQTemporaryFile_override_virtual_seek(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_seek".}
proc fQTemporaryFile_virtualbase_atEnd(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_atEnd".}
proc fcQTemporaryFile_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_atEnd".}
proc fQTemporaryFile_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTemporaryFile_virtualbase_readData".}
proc fcQTemporaryFile_override_virtual_readData(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_readData".}
proc fQTemporaryFile_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QTemporaryFile_virtualbase_writeData".}
proc fcQTemporaryFile_override_virtual_writeData(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_writeData".}
proc fQTemporaryFile_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QTemporaryFile_virtualbase_readLineData".}
proc fcQTemporaryFile_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_readLineData".}
proc fQTemporaryFile_virtualbase_reset(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_reset".}
proc fcQTemporaryFile_override_virtual_reset(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_reset".}
proc fQTemporaryFile_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_bytesAvailable".}
proc fcQTemporaryFile_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_bytesAvailable".}
proc fQTemporaryFile_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QTemporaryFile_virtualbase_bytesToWrite".}
proc fcQTemporaryFile_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_bytesToWrite".}
proc fQTemporaryFile_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QTemporaryFile_virtualbase_canReadLine".}
proc fcQTemporaryFile_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_canReadLine".}
proc fQTemporaryFile_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QTemporaryFile_virtualbase_waitForReadyRead".}
proc fcQTemporaryFile_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_waitForReadyRead".}
proc fQTemporaryFile_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QTemporaryFile_virtualbase_waitForBytesWritten".}
proc fcQTemporaryFile_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_waitForBytesWritten".}
proc fQTemporaryFile_virtualbase_skipData(self: pointer, maxSize: clonglong): clonglong{.importc: "QTemporaryFile_virtualbase_skipData".}
proc fcQTemporaryFile_override_virtual_skipData(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_skipData".}
proc fQTemporaryFile_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTemporaryFile_virtualbase_event".}
proc fcQTemporaryFile_override_virtual_event(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_event".}
proc fQTemporaryFile_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTemporaryFile_virtualbase_eventFilter".}
proc fcQTemporaryFile_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_eventFilter".}
proc fQTemporaryFile_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTemporaryFile_virtualbase_timerEvent".}
proc fcQTemporaryFile_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_timerEvent".}
proc fQTemporaryFile_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTemporaryFile_virtualbase_childEvent".}
proc fcQTemporaryFile_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_childEvent".}
proc fQTemporaryFile_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTemporaryFile_virtualbase_customEvent".}
proc fcQTemporaryFile_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_customEvent".}
proc fQTemporaryFile_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTemporaryFile_virtualbase_connectNotify".}
proc fcQTemporaryFile_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_connectNotify".}
proc fQTemporaryFile_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTemporaryFile_virtualbase_disconnectNotify".}
proc fcQTemporaryFile_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTemporaryFile_override_virtual_disconnectNotify".}
proc fcQTemporaryFile_staticMetaObject(): pointer {.importc: "QTemporaryFile_staticMetaObject".}
proc fcQTemporaryFile_delete(self: pointer) {.importc: "QTemporaryFile_delete".}


func init*(T: type QTemporaryFile, h: ptr cQTemporaryFile): QTemporaryFile =
  T(h: h)
proc create*(T: type QTemporaryFile, ): QTemporaryFile =

  QTemporaryFile.init(fcQTemporaryFile_new())
proc create*(T: type QTemporaryFile, templateName: string): QTemporaryFile =

  QTemporaryFile.init(fcQTemporaryFile_new2(struct_miqt_string(data: templateName, len: csize_t(len(templateName)))))
proc create*(T: type QTemporaryFile, parent: gen_qobject.QObject): QTemporaryFile =

  QTemporaryFile.init(fcQTemporaryFile_new3(parent.h))
proc create*(T: type QTemporaryFile, templateName: string, parent: gen_qobject.QObject): QTemporaryFile =

  QTemporaryFile.init(fcQTemporaryFile_new4(struct_miqt_string(data: templateName, len: csize_t(len(templateName))), parent.h))
proc metaObject*(self: QTemporaryFile, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTemporaryFile_metaObject(self.h))

proc metacast*(self: QTemporaryFile, param1: cstring): pointer =

  fcQTemporaryFile_metacast(self.h, param1)

proc metacall*(self: QTemporaryFile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTemporaryFile_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTemporaryFile, s: cstring): string =

  let v_ms = fcQTemporaryFile_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc autoRemove*(self: QTemporaryFile, ): bool =

  fcQTemporaryFile_autoRemove(self.h)

proc setAutoRemove*(self: QTemporaryFile, b: bool): void =

  fcQTemporaryFile_setAutoRemove(self.h, b)

proc open*(self: QTemporaryFile, ): bool =

  fcQTemporaryFile_open(self.h)

proc fileName*(self: QTemporaryFile, ): string =

  let v_ms = fcQTemporaryFile_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fileTemplate*(self: QTemporaryFile, ): string =

  let v_ms = fcQTemporaryFile_fileTemplate(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFileTemplate*(self: QTemporaryFile, name: string): void =

  fcQTemporaryFile_setFileTemplate(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc rename*(self: QTemporaryFile, newName: string): bool =

  fcQTemporaryFile_rename(self.h, struct_miqt_string(data: newName, len: csize_t(len(newName))))

proc createNativeFile*(_: type QTemporaryFile, fileName: string): QTemporaryFile =

  QTemporaryFile(h: fcQTemporaryFile_createNativeFile(struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))

proc createNativeFileWithFile*(_: type QTemporaryFile, file: gen_qfile.QFile): QTemporaryFile =

  QTemporaryFile(h: fcQTemporaryFile_createNativeFileWithFile(file.h))

proc tr2*(_: type QTemporaryFile, s: cstring, c: cstring): string =

  let v_ms = fcQTemporaryFile_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTemporaryFile, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTemporaryFile_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTemporaryFile, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTemporaryFile_virtualbase_metaObject(self.h))

type QTemporaryFilemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTemporaryFile, slot: proc(super: QTemporaryFilemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_metaObject(self: ptr cQTemporaryFile, slot: int): pointer {.exportc: "miqt_exec_callback_QTemporaryFile_metaObject ".} =
  type Cb = proc(super: QTemporaryFilemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTemporaryFile, param1: cstring): pointer =


  fQTemporaryFile_virtualbase_metacast(self.h, param1)

type QTemporaryFilemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTemporaryFile, slot: proc(super: QTemporaryFilemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_metacast(self: ptr cQTemporaryFile, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTemporaryFile_metacast ".} =
  type Cb = proc(super: QTemporaryFilemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTemporaryFile(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTemporaryFile, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTemporaryFile_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTemporaryFilemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTemporaryFile, slot: proc(super: QTemporaryFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_metacall(self: ptr cQTemporaryFile, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTemporaryFile_metacall ".} =
  type Cb = proc(super: QTemporaryFilemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTemporaryFile(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_fileName(self: QTemporaryFile, ): string =


  let v_ms = fQTemporaryFile_virtualbase_fileName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QTemporaryFilefileNameBase* = proc(): string
proc onfileName*(self: QTemporaryFile, slot: proc(super: QTemporaryFilefileNameBase): string) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilefileNameBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_fileName(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_fileName(self: ptr cQTemporaryFile, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QTemporaryFile_fileName ".} =
  type Cb = proc(super: QTemporaryFilefileNameBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_fileName(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_openWithFlags(self: QTemporaryFile, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool =


  fQTemporaryFile_virtualbase_openWithFlags(self.h, cint(flags))

type QTemporaryFileopenWithFlagsBase* = proc(flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
proc onopenWithFlags*(self: QTemporaryFile, slot: proc(super: QTemporaryFileopenWithFlagsBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileopenWithFlagsBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_openWithFlags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_openWithFlags(self: ptr cQTemporaryFile, slot: int, flags: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_openWithFlags ".} =
  type Cb = proc(super: QTemporaryFileopenWithFlagsBase, flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: gen_qiodevicebase.QIODeviceBaseOpenModeFlag): auto =
    callVirtualBase_openWithFlags(QTemporaryFile(h: self), flags)
  let slotval1 = gen_qiodevicebase.QIODeviceBaseOpenModeFlag(flags)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_size(self: QTemporaryFile, ): clonglong =


  fQTemporaryFile_virtualbase_size(self.h)

type QTemporaryFilesizeBase* = proc(): clonglong
proc onsize*(self: QTemporaryFile, slot: proc(super: QTemporaryFilesizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilesizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_size(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_size ".} =
  type Cb = proc(super: QTemporaryFilesizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_resize(self: QTemporaryFile, sz: clonglong): bool =


  fQTemporaryFile_virtualbase_resize(self.h, sz)

type QTemporaryFileresizeBase* = proc(sz: clonglong): bool
proc onresize*(self: QTemporaryFile, slot: proc(super: QTemporaryFileresizeBase, sz: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileresizeBase, sz: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_resize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_resize(self: ptr cQTemporaryFile, slot: int, sz: clonglong): bool {.exportc: "miqt_exec_callback_QTemporaryFile_resize ".} =
  type Cb = proc(super: QTemporaryFileresizeBase, sz: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sz: clonglong): auto =
    callVirtualBase_resize(QTemporaryFile(h: self), sz)
  let slotval1 = sz


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_permissions(self: QTemporaryFile, ): gen_qfiledevice.QFileDevicePermission =


  gen_qfiledevice.QFileDevicePermission(fQTemporaryFile_virtualbase_permissions(self.h))

type QTemporaryFilepermissionsBase* = proc(): gen_qfiledevice.QFileDevicePermission
proc onpermissions*(self: QTemporaryFile, slot: proc(super: QTemporaryFilepermissionsBase): gen_qfiledevice.QFileDevicePermission) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilepermissionsBase): gen_qfiledevice.QFileDevicePermission
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_permissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_permissions(self: ptr cQTemporaryFile, slot: int): cint {.exportc: "miqt_exec_callback_QTemporaryFile_permissions ".} =
  type Cb = proc(super: QTemporaryFilepermissionsBase): gen_qfiledevice.QFileDevicePermission
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_permissions(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_setPermissions(self: QTemporaryFile, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool =


  fQTemporaryFile_virtualbase_setPermissions(self.h, cint(permissionSpec))

type QTemporaryFilesetPermissionsBase* = proc(permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
proc onsetPermissions*(self: QTemporaryFile, slot: proc(super: QTemporaryFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_setPermissions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_setPermissions(self: ptr cQTemporaryFile, slot: int, permissionSpec: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_setPermissions ".} =
  type Cb = proc(super: QTemporaryFilesetPermissionsBase, permissionSpec: gen_qfiledevice.QFileDevicePermission): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(permissionSpec: gen_qfiledevice.QFileDevicePermission): auto =
    callVirtualBase_setPermissions(QTemporaryFile(h: self), permissionSpec)
  let slotval1 = gen_qfiledevice.QFileDevicePermission(permissionSpec)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_close(self: QTemporaryFile, ): void =


  fQTemporaryFile_virtualbase_close(self.h)

type QTemporaryFilecloseBase* = proc(): void
proc onclose*(self: QTemporaryFile, slot: proc(super: QTemporaryFilecloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilecloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_close(self: ptr cQTemporaryFile, slot: int): void {.exportc: "miqt_exec_callback_QTemporaryFile_close ".} =
  type Cb = proc(super: QTemporaryFilecloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QTemporaryFile(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_isSequential(self: QTemporaryFile, ): bool =


  fQTemporaryFile_virtualbase_isSequential(self.h)

type QTemporaryFileisSequentialBase* = proc(): bool
proc onisSequential*(self: QTemporaryFile, slot: proc(super: QTemporaryFileisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_isSequential(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_isSequential ".} =
  type Cb = proc(super: QTemporaryFileisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_pos(self: QTemporaryFile, ): clonglong =


  fQTemporaryFile_virtualbase_pos(self.h)

type QTemporaryFileposBase* = proc(): clonglong
proc onpos*(self: QTemporaryFile, slot: proc(super: QTemporaryFileposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_pos(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_pos ".} =
  type Cb = proc(super: QTemporaryFileposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QTemporaryFile, offset: clonglong): bool =


  fQTemporaryFile_virtualbase_seek(self.h, offset)

type QTemporaryFileseekBase* = proc(offset: clonglong): bool
proc onseek*(self: QTemporaryFile, slot: proc(super: QTemporaryFileseekBase, offset: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileseekBase, offset: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_seek(self: ptr cQTemporaryFile, slot: int, offset: clonglong): bool {.exportc: "miqt_exec_callback_QTemporaryFile_seek ".} =
  type Cb = proc(super: QTemporaryFileseekBase, offset: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(offset: clonglong): auto =
    callVirtualBase_seek(QTemporaryFile(h: self), offset)
  let slotval1 = offset


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_atEnd(self: QTemporaryFile, ): bool =


  fQTemporaryFile_virtualbase_atEnd(self.h)

type QTemporaryFileatEndBase* = proc(): bool
proc onatEnd*(self: QTemporaryFile, slot: proc(super: QTemporaryFileatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_atEnd(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_atEnd ".} =
  type Cb = proc(super: QTemporaryFileatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_readData(self: QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =


  fQTemporaryFile_virtualbase_readData(self.h, data, maxlen)

type QTemporaryFilereadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QTemporaryFile, slot: proc(super: QTemporaryFilereadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilereadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_readData(self: ptr cQTemporaryFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_readData ".} =
  type Cb = proc(super: QTemporaryFilereadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QTemporaryFile(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeData(self: QTemporaryFile, data: cstring, len: clonglong): clonglong =


  fQTemporaryFile_virtualbase_writeData(self.h, data, len)

type QTemporaryFilewriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QTemporaryFile, slot: proc(super: QTemporaryFilewriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilewriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_writeData(self: ptr cQTemporaryFile, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_writeData ".} =
  type Cb = proc(super: QTemporaryFilewriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QTemporaryFile(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_readLineData(self: QTemporaryFile, data: cstring, maxlen: clonglong): clonglong =


  fQTemporaryFile_virtualbase_readLineData(self.h, data, maxlen)

type QTemporaryFilereadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QTemporaryFile, slot: proc(super: QTemporaryFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_readLineData(self: ptr cQTemporaryFile, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_readLineData ".} =
  type Cb = proc(super: QTemporaryFilereadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QTemporaryFile(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_reset(self: QTemporaryFile, ): bool =


  fQTemporaryFile_virtualbase_reset(self.h)

type QTemporaryFileresetBase* = proc(): bool
proc onreset*(self: QTemporaryFile, slot: proc(super: QTemporaryFileresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_reset(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_reset ".} =
  type Cb = proc(super: QTemporaryFileresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QTemporaryFile, ): clonglong =


  fQTemporaryFile_virtualbase_bytesAvailable(self.h)

type QTemporaryFilebytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QTemporaryFile, slot: proc(super: QTemporaryFilebytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilebytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_bytesAvailable(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_bytesAvailable ".} =
  type Cb = proc(super: QTemporaryFilebytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QTemporaryFile, ): clonglong =


  fQTemporaryFile_virtualbase_bytesToWrite(self.h)

type QTemporaryFilebytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QTemporaryFile, slot: proc(super: QTemporaryFilebytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilebytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_bytesToWrite(self: ptr cQTemporaryFile, slot: int): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_bytesToWrite ".} =
  type Cb = proc(super: QTemporaryFilebytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QTemporaryFile, ): bool =


  fQTemporaryFile_virtualbase_canReadLine(self.h)

type QTemporaryFilecanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QTemporaryFile, slot: proc(super: QTemporaryFilecanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilecanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_canReadLine(self: ptr cQTemporaryFile, slot: int): bool {.exportc: "miqt_exec_callback_QTemporaryFile_canReadLine ".} =
  type Cb = proc(super: QTemporaryFilecanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QTemporaryFile(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QTemporaryFile, msecs: cint): bool =


  fQTemporaryFile_virtualbase_waitForReadyRead(self.h, msecs)

type QTemporaryFilewaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QTemporaryFile, slot: proc(super: QTemporaryFilewaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilewaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_waitForReadyRead(self: ptr cQTemporaryFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_waitForReadyRead ".} =
  type Cb = proc(super: QTemporaryFilewaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QTemporaryFile(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QTemporaryFile, msecs: cint): bool =


  fQTemporaryFile_virtualbase_waitForBytesWritten(self.h, msecs)

type QTemporaryFilewaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QTemporaryFile, slot: proc(super: QTemporaryFilewaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilewaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_waitForBytesWritten(self: ptr cQTemporaryFile, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QTemporaryFile_waitForBytesWritten ".} =
  type Cb = proc(super: QTemporaryFilewaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QTemporaryFile(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_skipData(self: QTemporaryFile, maxSize: clonglong): clonglong =


  fQTemporaryFile_virtualbase_skipData(self.h, maxSize)

type QTemporaryFileskipDataBase* = proc(maxSize: clonglong): clonglong
proc onskipData*(self: QTemporaryFile, slot: proc(super: QTemporaryFileskipDataBase, maxSize: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileskipDataBase, maxSize: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_skipData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_skipData(self: ptr cQTemporaryFile, slot: int, maxSize: clonglong): clonglong {.exportc: "miqt_exec_callback_QTemporaryFile_skipData ".} =
  type Cb = proc(super: QTemporaryFileskipDataBase, maxSize: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(maxSize: clonglong): auto =
    callVirtualBase_skipData(QTemporaryFile(h: self), maxSize)
  let slotval1 = maxSize


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QTemporaryFile, event: gen_qcoreevent.QEvent): bool =


  fQTemporaryFile_virtualbase_event(self.h, event.h)

type QTemporaryFileeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTemporaryFile, slot: proc(super: QTemporaryFileeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_event(self: ptr cQTemporaryFile, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTemporaryFile_event ".} =
  type Cb = proc(super: QTemporaryFileeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTemporaryFile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTemporaryFile, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTemporaryFile_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTemporaryFileeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTemporaryFile, slot: proc(super: QTemporaryFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_eventFilter(self: ptr cQTemporaryFile, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTemporaryFile_eventFilter ".} =
  type Cb = proc(super: QTemporaryFileeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTemporaryFile(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTemporaryFile, event: gen_qcoreevent.QTimerEvent): void =


  fQTemporaryFile_virtualbase_timerEvent(self.h, event.h)

type QTemporaryFiletimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTemporaryFile, slot: proc(super: QTemporaryFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_timerEvent(self: ptr cQTemporaryFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_timerEvent ".} =
  type Cb = proc(super: QTemporaryFiletimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTemporaryFile(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTemporaryFile, event: gen_qcoreevent.QChildEvent): void =


  fQTemporaryFile_virtualbase_childEvent(self.h, event.h)

type QTemporaryFilechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTemporaryFile, slot: proc(super: QTemporaryFilechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_childEvent(self: ptr cQTemporaryFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_childEvent ".} =
  type Cb = proc(super: QTemporaryFilechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTemporaryFile(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTemporaryFile, event: gen_qcoreevent.QEvent): void =


  fQTemporaryFile_virtualbase_customEvent(self.h, event.h)

type QTemporaryFilecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTemporaryFile, slot: proc(super: QTemporaryFilecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_customEvent(self: ptr cQTemporaryFile, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_customEvent ".} =
  type Cb = proc(super: QTemporaryFilecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTemporaryFile(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTemporaryFile, signal: gen_qmetaobject.QMetaMethod): void =


  fQTemporaryFile_virtualbase_connectNotify(self.h, signal.h)

type QTemporaryFileconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTemporaryFile, slot: proc(super: QTemporaryFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_connectNotify(self: ptr cQTemporaryFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_connectNotify ".} =
  type Cb = proc(super: QTemporaryFileconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTemporaryFile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTemporaryFile, signal: gen_qmetaobject.QMetaMethod): void =


  fQTemporaryFile_virtualbase_disconnectNotify(self.h, signal.h)

type QTemporaryFiledisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTemporaryFile, slot: proc(super: QTemporaryFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTemporaryFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTemporaryFile_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTemporaryFile_disconnectNotify(self: ptr cQTemporaryFile, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTemporaryFile_disconnectNotify ".} =
  type Cb = proc(super: QTemporaryFiledisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTemporaryFile(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTemporaryFile): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTemporaryFile_staticMetaObject())
proc delete*(self: QTemporaryFile) =
  fcQTemporaryFile_delete(self.h)
