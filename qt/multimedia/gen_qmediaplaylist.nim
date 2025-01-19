import Qt5MultimediaWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5MultimediaWidgets")
{.compile("gen_qmediaplaylist.cpp", cflags).}


type QMediaPlaylistPlaybackMode* = cint
const
  QMediaPlaylistCurrentItemOnce* = 0
  QMediaPlaylistCurrentItemInLoop* = 1
  QMediaPlaylistSequential* = 2
  QMediaPlaylistLoop* = 3
  QMediaPlaylistRandom* = 4



type QMediaPlaylistError* = cint
const
  QMediaPlaylistNoError* = 0
  QMediaPlaylistFormatError* = 1
  QMediaPlaylistFormatNotSupportedError* = 2
  QMediaPlaylistNetworkError* = 3
  QMediaPlaylistAccessDeniedError* = 4



import gen_qmediaplaylist_types
export gen_qmediaplaylist_types

import
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmediacontent,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  gen_qcoreevent,
  gen_qiodevice,
  gen_qmediacontent,
  gen_qmediaobject,
  gen_qmetaobject,
  gen_qnetworkrequest,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQMediaPlaylist*{.exportc: "QMediaPlaylist", incompleteStruct.} = object

proc fcQMediaPlaylist_new(): ptr cQMediaPlaylist {.importc: "QMediaPlaylist_new".}
proc fcQMediaPlaylist_new2(parent: pointer): ptr cQMediaPlaylist {.importc: "QMediaPlaylist_new2".}
proc fcQMediaPlaylist_metaObject(self: pointer, ): pointer {.importc: "QMediaPlaylist_metaObject".}
proc fcQMediaPlaylist_metacast(self: pointer, param1: cstring): pointer {.importc: "QMediaPlaylist_metacast".}
proc fcQMediaPlaylist_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QMediaPlaylist_metacall".}
proc fcQMediaPlaylist_tr(s: cstring): struct_miqt_string {.importc: "QMediaPlaylist_tr".}
proc fcQMediaPlaylist_trUtf8(s: cstring): struct_miqt_string {.importc: "QMediaPlaylist_trUtf8".}
proc fcQMediaPlaylist_mediaObject(self: pointer, ): pointer {.importc: "QMediaPlaylist_mediaObject".}
proc fcQMediaPlaylist_playbackMode(self: pointer, ): cint {.importc: "QMediaPlaylist_playbackMode".}
proc fcQMediaPlaylist_setPlaybackMode(self: pointer, mode: cint): void {.importc: "QMediaPlaylist_setPlaybackMode".}
proc fcQMediaPlaylist_currentIndex(self: pointer, ): cint {.importc: "QMediaPlaylist_currentIndex".}
proc fcQMediaPlaylist_currentMedia(self: pointer, ): pointer {.importc: "QMediaPlaylist_currentMedia".}
proc fcQMediaPlaylist_nextIndex(self: pointer, ): cint {.importc: "QMediaPlaylist_nextIndex".}
proc fcQMediaPlaylist_previousIndex(self: pointer, ): cint {.importc: "QMediaPlaylist_previousIndex".}
proc fcQMediaPlaylist_media(self: pointer, index: cint): pointer {.importc: "QMediaPlaylist_media".}
proc fcQMediaPlaylist_mediaCount(self: pointer, ): cint {.importc: "QMediaPlaylist_mediaCount".}
proc fcQMediaPlaylist_isEmpty(self: pointer, ): bool {.importc: "QMediaPlaylist_isEmpty".}
proc fcQMediaPlaylist_isReadOnly(self: pointer, ): bool {.importc: "QMediaPlaylist_isReadOnly".}
proc fcQMediaPlaylist_addMedia(self: pointer, content: pointer): bool {.importc: "QMediaPlaylist_addMedia".}
proc fcQMediaPlaylist_addMediaWithItems(self: pointer, items: struct_miqt_array): bool {.importc: "QMediaPlaylist_addMediaWithItems".}
proc fcQMediaPlaylist_insertMedia(self: pointer, index: cint, content: pointer): bool {.importc: "QMediaPlaylist_insertMedia".}
proc fcQMediaPlaylist_insertMedia2(self: pointer, index: cint, items: struct_miqt_array): bool {.importc: "QMediaPlaylist_insertMedia2".}
proc fcQMediaPlaylist_moveMedia(self: pointer, fromVal: cint, to: cint): bool {.importc: "QMediaPlaylist_moveMedia".}
proc fcQMediaPlaylist_removeMedia(self: pointer, pos: cint): bool {.importc: "QMediaPlaylist_removeMedia".}
proc fcQMediaPlaylist_removeMedia2(self: pointer, start: cint, endVal: cint): bool {.importc: "QMediaPlaylist_removeMedia2".}
proc fcQMediaPlaylist_clear(self: pointer, ): bool {.importc: "QMediaPlaylist_clear".}
proc fcQMediaPlaylist_load(self: pointer, request: pointer): void {.importc: "QMediaPlaylist_load".}
proc fcQMediaPlaylist_loadWithLocation(self: pointer, location: pointer): void {.importc: "QMediaPlaylist_loadWithLocation".}
proc fcQMediaPlaylist_loadWithDevice(self: pointer, device: pointer): void {.importc: "QMediaPlaylist_loadWithDevice".}
proc fcQMediaPlaylist_save(self: pointer, location: pointer): bool {.importc: "QMediaPlaylist_save".}
proc fcQMediaPlaylist_save2(self: pointer, device: pointer, format: cstring): bool {.importc: "QMediaPlaylist_save2".}
proc fcQMediaPlaylist_error(self: pointer, ): cint {.importc: "QMediaPlaylist_error".}
proc fcQMediaPlaylist_errorString(self: pointer, ): struct_miqt_string {.importc: "QMediaPlaylist_errorString".}
proc fcQMediaPlaylist_shuffle(self: pointer, ): void {.importc: "QMediaPlaylist_shuffle".}
proc fcQMediaPlaylist_next(self: pointer, ): void {.importc: "QMediaPlaylist_next".}
proc fcQMediaPlaylist_previous(self: pointer, ): void {.importc: "QMediaPlaylist_previous".}
proc fcQMediaPlaylist_setCurrentIndex(self: pointer, index: cint): void {.importc: "QMediaPlaylist_setCurrentIndex".}
proc fcQMediaPlaylist_currentIndexChanged(self: pointer, index: cint): void {.importc: "QMediaPlaylist_currentIndexChanged".}
proc fQMediaPlaylist_connect_currentIndexChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_currentIndexChanged".}
proc fcQMediaPlaylist_playbackModeChanged(self: pointer, mode: cint): void {.importc: "QMediaPlaylist_playbackModeChanged".}
proc fQMediaPlaylist_connect_playbackModeChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_playbackModeChanged".}
proc fcQMediaPlaylist_currentMediaChanged(self: pointer, param1: pointer): void {.importc: "QMediaPlaylist_currentMediaChanged".}
proc fQMediaPlaylist_connect_currentMediaChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_currentMediaChanged".}
proc fcQMediaPlaylist_mediaAboutToBeInserted(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaAboutToBeInserted".}
proc fQMediaPlaylist_connect_mediaAboutToBeInserted(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaAboutToBeInserted".}
proc fcQMediaPlaylist_mediaInserted(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaInserted".}
proc fQMediaPlaylist_connect_mediaInserted(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaInserted".}
proc fcQMediaPlaylist_mediaAboutToBeRemoved(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaAboutToBeRemoved".}
proc fQMediaPlaylist_connect_mediaAboutToBeRemoved(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaAboutToBeRemoved".}
proc fcQMediaPlaylist_mediaRemoved(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaRemoved".}
proc fQMediaPlaylist_connect_mediaRemoved(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaRemoved".}
proc fcQMediaPlaylist_mediaChanged(self: pointer, start: cint, endVal: cint): void {.importc: "QMediaPlaylist_mediaChanged".}
proc fQMediaPlaylist_connect_mediaChanged(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_mediaChanged".}
proc fcQMediaPlaylist_loaded(self: pointer, ): void {.importc: "QMediaPlaylist_loaded".}
proc fQMediaPlaylist_connect_loaded(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_loaded".}
proc fcQMediaPlaylist_loadFailed(self: pointer, ): void {.importc: "QMediaPlaylist_loadFailed".}
proc fQMediaPlaylist_connect_loadFailed(self: pointer, slot: int) {.importc: "QMediaPlaylist_connect_loadFailed".}
proc fcQMediaPlaylist_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlaylist_tr2".}
proc fcQMediaPlaylist_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlaylist_tr3".}
proc fcQMediaPlaylist_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QMediaPlaylist_trUtf82".}
proc fcQMediaPlaylist_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QMediaPlaylist_trUtf83".}
proc fcQMediaPlaylist_nextIndex1(self: pointer, steps: cint): cint {.importc: "QMediaPlaylist_nextIndex1".}
proc fcQMediaPlaylist_previousIndex1(self: pointer, steps: cint): cint {.importc: "QMediaPlaylist_previousIndex1".}
proc fcQMediaPlaylist_load2(self: pointer, request: pointer, format: cstring): void {.importc: "QMediaPlaylist_load2".}
proc fcQMediaPlaylist_load22(self: pointer, location: pointer, format: cstring): void {.importc: "QMediaPlaylist_load22".}
proc fcQMediaPlaylist_load23(self: pointer, device: pointer, format: cstring): void {.importc: "QMediaPlaylist_load23".}
proc fcQMediaPlaylist_save22(self: pointer, location: pointer, format: cstring): bool {.importc: "QMediaPlaylist_save22".}
proc fQMediaPlaylist_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QMediaPlaylist_virtualbase_metacall".}
proc fcQMediaPlaylist_override_virtual_metacall(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_metacall".}
proc fQMediaPlaylist_virtualbase_mediaObject(self: pointer, ): pointer{.importc: "QMediaPlaylist_virtualbase_mediaObject".}
proc fcQMediaPlaylist_override_virtual_mediaObject(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_mediaObject".}
proc fQMediaPlaylist_virtualbase_setMediaObject(self: pointer, objectVal: pointer): bool{.importc: "QMediaPlaylist_virtualbase_setMediaObject".}
proc fcQMediaPlaylist_override_virtual_setMediaObject(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_setMediaObject".}
proc fQMediaPlaylist_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QMediaPlaylist_virtualbase_event".}
proc fcQMediaPlaylist_override_virtual_event(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_event".}
proc fQMediaPlaylist_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QMediaPlaylist_virtualbase_eventFilter".}
proc fcQMediaPlaylist_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_eventFilter".}
proc fQMediaPlaylist_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QMediaPlaylist_virtualbase_timerEvent".}
proc fcQMediaPlaylist_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_timerEvent".}
proc fQMediaPlaylist_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QMediaPlaylist_virtualbase_childEvent".}
proc fcQMediaPlaylist_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_childEvent".}
proc fQMediaPlaylist_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QMediaPlaylist_virtualbase_customEvent".}
proc fcQMediaPlaylist_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_customEvent".}
proc fQMediaPlaylist_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlaylist_virtualbase_connectNotify".}
proc fcQMediaPlaylist_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_connectNotify".}
proc fQMediaPlaylist_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QMediaPlaylist_virtualbase_disconnectNotify".}
proc fcQMediaPlaylist_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QMediaPlaylist_override_virtual_disconnectNotify".}
proc fcQMediaPlaylist_staticMetaObject(): pointer {.importc: "QMediaPlaylist_staticMetaObject".}
proc fcQMediaPlaylist_delete(self: pointer) {.importc: "QMediaPlaylist_delete".}


func init*(T: type QMediaPlaylist, h: ptr cQMediaPlaylist): QMediaPlaylist =
  T(h: h)
proc create*(T: type QMediaPlaylist, ): QMediaPlaylist =

  QMediaPlaylist.init(fcQMediaPlaylist_new())
proc create*(T: type QMediaPlaylist, parent: gen_qobject.QObject): QMediaPlaylist =

  QMediaPlaylist.init(fcQMediaPlaylist_new2(parent.h))
proc metaObject*(self: QMediaPlaylist, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQMediaPlaylist_metaObject(self.h))

proc metacast*(self: QMediaPlaylist, param1: cstring): pointer =

  fcQMediaPlaylist_metacast(self.h, param1)

proc metacall*(self: QMediaPlaylist, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQMediaPlaylist_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QMediaPlaylist, s: cstring): string =

  let v_ms = fcQMediaPlaylist_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QMediaPlaylist, s: cstring): string =

  let v_ms = fcQMediaPlaylist_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc mediaObject*(self: QMediaPlaylist, ): gen_qmediaobject.QMediaObject =

  gen_qmediaobject.QMediaObject(h: fcQMediaPlaylist_mediaObject(self.h))

proc playbackMode*(self: QMediaPlaylist, ): QMediaPlaylistPlaybackMode =

  QMediaPlaylistPlaybackMode(fcQMediaPlaylist_playbackMode(self.h))

proc setPlaybackMode*(self: QMediaPlaylist, mode: QMediaPlaylistPlaybackMode): void =

  fcQMediaPlaylist_setPlaybackMode(self.h, cint(mode))

proc currentIndex*(self: QMediaPlaylist, ): cint =

  fcQMediaPlaylist_currentIndex(self.h)

proc currentMedia*(self: QMediaPlaylist, ): gen_qmediacontent.QMediaContent =

  gen_qmediacontent.QMediaContent(h: fcQMediaPlaylist_currentMedia(self.h))

proc nextIndex*(self: QMediaPlaylist, ): cint =

  fcQMediaPlaylist_nextIndex(self.h)

proc previousIndex*(self: QMediaPlaylist, ): cint =

  fcQMediaPlaylist_previousIndex(self.h)

proc media*(self: QMediaPlaylist, index: cint): gen_qmediacontent.QMediaContent =

  gen_qmediacontent.QMediaContent(h: fcQMediaPlaylist_media(self.h, index))

proc mediaCount*(self: QMediaPlaylist, ): cint =

  fcQMediaPlaylist_mediaCount(self.h)

proc isEmpty*(self: QMediaPlaylist, ): bool =

  fcQMediaPlaylist_isEmpty(self.h)

proc isReadOnly*(self: QMediaPlaylist, ): bool =

  fcQMediaPlaylist_isReadOnly(self.h)

proc addMedia*(self: QMediaPlaylist, content: gen_qmediacontent.QMediaContent): bool =

  fcQMediaPlaylist_addMedia(self.h, content.h)

proc addMediaWithItems*(self: QMediaPlaylist, items: seq[gen_qmediacontent.QMediaContent]): bool =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQMediaPlaylist_addMediaWithItems(self.h, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc insertMedia*(self: QMediaPlaylist, index: cint, content: gen_qmediacontent.QMediaContent): bool =

  fcQMediaPlaylist_insertMedia(self.h, index, content.h)

proc insertMedia2*(self: QMediaPlaylist, index: cint, items: seq[gen_qmediacontent.QMediaContent]): bool =

  var items_CArray = newSeq[pointer](len(items))
  for i in 0..<len(items):
    items_CArray[i] = items[i].h

  fcQMediaPlaylist_insertMedia2(self.h, index, struct_miqt_array(len: csize_t(len(items)), data: if len(items) == 0: nil else: addr(items_CArray[0])))

proc moveMedia*(self: QMediaPlaylist, fromVal: cint, to: cint): bool =

  fcQMediaPlaylist_moveMedia(self.h, fromVal, to)

proc removeMedia*(self: QMediaPlaylist, pos: cint): bool =

  fcQMediaPlaylist_removeMedia(self.h, pos)

proc removeMedia2*(self: QMediaPlaylist, start: cint, endVal: cint): bool =

  fcQMediaPlaylist_removeMedia2(self.h, start, endVal)

proc clear*(self: QMediaPlaylist, ): bool =

  fcQMediaPlaylist_clear(self.h)

proc load*(self: QMediaPlaylist, request: gen_qnetworkrequest.QNetworkRequest): void =

  fcQMediaPlaylist_load(self.h, request.h)

proc loadWithLocation*(self: QMediaPlaylist, location: gen_qurl.QUrl): void =

  fcQMediaPlaylist_loadWithLocation(self.h, location.h)

proc loadWithDevice*(self: QMediaPlaylist, device: gen_qiodevice.QIODevice): void =

  fcQMediaPlaylist_loadWithDevice(self.h, device.h)

proc save*(self: QMediaPlaylist, location: gen_qurl.QUrl): bool =

  fcQMediaPlaylist_save(self.h, location.h)

proc save2*(self: QMediaPlaylist, device: gen_qiodevice.QIODevice, format: cstring): bool =

  fcQMediaPlaylist_save2(self.h, device.h, format)

proc error*(self: QMediaPlaylist, ): QMediaPlaylistError =

  QMediaPlaylistError(fcQMediaPlaylist_error(self.h))

proc errorString*(self: QMediaPlaylist, ): string =

  let v_ms = fcQMediaPlaylist_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc shuffle*(self: QMediaPlaylist, ): void =

  fcQMediaPlaylist_shuffle(self.h)

proc next*(self: QMediaPlaylist, ): void =

  fcQMediaPlaylist_next(self.h)

proc previous*(self: QMediaPlaylist, ): void =

  fcQMediaPlaylist_previous(self.h)

proc setCurrentIndex*(self: QMediaPlaylist, index: cint): void =

  fcQMediaPlaylist_setCurrentIndex(self.h, index)

proc currentIndexChanged*(self: QMediaPlaylist, index: cint): void =

  fcQMediaPlaylist_currentIndexChanged(self.h, index)

proc miqt_exec_callback_QMediaPlaylist_currentIndexChanged(slot: int, index: cint) {.exportc.} =
  type Cb = proc(index: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = index


  nimfunc[](slotval1)

proc oncurrentIndexChanged*(self: QMediaPlaylist, slot: proc(index: cint)) =
  type Cb = proc(index: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_currentIndexChanged(self.h, cast[int](addr tmp[]))
proc playbackModeChanged*(self: QMediaPlaylist, mode: QMediaPlaylistPlaybackMode): void =

  fcQMediaPlaylist_playbackModeChanged(self.h, cint(mode))

proc miqt_exec_callback_QMediaPlaylist_playbackModeChanged(slot: int, mode: cint) {.exportc.} =
  type Cb = proc(mode: QMediaPlaylistPlaybackMode)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QMediaPlaylistPlaybackMode(mode)


  nimfunc[](slotval1)

proc onplaybackModeChanged*(self: QMediaPlaylist, slot: proc(mode: QMediaPlaylistPlaybackMode)) =
  type Cb = proc(mode: QMediaPlaylistPlaybackMode)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_playbackModeChanged(self.h, cast[int](addr tmp[]))
proc currentMediaChanged*(self: QMediaPlaylist, param1: gen_qmediacontent.QMediaContent): void =

  fcQMediaPlaylist_currentMediaChanged(self.h, param1.h)

proc miqt_exec_callback_QMediaPlaylist_currentMediaChanged(slot: int, param1: pointer) {.exportc.} =
  type Cb = proc(param1: gen_qmediacontent.QMediaContent)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qmediacontent.QMediaContent(h: param1)


  nimfunc[](slotval1)

proc oncurrentMediaChanged*(self: QMediaPlaylist, slot: proc(param1: gen_qmediacontent.QMediaContent)) =
  type Cb = proc(param1: gen_qmediacontent.QMediaContent)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_currentMediaChanged(self.h, cast[int](addr tmp[]))
proc mediaAboutToBeInserted*(self: QMediaPlaylist, start: cint, endVal: cint): void =

  fcQMediaPlaylist_mediaAboutToBeInserted(self.h, start, endVal)

proc miqt_exec_callback_QMediaPlaylist_mediaAboutToBeInserted(slot: int, start: cint, endVal: cint) {.exportc.} =
  type Cb = proc(start: cint, endVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)

proc onmediaAboutToBeInserted*(self: QMediaPlaylist, slot: proc(start: cint, endVal: cint)) =
  type Cb = proc(start: cint, endVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_mediaAboutToBeInserted(self.h, cast[int](addr tmp[]))
proc mediaInserted*(self: QMediaPlaylist, start: cint, endVal: cint): void =

  fcQMediaPlaylist_mediaInserted(self.h, start, endVal)

proc miqt_exec_callback_QMediaPlaylist_mediaInserted(slot: int, start: cint, endVal: cint) {.exportc.} =
  type Cb = proc(start: cint, endVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)

proc onmediaInserted*(self: QMediaPlaylist, slot: proc(start: cint, endVal: cint)) =
  type Cb = proc(start: cint, endVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_mediaInserted(self.h, cast[int](addr tmp[]))
proc mediaAboutToBeRemoved*(self: QMediaPlaylist, start: cint, endVal: cint): void =

  fcQMediaPlaylist_mediaAboutToBeRemoved(self.h, start, endVal)

proc miqt_exec_callback_QMediaPlaylist_mediaAboutToBeRemoved(slot: int, start: cint, endVal: cint) {.exportc.} =
  type Cb = proc(start: cint, endVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)

proc onmediaAboutToBeRemoved*(self: QMediaPlaylist, slot: proc(start: cint, endVal: cint)) =
  type Cb = proc(start: cint, endVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_mediaAboutToBeRemoved(self.h, cast[int](addr tmp[]))
proc mediaRemoved*(self: QMediaPlaylist, start: cint, endVal: cint): void =

  fcQMediaPlaylist_mediaRemoved(self.h, start, endVal)

proc miqt_exec_callback_QMediaPlaylist_mediaRemoved(slot: int, start: cint, endVal: cint) {.exportc.} =
  type Cb = proc(start: cint, endVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)

proc onmediaRemoved*(self: QMediaPlaylist, slot: proc(start: cint, endVal: cint)) =
  type Cb = proc(start: cint, endVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_mediaRemoved(self.h, cast[int](addr tmp[]))
proc mediaChanged*(self: QMediaPlaylist, start: cint, endVal: cint): void =

  fcQMediaPlaylist_mediaChanged(self.h, start, endVal)

proc miqt_exec_callback_QMediaPlaylist_mediaChanged(slot: int, start: cint, endVal: cint) {.exportc.} =
  type Cb = proc(start: cint, endVal: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = start

  let slotval2 = endVal


  nimfunc[](slotval1, slotval2)

proc onmediaChanged*(self: QMediaPlaylist, slot: proc(start: cint, endVal: cint)) =
  type Cb = proc(start: cint, endVal: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_mediaChanged(self.h, cast[int](addr tmp[]))
proc loaded*(self: QMediaPlaylist, ): void =

  fcQMediaPlaylist_loaded(self.h)

proc miqt_exec_callback_QMediaPlaylist_loaded(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloaded*(self: QMediaPlaylist, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_loaded(self.h, cast[int](addr tmp[]))
proc loadFailed*(self: QMediaPlaylist, ): void =

  fcQMediaPlaylist_loadFailed(self.h)

proc miqt_exec_callback_QMediaPlaylist_loadFailed(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onloadFailed*(self: QMediaPlaylist, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQMediaPlaylist_connect_loadFailed(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QMediaPlaylist, s: cstring, c: cstring): string =

  let v_ms = fcQMediaPlaylist_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QMediaPlaylist, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaPlaylist_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QMediaPlaylist, s: cstring, c: cstring): string =

  let v_ms = fcQMediaPlaylist_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QMediaPlaylist, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQMediaPlaylist_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc nextIndex1*(self: QMediaPlaylist, steps: cint): cint =

  fcQMediaPlaylist_nextIndex1(self.h, steps)

proc previousIndex1*(self: QMediaPlaylist, steps: cint): cint =

  fcQMediaPlaylist_previousIndex1(self.h, steps)

proc load2*(self: QMediaPlaylist, request: gen_qnetworkrequest.QNetworkRequest, format: cstring): void =

  fcQMediaPlaylist_load2(self.h, request.h, format)

proc load22*(self: QMediaPlaylist, location: gen_qurl.QUrl, format: cstring): void =

  fcQMediaPlaylist_load22(self.h, location.h, format)

proc load23*(self: QMediaPlaylist, device: gen_qiodevice.QIODevice, format: cstring): void =

  fcQMediaPlaylist_load23(self.h, device.h, format)

proc save22*(self: QMediaPlaylist, location: gen_qurl.QUrl, format: cstring): bool =

  fcQMediaPlaylist_save22(self.h, location.h, format)

proc callVirtualBase_metacall(self: QMediaPlaylist, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQMediaPlaylist_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QMediaPlaylistmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylistmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylistmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_metacall(self: ptr cQMediaPlaylist, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QMediaPlaylist_metacall ".} =
  type Cb = proc(super: QMediaPlaylistmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QMediaPlaylist(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_mediaObject(self: QMediaPlaylist, ): gen_qmediaobject.QMediaObject =


  gen_qmediaobject.QMediaObject(h: fQMediaPlaylist_virtualbase_mediaObject(self.h))

type QMediaPlaylistmediaObjectBase* = proc(): gen_qmediaobject.QMediaObject
proc onmediaObject*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylistmediaObjectBase): gen_qmediaobject.QMediaObject) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylistmediaObjectBase): gen_qmediaobject.QMediaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_mediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_mediaObject(self: ptr cQMediaPlaylist, slot: int): pointer {.exportc: "miqt_exec_callback_QMediaPlaylist_mediaObject ".} =
  type Cb = proc(super: QMediaPlaylistmediaObjectBase): gen_qmediaobject.QMediaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_mediaObject(QMediaPlaylist(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setMediaObject(self: QMediaPlaylist, objectVal: gen_qmediaobject.QMediaObject): bool =


  fQMediaPlaylist_virtualbase_setMediaObject(self.h, objectVal.h)

type QMediaPlaylistsetMediaObjectBase* = proc(objectVal: gen_qmediaobject.QMediaObject): bool
proc onsetMediaObject*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylistsetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylistsetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_setMediaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_setMediaObject(self: ptr cQMediaPlaylist, slot: int, objectVal: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlaylist_setMediaObject ".} =
  type Cb = proc(super: QMediaPlaylistsetMediaObjectBase, objectVal: gen_qmediaobject.QMediaObject): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(objectVal: gen_qmediaobject.QMediaObject): auto =
    callVirtualBase_setMediaObject(QMediaPlaylist(h: self), objectVal)
  let slotval1 = gen_qmediaobject.QMediaObject(h: objectVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QMediaPlaylist, event: gen_qcoreevent.QEvent): bool =


  fQMediaPlaylist_virtualbase_event(self.h, event.h)

type QMediaPlaylisteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylisteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylisteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_event(self: ptr cQMediaPlaylist, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlaylist_event ".} =
  type Cb = proc(super: QMediaPlaylisteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QMediaPlaylist(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QMediaPlaylist, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQMediaPlaylist_virtualbase_eventFilter(self.h, watched.h, event.h)

type QMediaPlaylisteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylisteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylisteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_eventFilter(self: ptr cQMediaPlaylist, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QMediaPlaylist_eventFilter ".} =
  type Cb = proc(super: QMediaPlaylisteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QMediaPlaylist(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QMediaPlaylist, event: gen_qcoreevent.QTimerEvent): void =


  fQMediaPlaylist_virtualbase_timerEvent(self.h, event.h)

type QMediaPlaylisttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylisttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylisttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_timerEvent(self: ptr cQMediaPlaylist, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_timerEvent ".} =
  type Cb = proc(super: QMediaPlaylisttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QMediaPlaylist(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QMediaPlaylist, event: gen_qcoreevent.QChildEvent): void =


  fQMediaPlaylist_virtualbase_childEvent(self.h, event.h)

type QMediaPlaylistchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylistchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylistchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_childEvent(self: ptr cQMediaPlaylist, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_childEvent ".} =
  type Cb = proc(super: QMediaPlaylistchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QMediaPlaylist(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QMediaPlaylist, event: gen_qcoreevent.QEvent): void =


  fQMediaPlaylist_virtualbase_customEvent(self.h, event.h)

type QMediaPlaylistcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylistcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylistcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_customEvent(self: ptr cQMediaPlaylist, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_customEvent ".} =
  type Cb = proc(super: QMediaPlaylistcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QMediaPlaylist(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QMediaPlaylist, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaPlaylist_virtualbase_connectNotify(self.h, signal.h)

type QMediaPlaylistconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylistconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylistconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_connectNotify(self: ptr cQMediaPlaylist, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_connectNotify ".} =
  type Cb = proc(super: QMediaPlaylistconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QMediaPlaylist(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QMediaPlaylist, signal: gen_qmetaobject.QMetaMethod): void =


  fQMediaPlaylist_virtualbase_disconnectNotify(self.h, signal.h)

type QMediaPlaylistdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QMediaPlaylist, slot: proc(super: QMediaPlaylistdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QMediaPlaylistdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQMediaPlaylist_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QMediaPlaylist_disconnectNotify(self: ptr cQMediaPlaylist, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QMediaPlaylist_disconnectNotify ".} =
  type Cb = proc(super: QMediaPlaylistdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QMediaPlaylist(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QMediaPlaylist): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQMediaPlaylist_staticMetaObject())
proc delete*(self: QMediaPlaylist) =
  fcQMediaPlaylist_delete(self.h)
