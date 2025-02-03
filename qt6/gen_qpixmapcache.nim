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
{.compile("gen_qpixmapcache.cpp", cflags).}


import gen_qpixmapcache_types
export gen_qpixmapcache_types

import
  gen_qpixmap
export
  gen_qpixmap

type cQPixmapCache*{.exportc: "QPixmapCache", incompleteStruct.} = object
type cQPixmapCacheKey*{.exportc: "QPixmapCache__Key", incompleteStruct.} = object

proc fcQPixmapCache_cacheLimit(): cint {.importc: "QPixmapCache_cacheLimit".}
proc fcQPixmapCache_setCacheLimit(cacheLimit: cint): void {.importc: "QPixmapCache_setCacheLimit".}
proc fcQPixmapCache_find(key: struct_miqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_find".}
proc fcQPixmapCache_find2(key: pointer, pixmap: pointer): bool {.importc: "QPixmapCache_find2".}
proc fcQPixmapCache_insert(key: struct_miqt_string, pixmap: pointer): bool {.importc: "QPixmapCache_insert".}
proc fcQPixmapCache_insertWithPixmap(pixmap: pointer): pointer {.importc: "QPixmapCache_insertWithPixmap".}
proc fcQPixmapCache_replace(key: pointer, pixmap: pointer): bool {.importc: "QPixmapCache_replace".}
proc fcQPixmapCache_remove(key: struct_miqt_string): void {.importc: "QPixmapCache_remove".}
proc fcQPixmapCache_removeWithKey(key: pointer): void {.importc: "QPixmapCache_removeWithKey".}
proc fcQPixmapCache_clear(): void {.importc: "QPixmapCache_clear".}
proc fcQPixmapCache_delete(self: pointer) {.importc: "QPixmapCache_delete".}
proc fcQPixmapCacheKey_new(): ptr cQPixmapCacheKey {.importc: "QPixmapCache__Key_new".}
proc fcQPixmapCacheKey_new2(other: pointer): ptr cQPixmapCacheKey {.importc: "QPixmapCache__Key_new2".}
proc fcQPixmapCacheKey_operatorEqual(self: pointer, key: pointer): bool {.importc: "QPixmapCache__Key_operatorEqual".}
proc fcQPixmapCacheKey_operatorNotEqual(self: pointer, key: pointer): bool {.importc: "QPixmapCache__Key_operatorNotEqual".}
proc fcQPixmapCacheKey_operatorAssign(self: pointer, other: pointer): void {.importc: "QPixmapCache__Key_operatorAssign".}
proc fcQPixmapCacheKey_swap(self: pointer, other: pointer): void {.importc: "QPixmapCache__Key_swap".}
proc fcQPixmapCacheKey_isValid(self: pointer, ): bool {.importc: "QPixmapCache__Key_isValid".}
proc fcQPixmapCacheKey_delete(self: pointer) {.importc: "QPixmapCache__Key_delete".}


func init*(T: type QPixmapCache, h: ptr cQPixmapCache): QPixmapCache =
  T(h: h)
proc cacheLimit*(_: type QPixmapCache, ): cint =

  fcQPixmapCache_cacheLimit()

proc setCacheLimit*(_: type QPixmapCache, cacheLimit: cint): void =

  fcQPixmapCache_setCacheLimit(cacheLimit)

proc find*(_: type QPixmapCache, key: string, pixmap: gen_qpixmap.QPixmap): bool =

  fcQPixmapCache_find(struct_miqt_string(data: key, len: csize_t(len(key))), pixmap.h)

proc find2*(_: type QPixmapCache, key: QPixmapCacheKey, pixmap: gen_qpixmap.QPixmap): bool =

  fcQPixmapCache_find2(key.h, pixmap.h)

proc insert*(_: type QPixmapCache, key: string, pixmap: gen_qpixmap.QPixmap): bool =

  fcQPixmapCache_insert(struct_miqt_string(data: key, len: csize_t(len(key))), pixmap.h)

proc insertWithPixmap*(_: type QPixmapCache, pixmap: gen_qpixmap.QPixmap): QPixmapCacheKey =

  QPixmapCacheKey(h: fcQPixmapCache_insertWithPixmap(pixmap.h))

proc replace*(_: type QPixmapCache, key: QPixmapCacheKey, pixmap: gen_qpixmap.QPixmap): bool =

  fcQPixmapCache_replace(key.h, pixmap.h)

proc remove*(_: type QPixmapCache, key: string): void =

  fcQPixmapCache_remove(struct_miqt_string(data: key, len: csize_t(len(key))))

proc removeWithKey*(_: type QPixmapCache, key: QPixmapCacheKey): void =

  fcQPixmapCache_removeWithKey(key.h)

proc clear*(_: type QPixmapCache, ): void =

  fcQPixmapCache_clear()

proc delete*(self: QPixmapCache) =
  fcQPixmapCache_delete(self.h)

func init*(T: type QPixmapCacheKey, h: ptr cQPixmapCacheKey): QPixmapCacheKey =
  T(h: h)
proc create*(T: type QPixmapCacheKey, ): QPixmapCacheKey =

  QPixmapCacheKey.init(fcQPixmapCacheKey_new())
proc create*(T: type QPixmapCacheKey, other: QPixmapCacheKey): QPixmapCacheKey =

  QPixmapCacheKey.init(fcQPixmapCacheKey_new2(other.h))
proc operatorEqual*(self: QPixmapCacheKey, key: QPixmapCacheKey): bool =

  fcQPixmapCacheKey_operatorEqual(self.h, key.h)

proc operatorNotEqual*(self: QPixmapCacheKey, key: QPixmapCacheKey): bool =

  fcQPixmapCacheKey_operatorNotEqual(self.h, key.h)

proc operatorAssign*(self: QPixmapCacheKey, other: QPixmapCacheKey): void =

  fcQPixmapCacheKey_operatorAssign(self.h, other.h)

proc swap*(self: QPixmapCacheKey, other: QPixmapCacheKey): void =

  fcQPixmapCacheKey_swap(self.h, other.h)

proc isValid*(self: QPixmapCacheKey, ): bool =

  fcQPixmapCacheKey_isValid(self.h)

proc delete*(self: QPixmapCacheKey) =
  fcQPixmapCacheKey_delete(self.h)
