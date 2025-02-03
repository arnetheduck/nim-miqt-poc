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
{.compile("gen_qcoreevent.cpp", cflags).}


type QEventType* = cint
const
  QEventNone* = 0
  QEventTimer* = 1
  QEventMouseButtonPress* = 2
  QEventMouseButtonRelease* = 3
  QEventMouseButtonDblClick* = 4
  QEventMouseMove* = 5
  QEventKeyPress* = 6
  QEventKeyRelease* = 7
  QEventFocusIn* = 8
  QEventFocusOut* = 9
  QEventFocusAboutToChange* = 23
  QEventEnter* = 10
  QEventLeave* = 11
  QEventPaint* = 12
  QEventMove* = 13
  QEventResize* = 14
  QEventCreate* = 15
  QEventDestroy* = 16
  QEventShow* = 17
  QEventHide* = 18
  QEventClose* = 19
  QEventQuit* = 20
  QEventParentChange* = 21
  QEventParentAboutToChange* = 131
  QEventThreadChange* = 22
  QEventWindowActivate* = 24
  QEventWindowDeactivate* = 25
  QEventShowToParent* = 26
  QEventHideToParent* = 27
  QEventWheel* = 31
  QEventWindowTitleChange* = 33
  QEventWindowIconChange* = 34
  QEventApplicationWindowIconChange* = 35
  QEventApplicationFontChange* = 36
  QEventApplicationLayoutDirectionChange* = 37
  QEventApplicationPaletteChange* = 38
  QEventPaletteChange* = 39
  QEventClipboard* = 40
  QEventSpeech* = 42
  QEventMetaCall* = 43
  QEventSockAct* = 50
  QEventWinEventAct* = 132
  QEventDeferredDelete* = 52
  QEventDragEnter* = 60
  QEventDragMove* = 61
  QEventDragLeave* = 62
  QEventDrop* = 63
  QEventDragResponse* = 64
  QEventChildAdded* = 68
  QEventChildPolished* = 69
  QEventChildRemoved* = 71
  QEventShowWindowRequest* = 73
  QEventPolishRequest* = 74
  QEventPolish* = 75
  QEventLayoutRequest* = 76
  QEventUpdateRequest* = 77
  QEventUpdateLater* = 78
  QEventEmbeddingControl* = 79
  QEventActivateControl* = 80
  QEventDeactivateControl* = 81
  QEventContextMenu* = 82
  QEventInputMethod* = 83
  QEventTabletMove* = 87
  QEventLocaleChange* = 88
  QEventLanguageChange* = 89
  QEventLayoutDirectionChange* = 90
  QEventStyle* = 91
  QEventTabletPress* = 92
  QEventTabletRelease* = 93
  QEventOkRequest* = 94
  QEventHelpRequest* = 95
  QEventIconDrag* = 96
  QEventFontChange* = 97
  QEventEnabledChange* = 98
  QEventActivationChange* = 99
  QEventStyleChange* = 100
  QEventIconTextChange* = 101
  QEventModifiedChange* = 102
  QEventMouseTrackingChange* = 109
  QEventWindowBlocked* = 103
  QEventWindowUnblocked* = 104
  QEventWindowStateChange* = 105
  QEventReadOnlyChange* = 106
  QEventToolTip* = 110
  QEventWhatsThis* = 111
  QEventStatusTip* = 112
  QEventActionChanged* = 113
  QEventActionAdded* = 114
  QEventActionRemoved* = 115
  QEventFileOpen* = 116
  QEventShortcut* = 117
  QEventShortcutOverride* = 51
  QEventWhatsThisClicked* = 118
  QEventToolBarChange* = 120
  QEventApplicationActivate* = 121
  QEventApplicationActivated* = 121
  QEventApplicationDeactivate* = 122
  QEventApplicationDeactivated* = 122
  QEventQueryWhatsThis* = 123
  QEventEnterWhatsThisMode* = 124
  QEventLeaveWhatsThisMode* = 125
  QEventZOrderChange* = 126
  QEventHoverEnter* = 127
  QEventHoverLeave* = 128
  QEventHoverMove* = 129
  QEventAcceptDropsChange* = 152
  QEventZeroTimerEvent* = 154
  QEventGraphicsSceneMouseMove* = 155
  QEventGraphicsSceneMousePress* = 156
  QEventGraphicsSceneMouseRelease* = 157
  QEventGraphicsSceneMouseDoubleClick* = 158
  QEventGraphicsSceneContextMenu* = 159
  QEventGraphicsSceneHoverEnter* = 160
  QEventGraphicsSceneHoverMove* = 161
  QEventGraphicsSceneHoverLeave* = 162
  QEventGraphicsSceneHelp* = 163
  QEventGraphicsSceneDragEnter* = 164
  QEventGraphicsSceneDragMove* = 165
  QEventGraphicsSceneDragLeave* = 166
  QEventGraphicsSceneDrop* = 167
  QEventGraphicsSceneWheel* = 168
  QEventGraphicsSceneLeave* = 220
  QEventKeyboardLayoutChange* = 169
  QEventDynamicPropertyChange* = 170
  QEventTabletEnterProximity* = 171
  QEventTabletLeaveProximity* = 172
  QEventNonClientAreaMouseMove* = 173
  QEventNonClientAreaMouseButtonPress* = 174
  QEventNonClientAreaMouseButtonRelease* = 175
  QEventNonClientAreaMouseButtonDblClick* = 176
  QEventMacSizeChange* = 177
  QEventContentsRectChange* = 178
  QEventMacGLWindowChange* = 179
  QEventFutureCallOut* = 180
  QEventGraphicsSceneResize* = 181
  QEventGraphicsSceneMove* = 182
  QEventCursorChange* = 183
  QEventToolTipChange* = 184
  QEventNetworkReplyUpdated* = 185
  QEventGrabMouse* = 186
  QEventUngrabMouse* = 187
  QEventGrabKeyboard* = 188
  QEventUngrabKeyboard* = 189
  QEventStateMachineSignal* = 192
  QEventStateMachineWrapped* = 193
  QEventTouchBegin* = 194
  QEventTouchUpdate* = 195
  QEventTouchEnd* = 196
  QEventNativeGesture* = 197
  QEventRequestSoftwareInputPanel* = 199
  QEventCloseSoftwareInputPanel* = 200
  QEventWinIdChange* = 203
  QEventGesture* = 198
  QEventGestureOverride* = 202
  QEventScrollPrepare* = 204
  QEventScroll* = 205
  QEventExpose* = 206
  QEventInputMethodQuery* = 207
  QEventOrientationChange* = 208
  QEventTouchCancel* = 209
  QEventThemeChange* = 210
  QEventSockClose* = 211
  QEventPlatformPanel* = 212
  QEventStyleAnimationUpdate* = 213
  QEventApplicationStateChange* = 214
  QEventWindowChangeInternal* = 215
  QEventScreenChangeInternal* = 216
  QEventPlatformSurface* = 217
  QEventPointer* = 218
  QEventTabletTrackingChange* = 219
  QEventWindowAboutToChangeInternal* = 221
  QEventUser* = 1000
  QEventMaxUser* = 65535



import gen_qcoreevent_types
export gen_qcoreevent_types

import
  gen_qobject
export
  gen_qobject

type cQEvent*{.exportc: "QEvent", incompleteStruct.} = object
type cQTimerEvent*{.exportc: "QTimerEvent", incompleteStruct.} = object
type cQChildEvent*{.exportc: "QChildEvent", incompleteStruct.} = object
type cQDynamicPropertyChangeEvent*{.exportc: "QDynamicPropertyChangeEvent", incompleteStruct.} = object

proc fcQEvent_new(typeVal: cint): ptr cQEvent {.importc: "QEvent_new".}
proc fcQEvent_typeX(self: pointer, ): cint {.importc: "QEvent_type".}
proc fcQEvent_spontaneous(self: pointer, ): bool {.importc: "QEvent_spontaneous".}
proc fcQEvent_setAccepted(self: pointer, accepted: bool): void {.importc: "QEvent_setAccepted".}
proc fcQEvent_isAccepted(self: pointer, ): bool {.importc: "QEvent_isAccepted".}
proc fcQEvent_accept(self: pointer, ): void {.importc: "QEvent_accept".}
proc fcQEvent_ignore(self: pointer, ): void {.importc: "QEvent_ignore".}
proc fcQEvent_isInputEvent(self: pointer, ): bool {.importc: "QEvent_isInputEvent".}
proc fcQEvent_isPointerEvent(self: pointer, ): bool {.importc: "QEvent_isPointerEvent".}
proc fcQEvent_isSinglePointEvent(self: pointer, ): bool {.importc: "QEvent_isSinglePointEvent".}
proc fcQEvent_registerEventType(): cint {.importc: "QEvent_registerEventType".}
proc fcQEvent_clone(self: pointer, ): pointer {.importc: "QEvent_clone".}
proc fcQEvent_registerEventType1(hint: cint): cint {.importc: "QEvent_registerEventType1".}
proc fQEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QEvent_virtualbase_setAccepted".}
proc fcQEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QEvent_override_virtual_setAccepted".}
proc fQEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QEvent_virtualbase_clone".}
proc fcQEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QEvent_override_virtual_clone".}
proc fcQEvent_delete(self: pointer) {.importc: "QEvent_delete".}
proc fcQTimerEvent_new(timerId: cint): ptr cQTimerEvent {.importc: "QTimerEvent_new".}
proc fcQTimerEvent_clone(self: pointer, ): pointer {.importc: "QTimerEvent_clone".}
proc fcQTimerEvent_timerId(self: pointer, ): cint {.importc: "QTimerEvent_timerId".}
proc fQTimerEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QTimerEvent_virtualbase_clone".}
proc fcQTimerEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QTimerEvent_override_virtual_clone".}
proc fQTimerEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QTimerEvent_virtualbase_setAccepted".}
proc fcQTimerEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QTimerEvent_override_virtual_setAccepted".}
proc fcQTimerEvent_delete(self: pointer) {.importc: "QTimerEvent_delete".}
proc fcQChildEvent_new(typeVal: cint, child: pointer): ptr cQChildEvent {.importc: "QChildEvent_new".}
proc fcQChildEvent_clone(self: pointer, ): pointer {.importc: "QChildEvent_clone".}
proc fcQChildEvent_child(self: pointer, ): pointer {.importc: "QChildEvent_child".}
proc fcQChildEvent_added(self: pointer, ): bool {.importc: "QChildEvent_added".}
proc fcQChildEvent_polished(self: pointer, ): bool {.importc: "QChildEvent_polished".}
proc fcQChildEvent_removed(self: pointer, ): bool {.importc: "QChildEvent_removed".}
proc fQChildEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QChildEvent_virtualbase_clone".}
proc fcQChildEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QChildEvent_override_virtual_clone".}
proc fQChildEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QChildEvent_virtualbase_setAccepted".}
proc fcQChildEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QChildEvent_override_virtual_setAccepted".}
proc fcQChildEvent_delete(self: pointer) {.importc: "QChildEvent_delete".}
proc fcQDynamicPropertyChangeEvent_new(name: struct_miqt_string): ptr cQDynamicPropertyChangeEvent {.importc: "QDynamicPropertyChangeEvent_new".}
proc fcQDynamicPropertyChangeEvent_clone(self: pointer, ): pointer {.importc: "QDynamicPropertyChangeEvent_clone".}
proc fcQDynamicPropertyChangeEvent_propertyName(self: pointer, ): struct_miqt_string {.importc: "QDynamicPropertyChangeEvent_propertyName".}
proc fQDynamicPropertyChangeEvent_virtualbase_clone(self: pointer, ): pointer{.importc: "QDynamicPropertyChangeEvent_virtualbase_clone".}
proc fcQDynamicPropertyChangeEvent_override_virtual_clone(self: pointer, slot: int) {.importc: "QDynamicPropertyChangeEvent_override_virtual_clone".}
proc fQDynamicPropertyChangeEvent_virtualbase_setAccepted(self: pointer, accepted: bool): void{.importc: "QDynamicPropertyChangeEvent_virtualbase_setAccepted".}
proc fcQDynamicPropertyChangeEvent_override_virtual_setAccepted(self: pointer, slot: int) {.importc: "QDynamicPropertyChangeEvent_override_virtual_setAccepted".}
proc fcQDynamicPropertyChangeEvent_delete(self: pointer) {.importc: "QDynamicPropertyChangeEvent_delete".}


func init*(T: type QEvent, h: ptr cQEvent): QEvent =
  T(h: h)
proc create*(T: type QEvent, typeVal: QEventType): QEvent =

  QEvent.init(fcQEvent_new(cint(typeVal)))
proc typeX*(self: QEvent, ): QEventType =

  QEventType(fcQEvent_typeX(self.h))

proc spontaneous*(self: QEvent, ): bool =

  fcQEvent_spontaneous(self.h)

proc setAccepted*(self: QEvent, accepted: bool): void =

  fcQEvent_setAccepted(self.h, accepted)

proc isAccepted*(self: QEvent, ): bool =

  fcQEvent_isAccepted(self.h)

proc accept*(self: QEvent, ): void =

  fcQEvent_accept(self.h)

proc ignore*(self: QEvent, ): void =

  fcQEvent_ignore(self.h)

proc isInputEvent*(self: QEvent, ): bool =

  fcQEvent_isInputEvent(self.h)

proc isPointerEvent*(self: QEvent, ): bool =

  fcQEvent_isPointerEvent(self.h)

proc isSinglePointEvent*(self: QEvent, ): bool =

  fcQEvent_isSinglePointEvent(self.h)

proc registerEventType*(_: type QEvent, ): cint =

  fcQEvent_registerEventType()

proc clone*(self: QEvent, ): QEvent =

  QEvent(h: fcQEvent_clone(self.h))

proc registerEventType1*(_: type QEvent, hint: cint): cint =

  fcQEvent_registerEventType1(hint)

proc callVirtualBase_setAccepted(self: QEvent, accepted: bool): void =


  fQEvent_virtualbase_setAccepted(self.h, accepted)

type QEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QEvent, slot: proc(super: QEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEvent_setAccepted(self: ptr cQEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QEvent_setAccepted ".} =
  type Cb = proc(super: QEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc callVirtualBase_clone(self: QEvent, ): QEvent =


  QEvent(h: fQEvent_virtualbase_clone(self.h))

type QEventcloneBase* = proc(): QEvent
proc onclone*(self: QEvent, slot: proc(super: QEventcloneBase): QEvent) =
  # TODO check subclass
  type Cb = proc(super: QEventcloneBase): QEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QEvent_clone(self: ptr cQEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QEvent_clone ".} =
  type Cb = proc(super: QEventcloneBase): QEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc delete*(self: QEvent) =
  fcQEvent_delete(self.h)

func init*(T: type QTimerEvent, h: ptr cQTimerEvent): QTimerEvent =
  T(h: h)
proc create*(T: type QTimerEvent, timerId: cint): QTimerEvent =

  QTimerEvent.init(fcQTimerEvent_new(timerId))
proc clone*(self: QTimerEvent, ): QTimerEvent =

  QTimerEvent(h: fcQTimerEvent_clone(self.h))

proc timerId*(self: QTimerEvent, ): cint =

  fcQTimerEvent_timerId(self.h)

proc callVirtualBase_clone(self: QTimerEvent, ): QTimerEvent =


  QTimerEvent(h: fQTimerEvent_virtualbase_clone(self.h))

type QTimerEventcloneBase* = proc(): QTimerEvent
proc onclone*(self: QTimerEvent, slot: proc(super: QTimerEventcloneBase): QTimerEvent) =
  # TODO check subclass
  type Cb = proc(super: QTimerEventcloneBase): QTimerEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimerEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimerEvent_clone(self: ptr cQTimerEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QTimerEvent_clone ".} =
  type Cb = proc(super: QTimerEventcloneBase): QTimerEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QTimerEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QTimerEvent, accepted: bool): void =


  fQTimerEvent_virtualbase_setAccepted(self.h, accepted)

type QTimerEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QTimerEvent, slot: proc(super: QTimerEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QTimerEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTimerEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTimerEvent_setAccepted(self: ptr cQTimerEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QTimerEvent_setAccepted ".} =
  type Cb = proc(super: QTimerEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QTimerEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QTimerEvent) =
  fcQTimerEvent_delete(self.h)

func init*(T: type QChildEvent, h: ptr cQChildEvent): QChildEvent =
  T(h: h)
proc create*(T: type QChildEvent, typeVal: QEventType, child: gen_qobject.QObject): QChildEvent =

  QChildEvent.init(fcQChildEvent_new(cint(typeVal), child.h))
proc clone*(self: QChildEvent, ): QChildEvent =

  QChildEvent(h: fcQChildEvent_clone(self.h))

proc child*(self: QChildEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQChildEvent_child(self.h))

proc added*(self: QChildEvent, ): bool =

  fcQChildEvent_added(self.h)

proc polished*(self: QChildEvent, ): bool =

  fcQChildEvent_polished(self.h)

proc removed*(self: QChildEvent, ): bool =

  fcQChildEvent_removed(self.h)

proc callVirtualBase_clone(self: QChildEvent, ): QChildEvent =


  QChildEvent(h: fQChildEvent_virtualbase_clone(self.h))

type QChildEventcloneBase* = proc(): QChildEvent
proc onclone*(self: QChildEvent, slot: proc(super: QChildEventcloneBase): QChildEvent) =
  # TODO check subclass
  type Cb = proc(super: QChildEventcloneBase): QChildEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQChildEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QChildEvent_clone(self: ptr cQChildEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QChildEvent_clone ".} =
  type Cb = proc(super: QChildEventcloneBase): QChildEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QChildEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QChildEvent, accepted: bool): void =


  fQChildEvent_virtualbase_setAccepted(self.h, accepted)

type QChildEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QChildEvent, slot: proc(super: QChildEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QChildEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQChildEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QChildEvent_setAccepted(self: ptr cQChildEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QChildEvent_setAccepted ".} =
  type Cb = proc(super: QChildEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QChildEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QChildEvent) =
  fcQChildEvent_delete(self.h)

func init*(T: type QDynamicPropertyChangeEvent, h: ptr cQDynamicPropertyChangeEvent): QDynamicPropertyChangeEvent =
  T(h: h)
proc create*(T: type QDynamicPropertyChangeEvent, name: seq[byte]): QDynamicPropertyChangeEvent =

  QDynamicPropertyChangeEvent.init(fcQDynamicPropertyChangeEvent_new(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))))
proc clone*(self: QDynamicPropertyChangeEvent, ): QDynamicPropertyChangeEvent =

  QDynamicPropertyChangeEvent(h: fcQDynamicPropertyChangeEvent_clone(self.h))

proc propertyName*(self: QDynamicPropertyChangeEvent, ): seq[byte] =

  var v_bytearray = fcQDynamicPropertyChangeEvent_propertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc callVirtualBase_clone(self: QDynamicPropertyChangeEvent, ): QDynamicPropertyChangeEvent =


  QDynamicPropertyChangeEvent(h: fQDynamicPropertyChangeEvent_virtualbase_clone(self.h))

type QDynamicPropertyChangeEventcloneBase* = proc(): QDynamicPropertyChangeEvent
proc onclone*(self: QDynamicPropertyChangeEvent, slot: proc(super: QDynamicPropertyChangeEventcloneBase): QDynamicPropertyChangeEvent) =
  # TODO check subclass
  type Cb = proc(super: QDynamicPropertyChangeEventcloneBase): QDynamicPropertyChangeEvent
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDynamicPropertyChangeEvent_override_virtual_clone(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDynamicPropertyChangeEvent_clone(self: ptr cQDynamicPropertyChangeEvent, slot: int): pointer {.exportc: "miqt_exec_callback_QDynamicPropertyChangeEvent_clone ".} =
  type Cb = proc(super: QDynamicPropertyChangeEventcloneBase): QDynamicPropertyChangeEvent
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_clone(QDynamicPropertyChangeEvent(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_setAccepted(self: QDynamicPropertyChangeEvent, accepted: bool): void =


  fQDynamicPropertyChangeEvent_virtualbase_setAccepted(self.h, accepted)

type QDynamicPropertyChangeEventsetAcceptedBase* = proc(accepted: bool): void
proc onsetAccepted*(self: QDynamicPropertyChangeEvent, slot: proc(super: QDynamicPropertyChangeEventsetAcceptedBase, accepted: bool): void) =
  # TODO check subclass
  type Cb = proc(super: QDynamicPropertyChangeEventsetAcceptedBase, accepted: bool): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQDynamicPropertyChangeEvent_override_virtual_setAccepted(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QDynamicPropertyChangeEvent_setAccepted(self: ptr cQDynamicPropertyChangeEvent, slot: int, accepted: bool): void {.exportc: "miqt_exec_callback_QDynamicPropertyChangeEvent_setAccepted ".} =
  type Cb = proc(super: QDynamicPropertyChangeEventsetAcceptedBase, accepted: bool): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(accepted: bool): auto =
    callVirtualBase_setAccepted(QDynamicPropertyChangeEvent(h: self), accepted)
  let slotval1 = accepted


  nimfunc[](superCall, slotval1)
proc delete*(self: QDynamicPropertyChangeEvent) =
  fcQDynamicPropertyChangeEvent_delete(self.h)
