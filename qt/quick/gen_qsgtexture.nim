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
{.compile("gen_qsgtexture.cpp", cflags).}


type QSGTextureWrapMode* = cint
const
  QSGTextureRepeat* = 0
  QSGTextureClampToEdge* = 1
  QSGTextureMirroredRepeat* = 2



type QSGTextureFiltering* = cint
const
  QSGTextureNone* = 0
  QSGTextureNearest* = 1
  QSGTextureLinear* = 2



type QSGTextureAnisotropyLevel* = cint
const
  QSGTextureAnisotropyNone* = 0
  QSGTextureAnisotropy2x* = 1
  QSGTextureAnisotropy4x* = 2
  QSGTextureAnisotropy8x* = 3
  QSGTextureAnisotropy16x* = 4



import gen_qsgtexture_types
export gen_qsgtexture_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qrect,
  gen_qsize

type cQSGTexture*{.exportc: "QSGTexture", incompleteStruct.} = object
type cQSGDynamicTexture*{.exportc: "QSGDynamicTexture", incompleteStruct.} = object
type cQSGTextureNativeTexture*{.exportc: "QSGTexture__NativeTexture", incompleteStruct.} = object

proc fcQSGTexture_new(): ptr cQSGTexture {.importc: "QSGTexture_new".}
proc fcQSGTexture_metaObject(self: pointer, ): pointer {.importc: "QSGTexture_metaObject".}
proc fcQSGTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGTexture_metacast".}
proc fcQSGTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGTexture_metacall".}
proc fcQSGTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGTexture_tr".}
proc fcQSGTexture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGTexture_trUtf8".}
proc fcQSGTexture_textureId(self: pointer, ): cint {.importc: "QSGTexture_textureId".}
proc fcQSGTexture_nativeTexture(self: pointer, ): pointer {.importc: "QSGTexture_nativeTexture".}
proc fcQSGTexture_textureSize(self: pointer, ): pointer {.importc: "QSGTexture_textureSize".}
proc fcQSGTexture_hasAlphaChannel(self: pointer, ): bool {.importc: "QSGTexture_hasAlphaChannel".}
proc fcQSGTexture_hasMipmaps(self: pointer, ): bool {.importc: "QSGTexture_hasMipmaps".}
proc fcQSGTexture_normalizedTextureSubRect(self: pointer, ): pointer {.importc: "QSGTexture_normalizedTextureSubRect".}
proc fcQSGTexture_isAtlasTexture(self: pointer, ): bool {.importc: "QSGTexture_isAtlasTexture".}
proc fcQSGTexture_removedFromAtlas(self: pointer, ): pointer {.importc: "QSGTexture_removedFromAtlas".}
proc fcQSGTexture_bindX(self: pointer, ): void {.importc: "QSGTexture_bind".}
proc fcQSGTexture_updateBindOptions(self: pointer, ): void {.importc: "QSGTexture_updateBindOptions".}
proc fcQSGTexture_setMipmapFiltering(self: pointer, filter: cint): void {.importc: "QSGTexture_setMipmapFiltering".}
proc fcQSGTexture_mipmapFiltering(self: pointer, ): cint {.importc: "QSGTexture_mipmapFiltering".}
proc fcQSGTexture_setFiltering(self: pointer, filter: cint): void {.importc: "QSGTexture_setFiltering".}
proc fcQSGTexture_filtering(self: pointer, ): cint {.importc: "QSGTexture_filtering".}
proc fcQSGTexture_setAnisotropyLevel(self: pointer, level: cint): void {.importc: "QSGTexture_setAnisotropyLevel".}
proc fcQSGTexture_anisotropyLevel(self: pointer, ): cint {.importc: "QSGTexture_anisotropyLevel".}
proc fcQSGTexture_setHorizontalWrapMode(self: pointer, hwrap: cint): void {.importc: "QSGTexture_setHorizontalWrapMode".}
proc fcQSGTexture_horizontalWrapMode(self: pointer, ): cint {.importc: "QSGTexture_horizontalWrapMode".}
proc fcQSGTexture_setVerticalWrapMode(self: pointer, vwrap: cint): void {.importc: "QSGTexture_setVerticalWrapMode".}
proc fcQSGTexture_verticalWrapMode(self: pointer, ): cint {.importc: "QSGTexture_verticalWrapMode".}
proc fcQSGTexture_convertToNormalizedSourceRect(self: pointer, rect: pointer): pointer {.importc: "QSGTexture_convertToNormalizedSourceRect".}
proc fcQSGTexture_comparisonKey(self: pointer, ): cint {.importc: "QSGTexture_comparisonKey".}
proc fcQSGTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTexture_tr2".}
proc fcQSGTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTexture_tr3".}
proc fcQSGTexture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGTexture_trUtf82".}
proc fcQSGTexture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGTexture_trUtf83".}
proc fcQSGTexture_updateBindOptions1(self: pointer, force: bool): void {.importc: "QSGTexture_updateBindOptions1".}
proc fQSGTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSGTexture_virtualbase_metacall".}
proc fcQSGTexture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_metacall".}
proc fcQSGTexture_override_virtual_textureId(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_textureId".}
proc fcQSGTexture_override_virtual_textureSize(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_textureSize".}
proc fcQSGTexture_override_virtual_hasAlphaChannel(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_hasAlphaChannel".}
proc fcQSGTexture_override_virtual_hasMipmaps(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_hasMipmaps".}
proc fQSGTexture_virtualbase_normalizedTextureSubRect(self: pointer, ): pointer{.importc: "QSGTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGTexture_override_virtual_normalizedTextureSubRect(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_normalizedTextureSubRect".}
proc fQSGTexture_virtualbase_isAtlasTexture(self: pointer, ): bool{.importc: "QSGTexture_virtualbase_isAtlasTexture".}
proc fcQSGTexture_override_virtual_isAtlasTexture(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_isAtlasTexture".}
proc fQSGTexture_virtualbase_removedFromAtlas(self: pointer, ): pointer{.importc: "QSGTexture_virtualbase_removedFromAtlas".}
proc fcQSGTexture_override_virtual_removedFromAtlas(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_removedFromAtlas".}
proc fcQSGTexture_override_virtual_bindX(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_bind".}
proc fQSGTexture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSGTexture_virtualbase_event".}
proc fcQSGTexture_override_virtual_event(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_event".}
proc fQSGTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSGTexture_virtualbase_eventFilter".}
proc fcQSGTexture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_eventFilter".}
proc fQSGTexture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSGTexture_virtualbase_timerEvent".}
proc fcQSGTexture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_timerEvent".}
proc fQSGTexture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSGTexture_virtualbase_childEvent".}
proc fcQSGTexture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_childEvent".}
proc fQSGTexture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSGTexture_virtualbase_customEvent".}
proc fcQSGTexture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_customEvent".}
proc fQSGTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSGTexture_virtualbase_connectNotify".}
proc fcQSGTexture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_connectNotify".}
proc fQSGTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSGTexture_virtualbase_disconnectNotify".}
proc fcQSGTexture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSGTexture_override_virtual_disconnectNotify".}
proc fcQSGTexture_delete(self: pointer) {.importc: "QSGTexture_delete".}
proc fcQSGDynamicTexture_new(): ptr cQSGDynamicTexture {.importc: "QSGDynamicTexture_new".}
proc fcQSGDynamicTexture_metaObject(self: pointer, ): pointer {.importc: "QSGDynamicTexture_metaObject".}
proc fcQSGDynamicTexture_metacast(self: pointer, param1: cstring): pointer {.importc: "QSGDynamicTexture_metacast".}
proc fcQSGDynamicTexture_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QSGDynamicTexture_metacall".}
proc fcQSGDynamicTexture_tr(s: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr".}
proc fcQSGDynamicTexture_trUtf8(s: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf8".}
proc fcQSGDynamicTexture_updateTexture(self: pointer, ): bool {.importc: "QSGDynamicTexture_updateTexture".}
proc fcQSGDynamicTexture_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_tr2".}
proc fcQSGDynamicTexture_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGDynamicTexture_tr3".}
proc fcQSGDynamicTexture_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf82".}
proc fcQSGDynamicTexture_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QSGDynamicTexture_trUtf83".}
proc fQSGDynamicTexture_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QSGDynamicTexture_virtualbase_metacall".}
proc fcQSGDynamicTexture_override_virtual_metacall(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_metacall".}
proc fcQSGDynamicTexture_override_virtual_updateTexture(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_updateTexture".}
proc fcQSGDynamicTexture_override_virtual_textureId(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_textureId".}
proc fcQSGDynamicTexture_override_virtual_textureSize(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_textureSize".}
proc fcQSGDynamicTexture_override_virtual_hasAlphaChannel(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_hasAlphaChannel".}
proc fcQSGDynamicTexture_override_virtual_hasMipmaps(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_hasMipmaps".}
proc fQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self: pointer, ): pointer{.importc: "QSGDynamicTexture_virtualbase_normalizedTextureSubRect".}
proc fcQSGDynamicTexture_override_virtual_normalizedTextureSubRect(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_normalizedTextureSubRect".}
proc fQSGDynamicTexture_virtualbase_isAtlasTexture(self: pointer, ): bool{.importc: "QSGDynamicTexture_virtualbase_isAtlasTexture".}
proc fcQSGDynamicTexture_override_virtual_isAtlasTexture(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_isAtlasTexture".}
proc fQSGDynamicTexture_virtualbase_removedFromAtlas(self: pointer, ): pointer{.importc: "QSGDynamicTexture_virtualbase_removedFromAtlas".}
proc fcQSGDynamicTexture_override_virtual_removedFromAtlas(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_removedFromAtlas".}
proc fcQSGDynamicTexture_override_virtual_bindX(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_bind".}
proc fQSGDynamicTexture_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QSGDynamicTexture_virtualbase_event".}
proc fcQSGDynamicTexture_override_virtual_event(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_event".}
proc fQSGDynamicTexture_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QSGDynamicTexture_virtualbase_eventFilter".}
proc fcQSGDynamicTexture_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_eventFilter".}
proc fQSGDynamicTexture_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QSGDynamicTexture_virtualbase_timerEvent".}
proc fcQSGDynamicTexture_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_timerEvent".}
proc fQSGDynamicTexture_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QSGDynamicTexture_virtualbase_childEvent".}
proc fcQSGDynamicTexture_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_childEvent".}
proc fQSGDynamicTexture_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QSGDynamicTexture_virtualbase_customEvent".}
proc fcQSGDynamicTexture_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_customEvent".}
proc fQSGDynamicTexture_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QSGDynamicTexture_virtualbase_connectNotify".}
proc fcQSGDynamicTexture_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_connectNotify".}
proc fQSGDynamicTexture_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QSGDynamicTexture_virtualbase_disconnectNotify".}
proc fcQSGDynamicTexture_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QSGDynamicTexture_override_virtual_disconnectNotify".}
proc fcQSGDynamicTexture_delete(self: pointer) {.importc: "QSGDynamicTexture_delete".}
proc fcQSGTextureNativeTexture_delete(self: pointer) {.importc: "QSGTexture__NativeTexture_delete".}


func init*(T: type QSGTexture, h: ptr cQSGTexture): QSGTexture =
  T(h: h)
proc create*(T: type QSGTexture, ): QSGTexture =

  QSGTexture.init(fcQSGTexture_new())
proc metaObject*(self: QSGTexture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSGTexture_metaObject(self.h))

proc metacast*(self: QSGTexture, param1: cstring): pointer =

  fcQSGTexture_metacast(self.h, param1)

proc metacall*(self: QSGTexture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSGTexture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSGTexture, s: cstring): string =

  let v_ms = fcQSGTexture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSGTexture, s: cstring): string =

  let v_ms = fcQSGTexture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textureId*(self: QSGTexture, ): cint =

  fcQSGTexture_textureId(self.h)

proc nativeTexture*(self: QSGTexture, ): QSGTextureNativeTexture =

  QSGTextureNativeTexture(h: fcQSGTexture_nativeTexture(self.h))

proc textureSize*(self: QSGTexture, ): gen_qsize.QSize =

  gen_qsize.QSize(h: fcQSGTexture_textureSize(self.h))

proc hasAlphaChannel*(self: QSGTexture, ): bool =

  fcQSGTexture_hasAlphaChannel(self.h)

proc hasMipmaps*(self: QSGTexture, ): bool =

  fcQSGTexture_hasMipmaps(self.h)

proc normalizedTextureSubRect*(self: QSGTexture, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQSGTexture_normalizedTextureSubRect(self.h))

proc isAtlasTexture*(self: QSGTexture, ): bool =

  fcQSGTexture_isAtlasTexture(self.h)

proc removedFromAtlas*(self: QSGTexture, ): QSGTexture =

  QSGTexture(h: fcQSGTexture_removedFromAtlas(self.h))

proc bindX*(self: QSGTexture, ): void =

  fcQSGTexture_bindX(self.h)

proc updateBindOptions*(self: QSGTexture, ): void =

  fcQSGTexture_updateBindOptions(self.h)

proc setMipmapFiltering*(self: QSGTexture, filter: QSGTextureFiltering): void =

  fcQSGTexture_setMipmapFiltering(self.h, cint(filter))

proc mipmapFiltering*(self: QSGTexture, ): QSGTextureFiltering =

  QSGTextureFiltering(fcQSGTexture_mipmapFiltering(self.h))

proc setFiltering*(self: QSGTexture, filter: QSGTextureFiltering): void =

  fcQSGTexture_setFiltering(self.h, cint(filter))

proc filtering*(self: QSGTexture, ): QSGTextureFiltering =

  QSGTextureFiltering(fcQSGTexture_filtering(self.h))

proc setAnisotropyLevel*(self: QSGTexture, level: QSGTextureAnisotropyLevel): void =

  fcQSGTexture_setAnisotropyLevel(self.h, cint(level))

proc anisotropyLevel*(self: QSGTexture, ): QSGTextureAnisotropyLevel =

  QSGTextureAnisotropyLevel(fcQSGTexture_anisotropyLevel(self.h))

proc setHorizontalWrapMode*(self: QSGTexture, hwrap: QSGTextureWrapMode): void =

  fcQSGTexture_setHorizontalWrapMode(self.h, cint(hwrap))

proc horizontalWrapMode*(self: QSGTexture, ): QSGTextureWrapMode =

  QSGTextureWrapMode(fcQSGTexture_horizontalWrapMode(self.h))

proc setVerticalWrapMode*(self: QSGTexture, vwrap: QSGTextureWrapMode): void =

  fcQSGTexture_setVerticalWrapMode(self.h, cint(vwrap))

proc verticalWrapMode*(self: QSGTexture, ): QSGTextureWrapMode =

  QSGTextureWrapMode(fcQSGTexture_verticalWrapMode(self.h))

proc convertToNormalizedSourceRect*(self: QSGTexture, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQSGTexture_convertToNormalizedSourceRect(self.h, rect.h))

proc comparisonKey*(self: QSGTexture, ): cint =

  fcQSGTexture_comparisonKey(self.h)

proc tr2*(_: type QSGTexture, s: cstring, c: cstring): string =

  let v_ms = fcQSGTexture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSGTexture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSGTexture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSGTexture, s: cstring, c: cstring): string =

  let v_ms = fcQSGTexture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSGTexture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSGTexture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc updateBindOptions1*(self: QSGTexture, force: bool): void =

  fcQSGTexture_updateBindOptions1(self.h, force)

proc callVirtualBase_metacall(self: QSGTexture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSGTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSGTexturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSGTexture, slot: proc(super: QSGTexturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSGTexturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_metacall(self: ptr cQSGTexture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSGTexture_metacall ".} =
  type Cb = proc(super: QSGTexturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSGTexture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QSGTexturetextureIdBase* = proc(): cint
proc ontextureId*(self: QSGTexture, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_textureId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_textureId(self: ptr cQSGTexture, slot: int): cint {.exportc: "miqt_exec_callback_QSGTexture_textureId ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGTexturetextureSizeBase* = proc(): gen_qsize.QSize
proc ontextureSize*(self: QSGTexture, slot: proc(): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_textureSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_textureSize(self: ptr cQSGTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGTexture_textureSize ".} =
  type Cb = proc(): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QSGTexturehasAlphaChannelBase* = proc(): bool
proc onhasAlphaChannel*(self: QSGTexture, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_hasAlphaChannel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_hasAlphaChannel(self: ptr cQSGTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGTexture_hasAlphaChannel ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGTexturehasMipmapsBase* = proc(): bool
proc onhasMipmaps*(self: QSGTexture, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_hasMipmaps(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_hasMipmaps(self: ptr cQSGTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGTexture_hasMipmaps ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_normalizedTextureSubRect(self: QSGTexture, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQSGTexture_virtualbase_normalizedTextureSubRect(self.h))

type QSGTexturenormalizedTextureSubRectBase* = proc(): gen_qrect.QRectF
proc onnormalizedTextureSubRect*(self: QSGTexture, slot: proc(super: QSGTexturenormalizedTextureSubRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QSGTexturenormalizedTextureSubRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_normalizedTextureSubRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_normalizedTextureSubRect(self: ptr cQSGTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGTexture_normalizedTextureSubRect ".} =
  type Cb = proc(super: QSGTexturenormalizedTextureSubRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_normalizedTextureSubRect(QSGTexture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isAtlasTexture(self: QSGTexture, ): bool =


  fQSGTexture_virtualbase_isAtlasTexture(self.h)

type QSGTextureisAtlasTextureBase* = proc(): bool
proc onisAtlasTexture*(self: QSGTexture, slot: proc(super: QSGTextureisAtlasTextureBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGTextureisAtlasTextureBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_isAtlasTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_isAtlasTexture(self: ptr cQSGTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGTexture_isAtlasTexture ".} =
  type Cb = proc(super: QSGTextureisAtlasTextureBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isAtlasTexture(QSGTexture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_removedFromAtlas(self: QSGTexture, ): QSGTexture =


  QSGTexture(h: fQSGTexture_virtualbase_removedFromAtlas(self.h))

type QSGTextureremovedFromAtlasBase* = proc(): QSGTexture
proc onremovedFromAtlas*(self: QSGTexture, slot: proc(super: QSGTextureremovedFromAtlasBase): QSGTexture) =
  # TODO check subclass
  type Cb = proc(super: QSGTextureremovedFromAtlasBase): QSGTexture
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_removedFromAtlas(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_removedFromAtlas(self: ptr cQSGTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGTexture_removedFromAtlas ".} =
  type Cb = proc(super: QSGTextureremovedFromAtlasBase): QSGTexture
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_removedFromAtlas(QSGTexture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
type QSGTexturebindXBase* = proc(): void
proc onbindX*(self: QSGTexture, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_bind(self: ptr cQSGTexture, slot: int): void {.exportc: "miqt_exec_callback_QSGTexture_bind ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
proc callVirtualBase_event(self: QSGTexture, event: gen_qcoreevent.QEvent): bool =


  fQSGTexture_virtualbase_event(self.h, event.h)

type QSGTextureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSGTexture, slot: proc(super: QSGTextureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGTextureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_event(self: ptr cQSGTexture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSGTexture_event ".} =
  type Cb = proc(super: QSGTextureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSGTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSGTexture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSGTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSGTextureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSGTexture, slot: proc(super: QSGTextureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGTextureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_eventFilter(self: ptr cQSGTexture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSGTexture_eventFilter ".} =
  type Cb = proc(super: QSGTextureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSGTexture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSGTexture, event: gen_qcoreevent.QTimerEvent): void =


  fQSGTexture_virtualbase_timerEvent(self.h, event.h)

type QSGTexturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSGTexture, slot: proc(super: QSGTexturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGTexturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_timerEvent(self: ptr cQSGTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_timerEvent ".} =
  type Cb = proc(super: QSGTexturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSGTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSGTexture, event: gen_qcoreevent.QChildEvent): void =


  fQSGTexture_virtualbase_childEvent(self.h, event.h)

type QSGTexturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSGTexture, slot: proc(super: QSGTexturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGTexturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_childEvent(self: ptr cQSGTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_childEvent ".} =
  type Cb = proc(super: QSGTexturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSGTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSGTexture, event: gen_qcoreevent.QEvent): void =


  fQSGTexture_virtualbase_customEvent(self.h, event.h)

type QSGTexturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSGTexture, slot: proc(super: QSGTexturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGTexturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_customEvent(self: ptr cQSGTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_customEvent ".} =
  type Cb = proc(super: QSGTexturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSGTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSGTexture, signal: gen_qmetaobject.QMetaMethod): void =


  fQSGTexture_virtualbase_connectNotify(self.h, signal.h)

type QSGTextureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSGTexture, slot: proc(super: QSGTextureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSGTextureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_connectNotify(self: ptr cQSGTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_connectNotify ".} =
  type Cb = proc(super: QSGTextureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSGTexture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSGTexture, signal: gen_qmetaobject.QMetaMethod): void =


  fQSGTexture_virtualbase_disconnectNotify(self.h, signal.h)

type QSGTexturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSGTexture, slot: proc(super: QSGTexturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSGTexturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGTexture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGTexture_disconnectNotify(self: ptr cQSGTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGTexture_disconnectNotify ".} =
  type Cb = proc(super: QSGTexturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSGTexture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSGTexture) =
  fcQSGTexture_delete(self.h)

func init*(T: type QSGDynamicTexture, h: ptr cQSGDynamicTexture): QSGDynamicTexture =
  T(h: h)
proc create*(T: type QSGDynamicTexture, ): QSGDynamicTexture =

  QSGDynamicTexture.init(fcQSGDynamicTexture_new())
proc metaObject*(self: QSGDynamicTexture, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQSGDynamicTexture_metaObject(self.h))

proc metacast*(self: QSGDynamicTexture, param1: cstring): pointer =

  fcQSGDynamicTexture_metacast(self.h, param1)

proc metacall*(self: QSGDynamicTexture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQSGDynamicTexture_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QSGDynamicTexture, s: cstring): string =

  let v_ms = fcQSGDynamicTexture_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QSGDynamicTexture, s: cstring): string =

  let v_ms = fcQSGDynamicTexture_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc updateTexture*(self: QSGDynamicTexture, ): bool =

  fcQSGDynamicTexture_updateTexture(self.h)

proc tr2*(_: type QSGDynamicTexture, s: cstring, c: cstring): string =

  let v_ms = fcQSGDynamicTexture_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QSGDynamicTexture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSGDynamicTexture_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QSGDynamicTexture, s: cstring, c: cstring): string =

  let v_ms = fcQSGDynamicTexture_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QSGDynamicTexture, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQSGDynamicTexture_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QSGDynamicTexture, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQSGDynamicTexture_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QSGDynamicTexturemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTexturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTexturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_metacall(self: ptr cQSGDynamicTexture, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QSGDynamicTexture_metacall ".} =
  type Cb = proc(super: QSGDynamicTexturemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QSGDynamicTexture(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QSGDynamicTextureupdateTextureBase* = proc(): bool
proc onupdateTexture*(self: QSGDynamicTexture, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_updateTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_updateTexture(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_updateTexture ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGDynamicTexturetextureIdBase* = proc(): cint
proc ontextureId*(self: QSGDynamicTexture, slot: proc(): cint) =
  # TODO check subclass
  type Cb = proc(): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_textureId(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_textureId(self: ptr cQSGDynamicTexture, slot: int): cint {.exportc: "miqt_exec_callback_QSGDynamicTexture_textureId ".} =
  type Cb = proc(): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGDynamicTexturetextureSizeBase* = proc(): gen_qsize.QSize
proc ontextureSize*(self: QSGDynamicTexture, slot: proc(): gen_qsize.QSize) =
  # TODO check subclass
  type Cb = proc(): gen_qsize.QSize
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_textureSize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_textureSize(self: ptr cQSGDynamicTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGDynamicTexture_textureSize ".} =
  type Cb = proc(): gen_qsize.QSize
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
type QSGDynamicTexturehasAlphaChannelBase* = proc(): bool
proc onhasAlphaChannel*(self: QSGDynamicTexture, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_hasAlphaChannel(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_hasAlphaChannel ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
type QSGDynamicTexturehasMipmapsBase* = proc(): bool
proc onhasMipmaps*(self: QSGDynamicTexture, slot: proc(): bool) =
  # TODO check subclass
  type Cb = proc(): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_hasMipmaps(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_hasMipmaps(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_hasMipmaps ".} =
  type Cb = proc(): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn
proc callVirtualBase_normalizedTextureSubRect(self: QSGDynamicTexture, ): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQSGDynamicTexture_virtualbase_normalizedTextureSubRect(self.h))

type QSGDynamicTexturenormalizedTextureSubRectBase* = proc(): gen_qrect.QRectF
proc onnormalizedTextureSubRect*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTexturenormalizedTextureSubRectBase): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTexturenormalizedTextureSubRectBase): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_normalizedTextureSubRect(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect(self: ptr cQSGDynamicTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGDynamicTexture_normalizedTextureSubRect ".} =
  type Cb = proc(super: QSGDynamicTexturenormalizedTextureSubRectBase): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_normalizedTextureSubRect(QSGDynamicTexture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_isAtlasTexture(self: QSGDynamicTexture, ): bool =


  fQSGDynamicTexture_virtualbase_isAtlasTexture(self.h)

type QSGDynamicTextureisAtlasTextureBase* = proc(): bool
proc onisAtlasTexture*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTextureisAtlasTextureBase): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTextureisAtlasTextureBase): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_isAtlasTexture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_isAtlasTexture(self: ptr cQSGDynamicTexture, slot: int): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_isAtlasTexture ".} =
  type Cb = proc(super: QSGDynamicTextureisAtlasTextureBase): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_isAtlasTexture(QSGDynamicTexture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn
proc callVirtualBase_removedFromAtlas(self: QSGDynamicTexture, ): QSGTexture =


  QSGTexture(h: fQSGDynamicTexture_virtualbase_removedFromAtlas(self.h))

type QSGDynamicTextureremovedFromAtlasBase* = proc(): QSGTexture
proc onremovedFromAtlas*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTextureremovedFromAtlasBase): QSGTexture) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTextureremovedFromAtlasBase): QSGTexture
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_removedFromAtlas(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_removedFromAtlas(self: ptr cQSGDynamicTexture, slot: int): pointer {.exportc: "miqt_exec_callback_QSGDynamicTexture_removedFromAtlas ".} =
  type Cb = proc(super: QSGDynamicTextureremovedFromAtlasBase): QSGTexture
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_removedFromAtlas(QSGDynamicTexture(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
type QSGDynamicTexturebindXBase* = proc(): void
proc onbindX*(self: QSGDynamicTexture, slot: proc(): void) =
  # TODO check subclass
  type Cb = proc(): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_bindX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_bind(self: ptr cQSGDynamicTexture, slot: int): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_bind ".} =
  type Cb = proc(): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()
proc callVirtualBase_event(self: QSGDynamicTexture, event: gen_qcoreevent.QEvent): bool =


  fQSGDynamicTexture_virtualbase_event(self.h, event.h)

type QSGDynamicTextureeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTextureeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTextureeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_event(self: ptr cQSGDynamicTexture, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_event ".} =
  type Cb = proc(super: QSGDynamicTextureeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QSGDynamicTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QSGDynamicTexture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQSGDynamicTexture_virtualbase_eventFilter(self.h, watched.h, event.h)

type QSGDynamicTextureeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTextureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTextureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_eventFilter(self: ptr cQSGDynamicTexture, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QSGDynamicTexture_eventFilter ".} =
  type Cb = proc(super: QSGDynamicTextureeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QSGDynamicTexture(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QSGDynamicTexture, event: gen_qcoreevent.QTimerEvent): void =


  fQSGDynamicTexture_virtualbase_timerEvent(self.h, event.h)

type QSGDynamicTexturetimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTexturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTexturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_timerEvent(self: ptr cQSGDynamicTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_timerEvent ".} =
  type Cb = proc(super: QSGDynamicTexturetimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QSGDynamicTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QSGDynamicTexture, event: gen_qcoreevent.QChildEvent): void =


  fQSGDynamicTexture_virtualbase_childEvent(self.h, event.h)

type QSGDynamicTexturechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTexturechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTexturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_childEvent(self: ptr cQSGDynamicTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_childEvent ".} =
  type Cb = proc(super: QSGDynamicTexturechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QSGDynamicTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QSGDynamicTexture, event: gen_qcoreevent.QEvent): void =


  fQSGDynamicTexture_virtualbase_customEvent(self.h, event.h)

type QSGDynamicTexturecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTexturecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTexturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_customEvent(self: ptr cQSGDynamicTexture, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_customEvent ".} =
  type Cb = proc(super: QSGDynamicTexturecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QSGDynamicTexture(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QSGDynamicTexture, signal: gen_qmetaobject.QMetaMethod): void =


  fQSGDynamicTexture_virtualbase_connectNotify(self.h, signal.h)

type QSGDynamicTextureconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTextureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTextureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_connectNotify(self: ptr cQSGDynamicTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_connectNotify ".} =
  type Cb = proc(super: QSGDynamicTextureconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QSGDynamicTexture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QSGDynamicTexture, signal: gen_qmetaobject.QMetaMethod): void =


  fQSGDynamicTexture_virtualbase_disconnectNotify(self.h, signal.h)

type QSGDynamicTexturedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QSGDynamicTexture, slot: proc(super: QSGDynamicTexturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QSGDynamicTexturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQSGDynamicTexture_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QSGDynamicTexture_disconnectNotify(self: ptr cQSGDynamicTexture, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QSGDynamicTexture_disconnectNotify ".} =
  type Cb = proc(super: QSGDynamicTexturedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QSGDynamicTexture(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QSGDynamicTexture) =
  fcQSGDynamicTexture_delete(self.h)

func init*(T: type QSGTextureNativeTexture, h: ptr cQSGTextureNativeTexture): QSGTextureNativeTexture =
  T(h: h)
proc delete*(self: QSGTextureNativeTexture) =
  fcQSGTextureNativeTexture_delete(self.h)
