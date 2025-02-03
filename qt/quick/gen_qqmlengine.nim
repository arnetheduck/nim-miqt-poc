import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlengine.cpp", cflags).}


type QQmlImageProviderBaseImageType* = cint
const
  QQmlImageProviderBaseImage* = 0
  QQmlImageProviderBasePixmap* = 1
  QQmlImageProviderBaseTexture* = 2
  QQmlImageProviderBaseInvalid* = 3
  QQmlImageProviderBaseImageResponse* = 4



type QQmlImageProviderBaseFlag* = cint
const
  QQmlImageProviderBaseForceAsynchronousImageLoading* = 1



type QQmlEngineObjectOwnership* = cint
const
  QQmlEngineCppOwnership* = 0
  QQmlEngineJavaScriptOwnership* = 1



import gen_qqmlengine_types
export gen_qqmlengine_types

import
  gen_qcoreevent,
  gen_qjsengine,
  gen_qmetaobject,
  gen_qnetworkaccessmanager,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlabstracturlinterceptor,
  gen_qqmlcontext,
  gen_qqmlerror,
  gen_qqmlincubator,
  gen_qqmlnetworkaccessmanagerfactory,
  gen_qurl
export
  gen_qcoreevent,
  gen_qjsengine,
  gen_qmetaobject,
  gen_qnetworkaccessmanager,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlabstracturlinterceptor,
  gen_qqmlcontext,
  gen_qqmlerror,
  gen_qqmlincubator,
  gen_qqmlnetworkaccessmanagerfactory,
  gen_qurl

type cQQmlImageProviderBase*{.exportc: "QQmlImageProviderBase", incompleteStruct.} = object
type cQQmlEngine*{.exportc: "QQmlEngine", incompleteStruct.} = object

proc fcQQmlImageProviderBase_imageType(self: pointer, ): cint {.importc: "QQmlImageProviderBase_imageType".}
proc fcQQmlImageProviderBase_flags(self: pointer, ): cint {.importc: "QQmlImageProviderBase_flags".}
proc fcQQmlImageProviderBase_delete(self: pointer) {.importc: "QQmlImageProviderBase_delete".}
proc fcQQmlEngine_new(): ptr cQQmlEngine {.importc: "QQmlEngine_new".}
proc fcQQmlEngine_new2(p: pointer): ptr cQQmlEngine {.importc: "QQmlEngine_new2".}
proc fcQQmlEngine_metaObject(self: pointer, ): pointer {.importc: "QQmlEngine_metaObject".}
proc fcQQmlEngine_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlEngine_metacast".}
proc fcQQmlEngine_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlEngine_metacall".}
proc fcQQmlEngine_tr(s: cstring): struct_miqt_string {.importc: "QQmlEngine_tr".}
proc fcQQmlEngine_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlEngine_trUtf8".}
proc fcQQmlEngine_rootContext(self: pointer, ): pointer {.importc: "QQmlEngine_rootContext".}
proc fcQQmlEngine_clearComponentCache(self: pointer, ): void {.importc: "QQmlEngine_clearComponentCache".}
proc fcQQmlEngine_trimComponentCache(self: pointer, ): void {.importc: "QQmlEngine_trimComponentCache".}
proc fcQQmlEngine_importPathList(self: pointer, ): struct_miqt_array {.importc: "QQmlEngine_importPathList".}
proc fcQQmlEngine_setImportPathList(self: pointer, paths: struct_miqt_array): void {.importc: "QQmlEngine_setImportPathList".}
proc fcQQmlEngine_addImportPath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_addImportPath".}
proc fcQQmlEngine_pluginPathList(self: pointer, ): struct_miqt_array {.importc: "QQmlEngine_pluginPathList".}
proc fcQQmlEngine_setPluginPathList(self: pointer, paths: struct_miqt_array): void {.importc: "QQmlEngine_setPluginPathList".}
proc fcQQmlEngine_addPluginPath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_addPluginPath".}
proc fcQQmlEngine_addNamedBundle(self: pointer, name: struct_miqt_string, fileName: struct_miqt_string): bool {.importc: "QQmlEngine_addNamedBundle".}
proc fcQQmlEngine_importPlugin(self: pointer, filePath: struct_miqt_string, uri: struct_miqt_string, errors: struct_miqt_array): bool {.importc: "QQmlEngine_importPlugin".}
proc fcQQmlEngine_setNetworkAccessManagerFactory(self: pointer, networkAccessManagerFactory: pointer): void {.importc: "QQmlEngine_setNetworkAccessManagerFactory".}
proc fcQQmlEngine_networkAccessManagerFactory(self: pointer, ): pointer {.importc: "QQmlEngine_networkAccessManagerFactory".}
proc fcQQmlEngine_networkAccessManager(self: pointer, ): pointer {.importc: "QQmlEngine_networkAccessManager".}
proc fcQQmlEngine_setUrlInterceptor(self: pointer, urlInterceptor: pointer): void {.importc: "QQmlEngine_setUrlInterceptor".}
proc fcQQmlEngine_urlInterceptor(self: pointer, ): pointer {.importc: "QQmlEngine_urlInterceptor".}
proc fcQQmlEngine_addImageProvider(self: pointer, id: struct_miqt_string, param2: pointer): void {.importc: "QQmlEngine_addImageProvider".}
proc fcQQmlEngine_imageProvider(self: pointer, id: struct_miqt_string): pointer {.importc: "QQmlEngine_imageProvider".}
proc fcQQmlEngine_removeImageProvider(self: pointer, id: struct_miqt_string): void {.importc: "QQmlEngine_removeImageProvider".}
proc fcQQmlEngine_setIncubationController(self: pointer, incubationController: pointer): void {.importc: "QQmlEngine_setIncubationController".}
proc fcQQmlEngine_incubationController(self: pointer, ): pointer {.importc: "QQmlEngine_incubationController".}
proc fcQQmlEngine_setOfflineStoragePath(self: pointer, dir: struct_miqt_string): void {.importc: "QQmlEngine_setOfflineStoragePath".}
proc fcQQmlEngine_offlineStoragePath(self: pointer, ): struct_miqt_string {.importc: "QQmlEngine_offlineStoragePath".}
proc fcQQmlEngine_offlineStorageDatabaseFilePath(self: pointer, databaseName: struct_miqt_string): struct_miqt_string {.importc: "QQmlEngine_offlineStorageDatabaseFilePath".}
proc fcQQmlEngine_baseUrl(self: pointer, ): pointer {.importc: "QQmlEngine_baseUrl".}
proc fcQQmlEngine_setBaseUrl(self: pointer, baseUrl: pointer): void {.importc: "QQmlEngine_setBaseUrl".}
proc fcQQmlEngine_outputWarningsToStandardError(self: pointer, ): bool {.importc: "QQmlEngine_outputWarningsToStandardError".}
proc fcQQmlEngine_setOutputWarningsToStandardError(self: pointer, outputWarningsToStandardError: bool): void {.importc: "QQmlEngine_setOutputWarningsToStandardError".}
proc fcQQmlEngine_retranslate(self: pointer, ): void {.importc: "QQmlEngine_retranslate".}
proc fcQQmlEngine_contextForObject(param1: pointer): pointer {.importc: "QQmlEngine_contextForObject".}
proc fcQQmlEngine_setContextForObject(param1: pointer, param2: pointer): void {.importc: "QQmlEngine_setContextForObject".}
proc fcQQmlEngine_setObjectOwnership(param1: pointer, param2: cint): void {.importc: "QQmlEngine_setObjectOwnership".}
proc fcQQmlEngine_objectOwnership(param1: pointer): cint {.importc: "QQmlEngine_objectOwnership".}
proc fcQQmlEngine_quit(self: pointer, ): void {.importc: "QQmlEngine_quit".}
proc fQQmlEngine_connect_quit(self: pointer, slot: int) {.importc: "QQmlEngine_connect_quit".}
proc fcQQmlEngine_exit(self: pointer, retCode: cint): void {.importc: "QQmlEngine_exit".}
proc fQQmlEngine_connect_exit(self: pointer, slot: int) {.importc: "QQmlEngine_connect_exit".}
proc fcQQmlEngine_warnings(self: pointer, warnings: struct_miqt_array): void {.importc: "QQmlEngine_warnings".}
proc fQQmlEngine_connect_warnings(self: pointer, slot: int) {.importc: "QQmlEngine_connect_warnings".}
proc fcQQmlEngine_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngine_tr2".}
proc fcQQmlEngine_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngine_tr3".}
proc fcQQmlEngine_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlEngine_trUtf82".}
proc fcQQmlEngine_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlEngine_trUtf83".}
proc fQQmlEngine_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlEngine_virtualbase_metacall".}
proc fcQQmlEngine_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_metacall".}
proc fQQmlEngine_virtualbase_event(self: pointer, param1: pointer): bool{.importc: "QQmlEngine_virtualbase_event".}
proc fcQQmlEngine_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_event".}
proc fQQmlEngine_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlEngine_virtualbase_eventFilter".}
proc fcQQmlEngine_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_eventFilter".}
proc fQQmlEngine_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlEngine_virtualbase_timerEvent".}
proc fcQQmlEngine_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_timerEvent".}
proc fQQmlEngine_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlEngine_virtualbase_childEvent".}
proc fcQQmlEngine_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_childEvent".}
proc fQQmlEngine_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlEngine_virtualbase_customEvent".}
proc fcQQmlEngine_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_customEvent".}
proc fQQmlEngine_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngine_virtualbase_connectNotify".}
proc fcQQmlEngine_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_connectNotify".}
proc fQQmlEngine_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlEngine_virtualbase_disconnectNotify".}
proc fcQQmlEngine_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlEngine_override_virtual_disconnectNotify".}
proc fcQQmlEngine_delete(self: pointer) {.importc: "QQmlEngine_delete".}


func init*(T: type QQmlImageProviderBase, h: ptr cQQmlImageProviderBase): QQmlImageProviderBase =
  T(h: h)
proc imageType*(self: QQmlImageProviderBase, ): QQmlImageProviderBaseImageType =

  QQmlImageProviderBaseImageType(fcQQmlImageProviderBase_imageType(self.h))

proc flags*(self: QQmlImageProviderBase, ): QQmlImageProviderBaseFlag =

  QQmlImageProviderBaseFlag(fcQQmlImageProviderBase_flags(self.h))

proc delete*(self: QQmlImageProviderBase) =
  fcQQmlImageProviderBase_delete(self.h)

func init*(T: type QQmlEngine, h: ptr cQQmlEngine): QQmlEngine =
  T(h: h)
proc create*(T: type QQmlEngine, ): QQmlEngine =

  QQmlEngine.init(fcQQmlEngine_new())
proc create*(T: type QQmlEngine, p: gen_qobject.QObject): QQmlEngine =

  QQmlEngine.init(fcQQmlEngine_new2(p.h))
proc metaObject*(self: QQmlEngine, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlEngine_metaObject(self.h))

proc metacast*(self: QQmlEngine, param1: cstring): pointer =

  fcQQmlEngine_metacast(self.h, param1)

proc metacall*(self: QQmlEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlEngine_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlEngine, s: cstring): string =

  let v_ms = fcQQmlEngine_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlEngine, s: cstring): string =

  let v_ms = fcQQmlEngine_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc rootContext*(self: QQmlEngine, ): gen_qqmlcontext.QQmlContext =

  gen_qqmlcontext.QQmlContext(h: fcQQmlEngine_rootContext(self.h))

proc clearComponentCache*(self: QQmlEngine, ): void =

  fcQQmlEngine_clearComponentCache(self.h)

proc trimComponentCache*(self: QQmlEngine, ): void =

  fcQQmlEngine_trimComponentCache(self.h)

proc importPathList*(self: QQmlEngine, ): seq[string] =

  var v_ma = fcQQmlEngine_importPathList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setImportPathList*(self: QQmlEngine, paths: seq[string]): void =

  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQQmlEngine_setImportPathList(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc addImportPath*(self: QQmlEngine, dir: string): void =

  fcQQmlEngine_addImportPath(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc pluginPathList*(self: QQmlEngine, ): seq[string] =

  var v_ma = fcQQmlEngine_pluginPathList(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc setPluginPathList*(self: QQmlEngine, paths: seq[string]): void =

  var paths_CArray = newSeq[struct_miqt_string](len(paths))
  for i in 0..<len(paths):
    paths_CArray[i] = struct_miqt_string(data: paths[i], len: csize_t(len(paths[i])))

  fcQQmlEngine_setPluginPathList(self.h, struct_miqt_array(len: csize_t(len(paths)), data: if len(paths) == 0: nil else: addr(paths_CArray[0])))

proc addPluginPath*(self: QQmlEngine, dir: string): void =

  fcQQmlEngine_addPluginPath(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc addNamedBundle*(self: QQmlEngine, name: string, fileName: string): bool =

  fcQQmlEngine_addNamedBundle(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc importPlugin*(self: QQmlEngine, filePath: string, uri: string, errors: seq[gen_qqmlerror.QQmlError]): bool =

  var errors_CArray = newSeq[pointer](len(errors))
  for i in 0..<len(errors):
    errors_CArray[i] = errors[i].h

  fcQQmlEngine_importPlugin(self.h, struct_miqt_string(data: filePath, len: csize_t(len(filePath))), struct_miqt_string(data: uri, len: csize_t(len(uri))), struct_miqt_array(len: csize_t(len(errors)), data: if len(errors) == 0: nil else: addr(errors_CArray[0])))

proc setNetworkAccessManagerFactory*(self: QQmlEngine, networkAccessManagerFactory: gen_qqmlnetworkaccessmanagerfactory.QQmlNetworkAccessManagerFactory): void =

  fcQQmlEngine_setNetworkAccessManagerFactory(self.h, networkAccessManagerFactory.h)

proc networkAccessManagerFactory*(self: QQmlEngine, ): gen_qqmlnetworkaccessmanagerfactory.QQmlNetworkAccessManagerFactory =

  gen_qqmlnetworkaccessmanagerfactory.QQmlNetworkAccessManagerFactory(h: fcQQmlEngine_networkAccessManagerFactory(self.h))

proc networkAccessManager*(self: QQmlEngine, ): gen_qnetworkaccessmanager.QNetworkAccessManager =

  gen_qnetworkaccessmanager.QNetworkAccessManager(h: fcQQmlEngine_networkAccessManager(self.h))

proc setUrlInterceptor*(self: QQmlEngine, urlInterceptor: gen_qqmlabstracturlinterceptor.QQmlAbstractUrlInterceptor): void =

  fcQQmlEngine_setUrlInterceptor(self.h, urlInterceptor.h)

proc urlInterceptor*(self: QQmlEngine, ): gen_qqmlabstracturlinterceptor.QQmlAbstractUrlInterceptor =

  gen_qqmlabstracturlinterceptor.QQmlAbstractUrlInterceptor(h: fcQQmlEngine_urlInterceptor(self.h))

proc addImageProvider*(self: QQmlEngine, id: string, param2: QQmlImageProviderBase): void =

  fcQQmlEngine_addImageProvider(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), param2.h)

proc imageProvider*(self: QQmlEngine, id: string): QQmlImageProviderBase =

  QQmlImageProviderBase(h: fcQQmlEngine_imageProvider(self.h, struct_miqt_string(data: id, len: csize_t(len(id)))))

proc removeImageProvider*(self: QQmlEngine, id: string): void =

  fcQQmlEngine_removeImageProvider(self.h, struct_miqt_string(data: id, len: csize_t(len(id))))

proc setIncubationController*(self: QQmlEngine, incubationController: gen_qqmlincubator.QQmlIncubationController): void =

  fcQQmlEngine_setIncubationController(self.h, incubationController.h)

proc incubationController*(self: QQmlEngine, ): gen_qqmlincubator.QQmlIncubationController =

  gen_qqmlincubator.QQmlIncubationController(h: fcQQmlEngine_incubationController(self.h))

proc setOfflineStoragePath*(self: QQmlEngine, dir: string): void =

  fcQQmlEngine_setOfflineStoragePath(self.h, struct_miqt_string(data: dir, len: csize_t(len(dir))))

proc offlineStoragePath*(self: QQmlEngine, ): string =

  let v_ms = fcQQmlEngine_offlineStoragePath(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc offlineStorageDatabaseFilePath*(self: QQmlEngine, databaseName: string): string =

  let v_ms = fcQQmlEngine_offlineStorageDatabaseFilePath(self.h, struct_miqt_string(data: databaseName, len: csize_t(len(databaseName))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc baseUrl*(self: QQmlEngine, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlEngine_baseUrl(self.h))

proc setBaseUrl*(self: QQmlEngine, baseUrl: gen_qurl.QUrl): void =

  fcQQmlEngine_setBaseUrl(self.h, baseUrl.h)

proc outputWarningsToStandardError*(self: QQmlEngine, ): bool =

  fcQQmlEngine_outputWarningsToStandardError(self.h)

proc setOutputWarningsToStandardError*(self: QQmlEngine, outputWarningsToStandardError: bool): void =

  fcQQmlEngine_setOutputWarningsToStandardError(self.h, outputWarningsToStandardError)

proc retranslate*(self: QQmlEngine, ): void =

  fcQQmlEngine_retranslate(self.h)

proc contextForObject*(_: type QQmlEngine, param1: gen_qobject.QObject): gen_qqmlcontext.QQmlContext =

  gen_qqmlcontext.QQmlContext(h: fcQQmlEngine_contextForObject(param1.h))

proc setContextForObject*(_: type QQmlEngine, param1: gen_qobject.QObject, param2: gen_qqmlcontext.QQmlContext): void =

  fcQQmlEngine_setContextForObject(param1.h, param2.h)

proc setObjectOwnership*(_: type QQmlEngine, param1: gen_qobject.QObject, param2: QQmlEngineObjectOwnership): void =

  fcQQmlEngine_setObjectOwnership(param1.h, cint(param2))

proc objectOwnership*(_: type QQmlEngine, param1: gen_qobject.QObject): QQmlEngineObjectOwnership =

  QQmlEngineObjectOwnership(fcQQmlEngine_objectOwnership(param1.h))

proc quit*(self: QQmlEngine, ): void =

  fcQQmlEngine_quit(self.h)

proc miqt_exec_callback_QQmlEngine_quit(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onquit*(self: QQmlEngine, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQmlEngine_connect_quit(self.h, cast[int](addr tmp[]))
proc exit*(self: QQmlEngine, retCode: cint): void =

  fcQQmlEngine_exit(self.h, retCode)

proc miqt_exec_callback_QQmlEngine_exit(slot: int, retCode: cint) {.exportc.} =
  type Cb = proc(retCode: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = retCode


  nimfunc[](slotval1)

proc onexit*(self: QQmlEngine, slot: proc(retCode: cint)) =
  type Cb = proc(retCode: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQmlEngine_connect_exit(self.h, cast[int](addr tmp[]))
proc warnings*(self: QQmlEngine, warnings: seq[gen_qqmlerror.QQmlError]): void =

  var warnings_CArray = newSeq[pointer](len(warnings))
  for i in 0..<len(warnings):
    warnings_CArray[i] = warnings[i].h

  fcQQmlEngine_warnings(self.h, struct_miqt_array(len: csize_t(len(warnings)), data: if len(warnings) == 0: nil else: addr(warnings_CArray[0])))

proc miqt_exec_callback_QQmlEngine_warnings(slot: int, warnings: struct_miqt_array) {.exportc.} =
  type Cb = proc(warnings: seq[gen_qqmlerror.QQmlError])
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vwarnings_ma = warnings
  var vwarningsx_ret = newSeq[gen_qqmlerror.QQmlError](int(vwarnings_ma.len))
  let vwarnings_outCast = cast[ptr UncheckedArray[pointer]](vwarnings_ma.data)
  for i in 0 ..< vwarnings_ma.len:
    vwarningsx_ret[i] = gen_qqmlerror.QQmlError(h: vwarnings_outCast[i])
  let slotval1 = vwarningsx_ret


  nimfunc[](slotval1)

proc onwarnings*(self: QQmlEngine, slot: proc(warnings: seq[gen_qqmlerror.QQmlError])) =
  type Cb = proc(warnings: seq[gen_qqmlerror.QQmlError])
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQmlEngine_connect_warnings(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQmlEngine, s: cstring, c: cstring): string =

  let v_ms = fcQQmlEngine_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlEngine_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlEngine, s: cstring, c: cstring): string =

  let v_ms = fcQQmlEngine_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlEngine, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlEngine_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QQmlEngine, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlEngine_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlEnginemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlEngine, slot: proc(super: QQmlEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_metacall(self: ptr cQQmlEngine, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlEngine_metacall ".} =
  type Cb = proc(super: QQmlEnginemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlEngine(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QQmlEngine, param1: gen_qcoreevent.QEvent): bool =


  fQQmlEngine_virtualbase_event(self.h, param1.h)

type QQmlEngineeventBase* = proc(param1: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlEngine, slot: proc(super: QQmlEngineeventBase, param1: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineeventBase, param1: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_event(self: ptr cQQmlEngine, slot: int, param1: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngine_event ".} =
  type Cb = proc(super: QQmlEngineeventBase, param1: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlEngine(h: self), param1)
  let slotval1 = gen_qcoreevent.QEvent(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlEngine, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlEngine_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlEngineeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlEngine, slot: proc(super: QQmlEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_eventFilter(self: ptr cQQmlEngine, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlEngine_eventFilter ".} =
  type Cb = proc(super: QQmlEngineeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlEngine(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlEngine, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlEngine_virtualbase_timerEvent(self.h, event.h)

type QQmlEnginetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlEngine, slot: proc(super: QQmlEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_timerEvent(self: ptr cQQmlEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_timerEvent ".} =
  type Cb = proc(super: QQmlEnginetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlEngine, event: gen_qcoreevent.QChildEvent): void =


  fQQmlEngine_virtualbase_childEvent(self.h, event.h)

type QQmlEnginechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlEngine, slot: proc(super: QQmlEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_childEvent(self: ptr cQQmlEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_childEvent ".} =
  type Cb = proc(super: QQmlEnginechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlEngine, event: gen_qcoreevent.QEvent): void =


  fQQmlEngine_virtualbase_customEvent(self.h, event.h)

type QQmlEnginecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlEngine, slot: proc(super: QQmlEnginecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_customEvent(self: ptr cQQmlEngine, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_customEvent ".} =
  type Cb = proc(super: QQmlEnginecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlEngine(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlEngine_virtualbase_connectNotify(self.h, signal.h)

type QQmlEngineconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlEngine, slot: proc(super: QQmlEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_connectNotify(self: ptr cQQmlEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_connectNotify ".} =
  type Cb = proc(super: QQmlEngineconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlEngine, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlEngine_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlEnginedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlEngine, slot: proc(super: QQmlEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlEngine_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlEngine_disconnectNotify(self: ptr cQQmlEngine, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlEngine_disconnectNotify ".} =
  type Cb = proc(super: QQmlEnginedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlEngine(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQmlEngine) =
  fcQQmlEngine_delete(self.h)
