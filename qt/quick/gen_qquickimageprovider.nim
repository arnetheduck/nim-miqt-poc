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
{.compile("gen_qquickimageprovider.cpp", cflags).}


import gen_qquickimageprovider_types
export gen_qquickimageprovider_types

import
  gen_qcoreevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qqmlengine,
  gen_qquickwindow,
  gen_qsgtexture,
  gen_qsize
export
  gen_qcoreevent,
  gen_qimage,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpixmap,
  gen_qqmlengine,
  gen_qquickwindow,
  gen_qsgtexture,
  gen_qsize

type cQQuickTextureFactory*{.exportc: "QQuickTextureFactory", incompleteStruct.} = object
type cQQuickImageResponse*{.exportc: "QQuickImageResponse", incompleteStruct.} = object
type cQQuickImageProvider*{.exportc: "QQuickImageProvider", incompleteStruct.} = object
type cQQuickAsyncImageProvider*{.exportc: "QQuickAsyncImageProvider", incompleteStruct.} = object

proc fcQQuickTextureFactory_new(): ptr cQQuickTextureFactory {.importc: "QQuickTextureFactory_new".}
proc fcQQuickTextureFactory_metaObject(self: pointer, ): pointer {.importc: "QQuickTextureFactory_metaObject".}
proc fcQQuickTextureFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickTextureFactory_metacast".}
proc fcQQuickTextureFactory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickTextureFactory_metacall".}
proc fcQQuickTextureFactory_tr(s: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr".}
proc fcQQuickTextureFactory_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_trUtf8".}
proc fcQQuickTextureFactory_createTexture(self: pointer, window: pointer): pointer {.importc: "QQuickTextureFactory_createTexture".}
proc fcQQuickTextureFactory_textureSize(self: pointer, ): pointer {.importc: "QQuickTextureFactory_textureSize".}
proc fcQQuickTextureFactory_textureByteCount(self: pointer, ): cint {.importc: "QQuickTextureFactory_textureByteCount".}
proc fcQQuickTextureFactory_image(self: pointer, ): pointer {.importc: "QQuickTextureFactory_image".}
proc fcQQuickTextureFactory_textureFactoryForImage(image: pointer): pointer {.importc: "QQuickTextureFactory_textureFactoryForImage".}
proc fcQQuickTextureFactory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_tr2".}
proc fcQQuickTextureFactory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextureFactory_tr3".}
proc fcQQuickTextureFactory_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickTextureFactory_trUtf82".}
proc fcQQuickTextureFactory_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickTextureFactory_trUtf83".}
proc fQQuickTextureFactory_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickTextureFactory_virtualbase_metaObject".}
proc fcQQuickTextureFactory_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_metaObject".}
proc fQQuickTextureFactory_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickTextureFactory_virtualbase_metacast".}
proc fcQQuickTextureFactory_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_metacast".}
proc fQQuickTextureFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickTextureFactory_virtualbase_metacall".}
proc fcQQuickTextureFactory_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_metacall".}
proc fcQQuickTextureFactory_override_virtual_createTexture(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_createTexture".}
proc fcQQuickTextureFactory_override_virtual_textureSize(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_textureSize".}
proc fcQQuickTextureFactory_override_virtual_textureByteCount(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_textureByteCount".}
proc fQQuickTextureFactory_virtualbase_image(self: pointer, ): pointer{.importc: "QQuickTextureFactory_virtualbase_image".}
proc fcQQuickTextureFactory_override_virtual_image(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_image".}
proc fQQuickTextureFactory_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickTextureFactory_virtualbase_event".}
proc fcQQuickTextureFactory_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_event".}
proc fQQuickTextureFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickTextureFactory_virtualbase_eventFilter".}
proc fcQQuickTextureFactory_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_eventFilter".}
proc fQQuickTextureFactory_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickTextureFactory_virtualbase_timerEvent".}
proc fcQQuickTextureFactory_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_timerEvent".}
proc fQQuickTextureFactory_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickTextureFactory_virtualbase_childEvent".}
proc fcQQuickTextureFactory_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_childEvent".}
proc fQQuickTextureFactory_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickTextureFactory_virtualbase_customEvent".}
proc fcQQuickTextureFactory_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_customEvent".}
proc fQQuickTextureFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTextureFactory_virtualbase_connectNotify".}
proc fcQQuickTextureFactory_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_connectNotify".}
proc fQQuickTextureFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickTextureFactory_virtualbase_disconnectNotify".}
proc fcQQuickTextureFactory_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickTextureFactory_override_virtual_disconnectNotify".}
proc fcQQuickTextureFactory_staticMetaObject(): pointer {.importc: "QQuickTextureFactory_staticMetaObject".}
proc fcQQuickTextureFactory_delete(self: pointer) {.importc: "QQuickTextureFactory_delete".}
proc fcQQuickImageResponse_new(): ptr cQQuickImageResponse {.importc: "QQuickImageResponse_new".}
proc fcQQuickImageResponse_metaObject(self: pointer, ): pointer {.importc: "QQuickImageResponse_metaObject".}
proc fcQQuickImageResponse_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickImageResponse_metacast".}
proc fcQQuickImageResponse_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickImageResponse_metacall".}
proc fcQQuickImageResponse_tr(s: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr".}
proc fcQQuickImageResponse_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickImageResponse_trUtf8".}
proc fcQQuickImageResponse_textureFactory(self: pointer, ): pointer {.importc: "QQuickImageResponse_textureFactory".}
proc fcQQuickImageResponse_errorString(self: pointer, ): struct_miqt_string {.importc: "QQuickImageResponse_errorString".}
proc fcQQuickImageResponse_cancel(self: pointer, ): void {.importc: "QQuickImageResponse_cancel".}
proc fcQQuickImageResponse_finished(self: pointer, ): void {.importc: "QQuickImageResponse_finished".}
proc fQQuickImageResponse_connect_finished(self: pointer, slot: int) {.importc: "QQuickImageResponse_connect_finished".}
proc fcQQuickImageResponse_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageResponse_tr2".}
proc fcQQuickImageResponse_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageResponse_tr3".}
proc fcQQuickImageResponse_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickImageResponse_trUtf82".}
proc fcQQuickImageResponse_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickImageResponse_trUtf83".}
proc fQQuickImageResponse_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickImageResponse_virtualbase_metaObject".}
proc fcQQuickImageResponse_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_metaObject".}
proc fQQuickImageResponse_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickImageResponse_virtualbase_metacast".}
proc fcQQuickImageResponse_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_metacast".}
proc fQQuickImageResponse_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickImageResponse_virtualbase_metacall".}
proc fcQQuickImageResponse_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_metacall".}
proc fcQQuickImageResponse_override_virtual_textureFactory(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_textureFactory".}
proc fQQuickImageResponse_virtualbase_errorString(self: pointer, ): struct_miqt_string{.importc: "QQuickImageResponse_virtualbase_errorString".}
proc fcQQuickImageResponse_override_virtual_errorString(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_errorString".}
proc fQQuickImageResponse_virtualbase_cancel(self: pointer, ): void{.importc: "QQuickImageResponse_virtualbase_cancel".}
proc fcQQuickImageResponse_override_virtual_cancel(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_cancel".}
proc fQQuickImageResponse_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickImageResponse_virtualbase_event".}
proc fcQQuickImageResponse_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_event".}
proc fQQuickImageResponse_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickImageResponse_virtualbase_eventFilter".}
proc fcQQuickImageResponse_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_eventFilter".}
proc fQQuickImageResponse_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQuickImageResponse_virtualbase_timerEvent".}
proc fcQQuickImageResponse_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_timerEvent".}
proc fQQuickImageResponse_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickImageResponse_virtualbase_childEvent".}
proc fcQQuickImageResponse_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_childEvent".}
proc fQQuickImageResponse_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickImageResponse_virtualbase_customEvent".}
proc fcQQuickImageResponse_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_customEvent".}
proc fQQuickImageResponse_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickImageResponse_virtualbase_connectNotify".}
proc fcQQuickImageResponse_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_connectNotify".}
proc fQQuickImageResponse_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickImageResponse_virtualbase_disconnectNotify".}
proc fcQQuickImageResponse_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickImageResponse_override_virtual_disconnectNotify".}
proc fcQQuickImageResponse_staticMetaObject(): pointer {.importc: "QQuickImageResponse_staticMetaObject".}
proc fcQQuickImageResponse_delete(self: pointer) {.importc: "QQuickImageResponse_delete".}
proc fcQQuickImageProvider_new(typeVal: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new".}
proc fcQQuickImageProvider_new2(param1: pointer): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new2".}
proc fcQQuickImageProvider_new3(typeVal: cint, flags: cint): ptr cQQuickImageProvider {.importc: "QQuickImageProvider_new3".}
proc fcQQuickImageProvider_imageType(self: pointer, ): cint {.importc: "QQuickImageProvider_imageType".}
proc fcQQuickImageProvider_flags(self: pointer, ): cint {.importc: "QQuickImageProvider_flags".}
proc fcQQuickImageProvider_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestImage".}
proc fcQQuickImageProvider_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestPixmap".}
proc fcQQuickImageProvider_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.importc: "QQuickImageProvider_requestTexture".}
proc fQQuickImageProvider_virtualbase_imageType(self: pointer, ): cint{.importc: "QQuickImageProvider_virtualbase_imageType".}
proc fcQQuickImageProvider_override_virtual_imageType(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_imageType".}
proc fQQuickImageProvider_virtualbase_flags(self: pointer, ): cint{.importc: "QQuickImageProvider_virtualbase_flags".}
proc fcQQuickImageProvider_override_virtual_flags(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_flags".}
proc fQQuickImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickImageProvider_virtualbase_requestImage".}
proc fcQQuickImageProvider_override_virtual_requestImage(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_requestImage".}
proc fQQuickImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickImageProvider_virtualbase_requestPixmap".}
proc fcQQuickImageProvider_override_virtual_requestPixmap(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_requestPixmap".}
proc fQQuickImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickImageProvider_virtualbase_requestTexture".}
proc fcQQuickImageProvider_override_virtual_requestTexture(self: pointer, slot: int) {.importc: "QQuickImageProvider_override_virtual_requestTexture".}
proc fcQQuickImageProvider_delete(self: pointer) {.importc: "QQuickImageProvider_delete".}
proc fcQQuickAsyncImageProvider_new(): ptr cQQuickAsyncImageProvider {.importc: "QQuickAsyncImageProvider_new".}
proc fcQQuickAsyncImageProvider_new2(param1: pointer): ptr cQQuickAsyncImageProvider {.importc: "QQuickAsyncImageProvider_new2".}
proc fcQQuickAsyncImageProvider_requestImageResponse(self: pointer, id: struct_miqt_string, requestedSize: pointer): pointer {.importc: "QQuickAsyncImageProvider_requestImageResponse".}
proc fcQQuickAsyncImageProvider_override_virtual_requestImageResponse(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestImageResponse".}
proc fQQuickAsyncImageProvider_virtualbase_imageType(self: pointer, ): cint{.importc: "QQuickAsyncImageProvider_virtualbase_imageType".}
proc fcQQuickAsyncImageProvider_override_virtual_imageType(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_imageType".}
proc fQQuickAsyncImageProvider_virtualbase_flags(self: pointer, ): cint{.importc: "QQuickAsyncImageProvider_virtualbase_flags".}
proc fcQQuickAsyncImageProvider_override_virtual_flags(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_flags".}
proc fQQuickAsyncImageProvider_virtualbase_requestImage(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickAsyncImageProvider_virtualbase_requestImage".}
proc fcQQuickAsyncImageProvider_override_virtual_requestImage(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestImage".}
proc fQQuickAsyncImageProvider_virtualbase_requestPixmap(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickAsyncImageProvider_virtualbase_requestPixmap".}
proc fcQQuickAsyncImageProvider_override_virtual_requestPixmap(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestPixmap".}
proc fQQuickAsyncImageProvider_virtualbase_requestTexture(self: pointer, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer{.importc: "QQuickAsyncImageProvider_virtualbase_requestTexture".}
proc fcQQuickAsyncImageProvider_override_virtual_requestTexture(self: pointer, slot: int) {.importc: "QQuickAsyncImageProvider_override_virtual_requestTexture".}
proc fcQQuickAsyncImageProvider_delete(self: pointer) {.importc: "QQuickAsyncImageProvider_delete".}


func init*(T: type gen_qquickimageprovider_types.QQuickTextureFactory, h: ptr cQQuickTextureFactory): gen_qquickimageprovider_types.QQuickTextureFactory =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qquickimageprovider_types.QQuickTextureFactory =

  gen_qquickimageprovider_types.QQuickTextureFactory.init(fcQQuickTextureFactory_new())
proc metaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickTextureFactory_metaObject(self.h))

proc metacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cstring): pointer =

  fcQQuickTextureFactory_metacast(self.h, param1)

proc metacall*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint =

  fcQQuickTextureFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring): string =

  let v_ms = fcQQuickTextureFactory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring): string =

  let v_ms = fcQQuickTextureFactory_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTexture*(self: gen_qquickimageprovider_types.QQuickTextureFactory, window: gen_qquickwindow.QQuickWindow): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickTextureFactory_createTexture(self.h, window.h))

proc textureSize*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQQuickTextureFactory_textureSize(self.h))

proc textureByteCount*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): cint =

  fcQQuickTextureFactory_textureByteCount(self.h)

proc image*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQQuickTextureFactory_image(self.h))

proc textureFactoryForImage*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, image: gen_qimage.QImage): gen_qquickimageprovider_types.QQuickTextureFactory =

  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickTextureFactory_textureFactoryForImage(image.h))

proc tr2*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTextureFactory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTextureFactory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTextureFactory_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qquickimageprovider_types.QQuickTextureFactory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTextureFactory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQuickTextureFactorymetaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQQuickTextureFactory_virtualbase_metaObject(self.h))

type QQuickTextureFactorymetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorymetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorymetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_metaObject(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_metaObject ".} =
  var nimfunc = cast[ptr QQuickTextureFactorymetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickTextureFactorymetacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cstring): pointer =

  fQQuickTextureFactory_virtualbase_metacast(self.h, param1)

type QQuickTextureFactorymetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorymetacastProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorymetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_metacast(self: ptr cQQuickTextureFactory, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_metacast ".} =
  var nimfunc = cast[ptr QQuickTextureFactorymetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickTextureFactorymetacall*(self: gen_qquickimageprovider_types.QQuickTextureFactory, param1: cint, param2: cint, param3: pointer): cint =

  fQQuickTextureFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickTextureFactorymetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorymetacallProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorymetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_metacall(self: ptr cQQuickTextureFactory, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickTextureFactory_metacall ".} =
  var nimfunc = cast[ptr QQuickTextureFactorymetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickTextureFactorycreateTextureProc* = proc(window: gen_qquickwindow.QQuickWindow): gen_qsgtexture.QSGTexture
proc oncreateTexture*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorycreateTextureProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorycreateTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_createTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_createTexture(self: ptr cQQuickTextureFactory, slot: int, window: pointer): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_createTexture ".} =
  var nimfunc = cast[ptr QQuickTextureFactorycreateTextureProc](cast[pointer](slot))
  let slotval1 = gen_qquickwindow.QQuickWindow(h: window)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QQuickTextureFactorytextureSizeProc* = proc(): gen_qsize.QSize
proc ontextureSize*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorytextureSizeProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorytextureSizeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_textureSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_textureSize(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_textureSize ".} =
  var nimfunc = cast[ptr QQuickTextureFactorytextureSizeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QQuickTextureFactorytextureByteCountProc* = proc(): cint
proc ontextureByteCount*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorytextureByteCountProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorytextureByteCountProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_textureByteCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_textureByteCount(self: ptr cQQuickTextureFactory, slot: int): cint {.exportc: "miqt_exec_callback_QQuickTextureFactory_textureByteCount ".} =
  var nimfunc = cast[ptr QQuickTextureFactorytextureByteCountProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc QQuickTextureFactoryimage*(self: gen_qquickimageprovider_types.QQuickTextureFactory, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fQQuickTextureFactory_virtualbase_image(self.h))

type QQuickTextureFactoryimageProc* = proc(): gen_qimage.QImage
proc onimage*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryimageProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryimageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_image(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_image(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_image ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryimageProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickTextureFactoryevent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent.QEvent): bool =

  fQQuickTextureFactory_virtualbase_event(self.h, event.h)

type QQuickTextureFactoryeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryeventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_event(self: ptr cQQuickTextureFactory, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextureFactory_event ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickTextureFactoryeventFilter*(self: gen_qquickimageprovider_types.QQuickTextureFactory, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQQuickTextureFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickTextureFactoryeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_eventFilter(self: ptr cQQuickTextureFactory, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextureFactory_eventFilter ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickTextureFactorytimerEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent.QTimerEvent): void =

  fQQuickTextureFactory_virtualbase_timerEvent(self.h, event.h)

type QQuickTextureFactorytimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorytimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorytimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_timerEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_timerEvent ".} =
  var nimfunc = cast[ptr QQuickTextureFactorytimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextureFactorychildEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent.QChildEvent): void =

  fQQuickTextureFactory_virtualbase_childEvent(self.h, event.h)

type QQuickTextureFactorychildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorychildEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorychildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_childEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_childEvent ".} =
  var nimfunc = cast[ptr QQuickTextureFactorychildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextureFactorycustomEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, event: gen_qcoreevent.QEvent): void =

  fQQuickTextureFactory_virtualbase_customEvent(self.h, event.h)

type QQuickTextureFactorycustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorycustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorycustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_customEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_customEvent ".} =
  var nimfunc = cast[ptr QQuickTextureFactorycustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickTextureFactoryconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject.QMetaMethod): void =

  fQQuickTextureFactory_virtualbase_connectNotify(self.h, signal.h)

type QQuickTextureFactoryconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactoryconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactoryconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_connectNotify(self: ptr cQQuickTextureFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_connectNotify ".} =
  var nimfunc = cast[ptr QQuickTextureFactoryconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickTextureFactorydisconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, signal: gen_qmetaobject.QMetaMethod): void =

  fQQuickTextureFactory_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickTextureFactorydisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickimageprovider_types.QQuickTextureFactory, slot: QQuickTextureFactorydisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickTextureFactorydisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_disconnectNotify(self: ptr cQQuickTextureFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickTextureFactorydisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickimageprovider_types.QQuickTextureFactory): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickTextureFactory_staticMetaObject())
proc delete*(self: gen_qquickimageprovider_types.QQuickTextureFactory) =
  fcQQuickTextureFactory_delete(self.h)

func init*(T: type gen_qquickimageprovider_types.QQuickImageResponse, h: ptr cQQuickImageResponse): gen_qquickimageprovider_types.QQuickImageResponse =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qquickimageprovider_types.QQuickImageResponse =

  gen_qquickimageprovider_types.QQuickImageResponse.init(fcQQuickImageResponse_new())
proc metaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickImageResponse_metaObject(self.h))

proc metacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cstring): pointer =

  fcQQuickImageResponse_metacast(self.h, param1)

proc metacall*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint =

  fcQQuickImageResponse_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring): string =

  let v_ms = fcQQuickImageResponse_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring): string =

  let v_ms = fcQQuickImageResponse_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureFactory*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qquickimageprovider_types.QQuickTextureFactory =

  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageResponse_textureFactory(self.h))

proc errorString*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): string =

  let v_ms = fcQQuickImageResponse_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cancel*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): void =

  fcQQuickImageResponse_cancel(self.h)

proc finished*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): void =

  fcQQuickImageResponse_finished(self.h)

proc miqt_exec_callback_QQuickImageResponse_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickImageResponse_connect_finished(self.h, cast[int](addr tmp[]))
proc tr2*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring): string =

  let v_ms = fcQQuickImageResponse_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickImageResponse_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring): string =

  let v_ms = fcQQuickImageResponse_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type gen_qquickimageprovider_types.QQuickImageResponse, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickImageResponse_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQuickImageResponsemetaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fQQuickImageResponse_virtualbase_metaObject(self.h))

type QQuickImageResponsemetaObjectProc* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsemetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsemetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_metaObject(self: ptr cQQuickImageResponse, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickImageResponse_metaObject ".} =
  var nimfunc = cast[ptr QQuickImageResponsemetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickImageResponsemetacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cstring): pointer =

  fQQuickImageResponse_virtualbase_metacast(self.h, param1)

type QQuickImageResponsemetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsemetacastProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsemetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_metacast(self: ptr cQQuickImageResponse, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickImageResponse_metacast ".} =
  var nimfunc = cast[ptr QQuickImageResponsemetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickImageResponsemetacall*(self: gen_qquickimageprovider_types.QQuickImageResponse, param1: cint, param2: cint, param3: pointer): cint =

  fQQuickImageResponse_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickImageResponsemetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsemetacallProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsemetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_metacall(self: ptr cQQuickImageResponse, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickImageResponse_metacall ".} =
  var nimfunc = cast[ptr QQuickImageResponsemetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickImageResponsetextureFactoryProc* = proc(): gen_qquickimageprovider_types.QQuickTextureFactory
proc ontextureFactory*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsetextureFactoryProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsetextureFactoryProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_textureFactory(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_textureFactory(self: ptr cQQuickImageResponse, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickImageResponse_textureFactory ".} =
  var nimfunc = cast[ptr QQuickImageResponsetextureFactoryProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickImageResponseerrorString*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): string =

  let v_ms = fQQuickImageResponse_virtualbase_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQuickImageResponseerrorStringProc* = proc(): string
proc onerrorString*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseerrorStringProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseerrorStringProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_errorString(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_errorString(self: ptr cQQuickImageResponse, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QQuickImageResponse_errorString ".} =
  var nimfunc = cast[ptr QQuickImageResponseerrorStringProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc QQuickImageResponsecancel*(self: gen_qquickimageprovider_types.QQuickImageResponse, ): void =

  fQQuickImageResponse_virtualbase_cancel(self.h)

type QQuickImageResponsecancelProc* = proc(): void
proc oncancel*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsecancelProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsecancelProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_cancel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_cancel(self: ptr cQQuickImageResponse, slot: int): void {.exportc: "miqt_exec_callback_QQuickImageResponse_cancel ".} =
  var nimfunc = cast[ptr QQuickImageResponsecancelProc](cast[pointer](slot))

  nimfunc[]()
proc QQuickImageResponseevent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent.QEvent): bool =

  fQQuickImageResponse_virtualbase_event(self.h, event.h)

type QQuickImageResponseeventProc* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseeventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseeventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_event(self: ptr cQQuickImageResponse, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageResponse_event ".} =
  var nimfunc = cast[ptr QQuickImageResponseeventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickImageResponseeventFilter*(self: gen_qquickimageprovider_types.QQuickImageResponse, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =

  fQQuickImageResponse_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickImageResponseeventFilterProc* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseeventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseeventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_eventFilter(self: ptr cQQuickImageResponse, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageResponse_eventFilter ".} =
  var nimfunc = cast[ptr QQuickImageResponseeventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickImageResponsetimerEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent.QTimerEvent): void =

  fQQuickImageResponse_virtualbase_timerEvent(self.h, event.h)

type QQuickImageResponsetimerEventProc* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsetimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsetimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_timerEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_timerEvent ".} =
  var nimfunc = cast[ptr QQuickImageResponsetimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageResponsechildEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent.QChildEvent): void =

  fQQuickImageResponse_virtualbase_childEvent(self.h, event.h)

type QQuickImageResponsechildEventProc* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsechildEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsechildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_childEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_childEvent ".} =
  var nimfunc = cast[ptr QQuickImageResponsechildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageResponsecustomEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, event: gen_qcoreevent.QEvent): void =

  fQQuickImageResponse_virtualbase_customEvent(self.h, event.h)

type QQuickImageResponsecustomEventProc* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsecustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsecustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_customEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_customEvent ".} =
  var nimfunc = cast[ptr QQuickImageResponsecustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickImageResponseconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject.QMetaMethod): void =

  fQQuickImageResponse_virtualbase_connectNotify(self.h, signal.h)

type QQuickImageResponseconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponseconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponseconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_connectNotify(self: ptr cQQuickImageResponse, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_connectNotify ".} =
  var nimfunc = cast[ptr QQuickImageResponseconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickImageResponsedisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, signal: gen_qmetaobject.QMetaMethod): void =

  fQQuickImageResponse_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickImageResponsedisconnectNotifyProc* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickimageprovider_types.QQuickImageResponse, slot: QQuickImageResponsedisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickImageResponsedisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_disconnectNotify(self: ptr cQQuickImageResponse, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickImageResponsedisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickimageprovider_types.QQuickImageResponse): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickImageResponse_staticMetaObject())
proc delete*(self: gen_qquickimageprovider_types.QQuickImageResponse) =
  fcQQuickImageResponse_delete(self.h)

func init*(T: type gen_qquickimageprovider_types.QQuickImageProvider, h: ptr cQQuickImageProvider): gen_qquickimageprovider_types.QQuickImageProvider =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider, typeVal: cint): gen_qquickimageprovider_types.QQuickImageProvider =

  gen_qquickimageprovider_types.QQuickImageProvider.init(fcQQuickImageProvider_new(cint(typeVal)))
proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider, param1: gen_qquickimageprovider_types.QQuickImageProvider): gen_qquickimageprovider_types.QQuickImageProvider =

  gen_qquickimageprovider_types.QQuickImageProvider.init(fcQQuickImageProvider_new2(param1.h))
proc create*(T: type gen_qquickimageprovider_types.QQuickImageProvider, typeVal: cint, flags: cint): gen_qquickimageprovider_types.QQuickImageProvider =

  gen_qquickimageprovider_types.QQuickImageProvider.init(fcQQuickImageProvider_new3(cint(typeVal), cint(flags)))
proc imageType*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =

  cint(fcQQuickImageProvider_imageType(self.h))

proc flags*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =

  cint(fcQQuickImageProvider_flags(self.h))

proc requestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQQuickImageProvider_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc requestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQQuickImageProvider_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc requestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =

  gen_qquickimageprovider_types.QQuickTextureFactory(h: fcQQuickImageProvider_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc QQuickImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =

  cint(fQQuickImageProvider_virtualbase_imageType(self.h))

type QQuickImageProviderimageTypeProc* = proc(): cint
proc onimageType*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderimageTypeProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderimageTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_imageType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_imageType(self: ptr cQQuickImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickImageProvider_imageType ".} =
  var nimfunc = cast[ptr QQuickImageProviderimageTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickImageProviderflags*(self: gen_qquickimageprovider_types.QQuickImageProvider, ): cint =

  cint(fQQuickImageProvider_virtualbase_flags(self.h))

type QQuickImageProviderflagsProc* = proc(): cint
proc onflags*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderflagsProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_flags(self: ptr cQQuickImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickImageProvider_flags ".} =
  var nimfunc = cast[ptr QQuickImageProviderflagsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage =

  gen_qimage.QImage(h: fQQuickImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestImageProc* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
proc onrequestImage*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderrequestImageProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderrequestImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestImage(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestImage ".} =
  var nimfunc = cast[ptr QQuickImageProviderrequestImageProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fQQuickImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestPixmapProc* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
proc onrequestPixmap*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderrequestPixmapProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderrequestPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestPixmap(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestPixmap ".} =
  var nimfunc = cast[ptr QQuickImageProviderrequestPixmapProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =

  gen_qquickimageprovider_types.QQuickTextureFactory(h: fQQuickImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestTextureProc* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qquickimageprovider_types.QQuickTextureFactory
proc onrequestTexture*(self: gen_qquickimageprovider_types.QQuickImageProvider, slot: QQuickImageProviderrequestTextureProc) =
  # TODO check subclass
  var tmp = new QQuickImageProviderrequestTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestTexture(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestTexture ".} =
  var nimfunc = cast[ptr QQuickImageProviderrequestTextureProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc delete*(self: gen_qquickimageprovider_types.QQuickImageProvider) =
  fcQQuickImageProvider_delete(self.h)

func init*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider, h: ptr cQQuickAsyncImageProvider): gen_qquickimageprovider_types.QQuickAsyncImageProvider =
  T(h: h)
proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): gen_qquickimageprovider_types.QQuickAsyncImageProvider =

  gen_qquickimageprovider_types.QQuickAsyncImageProvider.init(fcQQuickAsyncImageProvider_new())
proc create*(T: type gen_qquickimageprovider_types.QQuickAsyncImageProvider, param1: gen_qquickimageprovider_types.QQuickAsyncImageProvider): gen_qquickimageprovider_types.QQuickAsyncImageProvider =

  gen_qquickimageprovider_types.QQuickAsyncImageProvider.init(fcQQuickAsyncImageProvider_new2(param1.h))
proc requestImageResponse*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, requestedSize: gen_qsize.QSize): gen_qquickimageprovider_types.QQuickImageResponse =

  gen_qquickimageprovider_types.QQuickImageResponse(h: fcQQuickAsyncImageProvider_requestImageResponse(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), requestedSize.h))

type QQuickAsyncImageProviderrequestImageResponseProc* = proc(id: string, requestedSize: gen_qsize.QSize): gen_qquickimageprovider_types.QQuickImageResponse
proc onrequestImageResponse*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestImageResponseProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestImageResponseProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestImageResponse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestImageResponseProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc QQuickAsyncImageProviderimageType*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): cint =

  cint(fQQuickAsyncImageProvider_virtualbase_imageType(self.h))

type QQuickAsyncImageProviderimageTypeProc* = proc(): cint
proc onimageType*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderimageTypeProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderimageTypeProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_imageType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_imageType(self: ptr cQQuickAsyncImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_imageType ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderimageTypeProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickAsyncImageProviderflags*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, ): cint =

  cint(fQQuickAsyncImageProvider_virtualbase_flags(self.h))

type QQuickAsyncImageProviderflagsProc* = proc(): cint
proc onflags*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderflagsProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderflagsProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_flags(self: ptr cQQuickAsyncImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_flags ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderflagsProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  cint(virtualReturn)
proc QQuickAsyncImageProviderrequestImage*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage =

  gen_qimage.QImage(h: fQQuickAsyncImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestImageProc* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
proc onrequestImage*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestImageProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestImageProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestImage(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestImage ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestImageProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickAsyncImageProviderrequestPixmap*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fQQuickAsyncImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestPixmapProc* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
proc onrequestPixmap*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestPixmapProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestPixmapProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestPixmapProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc QQuickAsyncImageProviderrequestTexture*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qquickimageprovider_types.QQuickTextureFactory =

  gen_qquickimageprovider_types.QQuickTextureFactory(h: fQQuickAsyncImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestTextureProc* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qquickimageprovider_types.QQuickTextureFactory
proc onrequestTexture*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider, slot: QQuickAsyncImageProviderrequestTextureProc) =
  # TODO check subclass
  var tmp = new QQuickAsyncImageProviderrequestTextureProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestTexture(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestTexture ".} =
  var nimfunc = cast[ptr QQuickAsyncImageProviderrequestTextureProc](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn.h
proc delete*(self: gen_qquickimageprovider_types.QQuickAsyncImageProvider) =
  fcQQuickAsyncImageProvider_delete(self.h)
