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
{.compile("gen_qgesturerecognizer.cpp", cflags).}


type QGestureRecognizerResultFlag* = cint
const
  QGestureRecognizerIgnore* = 1
  QGestureRecognizerMayBeGesture* = 2
  QGestureRecognizerTriggerGesture* = 4
  QGestureRecognizerFinishGesture* = 8
  QGestureRecognizerCancelGesture* = 16
  QGestureRecognizerResultState_Mask* = 255
  QGestureRecognizerConsumeEventHint* = 256
  QGestureRecognizerResultHint_Mask* = 65280



import gen_qgesturerecognizer_types
export gen_qgesturerecognizer_types

import
  gen_qcoreevent,
  gen_qgesture,
  gen_qnamespace,
  gen_qobject
export
  gen_qcoreevent,
  gen_qgesture,
  gen_qnamespace,
  gen_qobject

type cQGestureRecognizer*{.exportc: "QGestureRecognizer", incompleteStruct.} = object

proc fcQGestureRecognizer_new(): ptr cQGestureRecognizer {.importc: "QGestureRecognizer_new".}
proc fcQGestureRecognizer_create(self: pointer, target: pointer): pointer {.importc: "QGestureRecognizer_create".}
proc fcQGestureRecognizer_recognize(self: pointer, state: pointer, watched: pointer, event: pointer): cint {.importc: "QGestureRecognizer_recognize".}
proc fcQGestureRecognizer_reset(self: pointer, state: pointer): void {.importc: "QGestureRecognizer_reset".}
proc fcQGestureRecognizer_registerRecognizer(recognizer: pointer): cint {.importc: "QGestureRecognizer_registerRecognizer".}
proc fcQGestureRecognizer_unregisterRecognizer(typeVal: cint): void {.importc: "QGestureRecognizer_unregisterRecognizer".}
proc fcQGestureRecognizer_operatorAssign(self: pointer, param1: pointer): void {.importc: "QGestureRecognizer_operatorAssign".}
proc fQGestureRecognizer_virtualbase_create(self: pointer, target: pointer): pointer{.importc: "QGestureRecognizer_virtualbase_create".}
proc fcQGestureRecognizer_override_virtual_create(self: pointer, slot: int) {.importc: "QGestureRecognizer_override_virtual_create".}
proc fcQGestureRecognizer_override_virtual_recognize(self: pointer, slot: int) {.importc: "QGestureRecognizer_override_virtual_recognize".}
proc fQGestureRecognizer_virtualbase_reset(self: pointer, state: pointer): void{.importc: "QGestureRecognizer_virtualbase_reset".}
proc fcQGestureRecognizer_override_virtual_reset(self: pointer, slot: int) {.importc: "QGestureRecognizer_override_virtual_reset".}
proc fcQGestureRecognizer_delete(self: pointer) {.importc: "QGestureRecognizer_delete".}


func init*(T: type QGestureRecognizer, h: ptr cQGestureRecognizer): QGestureRecognizer =
  T(h: h)
proc create*(T: type QGestureRecognizer, ): QGestureRecognizer =

  QGestureRecognizer.init(fcQGestureRecognizer_new())
proc create*(self: QGestureRecognizer, target: gen_qobject.QObject): gen_qgesture.QGesture =

  gen_qgesture.QGesture(h: fcQGestureRecognizer_create(self.h, target.h))

proc recognize*(self: QGestureRecognizer, state: gen_qgesture.QGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): QGestureRecognizerResultFlag =

  QGestureRecognizerResultFlag(fcQGestureRecognizer_recognize(self.h, state.h, watched.h, event.h))

proc reset*(self: QGestureRecognizer, state: gen_qgesture.QGesture): void =

  fcQGestureRecognizer_reset(self.h, state.h)

proc registerRecognizer*(_: type QGestureRecognizer, recognizer: QGestureRecognizer): gen_qnamespace.GestureType =

  gen_qnamespace.GestureType(fcQGestureRecognizer_registerRecognizer(recognizer.h))

proc unregisterRecognizer*(_: type QGestureRecognizer, typeVal: gen_qnamespace.GestureType): void =

  fcQGestureRecognizer_unregisterRecognizer(cint(typeVal))

proc operatorAssign*(self: QGestureRecognizer, param1: QGestureRecognizer): void =

  fcQGestureRecognizer_operatorAssign(self.h, param1.h)

proc callVirtualBase_create(self: QGestureRecognizer, target: gen_qobject.QObject): gen_qgesture.QGesture =


  gen_qgesture.QGesture(h: fQGestureRecognizer_virtualbase_create(self.h, target.h))

type QGestureRecognizercreateBase* = proc(target: gen_qobject.QObject): gen_qgesture.QGesture
proc oncreate*(self: QGestureRecognizer, slot: proc(super: QGestureRecognizercreateBase, target: gen_qobject.QObject): gen_qgesture.QGesture) =
  # TODO check subclass
  type Cb = proc(super: QGestureRecognizercreateBase, target: gen_qobject.QObject): gen_qgesture.QGesture
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGestureRecognizer_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGestureRecognizer_create(self: ptr cQGestureRecognizer, slot: int, target: pointer): pointer {.exportc: "miqt_exec_callback_QGestureRecognizer_create ".} =
  type Cb = proc(super: QGestureRecognizercreateBase, target: gen_qobject.QObject): gen_qgesture.QGesture
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(target: gen_qobject.QObject): auto =
    callVirtualBase_create(QGestureRecognizer(h: self), target)
  let slotval1 = gen_qobject.QObject(h: target)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
type QGestureRecognizerrecognizeBase* = proc(state: gen_qgesture.QGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): QGestureRecognizerResultFlag
proc onrecognize*(self: QGestureRecognizer, slot: proc(state: gen_qgesture.QGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): QGestureRecognizerResultFlag) =
  # TODO check subclass
  type Cb = proc(state: gen_qgesture.QGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): QGestureRecognizerResultFlag
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGestureRecognizer_override_virtual_recognize(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGestureRecognizer_recognize(self: ptr cQGestureRecognizer, slot: int, state: pointer, watched: pointer, event: pointer): cint {.exportc: "miqt_exec_callback_QGestureRecognizer_recognize ".} =
  type Cb = proc(state: gen_qgesture.QGesture, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): QGestureRecognizerResultFlag
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qgesture.QGesture(h: state)

  let slotval2 = gen_qobject.QObject(h: watched)

  let slotval3 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  cint(virtualReturn)
proc callVirtualBase_reset(self: QGestureRecognizer, state: gen_qgesture.QGesture): void =


  fQGestureRecognizer_virtualbase_reset(self.h, state.h)

type QGestureRecognizerresetBase* = proc(state: gen_qgesture.QGesture): void
proc onreset*(self: QGestureRecognizer, slot: proc(super: QGestureRecognizerresetBase, state: gen_qgesture.QGesture): void) =
  # TODO check subclass
  type Cb = proc(super: QGestureRecognizerresetBase, state: gen_qgesture.QGesture): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQGestureRecognizer_override_virtual_reset(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QGestureRecognizer_reset(self: ptr cQGestureRecognizer, slot: int, state: pointer): void {.exportc: "miqt_exec_callback_QGestureRecognizer_reset ".} =
  type Cb = proc(super: QGestureRecognizerresetBase, state: gen_qgesture.QGesture): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(state: gen_qgesture.QGesture): auto =
    callVirtualBase_reset(QGestureRecognizer(h: self), state)
  let slotval1 = gen_qgesture.QGesture(h: state)


  nimfunc[](superCall, slotval1)
proc delete*(self: QGestureRecognizer) =
  fcQGestureRecognizer_delete(self.h)
