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
{.compile("gen_qproperty.cpp", cflags).}


type QtPrivateBindableWarningsReason* = cint
const
  QtPrivateBindableWarningsInvalidInterface* = 0
  QtPrivateBindableWarningsNonBindableInterface* = 1
  QtPrivateBindableWarningsReadOnlyInterface* = 2



type QPropertyBindingErrorType* = cint
const
  QPropertyBindingErrorNoError* = 0
  QPropertyBindingErrorBindingLoop* = 1
  QPropertyBindingErrorEvaluationError* = 2
  QPropertyBindingErrorUnknownError* = 3



type QPropertyObserverBaseObserverTag* = cint
const
  QPropertyObserverBaseObserverNotifiesBinding* = 0
  QPropertyObserverBaseObserverNotifiesChangeHandler* = 1
  QPropertyObserverBaseObserverIsPlaceholder* = 2
  QPropertyObserverBaseObserverIsAlias* = 3



import gen_qproperty_types
export gen_qproperty_types

import
  gen_qmetatype
export
  gen_qmetatype

type cQPropertyBindingSourceLocation*{.exportc: "QPropertyBindingSourceLocation", incompleteStruct.} = object
type cQPropertyBindingError*{.exportc: "QPropertyBindingError", incompleteStruct.} = object
type cQUntypedPropertyBinding*{.exportc: "QUntypedPropertyBinding", incompleteStruct.} = object
type cQPropertyObserverBase*{.exportc: "QPropertyObserverBase", incompleteStruct.} = object
type cQPropertyObserver*{.exportc: "QPropertyObserver", incompleteStruct.} = object
type cQPropertyNotifier*{.exportc: "QPropertyNotifier", incompleteStruct.} = object
type cQUntypedBindable*{.exportc: "QUntypedBindable", incompleteStruct.} = object

proc fcQPropertyBindingSourceLocation_new(): ptr cQPropertyBindingSourceLocation {.importc: "QPropertyBindingSourceLocation_new".}
proc fcQPropertyBindingSourceLocation_new2(param1: pointer): ptr cQPropertyBindingSourceLocation {.importc: "QPropertyBindingSourceLocation_new2".}
proc fcQPropertyBindingSourceLocation_delete(self: pointer) {.importc: "QPropertyBindingSourceLocation_delete".}
proc fcQPropertyBindingError_new(): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new".}
proc fcQPropertyBindingError_new2(typeVal: cint): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new2".}
proc fcQPropertyBindingError_new3(other: pointer): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new3".}
proc fcQPropertyBindingError_new4(typeVal: cint, description: struct_miqt_string): ptr cQPropertyBindingError {.importc: "QPropertyBindingError_new4".}
proc fcQPropertyBindingError_operatorAssign(self: pointer, other: pointer): void {.importc: "QPropertyBindingError_operatorAssign".}
proc fcQPropertyBindingError_hasError(self: pointer, ): bool {.importc: "QPropertyBindingError_hasError".}
proc fcQPropertyBindingError_typeX(self: pointer, ): cint {.importc: "QPropertyBindingError_type".}
proc fcQPropertyBindingError_description(self: pointer, ): struct_miqt_string {.importc: "QPropertyBindingError_description".}
proc fcQPropertyBindingError_delete(self: pointer) {.importc: "QPropertyBindingError_delete".}
proc fcQUntypedPropertyBinding_new(): ptr cQUntypedPropertyBinding {.importc: "QUntypedPropertyBinding_new".}
proc fcQUntypedPropertyBinding_new2(other: pointer): ptr cQUntypedPropertyBinding {.importc: "QUntypedPropertyBinding_new2".}
proc fcQUntypedPropertyBinding_operatorAssign(self: pointer, other: pointer): void {.importc: "QUntypedPropertyBinding_operatorAssign".}
proc fcQUntypedPropertyBinding_isNull(self: pointer, ): bool {.importc: "QUntypedPropertyBinding_isNull".}
proc fcQUntypedPropertyBinding_error(self: pointer, ): pointer {.importc: "QUntypedPropertyBinding_error".}
proc fcQUntypedPropertyBinding_valueMetaType(self: pointer, ): pointer {.importc: "QUntypedPropertyBinding_valueMetaType".}
proc fcQUntypedPropertyBinding_delete(self: pointer) {.importc: "QUntypedPropertyBinding_delete".}
proc fcQPropertyObserverBase_new(): ptr cQPropertyObserverBase {.importc: "QPropertyObserverBase_new".}
proc fcQPropertyObserverBase_new2(param1: pointer): ptr cQPropertyObserverBase {.importc: "QPropertyObserverBase_new2".}
proc fcQPropertyObserverBase_delete(self: pointer) {.importc: "QPropertyObserverBase_delete".}
proc fcQPropertyObserver_new(): ptr cQPropertyObserver {.importc: "QPropertyObserver_new".}
proc fcQPropertyObserver_delete(self: pointer) {.importc: "QPropertyObserver_delete".}
proc fcQPropertyNotifier_new(): ptr cQPropertyNotifier {.importc: "QPropertyNotifier_new".}
proc fcQPropertyNotifier_delete(self: pointer) {.importc: "QPropertyNotifier_delete".}
proc fcQUntypedBindable_new(): ptr cQUntypedBindable {.importc: "QUntypedBindable_new".}
proc fcQUntypedBindable_new2(param1: pointer): ptr cQUntypedBindable {.importc: "QUntypedBindable_new2".}
proc fcQUntypedBindable_isValid(self: pointer, ): bool {.importc: "QUntypedBindable_isValid".}
proc fcQUntypedBindable_isBindable(self: pointer, ): bool {.importc: "QUntypedBindable_isBindable".}
proc fcQUntypedBindable_isReadOnly(self: pointer, ): bool {.importc: "QUntypedBindable_isReadOnly".}
proc fcQUntypedBindable_makeBinding(self: pointer, ): pointer {.importc: "QUntypedBindable_makeBinding".}
proc fcQUntypedBindable_takeBinding(self: pointer, ): pointer {.importc: "QUntypedBindable_takeBinding".}
proc fcQUntypedBindable_observe(self: pointer, observer: pointer): void {.importc: "QUntypedBindable_observe".}
proc fcQUntypedBindable_binding(self: pointer, ): pointer {.importc: "QUntypedBindable_binding".}
proc fcQUntypedBindable_setBinding(self: pointer, binding: pointer): bool {.importc: "QUntypedBindable_setBinding".}
proc fcQUntypedBindable_hasBinding(self: pointer, ): bool {.importc: "QUntypedBindable_hasBinding".}
proc fcQUntypedBindable_metaType(self: pointer, ): pointer {.importc: "QUntypedBindable_metaType".}
proc fcQUntypedBindable_makeBinding1(self: pointer, location: pointer): pointer {.importc: "QUntypedBindable_makeBinding1".}
proc fcQUntypedBindable_delete(self: pointer) {.importc: "QUntypedBindable_delete".}


func init*(T: type QPropertyBindingSourceLocation, h: ptr cQPropertyBindingSourceLocation): QPropertyBindingSourceLocation =
  T(h: h)
proc create*(T: type QPropertyBindingSourceLocation, ): QPropertyBindingSourceLocation =

  QPropertyBindingSourceLocation.init(fcQPropertyBindingSourceLocation_new())
proc create*(T: type QPropertyBindingSourceLocation, param1: QPropertyBindingSourceLocation): QPropertyBindingSourceLocation =

  QPropertyBindingSourceLocation.init(fcQPropertyBindingSourceLocation_new2(param1.h))
proc delete*(self: QPropertyBindingSourceLocation) =
  fcQPropertyBindingSourceLocation_delete(self.h)

func init*(T: type QPropertyBindingError, h: ptr cQPropertyBindingError): QPropertyBindingError =
  T(h: h)
proc create*(T: type QPropertyBindingError, ): QPropertyBindingError =

  QPropertyBindingError.init(fcQPropertyBindingError_new())
proc create*(T: type QPropertyBindingError, typeVal: QPropertyBindingErrorType): QPropertyBindingError =

  QPropertyBindingError.init(fcQPropertyBindingError_new2(cint(typeVal)))
proc create*(T: type QPropertyBindingError, other: QPropertyBindingError): QPropertyBindingError =

  QPropertyBindingError.init(fcQPropertyBindingError_new3(other.h))
proc create*(T: type QPropertyBindingError, typeVal: QPropertyBindingErrorType, description: string): QPropertyBindingError =

  QPropertyBindingError.init(fcQPropertyBindingError_new4(cint(typeVal), struct_miqt_string(data: description, len: csize_t(len(description)))))
proc operatorAssign*(self: QPropertyBindingError, other: QPropertyBindingError): void =

  fcQPropertyBindingError_operatorAssign(self.h, other.h)

proc hasError*(self: QPropertyBindingError, ): bool =

  fcQPropertyBindingError_hasError(self.h)

proc typeX*(self: QPropertyBindingError, ): QPropertyBindingErrorType =

  QPropertyBindingErrorType(fcQPropertyBindingError_typeX(self.h))

proc description*(self: QPropertyBindingError, ): string =

  let v_ms = fcQPropertyBindingError_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QPropertyBindingError) =
  fcQPropertyBindingError_delete(self.h)

func init*(T: type QUntypedPropertyBinding, h: ptr cQUntypedPropertyBinding): QUntypedPropertyBinding =
  T(h: h)
proc create*(T: type QUntypedPropertyBinding, ): QUntypedPropertyBinding =

  QUntypedPropertyBinding.init(fcQUntypedPropertyBinding_new())
proc create*(T: type QUntypedPropertyBinding, other: QUntypedPropertyBinding): QUntypedPropertyBinding =

  QUntypedPropertyBinding.init(fcQUntypedPropertyBinding_new2(other.h))
proc operatorAssign*(self: QUntypedPropertyBinding, other: QUntypedPropertyBinding): void =

  fcQUntypedPropertyBinding_operatorAssign(self.h, other.h)

proc isNull*(self: QUntypedPropertyBinding, ): bool =

  fcQUntypedPropertyBinding_isNull(self.h)

proc error*(self: QUntypedPropertyBinding, ): QPropertyBindingError =

  QPropertyBindingError(h: fcQUntypedPropertyBinding_error(self.h))

proc valueMetaType*(self: QUntypedPropertyBinding, ): gen_qmetatype.QMetaType =

  gen_qmetatype.QMetaType(h: fcQUntypedPropertyBinding_valueMetaType(self.h))

proc delete*(self: QUntypedPropertyBinding) =
  fcQUntypedPropertyBinding_delete(self.h)

func init*(T: type QPropertyObserverBase, h: ptr cQPropertyObserverBase): QPropertyObserverBase =
  T(h: h)
proc create*(T: type QPropertyObserverBase, ): QPropertyObserverBase =

  QPropertyObserverBase.init(fcQPropertyObserverBase_new())
proc create*(T: type QPropertyObserverBase, param1: QPropertyObserverBase): QPropertyObserverBase =

  QPropertyObserverBase.init(fcQPropertyObserverBase_new2(param1.h))
proc delete*(self: QPropertyObserverBase) =
  fcQPropertyObserverBase_delete(self.h)

func init*(T: type QPropertyObserver, h: ptr cQPropertyObserver): QPropertyObserver =
  T(h: h)
proc create*(T: type QPropertyObserver, ): QPropertyObserver =

  QPropertyObserver.init(fcQPropertyObserver_new())
proc delete*(self: QPropertyObserver) =
  fcQPropertyObserver_delete(self.h)

func init*(T: type QPropertyNotifier, h: ptr cQPropertyNotifier): QPropertyNotifier =
  T(h: h)
proc create*(T: type QPropertyNotifier, ): QPropertyNotifier =

  QPropertyNotifier.init(fcQPropertyNotifier_new())
proc delete*(self: QPropertyNotifier) =
  fcQPropertyNotifier_delete(self.h)

func init*(T: type QUntypedBindable, h: ptr cQUntypedBindable): QUntypedBindable =
  T(h: h)
proc create*(T: type QUntypedBindable, ): QUntypedBindable =

  QUntypedBindable.init(fcQUntypedBindable_new())
proc create*(T: type QUntypedBindable, param1: QUntypedBindable): QUntypedBindable =

  QUntypedBindable.init(fcQUntypedBindable_new2(param1.h))
proc isValid*(self: QUntypedBindable, ): bool =

  fcQUntypedBindable_isValid(self.h)

proc isBindable*(self: QUntypedBindable, ): bool =

  fcQUntypedBindable_isBindable(self.h)

proc isReadOnly*(self: QUntypedBindable, ): bool =

  fcQUntypedBindable_isReadOnly(self.h)

proc makeBinding*(self: QUntypedBindable, ): QUntypedPropertyBinding =

  QUntypedPropertyBinding(h: fcQUntypedBindable_makeBinding(self.h))

proc takeBinding*(self: QUntypedBindable, ): QUntypedPropertyBinding =

  QUntypedPropertyBinding(h: fcQUntypedBindable_takeBinding(self.h))

proc observe*(self: QUntypedBindable, observer: QPropertyObserver): void =

  fcQUntypedBindable_observe(self.h, observer.h)

proc binding*(self: QUntypedBindable, ): QUntypedPropertyBinding =

  QUntypedPropertyBinding(h: fcQUntypedBindable_binding(self.h))

proc setBinding*(self: QUntypedBindable, binding: QUntypedPropertyBinding): bool =

  fcQUntypedBindable_setBinding(self.h, binding.h)

proc hasBinding*(self: QUntypedBindable, ): bool =

  fcQUntypedBindable_hasBinding(self.h)

proc metaType*(self: QUntypedBindable, ): gen_qmetatype.QMetaType =

  gen_qmetatype.QMetaType(h: fcQUntypedBindable_metaType(self.h))

proc makeBinding1*(self: QUntypedBindable, location: QPropertyBindingSourceLocation): QUntypedPropertyBinding =

  QUntypedPropertyBinding(h: fcQUntypedBindable_makeBinding1(self.h, location.h))

proc delete*(self: QUntypedBindable) =
  fcQUntypedBindable_delete(self.h)
