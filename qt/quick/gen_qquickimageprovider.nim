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


func init*(T: type QQuickTextureFactory, h: ptr cQQuickTextureFactory): QQuickTextureFactory =
  T(h: h)
proc create*(T: type QQuickTextureFactory, ): QQuickTextureFactory =

  QQuickTextureFactory.init(fcQQuickTextureFactory_new())
proc metaObject*(self: QQuickTextureFactory, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickTextureFactory_metaObject(self.h))

proc metacast*(self: QQuickTextureFactory, param1: cstring): pointer =

  fcQQuickTextureFactory_metacast(self.h, param1)

proc metacall*(self: QQuickTextureFactory, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickTextureFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickTextureFactory, s: cstring): string =

  let v_ms = fcQQuickTextureFactory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickTextureFactory, s: cstring): string =

  let v_ms = fcQQuickTextureFactory_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createTexture*(self: QQuickTextureFactory, window: gen_qquickwindow.QQuickWindow): gen_qsgtexture.QSGTexture =

  gen_qsgtexture.QSGTexture(h: fcQQuickTextureFactory_createTexture(self.h, window.h))

proc textureSize*(self: QQuickTextureFactory, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQQuickTextureFactory_textureSize(self.h))

proc textureByteCount*(self: QQuickTextureFactory, ): cint =

  fcQQuickTextureFactory_textureByteCount(self.h)

proc image*(self: QQuickTextureFactory, ): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQQuickTextureFactory_image(self.h))

proc textureFactoryForImage*(_: type QQuickTextureFactory, image: gen_qimage.QImage): QQuickTextureFactory =

  QQuickTextureFactory(h: fcQQuickTextureFactory_textureFactoryForImage(image.h))

proc tr2*(_: type QQuickTextureFactory, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTextureFactory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickTextureFactory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTextureFactory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickTextureFactory, s: cstring, c: cstring): string =

  let v_ms = fcQQuickTextureFactory_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickTextureFactory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickTextureFactory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QQuickTextureFactory, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQuickTextureFactory_virtualbase_metaObject(self.h))

type QQuickTextureFactorymetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactorymetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactorymetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_metaObject(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_metaObject ".} =
  type Cb = proc(super: QQuickTextureFactorymetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQuickTextureFactory(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQuickTextureFactory, param1: cstring): pointer =


  fQQuickTextureFactory_virtualbase_metacast(self.h, param1)

type QQuickTextureFactorymetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactorymetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactorymetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_metacast(self: ptr cQQuickTextureFactory, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_metacast ".} =
  type Cb = proc(super: QQuickTextureFactorymetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQuickTextureFactory(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQuickTextureFactory, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickTextureFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickTextureFactorymetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_metacall(self: ptr cQQuickTextureFactory, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickTextureFactory_metacall ".} =
  type Cb = proc(super: QQuickTextureFactorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickTextureFactory(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickTextureFactorycreateTextureBase* = proc(window: gen_qquickwindow.QQuickWindow): gen_qsgtexture.QSGTexture
proc oncreateTexture*(self: QQuickTextureFactory, slot: proc(window: gen_qquickwindow.QQuickWindow): gen_qsgtexture.QSGTexture) =
  # TODO check subclass
  type Cb = proc(window: gen_qquickwindow.QQuickWindow): gen_qsgtexture.QSGTexture
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_createTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_createTexture(self: ptr cQQuickTextureFactory, slot: int, window: pointer): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_createTexture ".} =
  type Cb = proc(window: gen_qquickwindow.QQuickWindow): gen_qsgtexture.QSGTexture
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qquickwindow.QQuickWindow(h: window)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QQuickTextureFactorytextureSizeBase* = proc(): gen_qsize.QSize
proc ontextureSize*(self: QQuickTextureFactory, slot: proc(): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_textureSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_textureSize(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_textureSize ".} =
  type Cb = proc(): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QQuickTextureFactorytextureByteCountBase* = proc(): cint
proc ontextureByteCount*(self: QQuickTextureFactory, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_textureByteCount(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_textureByteCount(self: ptr cQQuickTextureFactory, slot: int): cint {.exportc: "miqt_exec_callback_QQuickTextureFactory_textureByteCount ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_image(self: QQuickTextureFactory, ): gen_qimage.QImage =


  gen_qimage.QImage(h: fQQuickTextureFactory_virtualbase_image(self.h))

type QQuickTextureFactoryimageBase* = proc(): gen_qimage.QImage
proc onimage*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactoryimageBase): gen_qimage.QImage) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactoryimageBase): gen_qimage.QImage
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_image(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_image(self: ptr cQQuickTextureFactory, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickTextureFactory_image ".} =
  type Cb = proc(super: QQuickTextureFactoryimageBase): gen_qimage.QImage
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_image(QQuickTextureFactory(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_event(self: QQuickTextureFactory, event: gen_qcoreevent.QEvent): bool =


  fQQuickTextureFactory_virtualbase_event(self.h, event.h)

type QQuickTextureFactoryeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactoryeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactoryeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_event(self: ptr cQQuickTextureFactory, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextureFactory_event ".} =
  type Cb = proc(super: QQuickTextureFactoryeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickTextureFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQuickTextureFactory, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickTextureFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickTextureFactoryeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_eventFilter(self: ptr cQQuickTextureFactory, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickTextureFactory_eventFilter ".} =
  type Cb = proc(super: QQuickTextureFactoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickTextureFactory(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickTextureFactory, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickTextureFactory_virtualbase_timerEvent(self.h, event.h)

type QQuickTextureFactorytimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_timerEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_timerEvent ".} =
  type Cb = proc(super: QQuickTextureFactorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickTextureFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickTextureFactory, event: gen_qcoreevent.QChildEvent): void =


  fQQuickTextureFactory_virtualbase_childEvent(self.h, event.h)

type QQuickTextureFactorychildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactorychildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactorychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_childEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_childEvent ".} =
  type Cb = proc(super: QQuickTextureFactorychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickTextureFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickTextureFactory, event: gen_qcoreevent.QEvent): void =


  fQQuickTextureFactory_virtualbase_customEvent(self.h, event.h)

type QQuickTextureFactorycustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactorycustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactorycustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_customEvent(self: ptr cQQuickTextureFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_customEvent ".} =
  type Cb = proc(super: QQuickTextureFactorycustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickTextureFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickTextureFactory, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickTextureFactory_virtualbase_connectNotify(self.h, signal.h)

type QQuickTextureFactoryconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_connectNotify(self: ptr cQQuickTextureFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_connectNotify ".} =
  type Cb = proc(super: QQuickTextureFactoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickTextureFactory(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickTextureFactory, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickTextureFactory_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickTextureFactorydisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickTextureFactory, slot: proc(super: QQuickTextureFactorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickTextureFactorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickTextureFactory_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickTextureFactory_disconnectNotify(self: ptr cQQuickTextureFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickTextureFactory_disconnectNotify ".} =
  type Cb = proc(super: QQuickTextureFactorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickTextureFactory(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQuickTextureFactory): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickTextureFactory_staticMetaObject())
proc delete*(self: QQuickTextureFactory) =
  fcQQuickTextureFactory_delete(self.h)

func init*(T: type QQuickImageResponse, h: ptr cQQuickImageResponse): QQuickImageResponse =
  T(h: h)
proc create*(T: type QQuickImageResponse, ): QQuickImageResponse =

  QQuickImageResponse.init(fcQQuickImageResponse_new())
proc metaObject*(self: QQuickImageResponse, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQuickImageResponse_metaObject(self.h))

proc metacast*(self: QQuickImageResponse, param1: cstring): pointer =

  fcQQuickImageResponse_metacast(self.h, param1)

proc metacall*(self: QQuickImageResponse, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQuickImageResponse_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQuickImageResponse, s: cstring): string =

  let v_ms = fcQQuickImageResponse_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQuickImageResponse, s: cstring): string =

  let v_ms = fcQQuickImageResponse_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureFactory*(self: QQuickImageResponse, ): QQuickTextureFactory =

  QQuickTextureFactory(h: fcQQuickImageResponse_textureFactory(self.h))

proc errorString*(self: QQuickImageResponse, ): string =

  let v_ms = fcQQuickImageResponse_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc cancel*(self: QQuickImageResponse, ): void =

  fcQQuickImageResponse_cancel(self.h)

proc finished*(self: QQuickImageResponse, ): void =

  fcQQuickImageResponse_finished(self.h)

proc miqt_exec_callback_QQuickImageResponse_finished(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onfinished*(self: QQuickImageResponse, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQuickImageResponse_connect_finished(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQuickImageResponse, s: cstring, c: cstring): string =

  let v_ms = fcQQuickImageResponse_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQuickImageResponse, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickImageResponse_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQuickImageResponse, s: cstring, c: cstring): string =

  let v_ms = fcQQuickImageResponse_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQuickImageResponse, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQuickImageResponse_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QQuickImageResponse, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQQuickImageResponse_virtualbase_metaObject(self.h))

type QQuickImageResponsemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_metaObject(self: ptr cQQuickImageResponse, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickImageResponse_metaObject ".} =
  type Cb = proc(super: QQuickImageResponsemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QQuickImageResponse(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QQuickImageResponse, param1: cstring): pointer =


  fQQuickImageResponse_virtualbase_metacast(self.h, param1)

type QQuickImageResponsemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_metacast(self: ptr cQQuickImageResponse, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickImageResponse_metacast ".} =
  type Cb = proc(super: QQuickImageResponsemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QQuickImageResponse(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QQuickImageResponse, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQuickImageResponse_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickImageResponsemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_metacall(self: ptr cQQuickImageResponse, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickImageResponse_metacall ".} =
  type Cb = proc(super: QQuickImageResponsemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQuickImageResponse(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QQuickImageResponsetextureFactoryBase* = proc(): QQuickTextureFactory
proc ontextureFactory*(self: QQuickImageResponse, slot: proc(): QQuickTextureFactory) =
  # TODO check subclass
  type Cb = proc(): QQuickTextureFactory
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_textureFactory(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_textureFactory(self: ptr cQQuickImageResponse, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickImageResponse_textureFactory ".} =
  type Cb = proc(): QQuickTextureFactory
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc callVirtualBase_errorString(self: QQuickImageResponse, ): string =


  let v_ms = fQQuickImageResponse_virtualbase_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QQuickImageResponseerrorStringBase* = proc(): string
proc onerrorString*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponseerrorStringBase): string) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponseerrorStringBase): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_errorString(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_errorString(self: ptr cQQuickImageResponse, slot: int): struct_miqt_string {.exportc: "miqt_exec_callback_QQuickImageResponse_errorString ".} =
  type Cb = proc(super: QQuickImageResponseerrorStringBase): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_errorString(QQuickImageResponse(h: self), )

  let virtualReturn = nimfunc[](superCall )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_cancel(self: QQuickImageResponse, ): void =


  fQQuickImageResponse_virtualbase_cancel(self.h)

type QQuickImageResponsecancelBase* = proc(): void
proc oncancel*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsecancelBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsecancelBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_cancel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_cancel(self: ptr cQQuickImageResponse, slot: int): void {.exportc: "miqt_exec_callback_QQuickImageResponse_cancel ".} =
  type Cb = proc(super: QQuickImageResponsecancelBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_cancel(QQuickImageResponse(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QQuickImageResponse, event: gen_qcoreevent.QEvent): bool =


  fQQuickImageResponse_virtualbase_event(self.h, event.h)

type QQuickImageResponseeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponseeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponseeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_event(self: ptr cQQuickImageResponse, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageResponse_event ".} =
  type Cb = proc(super: QQuickImageResponseeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQuickImageResponse(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQuickImageResponse, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQuickImageResponse_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickImageResponseeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponseeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponseeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_eventFilter(self: ptr cQQuickImageResponse, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickImageResponse_eventFilter ".} =
  type Cb = proc(super: QQuickImageResponseeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQuickImageResponse(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQuickImageResponse, event: gen_qcoreevent.QTimerEvent): void =


  fQQuickImageResponse_virtualbase_timerEvent(self.h, event.h)

type QQuickImageResponsetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_timerEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_timerEvent ".} =
  type Cb = proc(super: QQuickImageResponsetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQuickImageResponse(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQuickImageResponse, event: gen_qcoreevent.QChildEvent): void =


  fQQuickImageResponse_virtualbase_childEvent(self.h, event.h)

type QQuickImageResponsechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_childEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_childEvent ".} =
  type Cb = proc(super: QQuickImageResponsechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQuickImageResponse(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQuickImageResponse, event: gen_qcoreevent.QEvent): void =


  fQQuickImageResponse_virtualbase_customEvent(self.h, event.h)

type QQuickImageResponsecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_customEvent(self: ptr cQQuickImageResponse, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_customEvent ".} =
  type Cb = proc(super: QQuickImageResponsecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQuickImageResponse(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQuickImageResponse, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickImageResponse_virtualbase_connectNotify(self.h, signal.h)

type QQuickImageResponseconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponseconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponseconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_connectNotify(self: ptr cQQuickImageResponse, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_connectNotify ".} =
  type Cb = proc(super: QQuickImageResponseconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQuickImageResponse(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQuickImageResponse, signal: gen_qmetaobject.QMetaMethod): void =


  fQQuickImageResponse_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickImageResponsedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQuickImageResponse, slot: proc(super: QQuickImageResponsedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageResponsedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageResponse_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageResponse_disconnectNotify(self: ptr cQQuickImageResponse, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickImageResponse_disconnectNotify ".} =
  type Cb = proc(super: QQuickImageResponsedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQuickImageResponse(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QQuickImageResponse): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickImageResponse_staticMetaObject())
proc delete*(self: QQuickImageResponse) =
  fcQQuickImageResponse_delete(self.h)

func init*(T: type QQuickImageProvider, h: ptr cQQuickImageProvider): QQuickImageProvider =
  T(h: h)
proc create*(T: type QQuickImageProvider, typeVal: gen_qqmlengine.QQmlImageProviderBaseImageType): QQuickImageProvider =

  QQuickImageProvider.init(fcQQuickImageProvider_new(cint(typeVal)))
proc create*(T: type QQuickImageProvider, param1: QQuickImageProvider): QQuickImageProvider =

  QQuickImageProvider.init(fcQQuickImageProvider_new2(param1.h))
proc create*(T: type QQuickImageProvider, typeVal: gen_qqmlengine.QQmlImageProviderBaseImageType, flags: gen_qqmlengine.QQmlImageProviderBaseFlag): QQuickImageProvider =

  QQuickImageProvider.init(fcQQuickImageProvider_new3(cint(typeVal), cint(flags)))
proc imageType*(self: QQuickImageProvider, ): gen_qqmlengine.QQmlImageProviderBaseImageType =

  gen_qqmlengine.QQmlImageProviderBaseImageType(fcQQuickImageProvider_imageType(self.h))

proc flags*(self: QQuickImageProvider, ): gen_qqmlengine.QQmlImageProviderBaseFlag =

  gen_qqmlengine.QQmlImageProviderBaseFlag(fcQQuickImageProvider_flags(self.h))

proc requestImage*(self: QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage =

  gen_qimage.QImage(h: fcQQuickImageProvider_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc requestPixmap*(self: QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap =

  gen_qpixmap.QPixmap(h: fcQQuickImageProvider_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc requestTexture*(self: QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory =

  QQuickTextureFactory(h: fcQQuickImageProvider_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

proc callVirtualBase_imageType(self: QQuickImageProvider, ): gen_qqmlengine.QQmlImageProviderBaseImageType =


  gen_qqmlengine.QQmlImageProviderBaseImageType(fQQuickImageProvider_virtualbase_imageType(self.h))

type QQuickImageProviderimageTypeBase* = proc(): gen_qqmlengine.QQmlImageProviderBaseImageType
proc onimageType*(self: QQuickImageProvider, slot: proc(super: QQuickImageProviderimageTypeBase): gen_qqmlengine.QQmlImageProviderBaseImageType) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageProviderimageTypeBase): gen_qqmlengine.QQmlImageProviderBaseImageType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_imageType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_imageType(self: ptr cQQuickImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickImageProvider_imageType ".} =
  type Cb = proc(super: QQuickImageProviderimageTypeBase): gen_qqmlengine.QQmlImageProviderBaseImageType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_imageType(QQuickImageProvider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_flags(self: QQuickImageProvider, ): gen_qqmlengine.QQmlImageProviderBaseFlag =


  gen_qqmlengine.QQmlImageProviderBaseFlag(fQQuickImageProvider_virtualbase_flags(self.h))

type QQuickImageProviderflagsBase* = proc(): gen_qqmlengine.QQmlImageProviderBaseFlag
proc onflags*(self: QQuickImageProvider, slot: proc(super: QQuickImageProviderflagsBase): gen_qqmlengine.QQmlImageProviderBaseFlag) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageProviderflagsBase): gen_qqmlengine.QQmlImageProviderBaseFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_flags(self: ptr cQQuickImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickImageProvider_flags ".} =
  type Cb = proc(super: QQuickImageProviderflagsBase): gen_qqmlengine.QQmlImageProviderBaseFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_flags(QQuickImageProvider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_requestImage(self: QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage =


  gen_qimage.QImage(h: fQQuickImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestImageBase* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
proc onrequestImage*(self: QQuickImageProvider, slot: proc(super: QQuickImageProviderrequestImageBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageProviderrequestImageBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestImage(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestImage ".} =
  type Cb = proc(super: QQuickImageProviderrequestImageBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): auto =
    callVirtualBase_requestImage(QQuickImageProvider(h: self), id, size, requestedSize)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_requestPixmap(self: QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap =


  gen_qpixmap.QPixmap(h: fQQuickImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestPixmapBase* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
proc onrequestPixmap*(self: QQuickImageProvider, slot: proc(super: QQuickImageProviderrequestPixmapBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageProviderrequestPixmapBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestPixmap(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestPixmap ".} =
  type Cb = proc(super: QQuickImageProviderrequestPixmapBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): auto =
    callVirtualBase_requestPixmap(QQuickImageProvider(h: self), id, size, requestedSize)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_requestTexture(self: QQuickImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory =


  QQuickTextureFactory(h: fQQuickImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickImageProviderrequestTextureBase* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory
proc onrequestTexture*(self: QQuickImageProvider, slot: proc(super: QQuickImageProviderrequestTextureBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory) =
  # TODO check subclass
  type Cb = proc(super: QQuickImageProviderrequestTextureBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickImageProvider_override_virtual_requestTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickImageProvider_requestTexture(self: ptr cQQuickImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickImageProvider_requestTexture ".} =
  type Cb = proc(super: QQuickImageProviderrequestTextureBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): auto =
    callVirtualBase_requestTexture(QQuickImageProvider(h: self), id, size, requestedSize)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc delete*(self: QQuickImageProvider) =
  fcQQuickImageProvider_delete(self.h)

func init*(T: type QQuickAsyncImageProvider, h: ptr cQQuickAsyncImageProvider): QQuickAsyncImageProvider =
  T(h: h)
proc create*(T: type QQuickAsyncImageProvider, ): QQuickAsyncImageProvider =

  QQuickAsyncImageProvider.init(fcQQuickAsyncImageProvider_new())
proc create*(T: type QQuickAsyncImageProvider, param1: QQuickAsyncImageProvider): QQuickAsyncImageProvider =

  QQuickAsyncImageProvider.init(fcQQuickAsyncImageProvider_new2(param1.h))
proc requestImageResponse*(self: QQuickAsyncImageProvider, id: string, requestedSize: gen_qsize.QSize): QQuickImageResponse =

  QQuickImageResponse(h: fcQQuickAsyncImageProvider_requestImageResponse(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), requestedSize.h))

type QQuickAsyncImageProviderrequestImageResponseBase* = proc(id: string, requestedSize: gen_qsize.QSize): QQuickImageResponse
proc onrequestImageResponse*(self: QQuickAsyncImageProvider, slot: proc(id: string, requestedSize: gen_qsize.QSize): QQuickImageResponse) =
  # TODO check subclass
  type Cb = proc(id: string, requestedSize: gen_qsize.QSize): QQuickImageResponse
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestImageResponse(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse ".} =
  type Cb = proc(id: string, requestedSize: gen_qsize.QSize): QQuickImageResponse
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_imageType(self: QQuickAsyncImageProvider, ): gen_qqmlengine.QQmlImageProviderBaseImageType =


  gen_qqmlengine.QQmlImageProviderBaseImageType(fQQuickAsyncImageProvider_virtualbase_imageType(self.h))

type QQuickAsyncImageProviderimageTypeBase* = proc(): gen_qqmlengine.QQmlImageProviderBaseImageType
proc onimageType*(self: QQuickAsyncImageProvider, slot: proc(super: QQuickAsyncImageProviderimageTypeBase): gen_qqmlengine.QQmlImageProviderBaseImageType) =
  # TODO check subclass
  type Cb = proc(super: QQuickAsyncImageProviderimageTypeBase): gen_qqmlengine.QQmlImageProviderBaseImageType
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_imageType(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_imageType(self: ptr cQQuickAsyncImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_imageType ".} =
  type Cb = proc(super: QQuickAsyncImageProviderimageTypeBase): gen_qqmlengine.QQmlImageProviderBaseImageType
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_imageType(QQuickAsyncImageProvider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_flags(self: QQuickAsyncImageProvider, ): gen_qqmlengine.QQmlImageProviderBaseFlag =


  gen_qqmlengine.QQmlImageProviderBaseFlag(fQQuickAsyncImageProvider_virtualbase_flags(self.h))

type QQuickAsyncImageProviderflagsBase* = proc(): gen_qqmlengine.QQmlImageProviderBaseFlag
proc onflags*(self: QQuickAsyncImageProvider, slot: proc(super: QQuickAsyncImageProviderflagsBase): gen_qqmlengine.QQmlImageProviderBaseFlag) =
  # TODO check subclass
  type Cb = proc(super: QQuickAsyncImageProviderflagsBase): gen_qqmlengine.QQmlImageProviderBaseFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_flags(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_flags(self: ptr cQQuickAsyncImageProvider, slot: int): cint {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_flags ".} =
  type Cb = proc(super: QQuickAsyncImageProviderflagsBase): gen_qqmlengine.QQmlImageProviderBaseFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_flags(QQuickAsyncImageProvider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc callVirtualBase_requestImage(self: QQuickAsyncImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage =


  gen_qimage.QImage(h: fQQuickAsyncImageProvider_virtualbase_requestImage(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestImageBase* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
proc onrequestImage*(self: QQuickAsyncImageProvider, slot: proc(super: QQuickAsyncImageProviderrequestImageBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage) =
  # TODO check subclass
  type Cb = proc(super: QQuickAsyncImageProviderrequestImageBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestImage(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestImage(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestImage ".} =
  type Cb = proc(super: QQuickAsyncImageProviderrequestImageBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qimage.QImage
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): auto =
    callVirtualBase_requestImage(QQuickAsyncImageProvider(h: self), id, size, requestedSize)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_requestPixmap(self: QQuickAsyncImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap =


  gen_qpixmap.QPixmap(h: fQQuickAsyncImageProvider_virtualbase_requestPixmap(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestPixmapBase* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
proc onrequestPixmap*(self: QQuickAsyncImageProvider, slot: proc(super: QQuickAsyncImageProviderrequestPixmapBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap) =
  # TODO check subclass
  type Cb = proc(super: QQuickAsyncImageProviderrequestPixmapBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestPixmap(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap ".} =
  type Cb = proc(super: QQuickAsyncImageProviderrequestPixmapBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): gen_qpixmap.QPixmap
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): auto =
    callVirtualBase_requestPixmap(QQuickAsyncImageProvider(h: self), id, size, requestedSize)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc callVirtualBase_requestTexture(self: QQuickAsyncImageProvider, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory =


  QQuickTextureFactory(h: fQQuickAsyncImageProvider_virtualbase_requestTexture(self.h, struct_miqt_string(data: id, len: csize_t(len(id))), size.h, requestedSize.h))

type QQuickAsyncImageProviderrequestTextureBase* = proc(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory
proc onrequestTexture*(self: QQuickAsyncImageProvider, slot: proc(super: QQuickAsyncImageProviderrequestTextureBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory) =
  # TODO check subclass
  type Cb = proc(super: QQuickAsyncImageProviderrequestTextureBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickAsyncImageProvider_override_virtual_requestTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickAsyncImageProvider_requestTexture(self: ptr cQQuickAsyncImageProvider, slot: int, id: struct_miqt_string, size: pointer, requestedSize: pointer): pointer {.exportc: "miqt_exec_callback_QQuickAsyncImageProvider_requestTexture ".} =
  type Cb = proc(super: QQuickAsyncImageProviderrequestTextureBase, id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): QQuickTextureFactory
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(id: string, size: gen_qsize.QSize, requestedSize: gen_qsize.QSize): auto =
    callVirtualBase_requestTexture(QQuickAsyncImageProvider(h: self), id, size, requestedSize)
  let vid_ms = id
  let vidx_ret = string.fromBytes(toOpenArrayByte(vid_ms.data, 0, int(vid_ms.len)-1))
  c_free(vid_ms.data)
  let slotval1 = vidx_ret

  let slotval2 = gen_qsize.QSize(h: size)

  let slotval3 = gen_qsize.QSize(h: requestedSize)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn.h
proc delete*(self: QQuickAsyncImageProvider) =
  fcQQuickAsyncImageProvider_delete(self.h)
