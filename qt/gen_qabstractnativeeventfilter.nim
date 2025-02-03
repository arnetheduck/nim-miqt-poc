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
{.compile("gen_qabstractnativeeventfilter.cpp", cflags).}


import gen_qabstractnativeeventfilter_types
export gen_qabstractnativeeventfilter_types


type cQAbstractNativeEventFilter*{.exportc: "QAbstractNativeEventFilter", incompleteStruct.} = object

proc fcQAbstractNativeEventFilter_new(): ptr cQAbstractNativeEventFilter {.importc: "QAbstractNativeEventFilter_new".}
proc fcQAbstractNativeEventFilter_nativeEventFilter(self: pointer, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.importc: "QAbstractNativeEventFilter_nativeEventFilter".}
proc fcQAbstractNativeEventFilter_override_virtual_nativeEventFilter(self: pointer, slot: int) {.importc: "QAbstractNativeEventFilter_override_virtual_nativeEventFilter".}
proc fcQAbstractNativeEventFilter_delete(self: pointer) {.importc: "QAbstractNativeEventFilter_delete".}


func init*(T: type QAbstractNativeEventFilter, h: ptr cQAbstractNativeEventFilter): QAbstractNativeEventFilter =
  T(h: h)
proc create*(T: type QAbstractNativeEventFilter, ): QAbstractNativeEventFilter =

  QAbstractNativeEventFilter.init(fcQAbstractNativeEventFilter_new())
proc nativeEventFilter*(self: QAbstractNativeEventFilter, eventType: seq[byte], message: pointer, resultVal: ptr clong): bool =

  fcQAbstractNativeEventFilter_nativeEventFilter(self.h, struct_miqt_string(data: cast[cstring](if len(eventType) == 0: nil else: unsafeAddr eventType[0]), len: csize_t(len(eventType))), message, resultVal)

type QAbstractNativeEventFilternativeEventFilterBase* = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
proc onnativeEventFilter*(self: QAbstractNativeEventFilter, slot: proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool) =
  # TODO check subclass
  type Cb = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractNativeEventFilter_override_virtual_nativeEventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractNativeEventFilter_nativeEventFilter(self: ptr cQAbstractNativeEventFilter, slot: int, eventType: struct_miqt_string, message: pointer, resultVal: ptr clong): bool {.exportc: "miqt_exec_callback_QAbstractNativeEventFilter_nativeEventFilter ".} =
  type Cb = proc(eventType: seq[byte], message: pointer, resultVal: ptr clong): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  var veventType_bytearray = eventType
  var veventTypex_ret = @(toOpenArrayByte(veventType_bytearray.data, 0, int(veventType_bytearray.len)-1))
  c_free(veventType_bytearray.data)
  let slotval1 = veventTypex_ret

  let slotval2 = message

  let slotval3 = resultVal


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc delete*(self: QAbstractNativeEventFilter) =
  fcQAbstractNativeEventFilter_delete(self.h)
