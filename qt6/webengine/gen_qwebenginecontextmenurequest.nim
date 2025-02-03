import Qt6WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6WebEngineWidgets")
{.compile("gen_qwebenginecontextmenurequest.cpp", cflags).}


type QtWebEngineCoreReferrerPolicy* = cint
const
  QtWebEngineCoreAlways* = 0
  QtWebEngineCoreDefault* = 1
  QtWebEngineCoreNoReferrerWhenDowngrade* = 2
  QtWebEngineCoreNever* = 3
  QtWebEngineCoreOrigin* = 4
  QtWebEngineCoreOriginWhenCrossOrigin* = 5
  QtWebEngineCoreNoReferrerWhenDowngradeOriginWhenCrossOrigin* = 6
  QtWebEngineCoreSameOrigin* = 7
  QtWebEngineCoreStrictOrigin* = 8
  QtWebEngineCoreLast* = 8



type QWebEngineContextMenuRequestMediaType* = cint
const
  QWebEngineContextMenuRequestMediaTypeNone* = 0
  QWebEngineContextMenuRequestMediaTypeImage* = 1
  QWebEngineContextMenuRequestMediaTypeVideo* = 2
  QWebEngineContextMenuRequestMediaTypeAudio* = 3
  QWebEngineContextMenuRequestMediaTypeCanvas* = 4
  QWebEngineContextMenuRequestMediaTypeFile* = 5
  QWebEngineContextMenuRequestMediaTypePlugin* = 6



type QWebEngineContextMenuRequestMediaFlag* = cint
const
  QWebEngineContextMenuRequestMediaInError* = 1
  QWebEngineContextMenuRequestMediaPaused* = 2
  QWebEngineContextMenuRequestMediaMuted* = 4
  QWebEngineContextMenuRequestMediaLoop* = 8
  QWebEngineContextMenuRequestMediaCanSave* = 16
  QWebEngineContextMenuRequestMediaHasAudio* = 32
  QWebEngineContextMenuRequestMediaCanToggleControls* = 64
  QWebEngineContextMenuRequestMediaControls* = 128
  QWebEngineContextMenuRequestMediaCanPrint* = 256
  QWebEngineContextMenuRequestMediaCanRotate* = 512



type QWebEngineContextMenuRequestEditFlag* = cint
const
  QWebEngineContextMenuRequestCanUndo* = 1
  QWebEngineContextMenuRequestCanRedo* = 2
  QWebEngineContextMenuRequestCanCut* = 4
  QWebEngineContextMenuRequestCanCopy* = 8
  QWebEngineContextMenuRequestCanPaste* = 16
  QWebEngineContextMenuRequestCanDelete* = 32
  QWebEngineContextMenuRequestCanSelectAll* = 64
  QWebEngineContextMenuRequestCanTranslate* = 128
  QWebEngineContextMenuRequestCanEditRichly* = 256



import gen_qwebenginecontextmenurequest_types
export gen_qwebenginecontextmenurequest_types

import
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qurl
export
  gen_qobject,
  gen_qobjectdefs,
  gen_qpoint,
  gen_qurl

type cQWebEngineContextMenuRequest*{.exportc: "QWebEngineContextMenuRequest", incompleteStruct.} = object

proc fcQWebEngineContextMenuRequest_metaObject(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_metaObject".}
proc fcQWebEngineContextMenuRequest_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebEngineContextMenuRequest_metacast".}
proc fcQWebEngineContextMenuRequest_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebEngineContextMenuRequest_metacall".}
proc fcQWebEngineContextMenuRequest_tr(s: cstring): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_tr".}
proc fcQWebEngineContextMenuRequest_position(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_position".}
proc fcQWebEngineContextMenuRequest_selectedText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_selectedText".}
proc fcQWebEngineContextMenuRequest_linkText(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_linkText".}
proc fcQWebEngineContextMenuRequest_linkUrl(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_linkUrl".}
proc fcQWebEngineContextMenuRequest_mediaUrl(self: pointer, ): pointer {.importc: "QWebEngineContextMenuRequest_mediaUrl".}
proc fcQWebEngineContextMenuRequest_mediaType(self: pointer, ): cint {.importc: "QWebEngineContextMenuRequest_mediaType".}
proc fcQWebEngineContextMenuRequest_isContentEditable(self: pointer, ): bool {.importc: "QWebEngineContextMenuRequest_isContentEditable".}
proc fcQWebEngineContextMenuRequest_misspelledWord(self: pointer, ): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_misspelledWord".}
proc fcQWebEngineContextMenuRequest_spellCheckerSuggestions(self: pointer, ): struct_miqt_array {.importc: "QWebEngineContextMenuRequest_spellCheckerSuggestions".}
proc fcQWebEngineContextMenuRequest_isAccepted(self: pointer, ): bool {.importc: "QWebEngineContextMenuRequest_isAccepted".}
proc fcQWebEngineContextMenuRequest_setAccepted(self: pointer, accepted: bool): void {.importc: "QWebEngineContextMenuRequest_setAccepted".}
proc fcQWebEngineContextMenuRequest_mediaFlags(self: pointer, ): cint {.importc: "QWebEngineContextMenuRequest_mediaFlags".}
proc fcQWebEngineContextMenuRequest_editFlags(self: pointer, ): cint {.importc: "QWebEngineContextMenuRequest_editFlags".}
proc fcQWebEngineContextMenuRequest_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_tr2".}
proc fcQWebEngineContextMenuRequest_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebEngineContextMenuRequest_tr3".}
proc fcQWebEngineContextMenuRequest_delete(self: pointer) {.importc: "QWebEngineContextMenuRequest_delete".}


func init*(T: type QWebEngineContextMenuRequest, h: ptr cQWebEngineContextMenuRequest): QWebEngineContextMenuRequest =
  T(h: h)
proc metaObject*(self: QWebEngineContextMenuRequest, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebEngineContextMenuRequest_metaObject(self.h))

proc metacast*(self: QWebEngineContextMenuRequest, param1: cstring): pointer =

  fcQWebEngineContextMenuRequest_metacast(self.h, param1)

proc metacall*(self: QWebEngineContextMenuRequest, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebEngineContextMenuRequest_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebEngineContextMenuRequest, s: cstring): string =

  let v_ms = fcQWebEngineContextMenuRequest_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc position*(self: QWebEngineContextMenuRequest, ): gen_qpoint.QPoint =

  gen_qpoint.QPoint(h: fcQWebEngineContextMenuRequest_position(self.h))

proc selectedText*(self: QWebEngineContextMenuRequest, ): string =

  let v_ms = fcQWebEngineContextMenuRequest_selectedText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkText*(self: QWebEngineContextMenuRequest, ): string =

  let v_ms = fcQWebEngineContextMenuRequest_linkText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc linkUrl*(self: QWebEngineContextMenuRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineContextMenuRequest_linkUrl(self.h))

proc mediaUrl*(self: QWebEngineContextMenuRequest, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQWebEngineContextMenuRequest_mediaUrl(self.h))

proc mediaType*(self: QWebEngineContextMenuRequest, ): QWebEngineContextMenuRequestMediaType =

  QWebEngineContextMenuRequestMediaType(fcQWebEngineContextMenuRequest_mediaType(self.h))

proc isContentEditable*(self: QWebEngineContextMenuRequest, ): bool =

  fcQWebEngineContextMenuRequest_isContentEditable(self.h)

proc misspelledWord*(self: QWebEngineContextMenuRequest, ): string =

  let v_ms = fcQWebEngineContextMenuRequest_misspelledWord(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc spellCheckerSuggestions*(self: QWebEngineContextMenuRequest, ): seq[string] =

  var v_ma = fcQWebEngineContextMenuRequest_spellCheckerSuggestions(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc isAccepted*(self: QWebEngineContextMenuRequest, ): bool =

  fcQWebEngineContextMenuRequest_isAccepted(self.h)

proc setAccepted*(self: QWebEngineContextMenuRequest, accepted: bool): void =

  fcQWebEngineContextMenuRequest_setAccepted(self.h, accepted)

proc mediaFlags*(self: QWebEngineContextMenuRequest, ): QWebEngineContextMenuRequestMediaFlag =

  QWebEngineContextMenuRequestMediaFlag(fcQWebEngineContextMenuRequest_mediaFlags(self.h))

proc editFlags*(self: QWebEngineContextMenuRequest, ): QWebEngineContextMenuRequestEditFlag =

  QWebEngineContextMenuRequestEditFlag(fcQWebEngineContextMenuRequest_editFlags(self.h))

proc tr2*(_: type QWebEngineContextMenuRequest, s: cstring, c: cstring): string =

  let v_ms = fcQWebEngineContextMenuRequest_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebEngineContextMenuRequest, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebEngineContextMenuRequest_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QWebEngineContextMenuRequest) =
  fcQWebEngineContextMenuRequest_delete(self.h)
