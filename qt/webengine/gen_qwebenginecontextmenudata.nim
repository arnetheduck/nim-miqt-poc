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

const cflags = gorge("pkg-config -cflags Qt5WebEngineWidgets")
{.compile("gen_qwebenginecontextmenudata.cpp", cflags).}


type QWebEngineContextMenuDataMediaType* = cint
const
  QWebEngineContextMenuDataMediaTypeNone* = 0
  QWebEngineContextMenuDataMediaTypeImage* = 1
  QWebEngineContextMenuDataMediaTypeVideo* = 2
  QWebEngineContextMenuDataMediaTypeAudio* = 3
  QWebEngineContextMenuDataMediaTypeCanvas* = 4
  QWebEngineContextMenuDataMediaTypeFile* = 5
  QWebEngineContextMenuDataMediaTypePlugin* = 6



type QWebEngineContextMenuDataMediaFlag* = cint
const
  QWebEngineContextMenuDataMediaInError* = 1
  QWebEngineContextMenuDataMediaPaused* = 2
  QWebEngineContextMenuDataMediaMuted* = 4
  QWebEngineContextMenuDataMediaLoop* = 8
  QWebEngineContextMenuDataMediaCanSave* = 16
  QWebEngineContextMenuDataMediaHasAudio* = 32
  QWebEngineContextMenuDataMediaCanToggleControls* = 64
  QWebEngineContextMenuDataMediaControls* = 128
  QWebEngineContextMenuDataMediaCanPrint* = 256
  QWebEngineContextMenuDataMediaCanRotate* = 512



type QWebEngineContextMenuDataEditFlag* = cint
const
  QWebEngineContextMenuDataCanUndo* = 1
  QWebEngineContextMenuDataCanRedo* = 2
  QWebEngineContextMenuDataCanCut* = 4
  QWebEngineContextMenuDataCanCopy* = 8
  QWebEngineContextMenuDataCanPaste* = 16
  QWebEngineContextMenuDataCanDelete* = 32
  QWebEngineContextMenuDataCanSelectAll* = 64
  QWebEngineContextMenuDataCanTranslate* = 128
  QWebEngineContextMenuDataCanEditRichly* = 256



import gen_qwebenginecontextmenudata_types
export gen_qwebenginecontextmenudata_types

import
  gen_qobjectdefs,
  gen_qpoint,
  gen_qurl
export
  gen_qobjectdefs,
  gen_qpoint,
  gen_qurl

type cQWebEngineContextMenuData*{.exportc: "QWebEngineContextMenuData", incompleteStruct.} = object

proc fcQWebEngineContextMenuData_new(): ptr cQWebEngineContextMenuData {.importc: "QWebEngineContextMenuData_new".}
proc fcQWebEngineContextMenuData_new2(other: pointer): ptr cQWebEngineContextMenuData {.importc: "QWebEngineContextMenuData_new2".}
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
proc fcQWebEngineContextMenuData_staticMetaObject(): pointer {.importc: "QWebEngineContextMenuData_staticMetaObject".}
proc fcQWebEngineContextMenuData_delete(self: pointer) {.importc: "QWebEngineContextMenuData_delete".}


func init*(T: type QWebEngineContextMenuData, h: ptr cQWebEngineContextMenuData): QWebEngineContextMenuData =
  T(h: h)
proc create*(T: type QWebEngineContextMenuData, ): QWebEngineContextMenuData =

  QWebEngineContextMenuData.init(fcQWebEngineContextMenuData_new())
proc create*(T: type QWebEngineContextMenuData, other: QWebEngineContextMenuData): QWebEngineContextMenuData =

  QWebEngineContextMenuData.init(fcQWebEngineContextMenuData_new2(other.h))
proc operatorAssign*(self: QWebEngineContextMenuData, other: QWebEngineContextMenuData): void =

  fcQWebEngineContextMenuData_operatorAssign(self.h, other.h)

proc isValid*(self: QWebEngineContextMenuData, ): bool =

  fcQWebEngineContextMenuData_isValid(self.h)

proc position*(self: QWebEngineContextMenuData, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWebEngineContextMenuData_position(self.h))

proc selectedText*(self: QWebEngineContextMenuData, ): string =

  let v_ms = fcQWebEngineContextMenuData_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkText*(self: QWebEngineContextMenuData, ): string =

  let v_ms = fcQWebEngineContextMenuData_linkText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkUrl*(self: QWebEngineContextMenuData, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineContextMenuData_linkUrl(self.h))

proc mediaUrl*(self: QWebEngineContextMenuData, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineContextMenuData_mediaUrl(self.h))

proc mediaType*(self: QWebEngineContextMenuData, ): QWebEngineContextMenuDataMediaType =

  QWebEngineContextMenuDataMediaType(fcQWebEngineContextMenuData_mediaType(self.h))

proc isContentEditable*(self: QWebEngineContextMenuData, ): bool =

  fcQWebEngineContextMenuData_isContentEditable(self.h)

proc misspelledWord*(self: QWebEngineContextMenuData, ): string =

  let v_ms = fcQWebEngineContextMenuData_misspelledWord(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc spellCheckerSuggestions*(self: QWebEngineContextMenuData, ): seq[string] =

  var v_ma = fcQWebEngineContextMenuData_spellCheckerSuggestions(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc mediaFlags*(self: QWebEngineContextMenuData, ): QWebEngineContextMenuDataMediaFlag =

  QWebEngineContextMenuDataMediaFlag(fcQWebEngineContextMenuData_mediaFlags(self.h))

proc editFlags*(self: QWebEngineContextMenuData, ): QWebEngineContextMenuDataEditFlag =

  QWebEngineContextMenuDataEditFlag(fcQWebEngineContextMenuData_editFlags(self.h))

proc staticMetaObject*(_: type QWebEngineContextMenuData): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineContextMenuData_staticMetaObject())
proc delete*(self: QWebEngineContextMenuData) =
  fcQWebEngineContextMenuData_delete(self.h)
