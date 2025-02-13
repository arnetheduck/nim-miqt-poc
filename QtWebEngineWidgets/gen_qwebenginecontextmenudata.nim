import Qt5WebEngineWidgets_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebEngineWidgets")
{.compile("gen_qwebenginecontextmenudata.cpp", cflags).}


type QWebEngineContextMenuDataMediaTypeEnum* = distinct cint
template MediaTypeNone*(_: type QWebEngineContextMenuDataMediaTypeEnum): untyped = 0
template MediaTypeImage*(_: type QWebEngineContextMenuDataMediaTypeEnum): untyped = 1
template MediaTypeVideo*(_: type QWebEngineContextMenuDataMediaTypeEnum): untyped = 2
template MediaTypeAudio*(_: type QWebEngineContextMenuDataMediaTypeEnum): untyped = 3
template MediaTypeCanvas*(_: type QWebEngineContextMenuDataMediaTypeEnum): untyped = 4
template MediaTypeFile*(_: type QWebEngineContextMenuDataMediaTypeEnum): untyped = 5
template MediaTypePlugin*(_: type QWebEngineContextMenuDataMediaTypeEnum): untyped = 6


type QWebEngineContextMenuDataMediaFlagEnum* = distinct cint
template MediaInError*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 1
template MediaPaused*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 2
template MediaMuted*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 4
template MediaLoop*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 8
template MediaCanSave*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 16
template MediaHasAudio*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 32
template MediaCanToggleControls*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 64
template MediaControls*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 128
template MediaCanPrint*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 256
template MediaCanRotate*(_: type QWebEngineContextMenuDataMediaFlagEnum): untyped = 512


type QWebEngineContextMenuDataEditFlagEnum* = distinct cint
template CanUndo*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 1
template CanRedo*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 2
template CanCut*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 4
template CanCopy*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 8
template CanPaste*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 16
template CanDelete*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 32
template CanSelectAll*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 64
template CanTranslate*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 128
template CanEditRichly*(_: type QWebEngineContextMenuDataEditFlagEnum): untyped = 256


import gen_qwebenginecontextmenudata_types
export gen_qwebenginecontextmenudata_types

import
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qurl_types
export
  gen_qobjectdefs_types,
  gen_qpoint_types,
  gen_qurl_types

type cQWebEngineContextMenuData*{.exportc: "QWebEngineContextMenuData", incompleteStruct.} = object

proc fcQWebEngineContextMenuData_operatorAssign(self: pointer, other: pointer): void {.importc: "QWebEngineContextMenuData_operatorAssign".}
proc fcQWebEngineContextMenuData_isValid(self: pointer, ): bool {.importc: "QWebEngineContextMenuData_isValid".}
proc fcQWebEngineContextMenuData_position(self: pointer, ): pointer {.importc: "QWebEngineContextMenuData_position".}
proc fcQWebEngineContextMenuData_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuData_selectedText".}
proc fcQWebEngineContextMenuData_linkText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuData_linkText".}
proc fcQWebEngineContextMenuData_linkUrl(self: pointer, ): pointer {.importc: "QWebEngineContextMenuData_linkUrl".}
proc fcQWebEngineContextMenuData_mediaUrl(self: pointer, ): pointer {.importc: "QWebEngineContextMenuData_mediaUrl".}
proc fcQWebEngineContextMenuData_mediaType(self: pointer, ): cint {.importc: "QWebEngineContextMenuData_mediaType".}
proc fcQWebEngineContextMenuData_isContentEditable(self: pointer, ): bool {.importc: "QWebEngineContextMenuData_isContentEditable".}
proc fcQWebEngineContextMenuData_misspelledWord(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuData_misspelledWord".}
proc fcQWebEngineContextMenuData_spellCheckerSuggestions(self: pointer, ): struct_miqt_array {.importc: "QWebEngineContextMenuData_spellCheckerSuggestions".}
proc fcQWebEngineContextMenuData_mediaFlags(self: pointer, ): cint {.importc: "QWebEngineContextMenuData_mediaFlags".}
proc fcQWebEngineContextMenuData_editFlags(self: pointer, ): cint {.importc: "QWebEngineContextMenuData_editFlags".}
proc fcQWebEngineContextMenuData_new(): ptr cQWebEngineContextMenuData {.importc: "QWebEngineContextMenuData_new".}
proc fcQWebEngineContextMenuData_new2(other: pointer): ptr cQWebEngineContextMenuData {.importc: "QWebEngineContextMenuData_new2".}
proc fcQWebEngineContextMenuData_staticMetaObject(): pointer {.importc: "QWebEngineContextMenuData_staticMetaObject".}
proc fcQWebEngineContextMenuData_delete(self: pointer) {.importc: "QWebEngineContextMenuData_delete".}

proc operatorAssign*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, other: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData): void =
  fcQWebEngineContextMenuData_operatorAssign(self.h, other.h)

proc isValid*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): bool =
  fcQWebEngineContextMenuData_isValid(self.h)

proc position*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): gen_qpoint_types.QPoint =
  gen_qpoint_types.QPoint(h: fcQWebEngineContextMenuData_position(self.h))

proc selectedText*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): string =
  let v_ms = fcQWebEngineContextMenuData_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkText*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): string =
  let v_ms = fcQWebEngineContextMenuData_linkText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkUrl*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineContextMenuData_linkUrl(self.h))

proc mediaUrl*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQWebEngineContextMenuData_mediaUrl(self.h))

proc mediaType*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): cint =
  cint(fcQWebEngineContextMenuData_mediaType(self.h))

proc isContentEditable*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): bool =
  fcQWebEngineContextMenuData_isContentEditable(self.h)

proc misspelledWord*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): string =
  let v_ms = fcQWebEngineContextMenuData_misspelledWord(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc spellCheckerSuggestions*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): seq[string] =
  var v_ma = fcQWebEngineContextMenuData_spellCheckerSuggestions(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mediaFlags*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): cint =
  cint(fcQWebEngineContextMenuData_mediaFlags(self.h))

proc editFlags*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData, ): cint =
  cint(fcQWebEngineContextMenuData_editFlags(self.h))

proc create*(T: type gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData): gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData =
  gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData(h: fcQWebEngineContextMenuData_new())

proc create*(T: type gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData,
    other: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData): gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData =
  gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData(h: fcQWebEngineContextMenuData_new2(other.h))

proc staticMetaObject*(_: type gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQWebEngineContextMenuData_staticMetaObject())
proc delete*(self: gen_qwebenginecontextmenudata_types.QWebEngineContextMenuData) =
  fcQWebEngineContextMenuData_delete(self.h)
