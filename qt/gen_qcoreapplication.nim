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
{.compile("gen_qcoreapplication.cpp", cflags).}


type QCoreApplicationEnum* = cint
const
  QCoreApplicationApplicationFlags* = 331528



import gen_qcoreapplication_types
export gen_qcoreapplication_types

import
  gen_qabstracteventdispatcher,
  gen_qabstractnativeeventfilter,
  gen_qcoreevent,
  gen_qeventloop,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtranslator,
  std/cmdline,
  std/os
export
  gen_qabstracteventdispatcher,
  gen_qabstractnativeeventfilter,
  gen_qcoreevent,
  gen_qeventloop,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtranslator

type cQCoreApplication*{.exportc: "QCoreApplication", incompleteStruct.} = object

proc fcQCoreApplication_new(argc: ptr cint, argv: cstringArray): ptr cQCoreApplication {.importc: "QCoreApplication_new".}
proc fcQCoreApplication_new2(argc: ptr cint, argv: cstringArray, param3: cint): ptr cQCoreApplication {.importc: "QCoreApplication_new2".}
proc fcQCoreApplication_metaObject(self: pointer, ): pointer {.importc: "QCoreApplication_metaObject".}
proc fcQCoreApplication_metacast(self: pointer, param1: cstring): pointer {.importc: "QCoreApplication_metacast".}
proc fcQCoreApplication_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCoreApplication_metacall".}
proc fcQCoreApplication_tr(s: cstring): struct_miqt_string {.importc: "QCoreApplication_tr".}
proc fcQCoreApplication_trUtf8(s: cstring): struct_miqt_string {.importc: "QCoreApplication_trUtf8".}
proc fcQCoreApplication_arguments(): struct_miqt_array {.importc: "QCoreApplication_arguments".}
proc fcQCoreApplication_setAttribute(attribute: cint): void {.importc: "QCoreApplication_setAttribute".}
proc fcQCoreApplication_testAttribute(attribute: cint): bool {.importc: "QCoreApplication_testAttribute".}
proc fcQCoreApplication_setOrganizationDomain(orgDomain: struct_miqt_string): void {.importc: "QCoreApplication_setOrganizationDomain".}
proc fcQCoreApplication_organizationDomain(): struct_miqt_string {.importc: "QCoreApplication_organizationDomain".}
proc fcQCoreApplication_setOrganizationName(orgName: struct_miqt_string): void {.importc: "QCoreApplication_setOrganizationName".}
proc fcQCoreApplication_organizationName(): struct_miqt_string {.importc: "QCoreApplication_organizationName".}
proc fcQCoreApplication_setApplicationName(application: struct_miqt_string): void {.importc: "QCoreApplication_setApplicationName".}
proc fcQCoreApplication_applicationName(): struct_miqt_string {.importc: "QCoreApplication_applicationName".}
proc fcQCoreApplication_setApplicationVersion(version: struct_miqt_string): void {.importc: "QCoreApplication_setApplicationVersion".}
proc fcQCoreApplication_applicationVersion(): struct_miqt_string {.importc: "QCoreApplication_applicationVersion".}
proc fcQCoreApplication_setSetuidAllowed(allow: bool): void {.importc: "QCoreApplication_setSetuidAllowed".}
proc fcQCoreApplication_isSetuidAllowed(): bool {.importc: "QCoreApplication_isSetuidAllowed".}
proc fcQCoreApplication_instance(): pointer {.importc: "QCoreApplication_instance".}
proc fcQCoreApplication_exec(): cint {.importc: "QCoreApplication_exec".}
proc fcQCoreApplication_processEvents(): void {.importc: "QCoreApplication_processEvents".}
proc fcQCoreApplication_processEvents2(flags: cint, maxtime: cint): void {.importc: "QCoreApplication_processEvents2".}
proc fcQCoreApplication_exit(): void {.importc: "QCoreApplication_exit".}
proc fcQCoreApplication_sendEvent(receiver: pointer, event: pointer): bool {.importc: "QCoreApplication_sendEvent".}
proc fcQCoreApplication_postEvent(receiver: pointer, event: pointer): void {.importc: "QCoreApplication_postEvent".}
proc fcQCoreApplication_sendPostedEvents(): void {.importc: "QCoreApplication_sendPostedEvents".}
proc fcQCoreApplication_removePostedEvents(receiver: pointer): void {.importc: "QCoreApplication_removePostedEvents".}
proc fcQCoreApplication_hasPendingEvents(): bool {.importc: "QCoreApplication_hasPendingEvents".}
proc fcQCoreApplication_eventDispatcher(): pointer {.importc: "QCoreApplication_eventDispatcher".}
proc fcQCoreApplication_setEventDispatcher(eventDispatcher: pointer): void {.importc: "QCoreApplication_setEventDispatcher".}
proc fcQCoreApplication_notify(self: pointer, param1: pointer, param2: pointer): bool {.importc: "QCoreApplication_notify".}
proc fcQCoreApplication_startingUp(): bool {.importc: "QCoreApplication_startingUp".}
proc fcQCoreApplication_closingDown(): bool {.importc: "QCoreApplication_closingDown".}
proc fcQCoreApplication_applicationDirPath(): struct_miqt_string {.importc: "QCoreApplication_applicationDirPath".}
proc fcQCoreApplication_applicationFilePath(): struct_miqt_string {.importc: "QCoreApplication_applicationFilePath".}
proc fcQCoreApplication_applicationPid(): clonglong {.importc: "QCoreApplication_applicationPid".}
proc fcQCoreApplication_setLibraryPaths(libraryPaths: struct_miqt_array): void {.importc: "QCoreApplication_setLibraryPaths".}
proc fcQCoreApplication_libraryPaths(): struct_miqt_array {.importc: "QCoreApplication_libraryPaths".}
proc fcQCoreApplication_addLibraryPath(param1: struct_miqt_string): void {.importc: "QCoreApplication_addLibraryPath".}
proc fcQCoreApplication_removeLibraryPath(param1: struct_miqt_string): void {.importc: "QCoreApplication_removeLibraryPath".}
proc fcQCoreApplication_installTranslator(messageFile: pointer): bool {.importc: "QCoreApplication_installTranslator".}
proc fcQCoreApplication_removeTranslator(messageFile: pointer): bool {.importc: "QCoreApplication_removeTranslator".}
proc fcQCoreApplication_translate(context: cstring, key: cstring): struct_miqt_string {.importc: "QCoreApplication_translate".}
proc fcQCoreApplication_flush(): void {.importc: "QCoreApplication_flush".}
proc fcQCoreApplication_installNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QCoreApplication_installNativeEventFilter".}
proc fcQCoreApplication_removeNativeEventFilter(self: pointer, filterObj: pointer): void {.importc: "QCoreApplication_removeNativeEventFilter".}
proc fcQCoreApplication_isQuitLockEnabled(): bool {.importc: "QCoreApplication_isQuitLockEnabled".}
proc fcQCoreApplication_setQuitLockEnabled(enabled: bool): void {.importc: "QCoreApplication_setQuitLockEnabled".}
proc fcQCoreApplication_quit(): void {.importc: "QCoreApplication_quit".}
proc fcQCoreApplication_organizationNameChanged(self: pointer, ): void {.importc: "QCoreApplication_organizationNameChanged".}
proc fQCoreApplication_connect_organizationNameChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_organizationNameChanged".}
proc fcQCoreApplication_organizationDomainChanged(self: pointer, ): void {.importc: "QCoreApplication_organizationDomainChanged".}
proc fQCoreApplication_connect_organizationDomainChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_organizationDomainChanged".}
proc fcQCoreApplication_applicationNameChanged(self: pointer, ): void {.importc: "QCoreApplication_applicationNameChanged".}
proc fQCoreApplication_connect_applicationNameChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_applicationNameChanged".}
proc fcQCoreApplication_applicationVersionChanged(self: pointer, ): void {.importc: "QCoreApplication_applicationVersionChanged".}
proc fQCoreApplication_connect_applicationVersionChanged(self: pointer, slot: int) {.importc: "QCoreApplication_connect_applicationVersionChanged".}
proc fcQCoreApplication_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCoreApplication_tr2".}
proc fcQCoreApplication_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_tr3".}
proc fcQCoreApplication_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCoreApplication_trUtf82".}
proc fcQCoreApplication_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_trUtf83".}
proc fcQCoreApplication_setAttribute2(attribute: cint, on: bool): void {.importc: "QCoreApplication_setAttribute2".}
proc fcQCoreApplication_processEvents1(flags: cint): void {.importc: "QCoreApplication_processEvents1".}
proc fcQCoreApplication_exit1(retcode: cint): void {.importc: "QCoreApplication_exit1".}
proc fcQCoreApplication_postEvent3(receiver: pointer, event: pointer, priority: cint): void {.importc: "QCoreApplication_postEvent3".}
proc fcQCoreApplication_sendPostedEvents1(receiver: pointer): void {.importc: "QCoreApplication_sendPostedEvents1".}
proc fcQCoreApplication_sendPostedEvents2(receiver: pointer, event_type: cint): void {.importc: "QCoreApplication_sendPostedEvents2".}
proc fcQCoreApplication_removePostedEvents2(receiver: pointer, eventType: cint): void {.importc: "QCoreApplication_removePostedEvents2".}
proc fcQCoreApplication_translate3(context: cstring, key: cstring, disambiguation: cstring): struct_miqt_string {.importc: "QCoreApplication_translate3".}
proc fcQCoreApplication_translate4(context: cstring, key: cstring, disambiguation: cstring, n: cint): struct_miqt_string {.importc: "QCoreApplication_translate4".}
proc fQCoreApplication_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QCoreApplication_virtualbase_metacall".}
proc fcQCoreApplication_override_virtual_metacall(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_metacall".}
proc fQCoreApplication_virtualbase_notify(self: pointer, param1: pointer, param2: pointer): bool{.importc: "QCoreApplication_virtualbase_notify".}
proc fcQCoreApplication_override_virtual_notify(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_notify".}
proc fQCoreApplication_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QCoreApplication_virtualbase_event".}
proc fcQCoreApplication_override_virtual_event(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_event".}
proc fQCoreApplication_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QCoreApplication_virtualbase_eventFilter".}
proc fcQCoreApplication_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_eventFilter".}
proc fQCoreApplication_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QCoreApplication_virtualbase_timerEvent".}
proc fcQCoreApplication_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_timerEvent".}
proc fQCoreApplication_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QCoreApplication_virtualbase_childEvent".}
proc fcQCoreApplication_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_childEvent".}
proc fQCoreApplication_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QCoreApplication_virtualbase_customEvent".}
proc fcQCoreApplication_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_customEvent".}
proc fQCoreApplication_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QCoreApplication_virtualbase_connectNotify".}
proc fcQCoreApplication_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_connectNotify".}
proc fQCoreApplication_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QCoreApplication_virtualbase_disconnectNotify".}
proc fcQCoreApplication_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QCoreApplication_override_virtual_disconnectNotify".}
proc fcQCoreApplication_delete(self: pointer) {.importc: "QCoreApplication_delete".}


func init*(T: type QCoreApplication, h: ptr cQCoreApplication): QCoreApplication =
  T(h: h)
proc create*(T: type QCoreApplication, ): QCoreApplication =

  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  QCoreApplication.init(fcQCoreApplication_new(addr argc, argv))
proc create*(T: type QCoreApplication, param3: cint): QCoreApplication =

  # Convert []string to long-lived int& argc, char** argv, never call free()
  var args2 = @[getAppFilename()]
  args2.add commandLineParams()
  var argv: cStringArray = allocCstringArray(args2)
  var argc {.threadvar.}: cint
  argc = args2.len.cint
  QCoreApplication.init(fcQCoreApplication_new2(addr argc, argv, param3))
proc metaObject*(self: QCoreApplication, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCoreApplication_metaObject(self.h))

proc metacast*(self: QCoreApplication, param1: cstring): pointer =

  fcQCoreApplication_metacast(self.h, param1)

proc metacall*(self: QCoreApplication, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCoreApplication_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCoreApplication, s: cstring): string =

  let v_ms = fcQCoreApplication_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCoreApplication, s: cstring): string =

  let v_ms = fcQCoreApplication_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc arguments*(_: type QCoreApplication, ): seq[string] =

  var v_ma = fcQCoreApplication_arguments()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setAttribute*(_: type QCoreApplication, attribute: gen_qnamespace.ApplicationAttribute): void =

  fcQCoreApplication_setAttribute(cint(attribute))

proc testAttribute*(_: type QCoreApplication, attribute: gen_qnamespace.ApplicationAttribute): bool =

  fcQCoreApplication_testAttribute(cint(attribute))

proc setOrganizationDomain*(_: type QCoreApplication, orgDomain: string): void =

  fcQCoreApplication_setOrganizationDomain(struct_miqt_string(data: orgDomain, len: csize_t(len(orgDomain))))

proc organizationDomain*(_: type QCoreApplication, ): string =

  let v_ms = fcQCoreApplication_organizationDomain()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOrganizationName*(_: type QCoreApplication, orgName: string): void =

  fcQCoreApplication_setOrganizationName(struct_miqt_string(data: orgName, len: csize_t(len(orgName))))

proc organizationName*(_: type QCoreApplication, ): string =

  let v_ms = fcQCoreApplication_organizationName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setApplicationName*(_: type QCoreApplication, application: string): void =

  fcQCoreApplication_setApplicationName(struct_miqt_string(data: application, len: csize_t(len(application))))

proc applicationName*(_: type QCoreApplication, ): string =

  let v_ms = fcQCoreApplication_applicationName()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setApplicationVersion*(_: type QCoreApplication, version: string): void =

  fcQCoreApplication_setApplicationVersion(struct_miqt_string(data: version, len: csize_t(len(version))))

proc applicationVersion*(_: type QCoreApplication, ): string =

  let v_ms = fcQCoreApplication_applicationVersion()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setSetuidAllowed*(_: type QCoreApplication, allow: bool): void =

  fcQCoreApplication_setSetuidAllowed(allow)

proc isSetuidAllowed*(_: type QCoreApplication, ): bool =

  fcQCoreApplication_isSetuidAllowed()

proc instance*(_: type QCoreApplication, ): QCoreApplication =

  QCoreApplication(h: fcQCoreApplication_instance())

proc exec*(_: type QCoreApplication, ): cint =

  fcQCoreApplication_exec()

proc processEvents*(_: type QCoreApplication, ): void =

  fcQCoreApplication_processEvents()

proc processEvents2*(_: type QCoreApplication, flags: gen_qeventloop.QEventLoopProcessEventsFlag, maxtime: cint): void =

  fcQCoreApplication_processEvents2(cint(flags), maxtime)

proc exit*(_: type QCoreApplication, ): void =

  fcQCoreApplication_exit()

proc sendEvent*(_: type QCoreApplication, receiver: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fcQCoreApplication_sendEvent(receiver.h, event.h)

proc postEvent*(_: type QCoreApplication, receiver: gen_qobject.QObject, event: gen_qcoreevent.QEvent): void =

  fcQCoreApplication_postEvent(receiver.h, event.h)

proc sendPostedEvents*(_: type QCoreApplication, ): void =

  fcQCoreApplication_sendPostedEvents()

proc removePostedEvents*(_: type QCoreApplication, receiver: gen_qobject.QObject): void =

  fcQCoreApplication_removePostedEvents(receiver.h)

proc hasPendingEvents*(_: type QCoreApplication, ): bool =

  fcQCoreApplication_hasPendingEvents()

proc eventDispatcher*(_: type QCoreApplication, ): gen_qabstracteventdispatcher.QAbstractEventDispatcher =

  gen_qabstracteventdispatcher.QAbstractEventDispatcher(h: fcQCoreApplication_eventDispatcher())

proc setEventDispatcher*(_: type QCoreApplication, eventDispatcher: gen_qabstracteventdispatcher.QAbstractEventDispatcher): void =

  fcQCoreApplication_setEventDispatcher(eventDispatcher.h)

proc notify*(self: QCoreApplication, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =

  fcQCoreApplication_notify(self.h, param1.h, param2.h)

proc startingUp*(_: type QCoreApplication, ): bool =

  fcQCoreApplication_startingUp()

proc closingDown*(_: type QCoreApplication, ): bool =

  fcQCoreApplication_closingDown()

proc applicationDirPath*(_: type QCoreApplication, ): string =

  let v_ms = fcQCoreApplication_applicationDirPath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applicationFilePath*(_: type QCoreApplication, ): string =

  let v_ms = fcQCoreApplication_applicationFilePath()
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc applicationPid*(_: type QCoreApplication, ): clonglong =

  fcQCoreApplication_applicationPid()

proc setLibraryPaths*(_: type QCoreApplication, libraryPaths: seq[string]): void =

  var libraryPaths_CArray = newSeq[struct_miqt_string](len(libraryPaths))
  for i in 0..<len(libraryPaths):
    libraryPaths_CArray[i] = struct_miqt_string(data: libraryPaths[i], len: csize_t(len(libraryPaths[i])))

  fcQCoreApplication_setLibraryPaths(struct_miqt_array(len: csize_t(len(libraryPaths)), data: if len(libraryPaths) == 0: nil else: addr(libraryPaths_CArray[0])))

proc libraryPaths*(_: type QCoreApplication, ): seq[string] =

  var v_ma = fcQCoreApplication_libraryPaths()
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc addLibraryPath*(_: type QCoreApplication, param1: string): void =

  fcQCoreApplication_addLibraryPath(struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc removeLibraryPath*(_: type QCoreApplication, param1: string): void =

  fcQCoreApplication_removeLibraryPath(struct_miqt_string(data: param1, len: csize_t(len(param1))))

proc installTranslator*(_: type QCoreApplication, messageFile: gen_qtranslator.QTranslator): bool =

  fcQCoreApplication_installTranslator(messageFile.h)

proc removeTranslator*(_: type QCoreApplication, messageFile: gen_qtranslator.QTranslator): bool =

  fcQCoreApplication_removeTranslator(messageFile.h)

proc translate*(_: type QCoreApplication, context: cstring, key: cstring): string =

  let v_ms = fcQCoreApplication_translate(context, key)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc flush*(_: type QCoreApplication, ): void =

  fcQCoreApplication_flush()

proc installNativeEventFilter*(self: QCoreApplication, filterObj: gen_qabstractnativeeventfilter.QAbstractNativeEventFilter): void =

  fcQCoreApplication_installNativeEventFilter(self.h, filterObj.h)

proc removeNativeEventFilter*(self: QCoreApplication, filterObj: gen_qabstractnativeeventfilter.QAbstractNativeEventFilter): void =

  fcQCoreApplication_removeNativeEventFilter(self.h, filterObj.h)

proc isQuitLockEnabled*(_: type QCoreApplication, ): bool =

  fcQCoreApplication_isQuitLockEnabled()

proc setQuitLockEnabled*(_: type QCoreApplication, enabled: bool): void =

  fcQCoreApplication_setQuitLockEnabled(enabled)

proc quit*(_: type QCoreApplication, ): void =

  fcQCoreApplication_quit()

proc organizationNameChanged*(self: QCoreApplication, ): void =

  fcQCoreApplication_organizationNameChanged(self.h)

proc miqt_exec_callback_QCoreApplication_organizationNameChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onorganizationNameChanged*(self: QCoreApplication, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCoreApplication_connect_organizationNameChanged(self.h, cast[int](addr tmp[]))
proc organizationDomainChanged*(self: QCoreApplication, ): void =

  fcQCoreApplication_organizationDomainChanged(self.h)

proc miqt_exec_callback_QCoreApplication_organizationDomainChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onorganizationDomainChanged*(self: QCoreApplication, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCoreApplication_connect_organizationDomainChanged(self.h, cast[int](addr tmp[]))
proc applicationNameChanged*(self: QCoreApplication, ): void =

  fcQCoreApplication_applicationNameChanged(self.h)

proc miqt_exec_callback_QCoreApplication_applicationNameChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onapplicationNameChanged*(self: QCoreApplication, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCoreApplication_connect_applicationNameChanged(self.h, cast[int](addr tmp[]))
proc applicationVersionChanged*(self: QCoreApplication, ): void =

  fcQCoreApplication_applicationVersionChanged(self.h)

proc miqt_exec_callback_QCoreApplication_applicationVersionChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onapplicationVersionChanged*(self: QCoreApplication, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCoreApplication_connect_applicationVersionChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCoreApplication, s: cstring, c: cstring): string =

  let v_ms = fcQCoreApplication_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCoreApplication, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCoreApplication_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCoreApplication, s: cstring, c: cstring): string =

  let v_ms = fcQCoreApplication_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCoreApplication, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCoreApplication_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAttribute2*(_: type QCoreApplication, attribute: gen_qnamespace.ApplicationAttribute, on: bool): void =

  fcQCoreApplication_setAttribute2(cint(attribute), on)

proc processEvents1*(_: type QCoreApplication, flags: gen_qeventloop.QEventLoopProcessEventsFlag): void =

  fcQCoreApplication_processEvents1(cint(flags))

proc exit1*(_: type QCoreApplication, retcode: cint): void =

  fcQCoreApplication_exit1(retcode)

proc postEvent3*(_: type QCoreApplication, receiver: gen_qobject.QObject, event: gen_qcoreevent.QEvent, priority: cint): void =

  fcQCoreApplication_postEvent3(receiver.h, event.h, priority)

proc sendPostedEvents1*(_: type QCoreApplication, receiver: gen_qobject.QObject): void =

  fcQCoreApplication_sendPostedEvents1(receiver.h)

proc sendPostedEvents2*(_: type QCoreApplication, receiver: gen_qobject.QObject, event_type: cint): void =

  fcQCoreApplication_sendPostedEvents2(receiver.h, event_type)

proc removePostedEvents2*(_: type QCoreApplication, receiver: gen_qobject.QObject, eventType: cint): void =

  fcQCoreApplication_removePostedEvents2(receiver.h, eventType)

proc translate3*(_: type QCoreApplication, context: cstring, key: cstring, disambiguation: cstring): string =

  let v_ms = fcQCoreApplication_translate3(context, key, disambiguation)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc translate4*(_: type QCoreApplication, context: cstring, key: cstring, disambiguation: cstring, n: cint): string =

  let v_ms = fcQCoreApplication_translate4(context, key, disambiguation, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QCoreApplication, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQCoreApplication_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QCoreApplicationmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QCoreApplication, slot: proc(super: QCoreApplicationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_metacall(self: ptr cQCoreApplication, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QCoreApplication_metacall ".} =
  type Cb = proc(super: QCoreApplicationmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QCoreApplication(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_notify(self: QCoreApplication, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool =


  fQCoreApplication_virtualbase_notify(self.h, param1.h, param2.h)

type QCoreApplicationnotifyBase* = proc(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
proc onnotify*(self: QCoreApplication, slot: proc(super: QCoreApplicationnotifyBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationnotifyBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_notify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_notify(self: ptr cQCoreApplication, slot: int, param1: pointer, param2: pointer): bool {.exportc: "miqt_exec_callback_QCoreApplication_notify ".} =
  type Cb = proc(super: QCoreApplicationnotifyBase, param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobject.QObject, param2: gen_qcoreevent.QEvent): auto =
    callVirtualBase_notify(QCoreApplication(h: self), param1, param2)
  let slotval1 = gen_qobject.QObject(h: param1)

  let slotval2 = gen_qcoreevent.QEvent(h: param2)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_event(self: QCoreApplication, param1: gen_qcoreevent.QEvent): bool =


  fQCoreApplication_virtualbase_event(self.h, param1.h)

type QCoreApplicationeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QCoreApplication, slot: proc(super: QCoreApplicationeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_event(self: ptr cQCoreApplication, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QCoreApplication_event ".} =
  type Cb = proc(super: QCoreApplicationeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QCoreApplication(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QCoreApplication, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQCoreApplication_virtualbase_eventFilter(self.h, watched.h, event.h)

type QCoreApplicationeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QCoreApplication, slot: proc(super: QCoreApplicationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_eventFilter(self: ptr cQCoreApplication, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QCoreApplication_eventFilter ".} =
  type Cb = proc(super: QCoreApplicationeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QCoreApplication(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QCoreApplication, event: gen_qcoreevent.QTimerEvent): void =


  fQCoreApplication_virtualbase_timerEvent(self.h, event.h)

type QCoreApplicationtimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QCoreApplication, slot: proc(super: QCoreApplicationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_timerEvent(self: ptr cQCoreApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_timerEvent ".} =
  type Cb = proc(super: QCoreApplicationtimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QCoreApplication(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QCoreApplication, event: gen_qcoreevent.QChildEvent): void =


  fQCoreApplication_virtualbase_childEvent(self.h, event.h)

type QCoreApplicationchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QCoreApplication, slot: proc(super: QCoreApplicationchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_childEvent(self: ptr cQCoreApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_childEvent ".} =
  type Cb = proc(super: QCoreApplicationchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QCoreApplication(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QCoreApplication, event: gen_qcoreevent.QEvent): void =


  fQCoreApplication_virtualbase_customEvent(self.h, event.h)

type QCoreApplicationcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QCoreApplication, slot: proc(super: QCoreApplicationcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_customEvent(self: ptr cQCoreApplication, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_customEvent ".} =
  type Cb = proc(super: QCoreApplicationcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QCoreApplication(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QCoreApplication, signal: gen_qmetaobject.QMetaMethod): void =


  fQCoreApplication_virtualbase_connectNotify(self.h, signal.h)

type QCoreApplicationconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QCoreApplication, slot: proc(super: QCoreApplicationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_connectNotify(self: ptr cQCoreApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_connectNotify ".} =
  type Cb = proc(super: QCoreApplicationconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QCoreApplication(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QCoreApplication, signal: gen_qmetaobject.QMetaMethod): void =


  fQCoreApplication_virtualbase_disconnectNotify(self.h, signal.h)

type QCoreApplicationdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QCoreApplication, slot: proc(super: QCoreApplicationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QCoreApplicationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQCoreApplication_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QCoreApplication_disconnectNotify(self: ptr cQCoreApplication, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QCoreApplication_disconnectNotify ".} =
  type Cb = proc(super: QCoreApplicationdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QCoreApplication(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QCoreApplication) =
  fcQCoreApplication_delete(self.h)
