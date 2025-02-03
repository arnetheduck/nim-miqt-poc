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
  QEventMacGLClearDrawable* = 191
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
proc fcQEvent_new2(other: pointer): ptr cQEvent {.importc: "QEvent_new2".}
proc fcQEvent_operatorAssign(self: pointer, other: pointer): void {.importc: "QEvent_operatorAssign".}
proc fcQEvent_typeX(self: pointer, ): cint {.importc: "QEvent_type".}
proc fcQEvent_spontaneous(self: pointer, ): bool {.importc: "QEvent_spontaneous".}
proc fcQEvent_setAccepted(self: pointer, accepted: bool): void {.importc: "QEvent_setAccepted".}
proc fcQEvent_isAccepted(self: pointer, ): bool {.importc: "QEvent_isAccepted".}
proc fcQEvent_accept(self: pointer, ): void {.importc: "QEvent_accept".}
proc fcQEvent_ignore(self: pointer, ): void {.importc: "QEvent_ignore".}
proc fcQEvent_registerEventType(): cint {.importc: "QEvent_registerEventType".}
proc fcQEvent_registerEventType1(hint: cint): cint {.importc: "QEvent_registerEventType1".}
proc fcQEvent_delete(self: pointer) {.importc: "QEvent_delete".}
proc fcQTimerEvent_new(timerId: cint): ptr cQTimerEvent {.importc: "QTimerEvent_new".}
proc fcQTimerEvent_new2(param1: pointer): ptr cQTimerEvent {.importc: "QTimerEvent_new2".}
proc fcQTimerEvent_timerId(self: pointer, ): cint {.importc: "QTimerEvent_timerId".}
proc fcQTimerEvent_delete(self: pointer) {.importc: "QTimerEvent_delete".}
proc fcQChildEvent_new(typeVal: cint, child: pointer): ptr cQChildEvent {.importc: "QChildEvent_new".}
proc fcQChildEvent_new2(param1: pointer): ptr cQChildEvent {.importc: "QChildEvent_new2".}
proc fcQChildEvent_child(self: pointer, ): pointer {.importc: "QChildEvent_child".}
proc fcQChildEvent_added(self: pointer, ): bool {.importc: "QChildEvent_added".}
proc fcQChildEvent_polished(self: pointer, ): bool {.importc: "QChildEvent_polished".}
proc fcQChildEvent_removed(self: pointer, ): bool {.importc: "QChildEvent_removed".}
proc fcQChildEvent_delete(self: pointer) {.importc: "QChildEvent_delete".}
proc fcQDynamicPropertyChangeEvent_new(name: struct_miqt_string): ptr cQDynamicPropertyChangeEvent {.importc: "QDynamicPropertyChangeEvent_new".}
proc fcQDynamicPropertyChangeEvent_new2(param1: pointer): ptr cQDynamicPropertyChangeEvent {.importc: "QDynamicPropertyChangeEvent_new2".}
proc fcQDynamicPropertyChangeEvent_propertyName(self: pointer, ): struct_miqt_string {.importc: "QDynamicPropertyChangeEvent_propertyName".}
proc fcQDynamicPropertyChangeEvent_delete(self: pointer) {.importc: "QDynamicPropertyChangeEvent_delete".}


func init*(T: type QEvent, h: ptr cQEvent): QEvent =
  T(h: h)
proc create*(T: type QEvent, typeVal: QEventType): QEvent =

  QEvent.init(fcQEvent_new(cint(typeVal)))
proc create*(T: type QEvent, other: QEvent): QEvent =

  QEvent.init(fcQEvent_new2(other.h))
proc operatorAssign*(self: QEvent, other: QEvent): void =

  fcQEvent_operatorAssign(self.h, other.h)

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

proc registerEventType*(_: type QEvent, ): cint =

  fcQEvent_registerEventType()

proc registerEventType1*(_: type QEvent, hint: cint): cint =

  fcQEvent_registerEventType1(hint)

proc delete*(self: QEvent) =
  fcQEvent_delete(self.h)

func init*(T: type QTimerEvent, h: ptr cQTimerEvent): QTimerEvent =
  T(h: h)
proc create*(T: type QTimerEvent, timerId: cint): QTimerEvent =

  QTimerEvent.init(fcQTimerEvent_new(timerId))
proc create*(T: type QTimerEvent, param1: QTimerEvent): QTimerEvent =

  QTimerEvent.init(fcQTimerEvent_new2(param1.h))
proc timerId*(self: QTimerEvent, ): cint =

  fcQTimerEvent_timerId(self.h)

proc delete*(self: QTimerEvent) =
  fcQTimerEvent_delete(self.h)

func init*(T: type QChildEvent, h: ptr cQChildEvent): QChildEvent =
  T(h: h)
proc create*(T: type QChildEvent, typeVal: QEventType, child: gen_qobject.QObject): QChildEvent =

  QChildEvent.init(fcQChildEvent_new(cint(typeVal), child.h))
proc create*(T: type QChildEvent, param1: QChildEvent): QChildEvent =

  QChildEvent.init(fcQChildEvent_new2(param1.h))
proc child*(self: QChildEvent, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQChildEvent_child(self.h))

proc added*(self: QChildEvent, ): bool =

  fcQChildEvent_added(self.h)

proc polished*(self: QChildEvent, ): bool =

  fcQChildEvent_polished(self.h)

proc removed*(self: QChildEvent, ): bool =

  fcQChildEvent_removed(self.h)

proc delete*(self: QChildEvent) =
  fcQChildEvent_delete(self.h)

func init*(T: type QDynamicPropertyChangeEvent, h: ptr cQDynamicPropertyChangeEvent): QDynamicPropertyChangeEvent =
  T(h: h)
proc create*(T: type QDynamicPropertyChangeEvent, name: seq[byte]): QDynamicPropertyChangeEvent =

  QDynamicPropertyChangeEvent.init(fcQDynamicPropertyChangeEvent_new(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))))
proc create*(T: type QDynamicPropertyChangeEvent, param1: QDynamicPropertyChangeEvent): QDynamicPropertyChangeEvent =

  QDynamicPropertyChangeEvent.init(fcQDynamicPropertyChangeEvent_new2(param1.h))
proc propertyName*(self: QDynamicPropertyChangeEvent, ): seq[byte] =

  var v_bytearray = fcQDynamicPropertyChangeEvent_propertyName(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc delete*(self: QDynamicPropertyChangeEvent) =
  fcQDynamicPropertyChangeEvent_delete(self.h)
