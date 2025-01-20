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
{.compile("gen_qprocess.cpp", cflags).}


type QProcessProcessError* = cint
const
  QProcessFailedToStart* = 0
  QProcessCrashed* = 1
  QProcessTimedout* = 2
  QProcessReadError* = 3
  QProcessWriteError* = 4
  QProcessUnknownError* = 5



type QProcessProcessState* = cint
const
  QProcessNotRunning* = 0
  QProcessStarting* = 1
  QProcessRunning* = 2



type QProcessProcessChannel* = cint
const
  QProcessStandardOutput* = 0
  QProcessStandardError* = 1



type QProcessProcessChannelMode* = cint
const
  QProcessSeparateChannels* = 0
  QProcessMergedChannels* = 1
  QProcessForwardedChannels* = 2
  QProcessForwardedOutputChannel* = 3
  QProcessForwardedErrorChannel* = 4



type QProcessInputChannelMode* = cint
const
  QProcessManagedInputChannel* = 0
  QProcessForwardedInputChannel* = 1



type QProcessExitStatus* = cint
const
  QProcessNormalExit* = 0
  QProcessCrashExit* = 1



import gen_qprocess_types
export gen_qprocess_types

import
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQProcessEnvironment*{.exportc: "QProcessEnvironment", incompleteStruct.} = object
type cQProcess*{.exportc: "QProcess", incompleteStruct.} = object

proc fcQProcessEnvironment_new(): ptr cQProcessEnvironment {.importc: "QProcessEnvironment_new".}
proc fcQProcessEnvironment_new2(other: pointer): ptr cQProcessEnvironment {.importc: "QProcessEnvironment_new2".}
proc fcQProcessEnvironment_operatorAssign(self: pointer, other: pointer): void {.importc: "QProcessEnvironment_operatorAssign".}
proc fcQProcessEnvironment_swap(self: pointer, other: pointer): void {.importc: "QProcessEnvironment_swap".}
proc fcQProcessEnvironment_operatorEqual(self: pointer, other: pointer): bool {.importc: "QProcessEnvironment_operatorEqual".}
proc fcQProcessEnvironment_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QProcessEnvironment_operatorNotEqual".}
proc fcQProcessEnvironment_isEmpty(self: pointer, ): bool {.importc: "QProcessEnvironment_isEmpty".}
proc fcQProcessEnvironment_clear(self: pointer, ): void {.importc: "QProcessEnvironment_clear".}
proc fcQProcessEnvironment_contains(self: pointer, name: struct_miqt_string): bool {.importc: "QProcessEnvironment_contains".}
proc fcQProcessEnvironment_insert(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QProcessEnvironment_insert".}
proc fcQProcessEnvironment_remove(self: pointer, name: struct_miqt_string): void {.importc: "QProcessEnvironment_remove".}
proc fcQProcessEnvironment_value(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QProcessEnvironment_value".}
proc fcQProcessEnvironment_toStringList(self: pointer, ): struct_miqt_array {.importc: "QProcessEnvironment_toStringList".}
proc fcQProcessEnvironment_keys(self: pointer, ): struct_miqt_array {.importc: "QProcessEnvironment_keys".}
proc fcQProcessEnvironment_insertWithQProcessEnvironment(self: pointer, e: pointer): void {.importc: "QProcessEnvironment_insertWithQProcessEnvironment".}
proc fcQProcessEnvironment_systemEnvironment(): pointer {.importc: "QProcessEnvironment_systemEnvironment".}
proc fcQProcessEnvironment_value2(self: pointer, name: struct_miqt_string, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QProcessEnvironment_value2".}
proc fcQProcessEnvironment_delete(self: pointer) {.importc: "QProcessEnvironment_delete".}
proc fcQProcess_new(): ptr cQProcess {.importc: "QProcess_new".}
proc fcQProcess_new2(parent: pointer): ptr cQProcess {.importc: "QProcess_new2".}
proc fcQProcess_metaObject(self: pointer, ): pointer {.importc: "QProcess_metaObject".}
proc fcQProcess_metacast(self: pointer, param1: cstring): pointer {.importc: "QProcess_metacast".}
proc fcQProcess_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QProcess_metacall".}
proc fcQProcess_tr(s: cstring): struct_miqt_string {.importc: "QProcess_tr".}
proc fcQProcess_trUtf8(s: cstring): struct_miqt_string {.importc: "QProcess_trUtf8".}
proc fcQProcess_start(self: pointer, program: struct_miqt_string, arguments: struct_miqt_array): void {.importc: "QProcess_start".}
proc fcQProcess_startWithCommand(self: pointer, command: struct_miqt_string): void {.importc: "QProcess_startWithCommand".}
proc fcQProcess_start2(self: pointer, ): void {.importc: "QProcess_start2".}
proc fcQProcess_startDetached(self: pointer, ): bool {.importc: "QProcess_startDetached".}
proc fcQProcess_open(self: pointer, mode: cint): bool {.importc: "QProcess_open".}
proc fcQProcess_program(self: pointer, ): struct_miqt_string {.importc: "QProcess_program".}
proc fcQProcess_setProgram(self: pointer, program: struct_miqt_string): void {.importc: "QProcess_setProgram".}
proc fcQProcess_arguments(self: pointer, ): struct_miqt_array {.importc: "QProcess_arguments".}
proc fcQProcess_setArguments(self: pointer, arguments: struct_miqt_array): void {.importc: "QProcess_setArguments".}
proc fcQProcess_readChannelMode(self: pointer, ): cint {.importc: "QProcess_readChannelMode".}
proc fcQProcess_setReadChannelMode(self: pointer, mode: cint): void {.importc: "QProcess_setReadChannelMode".}
proc fcQProcess_processChannelMode(self: pointer, ): cint {.importc: "QProcess_processChannelMode".}
proc fcQProcess_setProcessChannelMode(self: pointer, mode: cint): void {.importc: "QProcess_setProcessChannelMode".}
proc fcQProcess_inputChannelMode(self: pointer, ): cint {.importc: "QProcess_inputChannelMode".}
proc fcQProcess_setInputChannelMode(self: pointer, mode: cint): void {.importc: "QProcess_setInputChannelMode".}
proc fcQProcess_readChannel(self: pointer, ): cint {.importc: "QProcess_readChannel".}
proc fcQProcess_setReadChannel(self: pointer, channel: cint): void {.importc: "QProcess_setReadChannel".}
proc fcQProcess_closeReadChannel(self: pointer, channel: cint): void {.importc: "QProcess_closeReadChannel".}
proc fcQProcess_closeWriteChannel(self: pointer, ): void {.importc: "QProcess_closeWriteChannel".}
proc fcQProcess_setStandardInputFile(self: pointer, fileName: struct_miqt_string): void {.importc: "QProcess_setStandardInputFile".}
proc fcQProcess_setStandardOutputFile(self: pointer, fileName: struct_miqt_string): void {.importc: "QProcess_setStandardOutputFile".}
proc fcQProcess_setStandardErrorFile(self: pointer, fileName: struct_miqt_string): void {.importc: "QProcess_setStandardErrorFile".}
proc fcQProcess_setStandardOutputProcess(self: pointer, destination: pointer): void {.importc: "QProcess_setStandardOutputProcess".}
proc fcQProcess_workingDirectory(self: pointer, ): struct_miqt_string {.importc: "QProcess_workingDirectory".}
proc fcQProcess_setWorkingDirectory(self: pointer, dir: struct_miqt_string): void {.importc: "QProcess_setWorkingDirectory".}
proc fcQProcess_setEnvironment(self: pointer, environment: struct_miqt_array): void {.importc: "QProcess_setEnvironment".}
proc fcQProcess_environment(self: pointer, ): struct_miqt_array {.importc: "QProcess_environment".}
proc fcQProcess_setProcessEnvironment(self: pointer, environment: pointer): void {.importc: "QProcess_setProcessEnvironment".}
proc fcQProcess_processEnvironment(self: pointer, ): pointer {.importc: "QProcess_processEnvironment".}
proc fcQProcess_error(self: pointer, ): cint {.importc: "QProcess_error".}
proc fcQProcess_state(self: pointer, ): cint {.importc: "QProcess_state".}
proc fcQProcess_pid(self: pointer, ): clonglong {.importc: "QProcess_pid".}
proc fcQProcess_processId(self: pointer, ): clonglong {.importc: "QProcess_processId".}
proc fcQProcess_waitForStarted(self: pointer, ): bool {.importc: "QProcess_waitForStarted".}
proc fcQProcess_waitForReadyRead(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForReadyRead".}
proc fcQProcess_waitForBytesWritten(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForBytesWritten".}
proc fcQProcess_waitForFinished(self: pointer, ): bool {.importc: "QProcess_waitForFinished".}
proc fcQProcess_readAllStandardOutput(self: pointer, ): struct_miqt_string {.importc: "QProcess_readAllStandardOutput".}
proc fcQProcess_readAllStandardError(self: pointer, ): struct_miqt_string {.importc: "QProcess_readAllStandardError".}
proc fcQProcess_exitCode(self: pointer, ): cint {.importc: "QProcess_exitCode".}
proc fcQProcess_exitStatus(self: pointer, ): cint {.importc: "QProcess_exitStatus".}
proc fcQProcess_bytesAvailable(self: pointer, ): clonglong {.importc: "QProcess_bytesAvailable".}
proc fcQProcess_bytesToWrite(self: pointer, ): clonglong {.importc: "QProcess_bytesToWrite".}
proc fcQProcess_isSequential(self: pointer, ): bool {.importc: "QProcess_isSequential".}
proc fcQProcess_canReadLine(self: pointer, ): bool {.importc: "QProcess_canReadLine".}
proc fcQProcess_close(self: pointer, ): void {.importc: "QProcess_close".}
proc fcQProcess_atEnd(self: pointer, ): bool {.importc: "QProcess_atEnd".}
proc fcQProcess_execute(program: struct_miqt_string, arguments: struct_miqt_array): cint {.importc: "QProcess_execute".}
proc fcQProcess_executeWithCommand(command: struct_miqt_string): cint {.importc: "QProcess_executeWithCommand".}
proc fcQProcess_startDetached2(program: struct_miqt_string, arguments: struct_miqt_array, workingDirectory: struct_miqt_string): bool {.importc: "QProcess_startDetached2".}
proc fcQProcess_startDetached3(program: struct_miqt_string, arguments: struct_miqt_array): bool {.importc: "QProcess_startDetached3".}
proc fcQProcess_startDetachedWithCommand(command: struct_miqt_string): bool {.importc: "QProcess_startDetachedWithCommand".}
proc fcQProcess_systemEnvironment(): struct_miqt_array {.importc: "QProcess_systemEnvironment".}
proc fcQProcess_nullDevice(): struct_miqt_string {.importc: "QProcess_nullDevice".}
proc fcQProcess_terminate(self: pointer, ): void {.importc: "QProcess_terminate".}
proc fcQProcess_kill(self: pointer, ): void {.importc: "QProcess_kill".}
proc fcQProcess_finished(self: pointer, exitCode: cint): void {.importc: "QProcess_finished".}
proc fQProcess_connect_finished(self: pointer, slot: int) {.importc: "QProcess_connect_finished".}
proc fcQProcess_finished2(self: pointer, exitCode: cint, exitStatus: cint): void {.importc: "QProcess_finished2".}
proc fQProcess_connect_finished2(self: pointer, slot: int) {.importc: "QProcess_connect_finished2".}
proc fcQProcess_errorWithError(self: pointer, error: cint): void {.importc: "QProcess_errorWithError".}
proc fQProcess_connect_errorWithError(self: pointer, slot: int) {.importc: "QProcess_connect_errorWithError".}
proc fcQProcess_errorOccurred(self: pointer, error: cint): void {.importc: "QProcess_errorOccurred".}
proc fQProcess_connect_errorOccurred(self: pointer, slot: int) {.importc: "QProcess_connect_errorOccurred".}
proc fcQProcess_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QProcess_tr2".}
proc fcQProcess_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProcess_tr3".}
proc fcQProcess_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QProcess_trUtf82".}
proc fcQProcess_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QProcess_trUtf83".}
proc fcQProcess_start3(self: pointer, program: struct_miqt_string, arguments: struct_miqt_array, mode: cint): void {.importc: "QProcess_start3".}
proc fcQProcess_start22(self: pointer, command: struct_miqt_string, mode: cint): void {.importc: "QProcess_start22".}
proc fcQProcess_start1(self: pointer, mode: cint): void {.importc: "QProcess_start1".}
proc fcQProcess_startDetached1(self: pointer, pid: ptr clonglong): bool {.importc: "QProcess_startDetached1".}
proc fcQProcess_setStandardOutputFile2(self: pointer, fileName: struct_miqt_string, mode: cint): void {.importc: "QProcess_setStandardOutputFile2".}
proc fcQProcess_setStandardErrorFile2(self: pointer, fileName: struct_miqt_string, mode: cint): void {.importc: "QProcess_setStandardErrorFile2".}
proc fcQProcess_waitForStarted1(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForStarted1".}
proc fcQProcess_waitForFinished1(self: pointer, msecs: cint): bool {.importc: "QProcess_waitForFinished1".}
proc fcQProcess_startDetached4(program: struct_miqt_string, arguments: struct_miqt_array, workingDirectory: struct_miqt_string, pid: ptr clonglong): bool {.importc: "QProcess_startDetached4".}
proc fQProcess_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QProcess_virtualbase_metaObject".}
proc fcQProcess_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QProcess_override_virtual_metaObject".}
proc fQProcess_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QProcess_virtualbase_metacast".}
proc fcQProcess_override_virtual_metacast(self: pointer, slot: int) {.importc: "QProcess_override_virtual_metacast".}
proc fQProcess_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QProcess_virtualbase_metacall".}
proc fcQProcess_override_virtual_metacall(self: pointer, slot: int) {.importc: "QProcess_override_virtual_metacall".}
proc fQProcess_virtualbase_open(self: pointer, mode: cint): bool{.importc: "QProcess_virtualbase_open".}
proc fcQProcess_override_virtual_open(self: pointer, slot: int) {.importc: "QProcess_override_virtual_open".}
proc fQProcess_virtualbase_waitForReadyRead(self: pointer, msecs: cint): bool{.importc: "QProcess_virtualbase_waitForReadyRead".}
proc fcQProcess_override_virtual_waitForReadyRead(self: pointer, slot: int) {.importc: "QProcess_override_virtual_waitForReadyRead".}
proc fQProcess_virtualbase_waitForBytesWritten(self: pointer, msecs: cint): bool{.importc: "QProcess_virtualbase_waitForBytesWritten".}
proc fcQProcess_override_virtual_waitForBytesWritten(self: pointer, slot: int) {.importc: "QProcess_override_virtual_waitForBytesWritten".}
proc fQProcess_virtualbase_bytesAvailable(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_bytesAvailable".}
proc fcQProcess_override_virtual_bytesAvailable(self: pointer, slot: int) {.importc: "QProcess_override_virtual_bytesAvailable".}
proc fQProcess_virtualbase_bytesToWrite(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_bytesToWrite".}
proc fcQProcess_override_virtual_bytesToWrite(self: pointer, slot: int) {.importc: "QProcess_override_virtual_bytesToWrite".}
proc fQProcess_virtualbase_isSequential(self: pointer, ): bool{.importc: "QProcess_virtualbase_isSequential".}
proc fcQProcess_override_virtual_isSequential(self: pointer, slot: int) {.importc: "QProcess_override_virtual_isSequential".}
proc fQProcess_virtualbase_canReadLine(self: pointer, ): bool{.importc: "QProcess_virtualbase_canReadLine".}
proc fcQProcess_override_virtual_canReadLine(self: pointer, slot: int) {.importc: "QProcess_override_virtual_canReadLine".}
proc fQProcess_virtualbase_close(self: pointer, ): void{.importc: "QProcess_virtualbase_close".}
proc fcQProcess_override_virtual_close(self: pointer, slot: int) {.importc: "QProcess_override_virtual_close".}
proc fQProcess_virtualbase_atEnd(self: pointer, ): bool{.importc: "QProcess_virtualbase_atEnd".}
proc fcQProcess_override_virtual_atEnd(self: pointer, slot: int) {.importc: "QProcess_override_virtual_atEnd".}
proc fQProcess_virtualbase_setupChildProcess(self: pointer, ): void{.importc: "QProcess_virtualbase_setupChildProcess".}
proc fcQProcess_override_virtual_setupChildProcess(self: pointer, slot: int) {.importc: "QProcess_override_virtual_setupChildProcess".}
proc fQProcess_virtualbase_readData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QProcess_virtualbase_readData".}
proc fcQProcess_override_virtual_readData(self: pointer, slot: int) {.importc: "QProcess_override_virtual_readData".}
proc fQProcess_virtualbase_writeData(self: pointer, data: cstring, len: clonglong): clonglong{.importc: "QProcess_virtualbase_writeData".}
proc fcQProcess_override_virtual_writeData(self: pointer, slot: int) {.importc: "QProcess_override_virtual_writeData".}
proc fQProcess_virtualbase_pos(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_pos".}
proc fcQProcess_override_virtual_pos(self: pointer, slot: int) {.importc: "QProcess_override_virtual_pos".}
proc fQProcess_virtualbase_size(self: pointer, ): clonglong{.importc: "QProcess_virtualbase_size".}
proc fcQProcess_override_virtual_size(self: pointer, slot: int) {.importc: "QProcess_override_virtual_size".}
proc fQProcess_virtualbase_seek(self: pointer, pos: clonglong): bool{.importc: "QProcess_virtualbase_seek".}
proc fcQProcess_override_virtual_seek(self: pointer, slot: int) {.importc: "QProcess_override_virtual_seek".}
proc fQProcess_virtualbase_reset(self: pointer, ): bool{.importc: "QProcess_virtualbase_reset".}
proc fcQProcess_override_virtual_reset(self: pointer, slot: int) {.importc: "QProcess_override_virtual_reset".}
proc fQProcess_virtualbase_readLineData(self: pointer, data: cstring, maxlen: clonglong): clonglong{.importc: "QProcess_virtualbase_readLineData".}
proc fcQProcess_override_virtual_readLineData(self: pointer, slot: int) {.importc: "QProcess_override_virtual_readLineData".}
proc fQProcess_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QProcess_virtualbase_event".}
proc fcQProcess_override_virtual_event(self: pointer, slot: int) {.importc: "QProcess_override_virtual_event".}
proc fQProcess_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QProcess_virtualbase_eventFilter".}
proc fcQProcess_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QProcess_override_virtual_eventFilter".}
proc fQProcess_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QProcess_virtualbase_timerEvent".}
proc fcQProcess_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QProcess_override_virtual_timerEvent".}
proc fQProcess_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QProcess_virtualbase_childEvent".}
proc fcQProcess_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QProcess_override_virtual_childEvent".}
proc fQProcess_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QProcess_virtualbase_customEvent".}
proc fcQProcess_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QProcess_override_virtual_customEvent".}
proc fQProcess_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QProcess_virtualbase_connectNotify".}
proc fcQProcess_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QProcess_override_virtual_connectNotify".}
proc fQProcess_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QProcess_virtualbase_disconnectNotify".}
proc fcQProcess_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QProcess_override_virtual_disconnectNotify".}
proc fcQProcess_staticMetaObject(): pointer {.importc: "QProcess_staticMetaObject".}
proc fcQProcess_delete(self: pointer) {.importc: "QProcess_delete".}


func init*(T: type QProcessEnvironment, h: ptr cQProcessEnvironment): QProcessEnvironment =
  T(h: h)
proc create*(T: type QProcessEnvironment, ): QProcessEnvironment =

  QProcessEnvironment.init(fcQProcessEnvironment_new())
proc create*(T: type QProcessEnvironment, other: QProcessEnvironment): QProcessEnvironment =

  QProcessEnvironment.init(fcQProcessEnvironment_new2(other.h))
proc operatorAssign*(self: QProcessEnvironment, other: QProcessEnvironment): void =

  fcQProcessEnvironment_operatorAssign(self.h, other.h)

proc swap*(self: QProcessEnvironment, other: QProcessEnvironment): void =

  fcQProcessEnvironment_swap(self.h, other.h)

proc operatorEqual*(self: QProcessEnvironment, other: QProcessEnvironment): bool =

  fcQProcessEnvironment_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QProcessEnvironment, other: QProcessEnvironment): bool =

  fcQProcessEnvironment_operatorNotEqual(self.h, other.h)

proc isEmpty*(self: QProcessEnvironment, ): bool =

  fcQProcessEnvironment_isEmpty(self.h)

proc clear*(self: QProcessEnvironment, ): void =

  fcQProcessEnvironment_clear(self.h)

proc contains*(self: QProcessEnvironment, name: string): bool =

  fcQProcessEnvironment_contains(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc insert*(self: QProcessEnvironment, name: string, value: string): void =

  fcQProcessEnvironment_insert(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc remove*(self: QProcessEnvironment, name: string): void =

  fcQProcessEnvironment_remove(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc value*(self: QProcessEnvironment, name: string): string =

  let v_ms = fcQProcessEnvironment_value(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toStringList*(self: QProcessEnvironment, ): seq[string] =

  var v_ma = fcQProcessEnvironment_toStringList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc keys*(self: QProcessEnvironment, ): seq[string] =

  var v_ma = fcQProcessEnvironment_keys(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc insertWithQProcessEnvironment*(self: QProcessEnvironment, e: QProcessEnvironment): void =

  fcQProcessEnvironment_insertWithQProcessEnvironment(self.h, e.h)

proc systemEnvironment*(_: type QProcessEnvironment, ): QProcessEnvironment =

  QProcessEnvironment(h: fcQProcessEnvironment_systemEnvironment())

proc value2*(self: QProcessEnvironment, name: string, defaultValue: string): string =

  let v_ms = fcQProcessEnvironment_value2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QProcessEnvironment) =
  fcQProcessEnvironment_delete(self.h)

func init*(T: type QProcess, h: ptr cQProcess): QProcess =
  T(h: h)
proc create*(T: type QProcess, ): QProcess =

  QProcess.init(fcQProcess_new())
proc create*(T: type QProcess, parent: gen_qobject.QObject): QProcess =

  QProcess.init(fcQProcess_new2(parent.h))
proc metaObject*(self: QProcess, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQProcess_metaObject(self.h))

proc metacast*(self: QProcess, param1: cstring): pointer =

  fcQProcess_metacast(self.h, param1)

proc metacall*(self: QProcess, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQProcess_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QProcess, s: cstring): string =

  let v_ms = fcQProcess_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QProcess, s: cstring): string =

  let v_ms = fcQProcess_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start*(self: QProcess, program: string, arguments: seq[string]): void =

  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_start(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc startWithCommand*(self: QProcess, command: string): void =

  fcQProcess_startWithCommand(self.h, struct_miqt_string(data: command, len: csize_t(len(command))))

proc start2*(self: QProcess, ): void =

  fcQProcess_start2(self.h)

proc startDetached*(self: QProcess, ): bool =

  fcQProcess_startDetached(self.h)

proc open*(self: QProcess, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool =

  fcQProcess_open(self.h, cint(mode))

proc program*(self: QProcess, ): string =

  let v_ms = fcQProcess_program(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setProgram*(self: QProcess, program: string): void =

  fcQProcess_setProgram(self.h, struct_miqt_string(data: program, len: csize_t(len(program))))

proc arguments*(self: QProcess, ): seq[string] =

  var v_ma = fcQProcess_arguments(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setArguments*(self: QProcess, arguments: seq[string]): void =

  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_setArguments(self.h, struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc readChannelMode*(self: QProcess, ): QProcessProcessChannelMode =

  QProcessProcessChannelMode(fcQProcess_readChannelMode(self.h))

proc setReadChannelMode*(self: QProcess, mode: QProcessProcessChannelMode): void =

  fcQProcess_setReadChannelMode(self.h, cint(mode))

proc processChannelMode*(self: QProcess, ): QProcessProcessChannelMode =

  QProcessProcessChannelMode(fcQProcess_processChannelMode(self.h))

proc setProcessChannelMode*(self: QProcess, mode: QProcessProcessChannelMode): void =

  fcQProcess_setProcessChannelMode(self.h, cint(mode))

proc inputChannelMode*(self: QProcess, ): QProcessInputChannelMode =

  QProcessInputChannelMode(fcQProcess_inputChannelMode(self.h))

proc setInputChannelMode*(self: QProcess, mode: QProcessInputChannelMode): void =

  fcQProcess_setInputChannelMode(self.h, cint(mode))

proc readChannel*(self: QProcess, ): QProcessProcessChannel =

  QProcessProcessChannel(fcQProcess_readChannel(self.h))

proc setReadChannel*(self: QProcess, channel: QProcessProcessChannel): void =

  fcQProcess_setReadChannel(self.h, cint(channel))

proc closeReadChannel*(self: QProcess, channel: QProcessProcessChannel): void =

  fcQProcess_closeReadChannel(self.h, cint(channel))

proc closeWriteChannel*(self: QProcess, ): void =

  fcQProcess_closeWriteChannel(self.h)

proc setStandardInputFile*(self: QProcess, fileName: string): void =

  fcQProcess_setStandardInputFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setStandardOutputFile*(self: QProcess, fileName: string): void =

  fcQProcess_setStandardOutputFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setStandardErrorFile*(self: QProcess, fileName: string): void =

  fcQProcess_setStandardErrorFile(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc setStandardOutputProcess*(self: QProcess, destination: QProcess): void =

  fcQProcess_setStandardOutputProcess(self.h, destination.h)

proc workingDirectory*(self: QProcess, ): string =

  let v_ms = fcQProcess_workingDirectory(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setWorkingDirectory*(self: QProcess, dir: string): void =

  fcQProcess_setWorkingDirectory(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc setEnvironment*(self: QProcess, environment: seq[string]): void =

  var environment_CArray = newSeq[struct_miqt_string](len(environment))
  for i in 0..<len(environment):
    environment_CArray[i] = struct_miqt_string(data: environment[i], len: csize_t(len(environment[i])))

  fcQProcess_setEnvironment(self.h, struct_miqt_array(len: csize_t(len(environment)), data: if len(environment) == 0: nil else: addr(environment_CArray[0])))

proc environment*(self: QProcess, ): seq[string] =

  var v_ma = fcQProcess_environment(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setProcessEnvironment*(self: QProcess, environment: QProcessEnvironment): void =

  fcQProcess_setProcessEnvironment(self.h, environment.h)

proc processEnvironment*(self: QProcess, ): QProcessEnvironment =

  QProcessEnvironment(h: fcQProcess_processEnvironment(self.h))

proc error*(self: QProcess, ): QProcessProcessError =

  QProcessProcessError(fcQProcess_error(self.h))

proc state*(self: QProcess, ): QProcessProcessState =

  QProcessProcessState(fcQProcess_state(self.h))

proc pid*(self: QProcess, ): clonglong =

  fcQProcess_pid(self.h)

proc processId*(self: QProcess, ): clonglong =

  fcQProcess_processId(self.h)

proc waitForStarted*(self: QProcess, ): bool =

  fcQProcess_waitForStarted(self.h)

proc waitForReadyRead*(self: QProcess, msecs: cint): bool =

  fcQProcess_waitForReadyRead(self.h, msecs)

proc waitForBytesWritten*(self: QProcess, msecs: cint): bool =

  fcQProcess_waitForBytesWritten(self.h, msecs)

proc waitForFinished*(self: QProcess, ): bool =

  fcQProcess_waitForFinished(self.h)

proc readAllStandardOutput*(self: QProcess, ): seq[byte] =

  var v_bytearray = fcQProcess_readAllStandardOutput(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc readAllStandardError*(self: QProcess, ): seq[byte] =

  var v_bytearray = fcQProcess_readAllStandardError(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc exitCode*(self: QProcess, ): cint =

  fcQProcess_exitCode(self.h)

proc exitStatus*(self: QProcess, ): QProcessExitStatus =

  QProcessExitStatus(fcQProcess_exitStatus(self.h))

proc bytesAvailable*(self: QProcess, ): clonglong =

  fcQProcess_bytesAvailable(self.h)

proc bytesToWrite*(self: QProcess, ): clonglong =

  fcQProcess_bytesToWrite(self.h)

proc isSequential*(self: QProcess, ): bool =

  fcQProcess_isSequential(self.h)

proc canReadLine*(self: QProcess, ): bool =

  fcQProcess_canReadLine(self.h)

proc close*(self: QProcess, ): void =

  fcQProcess_close(self.h)

proc atEnd*(self: QProcess, ): bool =

  fcQProcess_atEnd(self.h)

proc execute*(_: type QProcess, program: string, arguments: seq[string]): cint =

  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_execute(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc executeWithCommand*(_: type QProcess, command: string): cint =

  fcQProcess_executeWithCommand(struct_miqt_string(data: command, len: csize_t(len(command))))

proc startDetached2*(_: type QProcess, program: string, arguments: seq[string], workingDirectory: string): bool =

  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_startDetached2(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])), struct_miqt_string(data: workingDirectory, len: csize_t(len(workingDirectory))))

proc startDetached3*(_: type QProcess, program: string, arguments: seq[string]): bool =

  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_startDetached3(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])))

proc startDetachedWithCommand*(_: type QProcess, command: string): bool =

  fcQProcess_startDetachedWithCommand(struct_miqt_string(data: command, len: csize_t(len(command))))

proc systemEnvironment*(_: type QProcess, ): seq[string] =

  var v_ma = fcQProcess_systemEnvironment()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc nullDevice*(_: type QProcess, ): string =

  let v_ms = fcQProcess_nullDevice()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc terminate*(self: QProcess, ): void =

  fcQProcess_terminate(self.h)

proc kill*(self: QProcess, ): void =

  fcQProcess_kill(self.h)

proc finished*(self: QProcess, exitCode: cint): void =

  fcQProcess_finished(self.h, exitCode)

proc miqt_exec_callback_QProcess_finished(slot: int, exitCode: cint) {.exportc.} =
  type Cb = proc(exitCode: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = exitCode


  nimfunc[](slotval1)

proc onfinished*(self: QProcess, slot: proc(exitCode: cint)) =
  type Cb = proc(exitCode: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQProcess_connect_finished(self.h, cast[int](addr tmp[]))
proc finished2*(self: QProcess, exitCode: cint, exitStatus: QProcessExitStatus): void =

  fcQProcess_finished2(self.h, exitCode, cint(exitStatus))

proc miqt_exec_callback_QProcess_finished2(slot: int, exitCode: cint, exitStatus: cint) {.exportc.} =
  type Cb = proc(exitCode: cint, exitStatus: QProcessExitStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = exitCode

  let slotval2 = QProcessExitStatus(exitStatus)


  nimfunc[](slotval1, slotval2)

proc onfinished2*(self: QProcess, slot: proc(exitCode: cint, exitStatus: QProcessExitStatus)) =
  type Cb = proc(exitCode: cint, exitStatus: QProcessExitStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQProcess_connect_finished2(self.h, cast[int](addr tmp[]))
proc errorWithError*(self: QProcess, error: QProcessProcessError): void =

  fcQProcess_errorWithError(self.h, cint(error))

proc miqt_exec_callback_QProcess_errorWithError(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: QProcessProcessError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QProcessProcessError(error)


  nimfunc[](slotval1)

proc onerrorWithError*(self: QProcess, slot: proc(error: QProcessProcessError)) =
  type Cb = proc(error: QProcessProcessError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQProcess_connect_errorWithError(self.h, cast[int](addr tmp[]))
proc errorOccurred*(self: QProcess, error: QProcessProcessError): void =

  fcQProcess_errorOccurred(self.h, cint(error))

proc miqt_exec_callback_QProcess_errorOccurred(slot: int, error: cint) {.exportc.} =
  type Cb = proc(error: QProcessProcessError)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QProcessProcessError(error)


  nimfunc[](slotval1)

proc onerrorOccurred*(self: QProcess, slot: proc(error: QProcessProcessError)) =
  type Cb = proc(error: QProcessProcessError)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQProcess_connect_errorOccurred(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QProcess, s: cstring, c: cstring): string =

  let v_ms = fcQProcess_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QProcess, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQProcess_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QProcess, s: cstring, c: cstring): string =

  let v_ms = fcQProcess_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QProcess, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQProcess_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc start3*(self: QProcess, program: string, arguments: seq[string], mode: gen_qiodevice.QIODeviceOpenModeFlag): void =

  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_start3(self.h, struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])), cint(mode))

proc start22*(self: QProcess, command: string, mode: gen_qiodevice.QIODeviceOpenModeFlag): void =

  fcQProcess_start22(self.h, struct_miqt_string(data: command, len: csize_t(len(command))), cint(mode))

proc start1*(self: QProcess, mode: gen_qiodevice.QIODeviceOpenModeFlag): void =

  fcQProcess_start1(self.h, cint(mode))

proc startDetached1*(self: QProcess, pid: ptr clonglong): bool =

  fcQProcess_startDetached1(self.h, pid)

proc setStandardOutputFile2*(self: QProcess, fileName: string, mode: gen_qiodevice.QIODeviceOpenModeFlag): void =

  fcQProcess_setStandardOutputFile2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode))

proc setStandardErrorFile2*(self: QProcess, fileName: string, mode: gen_qiodevice.QIODeviceOpenModeFlag): void =

  fcQProcess_setStandardErrorFile2(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode))

proc waitForStarted1*(self: QProcess, msecs: cint): bool =

  fcQProcess_waitForStarted1(self.h, msecs)

proc waitForFinished1*(self: QProcess, msecs: cint): bool =

  fcQProcess_waitForFinished1(self.h, msecs)

proc startDetached4*(_: type QProcess, program: string, arguments: seq[string], workingDirectory: string, pid: ptr clonglong): bool =

  var arguments_CArray = newSeq[struct_miqt_string](len(arguments))
  for i in 0..<len(arguments):
    arguments_CArray[i] = struct_miqt_string(data: arguments[i], len: csize_t(len(arguments[i])))

  fcQProcess_startDetached4(struct_miqt_string(data: program, len: csize_t(len(program))), struct_miqt_array(len: csize_t(len(arguments)), data: if len(arguments) == 0: nil else: addr(arguments_CArray[0])), struct_miqt_string(data: workingDirectory, len: csize_t(len(workingDirectory))), pid)

proc callVirtualBase_metaObject(self: QProcess, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQProcess_virtualbase_metaObject(self.h))

type QProcessmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QProcess, slot: proc(super: QProcessmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QProcessmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_metaObject(self: ptr cQProcess, slot: int): pointer {.exportc: "miqt_exec_callback_QProcess_metaObject ".} =
  type Cb = proc(super: QProcessmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QProcess, param1: cstring): pointer =


  fQProcess_virtualbase_metacast(self.h, param1)

type QProcessmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QProcess, slot: proc(super: QProcessmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QProcessmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_metacast(self: ptr cQProcess, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QProcess_metacast ".} =
  type Cb = proc(super: QProcessmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QProcess(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QProcess, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQProcess_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QProcessmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QProcess, slot: proc(super: QProcessmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QProcessmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_metacall(self: ptr cQProcess, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QProcess_metacall ".} =
  type Cb = proc(super: QProcessmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QProcess(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_open(self: QProcess, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool =


  fQProcess_virtualbase_open(self.h, cint(mode))

type QProcessopenBase* = proc(mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
proc onopen*(self: QProcess, slot: proc(super: QProcessopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcessopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_open(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_open(self: ptr cQProcess, slot: int, mode: cint): bool {.exportc: "miqt_exec_callback_QProcess_open ".} =
  type Cb = proc(super: QProcessopenBase, mode: gen_qiodevice.QIODeviceOpenModeFlag): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(mode: gen_qiodevice.QIODeviceOpenModeFlag): auto =
    callVirtualBase_open(QProcess(h: self), mode)
  let slotval1 = gen_qiodevice.QIODeviceOpenModeFlag(mode)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForReadyRead(self: QProcess, msecs: cint): bool =


  fQProcess_virtualbase_waitForReadyRead(self.h, msecs)

type QProcesswaitForReadyReadBase* = proc(msecs: cint): bool
proc onwaitForReadyRead*(self: QProcess, slot: proc(super: QProcesswaitForReadyReadBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcesswaitForReadyReadBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_waitForReadyRead(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_waitForReadyRead(self: ptr cQProcess, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QProcess_waitForReadyRead ".} =
  type Cb = proc(super: QProcesswaitForReadyReadBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForReadyRead(QProcess(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_waitForBytesWritten(self: QProcess, msecs: cint): bool =


  fQProcess_virtualbase_waitForBytesWritten(self.h, msecs)

type QProcesswaitForBytesWrittenBase* = proc(msecs: cint): bool
proc onwaitForBytesWritten*(self: QProcess, slot: proc(super: QProcesswaitForBytesWrittenBase, msecs: cint): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcesswaitForBytesWrittenBase, msecs: cint): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_waitForBytesWritten(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_waitForBytesWritten(self: ptr cQProcess, slot: int, msecs: cint): bool {.exportc: "miqt_exec_callback_QProcess_waitForBytesWritten ".} =
  type Cb = proc(super: QProcesswaitForBytesWrittenBase, msecs: cint): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(msecs: cint): auto =
    callVirtualBase_waitForBytesWritten(QProcess(h: self), msecs)
  let slotval1 = msecs


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_bytesAvailable(self: QProcess, ): clonglong =


  fQProcess_virtualbase_bytesAvailable(self.h)

type QProcessbytesAvailableBase* = proc(): clonglong
proc onbytesAvailable*(self: QProcess, slot: proc(super: QProcessbytesAvailableBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QProcessbytesAvailableBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_bytesAvailable(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_bytesAvailable(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_bytesAvailable ".} =
  type Cb = proc(super: QProcessbytesAvailableBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesAvailable(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_bytesToWrite(self: QProcess, ): clonglong =


  fQProcess_virtualbase_bytesToWrite(self.h)

type QProcessbytesToWriteBase* = proc(): clonglong
proc onbytesToWrite*(self: QProcess, slot: proc(super: QProcessbytesToWriteBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QProcessbytesToWriteBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_bytesToWrite(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_bytesToWrite(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_bytesToWrite ".} =
  type Cb = proc(super: QProcessbytesToWriteBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_bytesToWrite(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_isSequential(self: QProcess, ): bool =


  fQProcess_virtualbase_isSequential(self.h)

type QProcessisSequentialBase* = proc(): bool
proc onisSequential*(self: QProcess, slot: proc(super: QProcessisSequentialBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcessisSequentialBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_isSequential(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_isSequential(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_isSequential ".} =
  type Cb = proc(super: QProcessisSequentialBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isSequential(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_canReadLine(self: QProcess, ): bool =


  fQProcess_virtualbase_canReadLine(self.h)

type QProcesscanReadLineBase* = proc(): bool
proc oncanReadLine*(self: QProcess, slot: proc(super: QProcesscanReadLineBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcesscanReadLineBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_canReadLine(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_canReadLine(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_canReadLine ".} =
  type Cb = proc(super: QProcesscanReadLineBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_canReadLine(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_close(self: QProcess, ): void =


  fQProcess_virtualbase_close(self.h)

type QProcesscloseBase* = proc(): void
proc onclose*(self: QProcess, slot: proc(super: QProcesscloseBase): void) =
  # TODO check subclass
  type Cb = proc(super: QProcesscloseBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_close(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_close(self: ptr cQProcess, slot: int): void {.exportc: "miqt_exec_callback_QProcess_close ".} =
  type Cb = proc(super: QProcesscloseBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_close(QProcess(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_atEnd(self: QProcess, ): bool =


  fQProcess_virtualbase_atEnd(self.h)

type QProcessatEndBase* = proc(): bool
proc onatEnd*(self: QProcess, slot: proc(super: QProcessatEndBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcessatEndBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_atEnd(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_atEnd(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_atEnd ".} =
  type Cb = proc(super: QProcessatEndBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_atEnd(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_setupChildProcess(self: QProcess, ): void =


  fQProcess_virtualbase_setupChildProcess(self.h)

type QProcesssetupChildProcessBase* = proc(): void
proc onsetupChildProcess*(self: QProcess, slot: proc(super: QProcesssetupChildProcessBase): void) =
  # TODO check subclass
  type Cb = proc(super: QProcesssetupChildProcessBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_setupChildProcess(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_setupChildProcess(self: ptr cQProcess, slot: int): void {.exportc: "miqt_exec_callback_QProcess_setupChildProcess ".} =
  type Cb = proc(super: QProcesssetupChildProcessBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_setupChildProcess(QProcess(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_readData(self: QProcess, data: cstring, maxlen: clonglong): clonglong =


  fQProcess_virtualbase_readData(self.h, data, maxlen)

type QProcessreadDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadData*(self: QProcess, slot: proc(super: QProcessreadDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QProcessreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_readData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_readData(self: ptr cQProcess, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QProcess_readData ".} =
  type Cb = proc(super: QProcessreadDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readData(QProcess(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_writeData(self: QProcess, data: cstring, len: clonglong): clonglong =


  fQProcess_virtualbase_writeData(self.h, data, len)

type QProcesswriteDataBase* = proc(data: cstring, len: clonglong): clonglong
proc onwriteData*(self: QProcess, slot: proc(super: QProcesswriteDataBase, data: cstring, len: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QProcesswriteDataBase, data: cstring, len: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_writeData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_writeData(self: ptr cQProcess, slot: int, data: cstring, len: clonglong): clonglong {.exportc: "miqt_exec_callback_QProcess_writeData ".} =
  type Cb = proc(super: QProcesswriteDataBase, data: cstring, len: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, len: clonglong): auto =
    callVirtualBase_writeData(QProcess(h: self), data, len)
  let slotval1 = (data)

  let slotval2 = len


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_pos(self: QProcess, ): clonglong =


  fQProcess_virtualbase_pos(self.h)

type QProcessposBase* = proc(): clonglong
proc onpos*(self: QProcess, slot: proc(super: QProcessposBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QProcessposBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_pos(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_pos(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_pos ".} =
  type Cb = proc(super: QProcessposBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_pos(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_size(self: QProcess, ): clonglong =


  fQProcess_virtualbase_size(self.h)

type QProcesssizeBase* = proc(): clonglong
proc onsize*(self: QProcess, slot: proc(super: QProcesssizeBase): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QProcesssizeBase): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_size(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_size(self: ptr cQProcess, slot: int): clonglong {.exportc: "miqt_exec_callback_QProcess_size ".} =
  type Cb = proc(super: QProcesssizeBase): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_size(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_seek(self: QProcess, pos: clonglong): bool =


  fQProcess_virtualbase_seek(self.h, pos)

type QProcessseekBase* = proc(pos: clonglong): bool
proc onseek*(self: QProcess, slot: proc(super: QProcessseekBase, pos: clonglong): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcessseekBase, pos: clonglong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_seek(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_seek(self: ptr cQProcess, slot: int, pos: clonglong): bool {.exportc: "miqt_exec_callback_QProcess_seek ".} =
  type Cb = proc(super: QProcessseekBase, pos: clonglong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(pos: clonglong): auto =
    callVirtualBase_seek(QProcess(h: self), pos)
  let slotval1 = pos


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_reset(self: QProcess, ): bool =


  fQProcess_virtualbase_reset(self.h)

type QProcessresetBase* = proc(): bool
proc onreset*(self: QProcess, slot: proc(super: QProcessresetBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcessresetBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_reset(self: ptr cQProcess, slot: int): bool {.exportc: "miqt_exec_callback_QProcess_reset ".} =
  type Cb = proc(super: QProcessresetBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_reset(QProcess(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_readLineData(self: QProcess, data: cstring, maxlen: clonglong): clonglong =


  fQProcess_virtualbase_readLineData(self.h, data, maxlen)

type QProcessreadLineDataBase* = proc(data: cstring, maxlen: clonglong): clonglong
proc onreadLineData*(self: QProcess, slot: proc(super: QProcessreadLineDataBase, data: cstring, maxlen: clonglong): clonglong) =
  # TODO check subclass
  type Cb = proc(super: QProcessreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_readLineData(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_readLineData(self: ptr cQProcess, slot: int, data: cstring, maxlen: clonglong): clonglong {.exportc: "miqt_exec_callback_QProcess_readLineData ".} =
  type Cb = proc(super: QProcessreadLineDataBase, data: cstring, maxlen: clonglong): clonglong
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(data: cstring, maxlen: clonglong): auto =
    callVirtualBase_readLineData(QProcess(h: self), data, maxlen)
  let slotval1 = (data)

  let slotval2 = maxlen


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QProcess, event: gen_qcoreevent.QEvent): bool =


  fQProcess_virtualbase_event(self.h, event.h)

type QProcesseventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QProcess, slot: proc(super: QProcesseventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcesseventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_event(self: ptr cQProcess, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QProcess_event ".} =
  type Cb = proc(super: QProcesseventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QProcess(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QProcess, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQProcess_virtualbase_eventFilter(self.h, watched.h, event.h)

type QProcesseventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QProcess, slot: proc(super: QProcesseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QProcesseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_eventFilter(self: ptr cQProcess, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QProcess_eventFilter ".} =
  type Cb = proc(super: QProcesseventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QProcess(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QProcess, event: gen_qcoreevent.QTimerEvent): void =


  fQProcess_virtualbase_timerEvent(self.h, event.h)

type QProcesstimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QProcess, slot: proc(super: QProcesstimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProcesstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_timerEvent(self: ptr cQProcess, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProcess_timerEvent ".} =
  type Cb = proc(super: QProcesstimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QProcess(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QProcess, event: gen_qcoreevent.QChildEvent): void =


  fQProcess_virtualbase_childEvent(self.h, event.h)

type QProcesschildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QProcess, slot: proc(super: QProcesschildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProcesschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_childEvent(self: ptr cQProcess, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProcess_childEvent ".} =
  type Cb = proc(super: QProcesschildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QProcess(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QProcess, event: gen_qcoreevent.QEvent): void =


  fQProcess_virtualbase_customEvent(self.h, event.h)

type QProcesscustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QProcess, slot: proc(super: QProcesscustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QProcesscustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_customEvent(self: ptr cQProcess, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QProcess_customEvent ".} =
  type Cb = proc(super: QProcesscustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QProcess(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QProcess, signal: gen_qmetaobject.QMetaMethod): void =


  fQProcess_virtualbase_connectNotify(self.h, signal.h)

type QProcessconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QProcess, slot: proc(super: QProcessconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProcessconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_connectNotify(self: ptr cQProcess, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProcess_connectNotify ".} =
  type Cb = proc(super: QProcessconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QProcess(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QProcess, signal: gen_qmetaobject.QMetaMethod): void =


  fQProcess_virtualbase_disconnectNotify(self.h, signal.h)

type QProcessdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QProcess, slot: proc(super: QProcessdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QProcessdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQProcess_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QProcess_disconnectNotify(self: ptr cQProcess, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QProcess_disconnectNotify ".} =
  type Cb = proc(super: QProcessdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QProcess(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QProcess): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQProcess_staticMetaObject())
proc delete*(self: QProcess) =
  fcQProcess_delete(self.h)
