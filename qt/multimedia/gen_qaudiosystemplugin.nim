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
{.compile("gen_qaudiosystemplugin.cpp", cflags).}


import gen_qaudiosystemplugin_types
export gen_qaudiosystemplugin_types

import
  gen_qaudio,
  gen_qaudiosystem,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs
export
  gen_qaudio,
  gen_qaudiosystem,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs

type cQAudioSystemFactoryInterface*{.exportc: "QAudioSystemFactoryInterface", incompleteStruct.} = object
type cQAudioSystemPlugin*{.exportc: "QAudioSystemPlugin", incompleteStruct.} = object

proc fcQAudioSystemFactoryInterface_availableDevices(self: pointer, param1: cint): struct_miqt_array {.importc: "QAudioSystemFactoryInterface_availableDevices".}
proc fcQAudioSystemFactoryInterface_createInput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemFactoryInterface_createInput".}
proc fcQAudioSystemFactoryInterface_createOutput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemFactoryInterface_createOutput".}
proc fcQAudioSystemFactoryInterface_createDeviceInfo(self: pointer, device: struct_miqt_string, mode: cint): pointer {.importc: "QAudioSystemFactoryInterface_createDeviceInfo".}
proc fcQAudioSystemFactoryInterface_operatorAssign(self: pointer, param1: pointer): void {.importc: "QAudioSystemFactoryInterface_operatorAssign".}
proc fcQAudioSystemFactoryInterface_delete(self: pointer) {.importc: "QAudioSystemFactoryInterface_delete".}
proc fcQAudioSystemPlugin_new(): ptr cQAudioSystemPlugin {.importc: "QAudioSystemPlugin_new".}
proc fcQAudioSystemPlugin_new2(parent: pointer): ptr cQAudioSystemPlugin {.importc: "QAudioSystemPlugin_new2".}
proc fcQAudioSystemPlugin_metaObject(self: pointer, ): pointer {.importc: "QAudioSystemPlugin_metaObject".}
proc fcQAudioSystemPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioSystemPlugin_metacast".}
proc fcQAudioSystemPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioSystemPlugin_metacall".}
proc fcQAudioSystemPlugin_tr(s: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_tr".}
proc fcQAudioSystemPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_trUtf8".}
proc fcQAudioSystemPlugin_availableDevices(self: pointer, param1: cint): struct_miqt_array {.importc: "QAudioSystemPlugin_availableDevices".}
proc fcQAudioSystemPlugin_createInput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemPlugin_createInput".}
proc fcQAudioSystemPlugin_createOutput(self: pointer, device: struct_miqt_string): pointer {.importc: "QAudioSystemPlugin_createOutput".}
proc fcQAudioSystemPlugin_createDeviceInfo(self: pointer, device: struct_miqt_string, mode: cint): pointer {.importc: "QAudioSystemPlugin_createDeviceInfo".}
proc fcQAudioSystemPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_tr2".}
proc fcQAudioSystemPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSystemPlugin_tr3".}
proc fcQAudioSystemPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioSystemPlugin_trUtf82".}
proc fcQAudioSystemPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioSystemPlugin_trUtf83".}
proc fQAudioSystemPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QAudioSystemPlugin_virtualbase_metacall".}
proc fcQAudioSystemPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_metacall".}
proc fcQAudioSystemPlugin_override_virtual_availableDevices(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_availableDevices".}
proc fcQAudioSystemPlugin_override_virtual_createInput(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_createInput".}
proc fcQAudioSystemPlugin_override_virtual_createOutput(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_createOutput".}
proc fcQAudioSystemPlugin_override_virtual_createDeviceInfo(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_createDeviceInfo".}
proc fQAudioSystemPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QAudioSystemPlugin_virtualbase_event".}
proc fcQAudioSystemPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_event".}
proc fQAudioSystemPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QAudioSystemPlugin_virtualbase_eventFilter".}
proc fcQAudioSystemPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_eventFilter".}
proc fQAudioSystemPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_timerEvent".}
proc fcQAudioSystemPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_timerEvent".}
proc fQAudioSystemPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_childEvent".}
proc fcQAudioSystemPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_childEvent".}
proc fQAudioSystemPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_customEvent".}
proc fcQAudioSystemPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_customEvent".}
proc fQAudioSystemPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_connectNotify".}
proc fcQAudioSystemPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_connectNotify".}
proc fQAudioSystemPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QAudioSystemPlugin_virtualbase_disconnectNotify".}
proc fcQAudioSystemPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QAudioSystemPlugin_override_virtual_disconnectNotify".}
proc fcQAudioSystemPlugin_delete(self: pointer) {.importc: "QAudioSystemPlugin_delete".}


func init*(T: type QAudioSystemFactoryInterface, h: ptr cQAudioSystemFactoryInterface): QAudioSystemFactoryInterface =
  T(h: h)
proc availableDevices*(self: QAudioSystemFactoryInterface, param1: gen_qaudio.QAudioMode): seq[seq[byte]] =

  var v_ma = fcQAudioSystemFactoryInterface_availableDevices(self.h, cint(param1))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc createInput*(self: QAudioSystemFactoryInterface, device: seq[byte]): gen_qaudiosystem.QAbstractAudioInput =

  gen_qaudiosystem.QAbstractAudioInput(h: fcQAudioSystemFactoryInterface_createInput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createOutput*(self: QAudioSystemFactoryInterface, device: seq[byte]): gen_qaudiosystem.QAbstractAudioOutput =

  gen_qaudiosystem.QAbstractAudioOutput(h: fcQAudioSystemFactoryInterface_createOutput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createDeviceInfo*(self: QAudioSystemFactoryInterface, device: seq[byte], mode: gen_qaudio.QAudioMode): gen_qaudiosystem.QAbstractAudioDeviceInfo =

  gen_qaudiosystem.QAbstractAudioDeviceInfo(h: fcQAudioSystemFactoryInterface_createDeviceInfo(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))), cint(mode)))

proc operatorAssign*(self: QAudioSystemFactoryInterface, param1: QAudioSystemFactoryInterface): void =

  fcQAudioSystemFactoryInterface_operatorAssign(self.h, param1.h)

proc delete*(self: QAudioSystemFactoryInterface) =
  fcQAudioSystemFactoryInterface_delete(self.h)

func init*(T: type QAudioSystemPlugin, h: ptr cQAudioSystemPlugin): QAudioSystemPlugin =
  T(h: h)
proc create*(T: type QAudioSystemPlugin, ): QAudioSystemPlugin =

  QAudioSystemPlugin.init(fcQAudioSystemPlugin_new())
proc create*(T: type QAudioSystemPlugin, parent: gen_qobject.QObject): QAudioSystemPlugin =

  QAudioSystemPlugin.init(fcQAudioSystemPlugin_new2(parent.h))
proc metaObject*(self: QAudioSystemPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioSystemPlugin_metaObject(self.h))

proc metacast*(self: QAudioSystemPlugin, param1: cstring): pointer =

  fcQAudioSystemPlugin_metacast(self.h, param1)

proc metacall*(self: QAudioSystemPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioSystemPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioSystemPlugin, s: cstring): string =

  let v_ms = fcQAudioSystemPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAudioSystemPlugin, s: cstring): string =

  let v_ms = fcQAudioSystemPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableDevices*(self: QAudioSystemPlugin, param1: gen_qaudio.QAudioMode): seq[seq[byte]] =

  var v_ma = fcQAudioSystemPlugin_availableDevices(self.h, cint(param1))
  var vx_ret = newSeq[seq[byte]](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    var vx_lv_bytearray = v_outCast[i]
    var vx_lvx_ret = @(toOpenArrayByte(vx_lv_bytearray.data, 0, int(vx_lv_bytearray.len)-1))
    c_free(vx_lv_bytearray.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc createInput*(self: QAudioSystemPlugin, device: seq[byte]): gen_qaudiosystem.QAbstractAudioInput =

  gen_qaudiosystem.QAbstractAudioInput(h: fcQAudioSystemPlugin_createInput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createOutput*(self: QAudioSystemPlugin, device: seq[byte]): gen_qaudiosystem.QAbstractAudioOutput =

  gen_qaudiosystem.QAbstractAudioOutput(h: fcQAudioSystemPlugin_createOutput(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device)))))

proc createDeviceInfo*(self: QAudioSystemPlugin, device: seq[byte], mode: gen_qaudio.QAudioMode): gen_qaudiosystem.QAbstractAudioDeviceInfo =

  gen_qaudiosystem.QAbstractAudioDeviceInfo(h: fcQAudioSystemPlugin_createDeviceInfo(self.h, struct_miqt_string(data: cast[cstring](if len(device) == 0: nil else: unsafeAddr device[0]), len: csize_t(len(device))), cint(mode)))

proc tr2*(_: type QAudioSystemPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQAudioSystemPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioSystemPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioSystemPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAudioSystemPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQAudioSystemPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioSystemPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioSystemPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QAudioSystemPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQAudioSystemPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QAudioSystemPluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_metacall(self: ptr cQAudioSystemPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QAudioSystemPlugin_metacall ".} =
  type Cb = proc(super: QAudioSystemPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QAudioSystemPlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QAudioSystemPluginavailableDevicesBase* = proc(param1: gen_qaudio.QAudioMode): seq[seq[byte]]
proc onavailableDevices*(self: QAudioSystemPlugin, slot: proc(param1: gen_qaudio.QAudioMode): seq[seq[byte]]) =
  # TODO check subclass
  type Cb = proc(param1: gen_qaudio.QAudioMode): seq[seq[byte]]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_availableDevices(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_availableDevices(self: ptr cQAudioSystemPlugin, slot: int, param1: cint): struct_miqt_array {.exportc: "miqt_exec_callback_QAudioSystemPlugin_availableDevices ".} =
  type Cb = proc(param1: gen_qaudio.QAudioMode): seq[seq[byte]]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = gen_qaudio.QAudioMode(param1)


  let virtualReturn = nimfunc[](slotval1 )
  var virtualReturn_CArray = newSeq[struct_miqt_string](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = struct_miqt_string(data: cast[cstring](if len(virtualReturn[i]) == 0: nil else: unsafeAddr virtualReturn[i][0]), len: csize_t(len(virtualReturn[i])))


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
type QAudioSystemPlugincreateInputBase* = proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioInput
proc oncreateInput*(self: QAudioSystemPlugin, slot: proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioInput) =
  # TODO check subclass
  type Cb = proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioInput
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_createInput(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_createInput(self: ptr cQAudioSystemPlugin, slot: int, device: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QAudioSystemPlugin_createInput ".} =
  type Cb = proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioInput
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArrayByte(vdevice_bytearray.data, 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAudioSystemPlugincreateOutputBase* = proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioOutput
proc oncreateOutput*(self: QAudioSystemPlugin, slot: proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioOutput) =
  # TODO check subclass
  type Cb = proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioOutput
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_createOutput(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_createOutput(self: ptr cQAudioSystemPlugin, slot: int, device: struct_miqt_string): pointer {.exportc: "miqt_exec_callback_QAudioSystemPlugin_createOutput ".} =
  type Cb = proc(device: seq[byte]): gen_qaudiosystem.QAbstractAudioOutput
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArrayByte(vdevice_bytearray.data, 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn.h
type QAudioSystemPlugincreateDeviceInfoBase* = proc(device: seq[byte], mode: gen_qaudio.QAudioMode): gen_qaudiosystem.QAbstractAudioDeviceInfo
proc oncreateDeviceInfo*(self: QAudioSystemPlugin, slot: proc(device: seq[byte], mode: gen_qaudio.QAudioMode): gen_qaudiosystem.QAbstractAudioDeviceInfo) =
  # TODO check subclass
  type Cb = proc(device: seq[byte], mode: gen_qaudio.QAudioMode): gen_qaudiosystem.QAbstractAudioDeviceInfo
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_createDeviceInfo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_createDeviceInfo(self: ptr cQAudioSystemPlugin, slot: int, device: struct_miqt_string, mode: cint): pointer {.exportc: "miqt_exec_callback_QAudioSystemPlugin_createDeviceInfo ".} =
  type Cb = proc(device: seq[byte], mode: gen_qaudio.QAudioMode): gen_qaudiosystem.QAbstractAudioDeviceInfo
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  var vdevice_bytearray = device
  var vdevicex_ret = @(toOpenArrayByte(vdevice_bytearray.data, 0, int(vdevice_bytearray.len)-1))
  c_free(vdevice_bytearray.data)
  let slotval1 = vdevicex_ret

  let slotval2 = gen_qaudio.QAudioMode(mode)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn.h
proc callVirtualBase_event(self: QAudioSystemPlugin, event: gen_qcoreevent.QEvent): bool =


  fQAudioSystemPlugin_virtualbase_event(self.h, event.h)

type QAudioSystemPlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_event(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSystemPlugin_event ".} =
  type Cb = proc(super: QAudioSystemPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QAudioSystemPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QAudioSystemPlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQAudioSystemPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QAudioSystemPlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_eventFilter(self: ptr cQAudioSystemPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QAudioSystemPlugin_eventFilter ".} =
  type Cb = proc(super: QAudioSystemPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QAudioSystemPlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QAudioSystemPlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQAudioSystemPlugin_virtualbase_timerEvent(self.h, event.h)

type QAudioSystemPlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_timerEvent(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_timerEvent ".} =
  type Cb = proc(super: QAudioSystemPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QAudioSystemPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QAudioSystemPlugin, event: gen_qcoreevent.QChildEvent): void =


  fQAudioSystemPlugin_virtualbase_childEvent(self.h, event.h)

type QAudioSystemPluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_childEvent(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_childEvent ".} =
  type Cb = proc(super: QAudioSystemPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QAudioSystemPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QAudioSystemPlugin, event: gen_qcoreevent.QEvent): void =


  fQAudioSystemPlugin_virtualbase_customEvent(self.h, event.h)

type QAudioSystemPlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_customEvent(self: ptr cQAudioSystemPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_customEvent ".} =
  type Cb = proc(super: QAudioSystemPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QAudioSystemPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QAudioSystemPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioSystemPlugin_virtualbase_connectNotify(self.h, signal.h)

type QAudioSystemPluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_connectNotify(self: ptr cQAudioSystemPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_connectNotify ".} =
  type Cb = proc(super: QAudioSystemPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QAudioSystemPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QAudioSystemPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQAudioSystemPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QAudioSystemPlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QAudioSystemPlugin, slot: proc(super: QAudioSystemPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QAudioSystemPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAudioSystemPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAudioSystemPlugin_disconnectNotify(self: ptr cQAudioSystemPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QAudioSystemPlugin_disconnectNotify ".} =
  type Cb = proc(super: QAudioSystemPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QAudioSystemPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QAudioSystemPlugin) =
  fcQAudioSystemPlugin_delete(self.h)
