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
{.compile("gen_qqmlincubator.cpp", cflags).}


type QQmlIncubatorIncubationMode* = cint
const
  QQmlIncubatorAsynchronous* = 0
  QQmlIncubatorAsynchronousIfNested* = 1
  QQmlIncubatorSynchronous* = 2



type QQmlIncubatorStatus* = cint
const
  QQmlIncubatorNull* = 0
  QQmlIncubatorReady* = 1
  QQmlIncubatorLoading* = 2
  QQmlIncubatorError* = 3



import gen_qqmlincubator_types
export gen_qqmlincubator_types

import
  gen_qobject,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qvariant,
  std/tables
export
  gen_qobject,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qvariant

type cQQmlIncubator*{.exportc: "QQmlIncubator", incompleteStruct.} = object
type cQQmlIncubationController*{.exportc: "QQmlIncubationController", incompleteStruct.} = object

proc fcQQmlIncubator_new(): ptr cQQmlIncubator {.importc: "QQmlIncubator_new".}
proc fcQQmlIncubator_new2(param1: cint): ptr cQQmlIncubator {.importc: "QQmlIncubator_new2".}
proc fcQQmlIncubator_clear(self: pointer, ): void {.importc: "QQmlIncubator_clear".}
proc fcQQmlIncubator_forceCompletion(self: pointer, ): void {.importc: "QQmlIncubator_forceCompletion".}
proc fcQQmlIncubator_isNull(self: pointer, ): bool {.importc: "QQmlIncubator_isNull".}
proc fcQQmlIncubator_isReady(self: pointer, ): bool {.importc: "QQmlIncubator_isReady".}
proc fcQQmlIncubator_isError(self: pointer, ): bool {.importc: "QQmlIncubator_isError".}
proc fcQQmlIncubator_isLoading(self: pointer, ): bool {.importc: "QQmlIncubator_isLoading".}
proc fcQQmlIncubator_errors(self: pointer, ): struct_miqt_array {.importc: "QQmlIncubator_errors".}
proc fcQQmlIncubator_incubationMode(self: pointer, ): cint {.importc: "QQmlIncubator_incubationMode".}
proc fcQQmlIncubator_status(self: pointer, ): cint {.importc: "QQmlIncubator_status".}
proc fcQQmlIncubator_objectX(self: pointer, ): pointer {.importc: "QQmlIncubator_object".}
proc fcQQmlIncubator_setInitialProperties(self: pointer, initialProperties: struct_miqt_map): void {.importc: "QQmlIncubator_setInitialProperties".}
proc fQQmlIncubator_virtualbase_statusChanged(self: pointer, param1: cint): void{.importc: "QQmlIncubator_virtualbase_statusChanged".}
proc fcQQmlIncubator_override_virtual_statusChanged(self: pointer, slot: int) {.importc: "QQmlIncubator_override_virtual_statusChanged".}
proc fQQmlIncubator_virtualbase_setInitialState(self: pointer, initialState: pointer): void{.importc: "QQmlIncubator_virtualbase_setInitialState".}
proc fcQQmlIncubator_override_virtual_setInitialState(self: pointer, slot: int) {.importc: "QQmlIncubator_override_virtual_setInitialState".}
proc fcQQmlIncubator_delete(self: pointer) {.importc: "QQmlIncubator_delete".}
proc fcQQmlIncubationController_new(): ptr cQQmlIncubationController {.importc: "QQmlIncubationController_new".}
proc fcQQmlIncubationController_engine(self: pointer, ): pointer {.importc: "QQmlIncubationController_engine".}
proc fcQQmlIncubationController_incubatingObjectCount(self: pointer, ): cint {.importc: "QQmlIncubationController_incubatingObjectCount".}
proc fcQQmlIncubationController_incubateFor(self: pointer, msecs: cint): void {.importc: "QQmlIncubationController_incubateFor".}
proc fcQQmlIncubationController_incubateWhile(self: pointer, flag: ptr bool): void {.importc: "QQmlIncubationController_incubateWhile".}
proc fcQQmlIncubationController_incubateWhile2(self: pointer, flag: ptr bool, msecs: cint): void {.importc: "QQmlIncubationController_incubateWhile2".}
proc fQQmlIncubationController_virtualbase_incubatingObjectCountChanged(self: pointer, param1: cint): void{.importc: "QQmlIncubationController_virtualbase_incubatingObjectCountChanged".}
proc fcQQmlIncubationController_override_virtual_incubatingObjectCountChanged(self: pointer, slot: int) {.importc: "QQmlIncubationController_override_virtual_incubatingObjectCountChanged".}
proc fcQQmlIncubationController_delete(self: pointer) {.importc: "QQmlIncubationController_delete".}


func init*(T: type QQmlIncubator, h: ptr cQQmlIncubator): QQmlIncubator =
  T(h: h)
proc create*(T: type QQmlIncubator, ): QQmlIncubator =

  QQmlIncubator.init(fcQQmlIncubator_new())
proc create*(T: type QQmlIncubator, param1: QQmlIncubatorIncubationMode): QQmlIncubator =

  QQmlIncubator.init(fcQQmlIncubator_new2(cint(param1)))
proc clear*(self: QQmlIncubator, ): void =

  fcQQmlIncubator_clear(self.h)

proc forceCompletion*(self: QQmlIncubator, ): void =

  fcQQmlIncubator_forceCompletion(self.h)

proc isNull*(self: QQmlIncubator, ): bool =

  fcQQmlIncubator_isNull(self.h)

proc isReady*(self: QQmlIncubator, ): bool =

  fcQQmlIncubator_isReady(self.h)

proc isError*(self: QQmlIncubator, ): bool =

  fcQQmlIncubator_isError(self.h)

proc isLoading*(self: QQmlIncubator, ): bool =

  fcQQmlIncubator_isLoading(self.h)

proc errors*(self: QQmlIncubator, ): seq[gen_qqmlerror.QQmlError] =

  var v_ma = fcQQmlIncubator_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror.QQmlError(h: v_outCast[i])
  vx_ret

proc incubationMode*(self: QQmlIncubator, ): QQmlIncubatorIncubationMode =

  QQmlIncubatorIncubationMode(fcQQmlIncubator_incubationMode(self.h))

proc status*(self: QQmlIncubator, ): QQmlIncubatorStatus =

  QQmlIncubatorStatus(fcQQmlIncubator_status(self.h))

proc objectX*(self: QQmlIncubator, ): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQmlIncubator_objectX(self.h))

proc setInitialProperties*(self: QQmlIncubator, initialProperties: Table[string,gen_qvariant.QVariant]): void =

  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  fcQQmlIncubator_setInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),))

proc callVirtualBase_statusChanged(self: QQmlIncubator, param1: QQmlIncubatorStatus): void =


  fQQmlIncubator_virtualbase_statusChanged(self.h, cint(param1))

type QQmlIncubatorstatusChangedBase* = proc(param1: QQmlIncubatorStatus): void
proc onstatusChanged*(self: QQmlIncubator, slot: proc(super: QQmlIncubatorstatusChangedBase, param1: QQmlIncubatorStatus): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlIncubatorstatusChangedBase, param1: QQmlIncubatorStatus): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlIncubator_override_virtual_statusChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlIncubator_statusChanged(self: ptr cQQmlIncubator, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QQmlIncubator_statusChanged ".} =
  type Cb = proc(super: QQmlIncubatorstatusChangedBase, param1: QQmlIncubatorStatus): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: QQmlIncubatorStatus): auto =
    callVirtualBase_statusChanged(QQmlIncubator(h: self), param1)
  let slotval1 = QQmlIncubatorStatus(param1)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_setInitialState(self: QQmlIncubator, initialState: gen_qobject.QObject): void =


  fQQmlIncubator_virtualbase_setInitialState(self.h, initialState.h)

type QQmlIncubatorsetInitialStateBase* = proc(initialState: gen_qobject.QObject): void
proc onsetInitialState*(self: QQmlIncubator, slot: proc(super: QQmlIncubatorsetInitialStateBase, initialState: gen_qobject.QObject): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlIncubatorsetInitialStateBase, initialState: gen_qobject.QObject): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlIncubator_override_virtual_setInitialState(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlIncubator_setInitialState(self: ptr cQQmlIncubator, slot: int, initialState: pointer): void {.exportc: "miqt_exec_callback_QQmlIncubator_setInitialState ".} =
  type Cb = proc(super: QQmlIncubatorsetInitialStateBase, initialState: gen_qobject.QObject): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(initialState: gen_qobject.QObject): auto =
    callVirtualBase_setInitialState(QQmlIncubator(h: self), initialState)
  let slotval1 = gen_qobject.QObject(h: initialState)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQmlIncubator) =
  fcQQmlIncubator_delete(self.h)

func init*(T: type QQmlIncubationController, h: ptr cQQmlIncubationController): QQmlIncubationController =
  T(h: h)
proc create*(T: type QQmlIncubationController, ): QQmlIncubationController =

  QQmlIncubationController.init(fcQQmlIncubationController_new())
proc engine*(self: QQmlIncubationController, ): gen_qqmlengine.QQmlEngine =

  gen_qqmlengine.QQmlEngine(h: fcQQmlIncubationController_engine(self.h))

proc incubatingObjectCount*(self: QQmlIncubationController, ): cint =

  fcQQmlIncubationController_incubatingObjectCount(self.h)

proc incubateFor*(self: QQmlIncubationController, msecs: cint): void =

  fcQQmlIncubationController_incubateFor(self.h, msecs)

proc incubateWhile*(self: QQmlIncubationController, flag: ptr bool): void =

  fcQQmlIncubationController_incubateWhile(self.h, flag)

proc incubateWhile2*(self: QQmlIncubationController, flag: ptr bool, msecs: cint): void =

  fcQQmlIncubationController_incubateWhile2(self.h, flag, msecs)

proc callVirtualBase_incubatingObjectCountChanged(self: QQmlIncubationController, param1: cint): void =


  fQQmlIncubationController_virtualbase_incubatingObjectCountChanged(self.h, param1)

type QQmlIncubationControllerincubatingObjectCountChangedBase* = proc(param1: cint): void
proc onincubatingObjectCountChanged*(self: QQmlIncubationController, slot: proc(super: QQmlIncubationControllerincubatingObjectCountChangedBase, param1: cint): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlIncubationControllerincubatingObjectCountChangedBase, param1: cint): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlIncubationController_override_virtual_incubatingObjectCountChanged(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlIncubationController_incubatingObjectCountChanged(self: ptr cQQmlIncubationController, slot: int, param1: cint): void {.exportc: "miqt_exec_callback_QQmlIncubationController_incubatingObjectCountChanged ".} =
  type Cb = proc(super: QQmlIncubationControllerincubatingObjectCountChangedBase, param1: cint): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cint): auto =
    callVirtualBase_incubatingObjectCountChanged(QQmlIncubationController(h: self), param1)
  let slotval1 = param1


  nimfunc[](superCall, slotval1)
proc delete*(self: QQmlIncubationController) =
  fcQQmlIncubationController_delete(self.h)
