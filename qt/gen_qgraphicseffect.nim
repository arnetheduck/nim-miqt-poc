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
{.compile("gen_qgraphicseffect.cpp", cflags).}


type QGraphicsEffectChangeFlag* = cint
const
  QGraphicsEffectSourceAttached* = 1
  QGraphicsEffectSourceDetached* = 2
  QGraphicsEffectSourceBoundingRectChanged* = 4
  QGraphicsEffectSourceInvalidated* = 8



type QGraphicsEffectPixmapPadMode* = cint
const
  QGraphicsEffectNoPad* = 0
  QGraphicsEffectPadToTransparentBorder* = 1
  QGraphicsEffectPadToEffectiveBoundingRect* = 2



type QGraphicsBlurEffectBlurHint* = cint
const
  QGraphicsBlurEffectPerformanceHint* = 0
  QGraphicsBlurEffectQualityHint* = 1
  QGraphicsBlurEffectAnimationHint* = 2



import gen_qgraphicseffect_types
export gen_qgraphicseffect_types

import
  gen_qbrush,
  gen_qcolor,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpoint,
  gen_qrect
export
  gen_qbrush,
  gen_qcolor,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpainter,
  gen_qpoint,
  gen_qrect

type cQGraphicsEffect*{.exportc: "QGraphicsEffect", incompleteStruct.} = object
type cQGraphicsColorizeEffect*{.exportc: "QGraphicsColorizeEffect", incompleteStruct.} = object
type cQGraphicsBlurEffect*{.exportc: "QGraphicsBlurEffect", incompleteStruct.} = object
type cQGraphicsDropShadowEffect*{.exportc: "QGraphicsDropShadowEffect", incompleteStruct.} = object
type cQGraphicsOpacityEffect*{.exportc: "QGraphicsOpacityEffect", incompleteStruct.} = object

proc fcQGraphicsEffect_new(): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new".}
proc fcQGraphicsEffect_new2(parent: pointer): ptr cQGraphicsEffect {.importc: "QGraphicsEffect_new2".}
proc fcQGraphicsEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsEffect_metaObject".}
proc fcQGraphicsEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsEffect_metacast".}
proc fcQGraphicsEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsEffect_metacall".}
proc fcQGraphicsEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr".}
proc fcQGraphicsEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf8".}
proc fcQGraphicsEffect_boundingRectFor(self: pointer, sourceRect: pointer): pointer {.importc: "QGraphicsEffect_boundingRectFor".}
proc fcQGraphicsEffect_boundingRect(self: pointer, ): pointer {.importc: "QGraphicsEffect_boundingRect".}
proc fcQGraphicsEffect_isEnabled(self: pointer, ): bool {.importc: "QGraphicsEffect_isEnabled".}
proc fcQGraphicsEffect_setEnabled(self: pointer, enable: bool): void {.importc: "QGraphicsEffect_setEnabled".}
proc fcQGraphicsEffect_update(self: pointer, ): void {.importc: "QGraphicsEffect_update".}
proc fcQGraphicsEffect_enabledChanged(self: pointer, enabled: bool): void {.importc: "QGraphicsEffect_enabledChanged".}
proc fQGraphicsEffect_connect_enabledChanged(self: pointer, slot: int) {.importc: "QGraphicsEffect_connect_enabledChanged".}
proc fcQGraphicsEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_tr2".}
proc fcQGraphicsEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_tr3".}
proc fcQGraphicsEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsEffect_trUtf82".}
proc fcQGraphicsEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsEffect_trUtf83".}
proc fQGraphicsEffect_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsEffect_virtualbase_metaObject".}
proc fcQGraphicsEffect_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_metaObject".}
proc fQGraphicsEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsEffect_virtualbase_metacast".}
proc fcQGraphicsEffect_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_metacast".}
proc fQGraphicsEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsEffect_virtualbase_metacall".}
proc fcQGraphicsEffect_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_metacall".}
proc fQGraphicsEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer{.importc: "QGraphicsEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_boundingRectFor".}
proc fcQGraphicsEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_draw".}
proc fQGraphicsEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsEffect_virtualbase_sourceChanged".}
proc fcQGraphicsEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_sourceChanged".}
proc fQGraphicsEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsEffect_virtualbase_event".}
proc fcQGraphicsEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_event".}
proc fQGraphicsEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsEffect_virtualbase_eventFilter".}
proc fcQGraphicsEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_eventFilter".}
proc fQGraphicsEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEffect_virtualbase_timerEvent".}
proc fcQGraphicsEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_timerEvent".}
proc fQGraphicsEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEffect_virtualbase_childEvent".}
proc fcQGraphicsEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_childEvent".}
proc fQGraphicsEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsEffect_virtualbase_customEvent".}
proc fcQGraphicsEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_customEvent".}
proc fQGraphicsEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsEffect_virtualbase_connectNotify".}
proc fcQGraphicsEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_connectNotify".}
proc fQGraphicsEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsEffect_staticMetaObject(): pointer {.importc: "QGraphicsEffect_staticMetaObject".}
proc fcQGraphicsEffect_delete(self: pointer) {.importc: "QGraphicsEffect_delete".}
proc fcQGraphicsColorizeEffect_new(): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new".}
proc fcQGraphicsColorizeEffect_new2(parent: pointer): ptr cQGraphicsColorizeEffect {.importc: "QGraphicsColorizeEffect_new2".}
proc fcQGraphicsColorizeEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_metaObject".}
proc fcQGraphicsColorizeEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsColorizeEffect_metacast".}
proc fcQGraphicsColorizeEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsColorizeEffect_metacall".}
proc fcQGraphicsColorizeEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr".}
proc fcQGraphicsColorizeEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf8".}
proc fcQGraphicsColorizeEffect_color(self: pointer, ): pointer {.importc: "QGraphicsColorizeEffect_color".}
proc fcQGraphicsColorizeEffect_strength(self: pointer, ): float64 {.importc: "QGraphicsColorizeEffect_strength".}
proc fcQGraphicsColorizeEffect_setColor(self: pointer, c: pointer): void {.importc: "QGraphicsColorizeEffect_setColor".}
proc fcQGraphicsColorizeEffect_setStrength(self: pointer, strength: float64): void {.importc: "QGraphicsColorizeEffect_setStrength".}
proc fcQGraphicsColorizeEffect_colorChanged(self: pointer, color: pointer): void {.importc: "QGraphicsColorizeEffect_colorChanged".}
proc fQGraphicsColorizeEffect_connect_colorChanged(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_connect_colorChanged".}
proc fcQGraphicsColorizeEffect_strengthChanged(self: pointer, strength: float64): void {.importc: "QGraphicsColorizeEffect_strengthChanged".}
proc fQGraphicsColorizeEffect_connect_strengthChanged(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_connect_strengthChanged".}
proc fcQGraphicsColorizeEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr2".}
proc fcQGraphicsColorizeEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsColorizeEffect_tr3".}
proc fcQGraphicsColorizeEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf82".}
proc fcQGraphicsColorizeEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsColorizeEffect_trUtf83".}
proc fQGraphicsColorizeEffect_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsColorizeEffect_virtualbase_metaObject".}
proc fcQGraphicsColorizeEffect_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_metaObject".}
proc fQGraphicsColorizeEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsColorizeEffect_virtualbase_metacast".}
proc fcQGraphicsColorizeEffect_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_metacast".}
proc fQGraphicsColorizeEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsColorizeEffect_virtualbase_metacall".}
proc fcQGraphicsColorizeEffect_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_metacall".}
proc fQGraphicsColorizeEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_draw".}
proc fcQGraphicsColorizeEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_draw".}
proc fQGraphicsColorizeEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer{.importc: "QGraphicsColorizeEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsColorizeEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_boundingRectFor".}
proc fQGraphicsColorizeEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsColorizeEffect_virtualbase_sourceChanged".}
proc fcQGraphicsColorizeEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_sourceChanged".}
proc fQGraphicsColorizeEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsColorizeEffect_virtualbase_event".}
proc fcQGraphicsColorizeEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_event".}
proc fQGraphicsColorizeEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsColorizeEffect_virtualbase_eventFilter".}
proc fcQGraphicsColorizeEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_eventFilter".}
proc fQGraphicsColorizeEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_timerEvent".}
proc fcQGraphicsColorizeEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_timerEvent".}
proc fQGraphicsColorizeEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_childEvent".}
proc fcQGraphicsColorizeEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_childEvent".}
proc fQGraphicsColorizeEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_customEvent".}
proc fcQGraphicsColorizeEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_customEvent".}
proc fQGraphicsColorizeEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_connectNotify".}
proc fcQGraphicsColorizeEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_connectNotify".}
proc fQGraphicsColorizeEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsColorizeEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsColorizeEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsColorizeEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsColorizeEffect_staticMetaObject(): pointer {.importc: "QGraphicsColorizeEffect_staticMetaObject".}
proc fcQGraphicsColorizeEffect_delete(self: pointer) {.importc: "QGraphicsColorizeEffect_delete".}
proc fcQGraphicsBlurEffect_new(): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new".}
proc fcQGraphicsBlurEffect_new2(parent: pointer): ptr cQGraphicsBlurEffect {.importc: "QGraphicsBlurEffect_new2".}
proc fcQGraphicsBlurEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsBlurEffect_metaObject".}
proc fcQGraphicsBlurEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsBlurEffect_metacast".}
proc fcQGraphicsBlurEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsBlurEffect_metacall".}
proc fcQGraphicsBlurEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr".}
proc fcQGraphicsBlurEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf8".}
proc fcQGraphicsBlurEffect_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsBlurEffect_boundingRectFor".}
proc fcQGraphicsBlurEffect_blurRadius(self: pointer, ): float64 {.importc: "QGraphicsBlurEffect_blurRadius".}
proc fcQGraphicsBlurEffect_blurHints(self: pointer, ): cint {.importc: "QGraphicsBlurEffect_blurHints".}
proc fcQGraphicsBlurEffect_setBlurRadius(self: pointer, blurRadius: float64): void {.importc: "QGraphicsBlurEffect_setBlurRadius".}
proc fcQGraphicsBlurEffect_setBlurHints(self: pointer, hints: cint): void {.importc: "QGraphicsBlurEffect_setBlurHints".}
proc fcQGraphicsBlurEffect_blurRadiusChanged(self: pointer, blurRadius: float64): void {.importc: "QGraphicsBlurEffect_blurRadiusChanged".}
proc fQGraphicsBlurEffect_connect_blurRadiusChanged(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_connect_blurRadiusChanged".}
proc fcQGraphicsBlurEffect_blurHintsChanged(self: pointer, hints: cint): void {.importc: "QGraphicsBlurEffect_blurHintsChanged".}
proc fQGraphicsBlurEffect_connect_blurHintsChanged(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_connect_blurHintsChanged".}
proc fcQGraphicsBlurEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr2".}
proc fcQGraphicsBlurEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsBlurEffect_tr3".}
proc fcQGraphicsBlurEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf82".}
proc fcQGraphicsBlurEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsBlurEffect_trUtf83".}
proc fQGraphicsBlurEffect_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsBlurEffect_virtualbase_metaObject".}
proc fcQGraphicsBlurEffect_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_metaObject".}
proc fQGraphicsBlurEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsBlurEffect_virtualbase_metacast".}
proc fcQGraphicsBlurEffect_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_metacast".}
proc fQGraphicsBlurEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsBlurEffect_virtualbase_metacall".}
proc fcQGraphicsBlurEffect_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_metacall".}
proc fQGraphicsBlurEffect_virtualbase_boundingRectFor(self: pointer, rect: pointer): pointer{.importc: "QGraphicsBlurEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsBlurEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_boundingRectFor".}
proc fQGraphicsBlurEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_draw".}
proc fcQGraphicsBlurEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_draw".}
proc fQGraphicsBlurEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsBlurEffect_virtualbase_sourceChanged".}
proc fcQGraphicsBlurEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_sourceChanged".}
proc fQGraphicsBlurEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsBlurEffect_virtualbase_event".}
proc fcQGraphicsBlurEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_event".}
proc fQGraphicsBlurEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsBlurEffect_virtualbase_eventFilter".}
proc fcQGraphicsBlurEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_eventFilter".}
proc fQGraphicsBlurEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_timerEvent".}
proc fcQGraphicsBlurEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_timerEvent".}
proc fQGraphicsBlurEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_childEvent".}
proc fcQGraphicsBlurEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_childEvent".}
proc fQGraphicsBlurEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_customEvent".}
proc fcQGraphicsBlurEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_customEvent".}
proc fQGraphicsBlurEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_connectNotify".}
proc fcQGraphicsBlurEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_connectNotify".}
proc fQGraphicsBlurEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsBlurEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsBlurEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsBlurEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsBlurEffect_staticMetaObject(): pointer {.importc: "QGraphicsBlurEffect_staticMetaObject".}
proc fcQGraphicsBlurEffect_delete(self: pointer) {.importc: "QGraphicsBlurEffect_delete".}
proc fcQGraphicsDropShadowEffect_new(): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new".}
proc fcQGraphicsDropShadowEffect_new2(parent: pointer): ptr cQGraphicsDropShadowEffect {.importc: "QGraphicsDropShadowEffect_new2".}
proc fcQGraphicsDropShadowEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_metaObject".}
proc fcQGraphicsDropShadowEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsDropShadowEffect_metacast".}
proc fcQGraphicsDropShadowEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsDropShadowEffect_metacall".}
proc fcQGraphicsDropShadowEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr".}
proc fcQGraphicsDropShadowEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf8".}
proc fcQGraphicsDropShadowEffect_boundingRectFor(self: pointer, rect: pointer): pointer {.importc: "QGraphicsDropShadowEffect_boundingRectFor".}
proc fcQGraphicsDropShadowEffect_offset(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_offset".}
proc fcQGraphicsDropShadowEffect_xOffset(self: pointer, ): float64 {.importc: "QGraphicsDropShadowEffect_xOffset".}
proc fcQGraphicsDropShadowEffect_yOffset(self: pointer, ): float64 {.importc: "QGraphicsDropShadowEffect_yOffset".}
proc fcQGraphicsDropShadowEffect_blurRadius(self: pointer, ): float64 {.importc: "QGraphicsDropShadowEffect_blurRadius".}
proc fcQGraphicsDropShadowEffect_color(self: pointer, ): pointer {.importc: "QGraphicsDropShadowEffect_color".}
proc fcQGraphicsDropShadowEffect_setOffset(self: pointer, ofs: pointer): void {.importc: "QGraphicsDropShadowEffect_setOffset".}
proc fcQGraphicsDropShadowEffect_setOffset2(self: pointer, dx: float64, dy: float64): void {.importc: "QGraphicsDropShadowEffect_setOffset2".}
proc fcQGraphicsDropShadowEffect_setOffsetWithQreal(self: pointer, d: float64): void {.importc: "QGraphicsDropShadowEffect_setOffsetWithQreal".}
proc fcQGraphicsDropShadowEffect_setXOffset(self: pointer, dx: float64): void {.importc: "QGraphicsDropShadowEffect_setXOffset".}
proc fcQGraphicsDropShadowEffect_setYOffset(self: pointer, dy: float64): void {.importc: "QGraphicsDropShadowEffect_setYOffset".}
proc fcQGraphicsDropShadowEffect_setBlurRadius(self: pointer, blurRadius: float64): void {.importc: "QGraphicsDropShadowEffect_setBlurRadius".}
proc fcQGraphicsDropShadowEffect_setColor(self: pointer, color: pointer): void {.importc: "QGraphicsDropShadowEffect_setColor".}
proc fcQGraphicsDropShadowEffect_offsetChanged(self: pointer, offset: pointer): void {.importc: "QGraphicsDropShadowEffect_offsetChanged".}
proc fQGraphicsDropShadowEffect_connect_offsetChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_connect_offsetChanged".}
proc fcQGraphicsDropShadowEffect_blurRadiusChanged(self: pointer, blurRadius: float64): void {.importc: "QGraphicsDropShadowEffect_blurRadiusChanged".}
proc fQGraphicsDropShadowEffect_connect_blurRadiusChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_connect_blurRadiusChanged".}
proc fcQGraphicsDropShadowEffect_colorChanged(self: pointer, color: pointer): void {.importc: "QGraphicsDropShadowEffect_colorChanged".}
proc fQGraphicsDropShadowEffect_connect_colorChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_connect_colorChanged".}
proc fcQGraphicsDropShadowEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr2".}
proc fcQGraphicsDropShadowEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_tr3".}
proc fcQGraphicsDropShadowEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf82".}
proc fcQGraphicsDropShadowEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsDropShadowEffect_trUtf83".}
proc fQGraphicsDropShadowEffect_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsDropShadowEffect_virtualbase_metaObject".}
proc fcQGraphicsDropShadowEffect_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_metaObject".}
proc fQGraphicsDropShadowEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsDropShadowEffect_virtualbase_metacast".}
proc fcQGraphicsDropShadowEffect_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_metacast".}
proc fQGraphicsDropShadowEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsDropShadowEffect_virtualbase_metacall".}
proc fcQGraphicsDropShadowEffect_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_metacall".}
proc fQGraphicsDropShadowEffect_virtualbase_boundingRectFor(self: pointer, rect: pointer): pointer{.importc: "QGraphicsDropShadowEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsDropShadowEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_boundingRectFor".}
proc fQGraphicsDropShadowEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_draw".}
proc fcQGraphicsDropShadowEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_draw".}
proc fQGraphicsDropShadowEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsDropShadowEffect_virtualbase_sourceChanged".}
proc fcQGraphicsDropShadowEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_sourceChanged".}
proc fQGraphicsDropShadowEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsDropShadowEffect_virtualbase_event".}
proc fcQGraphicsDropShadowEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_event".}
proc fQGraphicsDropShadowEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsDropShadowEffect_virtualbase_eventFilter".}
proc fcQGraphicsDropShadowEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_eventFilter".}
proc fQGraphicsDropShadowEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_timerEvent".}
proc fcQGraphicsDropShadowEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_timerEvent".}
proc fQGraphicsDropShadowEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_childEvent".}
proc fcQGraphicsDropShadowEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_childEvent".}
proc fQGraphicsDropShadowEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_customEvent".}
proc fcQGraphicsDropShadowEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_customEvent".}
proc fQGraphicsDropShadowEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_connectNotify".}
proc fcQGraphicsDropShadowEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_connectNotify".}
proc fQGraphicsDropShadowEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsDropShadowEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsDropShadowEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsDropShadowEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsDropShadowEffect_staticMetaObject(): pointer {.importc: "QGraphicsDropShadowEffect_staticMetaObject".}
proc fcQGraphicsDropShadowEffect_delete(self: pointer) {.importc: "QGraphicsDropShadowEffect_delete".}
proc fcQGraphicsOpacityEffect_new(): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new".}
proc fcQGraphicsOpacityEffect_new2(parent: pointer): ptr cQGraphicsOpacityEffect {.importc: "QGraphicsOpacityEffect_new2".}
proc fcQGraphicsOpacityEffect_metaObject(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_metaObject".}
proc fcQGraphicsOpacityEffect_metacast(self: pointer, param1: cstring): pointer {.importc: "QGraphicsOpacityEffect_metacast".}
proc fcQGraphicsOpacityEffect_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QGraphicsOpacityEffect_metacall".}
proc fcQGraphicsOpacityEffect_tr(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr".}
proc fcQGraphicsOpacityEffect_trUtf8(s: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf8".}
proc fcQGraphicsOpacityEffect_opacity(self: pointer, ): float64 {.importc: "QGraphicsOpacityEffect_opacity".}
proc fcQGraphicsOpacityEffect_opacityMask(self: pointer, ): pointer {.importc: "QGraphicsOpacityEffect_opacityMask".}
proc fcQGraphicsOpacityEffect_setOpacity(self: pointer, opacity: float64): void {.importc: "QGraphicsOpacityEffect_setOpacity".}
proc fcQGraphicsOpacityEffect_setOpacityMask(self: pointer, mask: pointer): void {.importc: "QGraphicsOpacityEffect_setOpacityMask".}
proc fcQGraphicsOpacityEffect_opacityChanged(self: pointer, opacity: float64): void {.importc: "QGraphicsOpacityEffect_opacityChanged".}
proc fQGraphicsOpacityEffect_connect_opacityChanged(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_connect_opacityChanged".}
proc fcQGraphicsOpacityEffect_opacityMaskChanged(self: pointer, mask: pointer): void {.importc: "QGraphicsOpacityEffect_opacityMaskChanged".}
proc fQGraphicsOpacityEffect_connect_opacityMaskChanged(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_connect_opacityMaskChanged".}
proc fcQGraphicsOpacityEffect_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr2".}
proc fcQGraphicsOpacityEffect_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsOpacityEffect_tr3".}
proc fcQGraphicsOpacityEffect_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf82".}
proc fcQGraphicsOpacityEffect_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QGraphicsOpacityEffect_trUtf83".}
proc fQGraphicsOpacityEffect_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QGraphicsOpacityEffect_virtualbase_metaObject".}
proc fcQGraphicsOpacityEffect_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_metaObject".}
proc fQGraphicsOpacityEffect_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QGraphicsOpacityEffect_virtualbase_metacast".}
proc fcQGraphicsOpacityEffect_override_virtual_metacast(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_metacast".}
proc fQGraphicsOpacityEffect_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QGraphicsOpacityEffect_virtualbase_metacall".}
proc fcQGraphicsOpacityEffect_override_virtual_metacall(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_metacall".}
proc fQGraphicsOpacityEffect_virtualbase_draw(self: pointer, painter: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_draw".}
proc fcQGraphicsOpacityEffect_override_virtual_draw(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_draw".}
proc fQGraphicsOpacityEffect_virtualbase_boundingRectFor(self: pointer, sourceRect: pointer): pointer{.importc: "QGraphicsOpacityEffect_virtualbase_boundingRectFor".}
proc fcQGraphicsOpacityEffect_override_virtual_boundingRectFor(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_boundingRectFor".}
proc fQGraphicsOpacityEffect_virtualbase_sourceChanged(self: pointer, flags: cint): void{.importc: "QGraphicsOpacityEffect_virtualbase_sourceChanged".}
proc fcQGraphicsOpacityEffect_override_virtual_sourceChanged(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_sourceChanged".}
proc fQGraphicsOpacityEffect_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QGraphicsOpacityEffect_virtualbase_event".}
proc fcQGraphicsOpacityEffect_override_virtual_event(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_event".}
proc fQGraphicsOpacityEffect_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QGraphicsOpacityEffect_virtualbase_eventFilter".}
proc fcQGraphicsOpacityEffect_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_eventFilter".}
proc fQGraphicsOpacityEffect_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_timerEvent".}
proc fcQGraphicsOpacityEffect_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_timerEvent".}
proc fQGraphicsOpacityEffect_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_childEvent".}
proc fcQGraphicsOpacityEffect_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_childEvent".}
proc fQGraphicsOpacityEffect_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_customEvent".}
proc fcQGraphicsOpacityEffect_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_customEvent".}
proc fQGraphicsOpacityEffect_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_connectNotify".}
proc fcQGraphicsOpacityEffect_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_connectNotify".}
proc fQGraphicsOpacityEffect_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QGraphicsOpacityEffect_virtualbase_disconnectNotify".}
proc fcQGraphicsOpacityEffect_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QGraphicsOpacityEffect_override_virtual_disconnectNotify".}
proc fcQGraphicsOpacityEffect_staticMetaObject(): pointer {.importc: "QGraphicsOpacityEffect_staticMetaObject".}
proc fcQGraphicsOpacityEffect_delete(self: pointer) {.importc: "QGraphicsOpacityEffect_delete".}


func init*(T: type QGraphicsEffect, h: ptr cQGraphicsEffect): QGraphicsEffect =
  T(h: h)
proc create*(T: type QGraphicsEffect, ): QGraphicsEffect =

  QGraphicsEffect.init(fcQGraphicsEffect_new())
proc create*(T: type QGraphicsEffect, parent: gen_qobject.QObject): QGraphicsEffect =

  QGraphicsEffect.init(fcQGraphicsEffect_new2(parent.h))
proc metaObject*(self: QGraphicsEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsEffect_metaObject(self.h))

proc metacast*(self: QGraphicsEffect, param1: cstring): pointer =

  fcQGraphicsEffect_metacast(self.h, param1)

proc metacall*(self: QGraphicsEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsEffect, s: cstring): string =

  let v_ms = fcQGraphicsEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsEffect, s: cstring): string =

  let v_ms = fcQGraphicsEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: QGraphicsEffect, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsEffect_boundingRectFor(self.h, sourceRect.h))

proc boundingRect*(self: QGraphicsEffect, ): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsEffect_boundingRect(self.h))

proc isEnabled*(self: QGraphicsEffect, ): bool =

  fcQGraphicsEffect_isEnabled(self.h)

proc setEnabled*(self: QGraphicsEffect, enable: bool): void =

  fcQGraphicsEffect_setEnabled(self.h, enable)

proc update*(self: QGraphicsEffect, ): void =

  fcQGraphicsEffect_update(self.h)

proc enabledChanged*(self: QGraphicsEffect, enabled: bool): void =

  fcQGraphicsEffect_enabledChanged(self.h, enabled)

proc miqt_exec_callback_QGraphicsEffect_enabledChanged(slot: int, enabled: bool) {.exportc.} =
  type Cb = proc(enabled: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = enabled


  nimfunc[](slotval1)

proc onenabledChanged*(self: QGraphicsEffect, slot: proc(enabled: bool)) =
  type Cb = proc(enabled: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsEffect_connect_enabledChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGraphicsEffect, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsEffect_virtualbase_metaObject(self.h))

type QGraphicsEffectmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_metaObject(self: ptr cQGraphicsEffect, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsEffect_metaObject ".} =
  type Cb = proc(super: QGraphicsEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsEffect(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsEffect, param1: cstring): pointer =


  fQGraphicsEffect_virtualbase_metacast(self.h, param1)

type QGraphicsEffectmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_metacast(self: ptr cQGraphicsEffect, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsEffect_metacast ".} =
  type Cb = proc(super: QGraphicsEffectmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsEffect(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsEffectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_metacall(self: ptr cQGraphicsEffect, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsEffect_metacall ".} =
  type Cb = proc(super: QGraphicsEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsEffect(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_boundingRectFor(self: QGraphicsEffect, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

type QGraphicsEffectboundingRectForBase* = proc(sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
proc onboundingRectFor*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_boundingRectFor(self: ptr cQGraphicsEffect, slot: int, sourceRect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsEffect_boundingRectFor ".} =
  type Cb = proc(super: QGraphicsEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceRect: gen_qrect.QRectF): auto =
    callVirtualBase_boundingRectFor(QGraphicsEffect(h: self), sourceRect)
  let slotval1 = gen_qrect.QRectF(h: sourceRect)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
type QGraphicsEffectdrawBase* = proc(painter: gen_qpainter.QPainter): void
proc ondraw*(self: QGraphicsEffect, slot: proc(painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_draw(self: ptr cQGraphicsEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_draw ".} =
  type Cb = proc(painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](slotval1)
proc callVirtualBase_sourceChanged(self: QGraphicsEffect, flags: QGraphicsEffectChangeFlag): void =


  fQGraphicsEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsEffectsourceChangedBase* = proc(flags: QGraphicsEffectChangeFlag): void
proc onsourceChanged*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_sourceChanged(self: ptr cQGraphicsEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsEffect_sourceChanged ".} =
  type Cb = proc(super: QGraphicsEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: QGraphicsEffectChangeFlag): auto =
    callVirtualBase_sourceChanged(QGraphicsEffect(h: self), flags)
  let slotval1 = QGraphicsEffectChangeFlag(flags)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsEffect, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsEffect_virtualbase_event(self.h, event.h)

type QGraphicsEffecteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffecteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_event(self: ptr cQGraphicsEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEffect_event ".} =
  type Cb = proc(super: QGraphicsEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsEffect, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsEffecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_eventFilter(self: ptr cQGraphicsEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsEffect_eventFilter ".} =
  type Cb = proc(super: QGraphicsEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsEffect(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsEffect, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsEffecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_timerEvent(self: ptr cQGraphicsEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_timerEvent ".} =
  type Cb = proc(super: QGraphicsEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsEffect, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsEffectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_childEvent(self: ptr cQGraphicsEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_childEvent ".} =
  type Cb = proc(super: QGraphicsEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsEffect, event: gen_qcoreevent.QEvent): void =


  fQGraphicsEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsEffectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_customEvent(self: ptr cQGraphicsEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_customEvent ".} =
  type Cb = proc(super: QGraphicsEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsEffectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_connectNotify(self: ptr cQGraphicsEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_connectNotify ".} =
  type Cb = proc(super: QGraphicsEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsEffectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsEffect, slot: proc(super: QGraphicsEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsEffect_disconnectNotify(self: ptr cQGraphicsEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsEffect_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsEffect): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsEffect_staticMetaObject())
proc delete*(self: QGraphicsEffect) =
  fcQGraphicsEffect_delete(self.h)

func init*(T: type QGraphicsColorizeEffect, h: ptr cQGraphicsColorizeEffect): QGraphicsColorizeEffect =
  T(h: h)
proc create*(T: type QGraphicsColorizeEffect, ): QGraphicsColorizeEffect =

  QGraphicsColorizeEffect.init(fcQGraphicsColorizeEffect_new())
proc create*(T: type QGraphicsColorizeEffect, parent: gen_qobject.QObject): QGraphicsColorizeEffect =

  QGraphicsColorizeEffect.init(fcQGraphicsColorizeEffect_new2(parent.h))
proc metaObject*(self: QGraphicsColorizeEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsColorizeEffect_metaObject(self.h))

proc metacast*(self: QGraphicsColorizeEffect, param1: cstring): pointer =

  fcQGraphicsColorizeEffect_metacast(self.h, param1)

proc metacall*(self: QGraphicsColorizeEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsColorizeEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsColorizeEffect, s: cstring): string =

  let v_ms = fcQGraphicsColorizeEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsColorizeEffect, s: cstring): string =

  let v_ms = fcQGraphicsColorizeEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc color*(self: QGraphicsColorizeEffect, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQGraphicsColorizeEffect_color(self.h))

proc strength*(self: QGraphicsColorizeEffect, ): float64 =

  fcQGraphicsColorizeEffect_strength(self.h)

proc setColor*(self: QGraphicsColorizeEffect, c: gen_qcolor.QColor): void =

  fcQGraphicsColorizeEffect_setColor(self.h, c.h)

proc setStrength*(self: QGraphicsColorizeEffect, strength: float64): void =

  fcQGraphicsColorizeEffect_setStrength(self.h, strength)

proc colorChanged*(self: QGraphicsColorizeEffect, color: gen_qcolor.QColor): void =

  fcQGraphicsColorizeEffect_colorChanged(self.h, color.h)

proc miqt_exec_callback_QGraphicsColorizeEffect_colorChanged(slot: int, color: pointer) {.exportc.} =
  type Cb = proc(color: gen_qcolor.QColor)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: color)


  nimfunc[](slotval1)

proc oncolorChanged*(self: QGraphicsColorizeEffect, slot: proc(color: gen_qcolor.QColor)) =
  type Cb = proc(color: gen_qcolor.QColor)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsColorizeEffect_connect_colorChanged(self.h, cast[int](addr tmp[]))
proc strengthChanged*(self: QGraphicsColorizeEffect, strength: float64): void =

  fcQGraphicsColorizeEffect_strengthChanged(self.h, strength)

proc miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged(slot: int, strength: float64) {.exportc.} =
  type Cb = proc(strength: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = strength


  nimfunc[](slotval1)

proc onstrengthChanged*(self: QGraphicsColorizeEffect, slot: proc(strength: float64)) =
  type Cb = proc(strength: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsColorizeEffect_connect_strengthChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsColorizeEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsColorizeEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsColorizeEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsColorizeEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsColorizeEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsColorizeEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsColorizeEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsColorizeEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGraphicsColorizeEffect, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsColorizeEffect_virtualbase_metaObject(self.h))

type QGraphicsColorizeEffectmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_metaObject(self: ptr cQGraphicsColorizeEffect, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_metaObject ".} =
  type Cb = proc(super: QGraphicsColorizeEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsColorizeEffect(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsColorizeEffect, param1: cstring): pointer =


  fQGraphicsColorizeEffect_virtualbase_metacast(self.h, param1)

type QGraphicsColorizeEffectmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_metacast(self: ptr cQGraphicsColorizeEffect, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_metacast ".} =
  type Cb = proc(super: QGraphicsColorizeEffectmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsColorizeEffect(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsColorizeEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsColorizeEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsColorizeEffectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_metacall(self: ptr cQGraphicsColorizeEffect, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_metacall ".} =
  type Cb = proc(super: QGraphicsColorizeEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsColorizeEffect(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_draw(self: QGraphicsColorizeEffect, painter: gen_qpainter.QPainter): void =


  fQGraphicsColorizeEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsColorizeEffectdrawBase* = proc(painter: gen_qpainter.QPainter): void
proc ondraw*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectdrawBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectdrawBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_draw(self: ptr cQGraphicsColorizeEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_draw ".} =
  type Cb = proc(super: QGraphicsColorizeEffectdrawBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_draw(QGraphicsColorizeEffect(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_boundingRectFor(self: QGraphicsColorizeEffect, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsColorizeEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

type QGraphicsColorizeEffectboundingRectForBase* = proc(sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
proc onboundingRectFor*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_boundingRectFor(self: ptr cQGraphicsColorizeEffect, slot: int, sourceRect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_boundingRectFor ".} =
  type Cb = proc(super: QGraphicsColorizeEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceRect: gen_qrect.QRectF): auto =
    callVirtualBase_boundingRectFor(QGraphicsColorizeEffect(h: self), sourceRect)
  let slotval1 = gen_qrect.QRectF(h: sourceRect)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sourceChanged(self: QGraphicsColorizeEffect, flags: QGraphicsEffectChangeFlag): void =


  fQGraphicsColorizeEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsColorizeEffectsourceChangedBase* = proc(flags: QGraphicsEffectChangeFlag): void
proc onsourceChanged*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_sourceChanged(self: ptr cQGraphicsColorizeEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_sourceChanged ".} =
  type Cb = proc(super: QGraphicsColorizeEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: QGraphicsEffectChangeFlag): auto =
    callVirtualBase_sourceChanged(QGraphicsColorizeEffect(h: self), flags)
  let slotval1 = QGraphicsEffectChangeFlag(flags)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsColorizeEffect, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsColorizeEffect_virtualbase_event(self.h, event.h)

type QGraphicsColorizeEffecteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffecteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_event(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_event ".} =
  type Cb = proc(super: QGraphicsColorizeEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsColorizeEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsColorizeEffect, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsColorizeEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsColorizeEffecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_eventFilter(self: ptr cQGraphicsColorizeEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_eventFilter ".} =
  type Cb = proc(super: QGraphicsColorizeEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsColorizeEffect(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsColorizeEffect, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsColorizeEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsColorizeEffecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_timerEvent(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_timerEvent ".} =
  type Cb = proc(super: QGraphicsColorizeEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsColorizeEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsColorizeEffect, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsColorizeEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsColorizeEffectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_childEvent(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_childEvent ".} =
  type Cb = proc(super: QGraphicsColorizeEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsColorizeEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsColorizeEffect, event: gen_qcoreevent.QEvent): void =


  fQGraphicsColorizeEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsColorizeEffectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_customEvent(self: ptr cQGraphicsColorizeEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_customEvent ".} =
  type Cb = proc(super: QGraphicsColorizeEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsColorizeEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsColorizeEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsColorizeEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsColorizeEffectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_connectNotify(self: ptr cQGraphicsColorizeEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_connectNotify ".} =
  type Cb = proc(super: QGraphicsColorizeEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsColorizeEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsColorizeEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsColorizeEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsColorizeEffectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsColorizeEffect, slot: proc(super: QGraphicsColorizeEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsColorizeEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsColorizeEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsColorizeEffect_disconnectNotify(self: ptr cQGraphicsColorizeEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsColorizeEffect_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsColorizeEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsColorizeEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsColorizeEffect): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsColorizeEffect_staticMetaObject())
proc delete*(self: QGraphicsColorizeEffect) =
  fcQGraphicsColorizeEffect_delete(self.h)

func init*(T: type QGraphicsBlurEffect, h: ptr cQGraphicsBlurEffect): QGraphicsBlurEffect =
  T(h: h)
proc create*(T: type QGraphicsBlurEffect, ): QGraphicsBlurEffect =

  QGraphicsBlurEffect.init(fcQGraphicsBlurEffect_new())
proc create*(T: type QGraphicsBlurEffect, parent: gen_qobject.QObject): QGraphicsBlurEffect =

  QGraphicsBlurEffect.init(fcQGraphicsBlurEffect_new2(parent.h))
proc metaObject*(self: QGraphicsBlurEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsBlurEffect_metaObject(self.h))

proc metacast*(self: QGraphicsBlurEffect, param1: cstring): pointer =

  fcQGraphicsBlurEffect_metacast(self.h, param1)

proc metacall*(self: QGraphicsBlurEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsBlurEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsBlurEffect, s: cstring): string =

  let v_ms = fcQGraphicsBlurEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsBlurEffect, s: cstring): string =

  let v_ms = fcQGraphicsBlurEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: QGraphicsBlurEffect, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsBlurEffect_boundingRectFor(self.h, rect.h))

proc blurRadius*(self: QGraphicsBlurEffect, ): float64 =

  fcQGraphicsBlurEffect_blurRadius(self.h)

proc blurHints*(self: QGraphicsBlurEffect, ): QGraphicsBlurEffectBlurHint =

  QGraphicsBlurEffectBlurHint(fcQGraphicsBlurEffect_blurHints(self.h))

proc setBlurRadius*(self: QGraphicsBlurEffect, blurRadius: float64): void =

  fcQGraphicsBlurEffect_setBlurRadius(self.h, blurRadius)

proc setBlurHints*(self: QGraphicsBlurEffect, hints: QGraphicsBlurEffectBlurHint): void =

  fcQGraphicsBlurEffect_setBlurHints(self.h, cint(hints))

proc blurRadiusChanged*(self: QGraphicsBlurEffect, blurRadius: float64): void =

  fcQGraphicsBlurEffect_blurRadiusChanged(self.h, blurRadius)

proc miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged(slot: int, blurRadius: float64) {.exportc.} =
  type Cb = proc(blurRadius: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = blurRadius


  nimfunc[](slotval1)

proc onblurRadiusChanged*(self: QGraphicsBlurEffect, slot: proc(blurRadius: float64)) =
  type Cb = proc(blurRadius: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsBlurEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]))
proc blurHintsChanged*(self: QGraphicsBlurEffect, hints: QGraphicsBlurEffectBlurHint): void =

  fcQGraphicsBlurEffect_blurHintsChanged(self.h, cint(hints))

proc miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged(slot: int, hints: cint) {.exportc.} =
  type Cb = proc(hints: QGraphicsBlurEffectBlurHint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QGraphicsBlurEffectBlurHint(hints)


  nimfunc[](slotval1)

proc onblurHintsChanged*(self: QGraphicsBlurEffect, slot: proc(hints: QGraphicsBlurEffectBlurHint)) =
  type Cb = proc(hints: QGraphicsBlurEffectBlurHint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsBlurEffect_connect_blurHintsChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsBlurEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsBlurEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsBlurEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsBlurEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsBlurEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsBlurEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsBlurEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsBlurEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGraphicsBlurEffect, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsBlurEffect_virtualbase_metaObject(self.h))

type QGraphicsBlurEffectmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_metaObject(self: ptr cQGraphicsBlurEffect, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_metaObject ".} =
  type Cb = proc(super: QGraphicsBlurEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsBlurEffect(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsBlurEffect, param1: cstring): pointer =


  fQGraphicsBlurEffect_virtualbase_metacast(self.h, param1)

type QGraphicsBlurEffectmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_metacast(self: ptr cQGraphicsBlurEffect, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_metacast ".} =
  type Cb = proc(super: QGraphicsBlurEffectmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsBlurEffect(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsBlurEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsBlurEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsBlurEffectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_metacall(self: ptr cQGraphicsBlurEffect, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_metacall ".} =
  type Cb = proc(super: QGraphicsBlurEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsBlurEffect(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_boundingRectFor(self: QGraphicsBlurEffect, rect: gen_qrect.QRectF): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsBlurEffect_virtualbase_boundingRectFor(self.h, rect.h))

type QGraphicsBlurEffectboundingRectForBase* = proc(rect: gen_qrect.QRectF): gen_qrect.QRectF
proc onboundingRectFor*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectboundingRectForBase, rect: gen_qrect.QRectF): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectboundingRectForBase, rect: gen_qrect.QRectF): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_boundingRectFor(self: ptr cQGraphicsBlurEffect, slot: int, rect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_boundingRectFor ".} =
  type Cb = proc(super: QGraphicsBlurEffectboundingRectForBase, rect: gen_qrect.QRectF): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_boundingRectFor(QGraphicsBlurEffect(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_draw(self: QGraphicsBlurEffect, painter: gen_qpainter.QPainter): void =


  fQGraphicsBlurEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsBlurEffectdrawBase* = proc(painter: gen_qpainter.QPainter): void
proc ondraw*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectdrawBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectdrawBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_draw(self: ptr cQGraphicsBlurEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_draw ".} =
  type Cb = proc(super: QGraphicsBlurEffectdrawBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_draw(QGraphicsBlurEffect(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sourceChanged(self: QGraphicsBlurEffect, flags: QGraphicsEffectChangeFlag): void =


  fQGraphicsBlurEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsBlurEffectsourceChangedBase* = proc(flags: QGraphicsEffectChangeFlag): void
proc onsourceChanged*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_sourceChanged(self: ptr cQGraphicsBlurEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_sourceChanged ".} =
  type Cb = proc(super: QGraphicsBlurEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: QGraphicsEffectChangeFlag): auto =
    callVirtualBase_sourceChanged(QGraphicsBlurEffect(h: self), flags)
  let slotval1 = QGraphicsEffectChangeFlag(flags)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsBlurEffect, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsBlurEffect_virtualbase_event(self.h, event.h)

type QGraphicsBlurEffecteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffecteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_event(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_event ".} =
  type Cb = proc(super: QGraphicsBlurEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsBlurEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsBlurEffect, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsBlurEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsBlurEffecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_eventFilter(self: ptr cQGraphicsBlurEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_eventFilter ".} =
  type Cb = proc(super: QGraphicsBlurEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsBlurEffect(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsBlurEffect, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsBlurEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsBlurEffecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_timerEvent(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_timerEvent ".} =
  type Cb = proc(super: QGraphicsBlurEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsBlurEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsBlurEffect, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsBlurEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsBlurEffectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_childEvent(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_childEvent ".} =
  type Cb = proc(super: QGraphicsBlurEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsBlurEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsBlurEffect, event: gen_qcoreevent.QEvent): void =


  fQGraphicsBlurEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsBlurEffectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_customEvent(self: ptr cQGraphicsBlurEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_customEvent ".} =
  type Cb = proc(super: QGraphicsBlurEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsBlurEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsBlurEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsBlurEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsBlurEffectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_connectNotify(self: ptr cQGraphicsBlurEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_connectNotify ".} =
  type Cb = proc(super: QGraphicsBlurEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsBlurEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsBlurEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsBlurEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsBlurEffectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsBlurEffect, slot: proc(super: QGraphicsBlurEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsBlurEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsBlurEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsBlurEffect_disconnectNotify(self: ptr cQGraphicsBlurEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsBlurEffect_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsBlurEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsBlurEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsBlurEffect): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsBlurEffect_staticMetaObject())
proc delete*(self: QGraphicsBlurEffect) =
  fcQGraphicsBlurEffect_delete(self.h)

func init*(T: type QGraphicsDropShadowEffect, h: ptr cQGraphicsDropShadowEffect): QGraphicsDropShadowEffect =
  T(h: h)
proc create*(T: type QGraphicsDropShadowEffect, ): QGraphicsDropShadowEffect =

  QGraphicsDropShadowEffect.init(fcQGraphicsDropShadowEffect_new())
proc create*(T: type QGraphicsDropShadowEffect, parent: gen_qobject.QObject): QGraphicsDropShadowEffect =

  QGraphicsDropShadowEffect.init(fcQGraphicsDropShadowEffect_new2(parent.h))
proc metaObject*(self: QGraphicsDropShadowEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsDropShadowEffect_metaObject(self.h))

proc metacast*(self: QGraphicsDropShadowEffect, param1: cstring): pointer =

  fcQGraphicsDropShadowEffect_metacast(self.h, param1)

proc metacall*(self: QGraphicsDropShadowEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsDropShadowEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsDropShadowEffect, s: cstring): string =

  let v_ms = fcQGraphicsDropShadowEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsDropShadowEffect, s: cstring): string =

  let v_ms = fcQGraphicsDropShadowEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc boundingRectFor*(self: QGraphicsDropShadowEffect, rect: gen_qrect.QRectF): gen_qrect.QRectF =

  gen_qrect.QRectF(h: fcQGraphicsDropShadowEffect_boundingRectFor(self.h, rect.h))

proc offset*(self: QGraphicsDropShadowEffect, ): gen_qpoint.QPointF =

  gen_qpoint.QPointF(h: fcQGraphicsDropShadowEffect_offset(self.h))

proc xOffset*(self: QGraphicsDropShadowEffect, ): float64 =

  fcQGraphicsDropShadowEffect_xOffset(self.h)

proc yOffset*(self: QGraphicsDropShadowEffect, ): float64 =

  fcQGraphicsDropShadowEffect_yOffset(self.h)

proc blurRadius*(self: QGraphicsDropShadowEffect, ): float64 =

  fcQGraphicsDropShadowEffect_blurRadius(self.h)

proc color*(self: QGraphicsDropShadowEffect, ): gen_qcolor.QColor =

  gen_qcolor.QColor(h: fcQGraphicsDropShadowEffect_color(self.h))

proc setOffset*(self: QGraphicsDropShadowEffect, ofs: gen_qpoint.QPointF): void =

  fcQGraphicsDropShadowEffect_setOffset(self.h, ofs.h)

proc setOffset2*(self: QGraphicsDropShadowEffect, dx: float64, dy: float64): void =

  fcQGraphicsDropShadowEffect_setOffset2(self.h, dx, dy)

proc setOffsetWithQreal*(self: QGraphicsDropShadowEffect, d: float64): void =

  fcQGraphicsDropShadowEffect_setOffsetWithQreal(self.h, d)

proc setXOffset*(self: QGraphicsDropShadowEffect, dx: float64): void =

  fcQGraphicsDropShadowEffect_setXOffset(self.h, dx)

proc setYOffset*(self: QGraphicsDropShadowEffect, dy: float64): void =

  fcQGraphicsDropShadowEffect_setYOffset(self.h, dy)

proc setBlurRadius*(self: QGraphicsDropShadowEffect, blurRadius: float64): void =

  fcQGraphicsDropShadowEffect_setBlurRadius(self.h, blurRadius)

proc setColor*(self: QGraphicsDropShadowEffect, color: gen_qcolor.QColor): void =

  fcQGraphicsDropShadowEffect_setColor(self.h, color.h)

proc offsetChanged*(self: QGraphicsDropShadowEffect, offset: gen_qpoint.QPointF): void =

  fcQGraphicsDropShadowEffect_offsetChanged(self.h, offset.h)

proc miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged(slot: int, offset: pointer) {.exportc.} =
  type Cb = proc(offset: gen_qpoint.QPointF)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qpoint.QPointF(h: offset)


  nimfunc[](slotval1)

proc onoffsetChanged*(self: QGraphicsDropShadowEffect, slot: proc(offset: gen_qpoint.QPointF)) =
  type Cb = proc(offset: gen_qpoint.QPointF)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsDropShadowEffect_connect_offsetChanged(self.h, cast[int](addr tmp[]))
proc blurRadiusChanged*(self: QGraphicsDropShadowEffect, blurRadius: float64): void =

  fcQGraphicsDropShadowEffect_blurRadiusChanged(self.h, blurRadius)

proc miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged(slot: int, blurRadius: float64) {.exportc.} =
  type Cb = proc(blurRadius: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = blurRadius


  nimfunc[](slotval1)

proc onblurRadiusChanged*(self: QGraphicsDropShadowEffect, slot: proc(blurRadius: float64)) =
  type Cb = proc(blurRadius: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsDropShadowEffect_connect_blurRadiusChanged(self.h, cast[int](addr tmp[]))
proc colorChanged*(self: QGraphicsDropShadowEffect, color: gen_qcolor.QColor): void =

  fcQGraphicsDropShadowEffect_colorChanged(self.h, color.h)

proc miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged(slot: int, color: pointer) {.exportc.} =
  type Cb = proc(color: gen_qcolor.QColor)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qcolor.QColor(h: color)


  nimfunc[](slotval1)

proc oncolorChanged*(self: QGraphicsDropShadowEffect, slot: proc(color: gen_qcolor.QColor)) =
  type Cb = proc(color: gen_qcolor.QColor)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsDropShadowEffect_connect_colorChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsDropShadowEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsDropShadowEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsDropShadowEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsDropShadowEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsDropShadowEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsDropShadowEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsDropShadowEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsDropShadowEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGraphicsDropShadowEffect, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsDropShadowEffect_virtualbase_metaObject(self.h))

type QGraphicsDropShadowEffectmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_metaObject(self: ptr cQGraphicsDropShadowEffect, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_metaObject ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsDropShadowEffect(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsDropShadowEffect, param1: cstring): pointer =


  fQGraphicsDropShadowEffect_virtualbase_metacast(self.h, param1)

type QGraphicsDropShadowEffectmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_metacast(self: ptr cQGraphicsDropShadowEffect, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_metacast ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsDropShadowEffect(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsDropShadowEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsDropShadowEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsDropShadowEffectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_metacall(self: ptr cQGraphicsDropShadowEffect, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_metacall ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsDropShadowEffect(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_boundingRectFor(self: QGraphicsDropShadowEffect, rect: gen_qrect.QRectF): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsDropShadowEffect_virtualbase_boundingRectFor(self.h, rect.h))

type QGraphicsDropShadowEffectboundingRectForBase* = proc(rect: gen_qrect.QRectF): gen_qrect.QRectF
proc onboundingRectFor*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectboundingRectForBase, rect: gen_qrect.QRectF): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectboundingRectForBase, rect: gen_qrect.QRectF): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_boundingRectFor(self: ptr cQGraphicsDropShadowEffect, slot: int, rect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_boundingRectFor ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectboundingRectForBase, rect: gen_qrect.QRectF): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(rect: gen_qrect.QRectF): auto =
    callVirtualBase_boundingRectFor(QGraphicsDropShadowEffect(h: self), rect)
  let slotval1 = gen_qrect.QRectF(h: rect)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_draw(self: QGraphicsDropShadowEffect, painter: gen_qpainter.QPainter): void =


  fQGraphicsDropShadowEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsDropShadowEffectdrawBase* = proc(painter: gen_qpainter.QPainter): void
proc ondraw*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectdrawBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectdrawBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_draw(self: ptr cQGraphicsDropShadowEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_draw ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectdrawBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_draw(QGraphicsDropShadowEffect(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_sourceChanged(self: QGraphicsDropShadowEffect, flags: QGraphicsEffectChangeFlag): void =


  fQGraphicsDropShadowEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsDropShadowEffectsourceChangedBase* = proc(flags: QGraphicsEffectChangeFlag): void
proc onsourceChanged*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_sourceChanged(self: ptr cQGraphicsDropShadowEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_sourceChanged ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: QGraphicsEffectChangeFlag): auto =
    callVirtualBase_sourceChanged(QGraphicsDropShadowEffect(h: self), flags)
  let slotval1 = QGraphicsEffectChangeFlag(flags)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsDropShadowEffect, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsDropShadowEffect_virtualbase_event(self.h, event.h)

type QGraphicsDropShadowEffecteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffecteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_event(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_event ".} =
  type Cb = proc(super: QGraphicsDropShadowEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsDropShadowEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsDropShadowEffect, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsDropShadowEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsDropShadowEffecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_eventFilter(self: ptr cQGraphicsDropShadowEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_eventFilter ".} =
  type Cb = proc(super: QGraphicsDropShadowEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsDropShadowEffect(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsDropShadowEffect, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsDropShadowEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsDropShadowEffecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_timerEvent(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_timerEvent ".} =
  type Cb = proc(super: QGraphicsDropShadowEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsDropShadowEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsDropShadowEffect, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsDropShadowEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsDropShadowEffectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_childEvent(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_childEvent ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsDropShadowEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsDropShadowEffect, event: gen_qcoreevent.QEvent): void =


  fQGraphicsDropShadowEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsDropShadowEffectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_customEvent(self: ptr cQGraphicsDropShadowEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_customEvent ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsDropShadowEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsDropShadowEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsDropShadowEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsDropShadowEffectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_connectNotify(self: ptr cQGraphicsDropShadowEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_connectNotify ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsDropShadowEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsDropShadowEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsDropShadowEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsDropShadowEffectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsDropShadowEffect, slot: proc(super: QGraphicsDropShadowEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsDropShadowEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsDropShadowEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsDropShadowEffect_disconnectNotify(self: ptr cQGraphicsDropShadowEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsDropShadowEffect_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsDropShadowEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsDropShadowEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsDropShadowEffect): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsDropShadowEffect_staticMetaObject())
proc delete*(self: QGraphicsDropShadowEffect) =
  fcQGraphicsDropShadowEffect_delete(self.h)

func init*(T: type QGraphicsOpacityEffect, h: ptr cQGraphicsOpacityEffect): QGraphicsOpacityEffect =
  T(h: h)
proc create*(T: type QGraphicsOpacityEffect, ): QGraphicsOpacityEffect =

  QGraphicsOpacityEffect.init(fcQGraphicsOpacityEffect_new())
proc create*(T: type QGraphicsOpacityEffect, parent: gen_qobject.QObject): QGraphicsOpacityEffect =

  QGraphicsOpacityEffect.init(fcQGraphicsOpacityEffect_new2(parent.h))
proc metaObject*(self: QGraphicsOpacityEffect, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQGraphicsOpacityEffect_metaObject(self.h))

proc metacast*(self: QGraphicsOpacityEffect, param1: cstring): pointer =

  fcQGraphicsOpacityEffect_metacast(self.h, param1)

proc metacall*(self: QGraphicsOpacityEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQGraphicsOpacityEffect_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QGraphicsOpacityEffect, s: cstring): string =

  let v_ms = fcQGraphicsOpacityEffect_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QGraphicsOpacityEffect, s: cstring): string =

  let v_ms = fcQGraphicsOpacityEffect_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc opacity*(self: QGraphicsOpacityEffect, ): float64 =

  fcQGraphicsOpacityEffect_opacity(self.h)

proc opacityMask*(self: QGraphicsOpacityEffect, ): gen_qbrush.QBrush =

  gen_qbrush.QBrush(h: fcQGraphicsOpacityEffect_opacityMask(self.h))

proc setOpacity*(self: QGraphicsOpacityEffect, opacity: float64): void =

  fcQGraphicsOpacityEffect_setOpacity(self.h, opacity)

proc setOpacityMask*(self: QGraphicsOpacityEffect, mask: gen_qbrush.QBrush): void =

  fcQGraphicsOpacityEffect_setOpacityMask(self.h, mask.h)

proc opacityChanged*(self: QGraphicsOpacityEffect, opacity: float64): void =

  fcQGraphicsOpacityEffect_opacityChanged(self.h, opacity)

proc miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged(slot: int, opacity: float64) {.exportc.} =
  type Cb = proc(opacity: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = opacity


  nimfunc[](slotval1)

proc onopacityChanged*(self: QGraphicsOpacityEffect, slot: proc(opacity: float64)) =
  type Cb = proc(opacity: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsOpacityEffect_connect_opacityChanged(self.h, cast[int](addr tmp[]))
proc opacityMaskChanged*(self: QGraphicsOpacityEffect, mask: gen_qbrush.QBrush): void =

  fcQGraphicsOpacityEffect_opacityMaskChanged(self.h, mask.h)

proc miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged(slot: int, mask: pointer) {.exportc.} =
  type Cb = proc(mask: gen_qbrush.QBrush)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qbrush.QBrush(h: mask)


  nimfunc[](slotval1)

proc onopacityMaskChanged*(self: QGraphicsOpacityEffect, slot: proc(mask: gen_qbrush.QBrush)) =
  type Cb = proc(mask: gen_qbrush.QBrush)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQGraphicsOpacityEffect_connect_opacityMaskChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QGraphicsOpacityEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsOpacityEffect_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QGraphicsOpacityEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsOpacityEffect_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QGraphicsOpacityEffect, s: cstring, c: cstring): string =

  let v_ms = fcQGraphicsOpacityEffect_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QGraphicsOpacityEffect, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQGraphicsOpacityEffect_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QGraphicsOpacityEffect, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQGraphicsOpacityEffect_virtualbase_metaObject(self.h))

type QGraphicsOpacityEffectmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_metaObject(self: ptr cQGraphicsOpacityEffect, slot: int): pointer {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_metaObject ".} =
  type Cb = proc(super: QGraphicsOpacityEffectmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QGraphicsOpacityEffect(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QGraphicsOpacityEffect, param1: cstring): pointer =


  fQGraphicsOpacityEffect_virtualbase_metacast(self.h, param1)

type QGraphicsOpacityEffectmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_metacast(self: ptr cQGraphicsOpacityEffect, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_metacast ".} =
  type Cb = proc(super: QGraphicsOpacityEffectmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QGraphicsOpacityEffect(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QGraphicsOpacityEffect, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQGraphicsOpacityEffect_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QGraphicsOpacityEffectmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_metacall(self: ptr cQGraphicsOpacityEffect, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_metacall ".} =
  type Cb = proc(super: QGraphicsOpacityEffectmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QGraphicsOpacityEffect(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_draw(self: QGraphicsOpacityEffect, painter: gen_qpainter.QPainter): void =


  fQGraphicsOpacityEffect_virtualbase_draw(self.h, painter.h)

type QGraphicsOpacityEffectdrawBase* = proc(painter: gen_qpainter.QPainter): void
proc ondraw*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectdrawBase, painter: gen_qpainter.QPainter): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectdrawBase, painter: gen_qpainter.QPainter): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_draw(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_draw(self: ptr cQGraphicsOpacityEffect, slot: int, painter: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_draw ".} =
  type Cb = proc(super: QGraphicsOpacityEffectdrawBase, painter: gen_qpainter.QPainter): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(painter: gen_qpainter.QPainter): auto =
    callVirtualBase_draw(QGraphicsOpacityEffect(h: self), painter)
  let slotval1 = gen_qpainter.QPainter(h: painter)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_boundingRectFor(self: QGraphicsOpacityEffect, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF =


  gen_qrect.QRectF(h: fQGraphicsOpacityEffect_virtualbase_boundingRectFor(self.h, sourceRect.h))

type QGraphicsOpacityEffectboundingRectForBase* = proc(sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
proc onboundingRectFor*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_boundingRectFor(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_boundingRectFor(self: ptr cQGraphicsOpacityEffect, slot: int, sourceRect: pointer): pointer {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_boundingRectFor ".} =
  type Cb = proc(super: QGraphicsOpacityEffectboundingRectForBase, sourceRect: gen_qrect.QRectF): gen_qrect.QRectF
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(sourceRect: gen_qrect.QRectF): auto =
    callVirtualBase_boundingRectFor(QGraphicsOpacityEffect(h: self), sourceRect)
  let slotval1 = gen_qrect.QRectF(h: sourceRect)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_sourceChanged(self: QGraphicsOpacityEffect, flags: QGraphicsEffectChangeFlag): void =


  fQGraphicsOpacityEffect_virtualbase_sourceChanged(self.h, cint(flags))

type QGraphicsOpacityEffectsourceChangedBase* = proc(flags: QGraphicsEffectChangeFlag): void
proc onsourceChanged*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_sourceChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_sourceChanged(self: ptr cQGraphicsOpacityEffect, slot: int, flags: cint): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_sourceChanged ".} =
  type Cb = proc(super: QGraphicsOpacityEffectsourceChangedBase, flags: QGraphicsEffectChangeFlag): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(flags: QGraphicsEffectChangeFlag): auto =
    callVirtualBase_sourceChanged(QGraphicsOpacityEffect(h: self), flags)
  let slotval1 = QGraphicsEffectChangeFlag(flags)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_event(self: QGraphicsOpacityEffect, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsOpacityEffect_virtualbase_event(self.h, event.h)

type QGraphicsOpacityEffecteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffecteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_event(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_event ".} =
  type Cb = proc(super: QGraphicsOpacityEffecteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QGraphicsOpacityEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QGraphicsOpacityEffect, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQGraphicsOpacityEffect_virtualbase_eventFilter(self.h, watched.h, event.h)

type QGraphicsOpacityEffecteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_eventFilter(self: ptr cQGraphicsOpacityEffect, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_eventFilter ".} =
  type Cb = proc(super: QGraphicsOpacityEffecteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QGraphicsOpacityEffect(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QGraphicsOpacityEffect, event: gen_qcoreevent.QTimerEvent): void =


  fQGraphicsOpacityEffect_virtualbase_timerEvent(self.h, event.h)

type QGraphicsOpacityEffecttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_timerEvent(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_timerEvent ".} =
  type Cb = proc(super: QGraphicsOpacityEffecttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QGraphicsOpacityEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QGraphicsOpacityEffect, event: gen_qcoreevent.QChildEvent): void =


  fQGraphicsOpacityEffect_virtualbase_childEvent(self.h, event.h)

type QGraphicsOpacityEffectchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_childEvent(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_childEvent ".} =
  type Cb = proc(super: QGraphicsOpacityEffectchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QGraphicsOpacityEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QGraphicsOpacityEffect, event: gen_qcoreevent.QEvent): void =


  fQGraphicsOpacityEffect_virtualbase_customEvent(self.h, event.h)

type QGraphicsOpacityEffectcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_customEvent(self: ptr cQGraphicsOpacityEffect, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_customEvent ".} =
  type Cb = proc(super: QGraphicsOpacityEffectcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QGraphicsOpacityEffect(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QGraphicsOpacityEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsOpacityEffect_virtualbase_connectNotify(self.h, signal.h)

type QGraphicsOpacityEffectconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_connectNotify(self: ptr cQGraphicsOpacityEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_connectNotify ".} =
  type Cb = proc(super: QGraphicsOpacityEffectconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QGraphicsOpacityEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QGraphicsOpacityEffect, signal: gen_qmetaobject.QMetaMethod): void =


  fQGraphicsOpacityEffect_virtualbase_disconnectNotify(self.h, signal.h)

type QGraphicsOpacityEffectdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QGraphicsOpacityEffect, slot: proc(super: QGraphicsOpacityEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QGraphicsOpacityEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGraphicsOpacityEffect_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGraphicsOpacityEffect_disconnectNotify(self: ptr cQGraphicsOpacityEffect, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QGraphicsOpacityEffect_disconnectNotify ".} =
  type Cb = proc(super: QGraphicsOpacityEffectdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QGraphicsOpacityEffect(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QGraphicsOpacityEffect): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQGraphicsOpacityEffect_staticMetaObject())
proc delete*(self: QGraphicsOpacityEffect) =
  fcQGraphicsOpacityEffect_delete(self.h)
