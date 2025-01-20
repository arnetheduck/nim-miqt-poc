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
{.compile("gen_qpictureformatplugin.cpp", cflags).}


import gen_qpictureformatplugin_types
export gen_qpictureformatplugin_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpicture
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qpicture

type cQPictureFormatPlugin*{.exportc: "QPictureFormatPlugin", incompleteStruct.} = object

proc fcQPictureFormatPlugin_new(): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new".}
proc fcQPictureFormatPlugin_new2(parent: pointer): ptr cQPictureFormatPlugin {.importc: "QPictureFormatPlugin_new2".}
proc fcQPictureFormatPlugin_metaObject(self: pointer, ): pointer {.importc: "QPictureFormatPlugin_metaObject".}
proc fcQPictureFormatPlugin_metacast(self: pointer, param1: cstring): pointer {.importc: "QPictureFormatPlugin_metacast".}
proc fcQPictureFormatPlugin_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QPictureFormatPlugin_metacall".}
proc fcQPictureFormatPlugin_tr(s: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_tr".}
proc fcQPictureFormatPlugin_trUtf8(s: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_trUtf8".}
proc fcQPictureFormatPlugin_loadPicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.importc: "QPictureFormatPlugin_loadPicture".}
proc fcQPictureFormatPlugin_savePicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.importc: "QPictureFormatPlugin_savePicture".}
proc fcQPictureFormatPlugin_installIOHandler(self: pointer, format: struct_miqt_string): bool {.importc: "QPictureFormatPlugin_installIOHandler".}
proc fcQPictureFormatPlugin_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_tr2".}
proc fcQPictureFormatPlugin_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPictureFormatPlugin_tr3".}
proc fcQPictureFormatPlugin_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QPictureFormatPlugin_trUtf82".}
proc fcQPictureFormatPlugin_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QPictureFormatPlugin_trUtf83".}
proc fQPictureFormatPlugin_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QPictureFormatPlugin_virtualbase_metaObject".}
proc fcQPictureFormatPlugin_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_metaObject".}
proc fQPictureFormatPlugin_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QPictureFormatPlugin_virtualbase_metacast".}
proc fcQPictureFormatPlugin_override_virtual_metacast(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_metacast".}
proc fQPictureFormatPlugin_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QPictureFormatPlugin_virtualbase_metacall".}
proc fcQPictureFormatPlugin_override_virtual_metacall(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_metacall".}
proc fQPictureFormatPlugin_virtualbase_loadPicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_loadPicture".}
proc fcQPictureFormatPlugin_override_virtual_loadPicture(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_loadPicture".}
proc fQPictureFormatPlugin_virtualbase_savePicture(self: pointer, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_savePicture".}
proc fcQPictureFormatPlugin_override_virtual_savePicture(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_savePicture".}
proc fcQPictureFormatPlugin_override_virtual_installIOHandler(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_installIOHandler".}
proc fQPictureFormatPlugin_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_event".}
proc fcQPictureFormatPlugin_override_virtual_event(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_event".}
proc fQPictureFormatPlugin_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QPictureFormatPlugin_virtualbase_eventFilter".}
proc fcQPictureFormatPlugin_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_eventFilter".}
proc fQPictureFormatPlugin_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_timerEvent".}
proc fcQPictureFormatPlugin_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_timerEvent".}
proc fQPictureFormatPlugin_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_childEvent".}
proc fcQPictureFormatPlugin_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_childEvent".}
proc fQPictureFormatPlugin_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_customEvent".}
proc fcQPictureFormatPlugin_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_customEvent".}
proc fQPictureFormatPlugin_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_connectNotify".}
proc fcQPictureFormatPlugin_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_connectNotify".}
proc fQPictureFormatPlugin_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QPictureFormatPlugin_virtualbase_disconnectNotify".}
proc fcQPictureFormatPlugin_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QPictureFormatPlugin_override_virtual_disconnectNotify".}
proc fcQPictureFormatPlugin_staticMetaObject(): pointer {.importc: "QPictureFormatPlugin_staticMetaObject".}
proc fcQPictureFormatPlugin_delete(self: pointer) {.importc: "QPictureFormatPlugin_delete".}


func init*(T: type QPictureFormatPlugin, h: ptr cQPictureFormatPlugin): QPictureFormatPlugin =
  T(h: h)
proc create*(T: type QPictureFormatPlugin, ): QPictureFormatPlugin =

  QPictureFormatPlugin.init(fcQPictureFormatPlugin_new())
proc create*(T: type QPictureFormatPlugin, parent: gen_qobject.QObject): QPictureFormatPlugin =

  QPictureFormatPlugin.init(fcQPictureFormatPlugin_new2(parent.h))
proc metaObject*(self: QPictureFormatPlugin, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQPictureFormatPlugin_metaObject(self.h))

proc metacast*(self: QPictureFormatPlugin, param1: cstring): pointer =

  fcQPictureFormatPlugin_metacast(self.h, param1)

proc metacall*(self: QPictureFormatPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQPictureFormatPlugin_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QPictureFormatPlugin, s: cstring): string =

  let v_ms = fcQPictureFormatPlugin_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QPictureFormatPlugin, s: cstring): string =

  let v_ms = fcQPictureFormatPlugin_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc loadPicture*(self: QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture.QPicture): bool =

  fcQPictureFormatPlugin_loadPicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

proc savePicture*(self: QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture.QPicture): bool =

  fcQPictureFormatPlugin_savePicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

proc installIOHandler*(self: QPictureFormatPlugin, format: string): bool =

  fcQPictureFormatPlugin_installIOHandler(self.h, struct_miqt_string(data: format, len: csize_t(len(format))))

proc tr2*(_: type QPictureFormatPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQPictureFormatPlugin_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QPictureFormatPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPictureFormatPlugin_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QPictureFormatPlugin, s: cstring, c: cstring): string =

  let v_ms = fcQPictureFormatPlugin_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QPictureFormatPlugin, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQPictureFormatPlugin_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QPictureFormatPlugin, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQPictureFormatPlugin_virtualbase_metaObject(self.h))

type QPictureFormatPluginmetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPluginmetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_metaObject(self: ptr cQPictureFormatPlugin, slot: int): pointer {.exportc: "miqt_exec_callback_QPictureFormatPlugin_metaObject ".} =
  type Cb = proc(super: QPictureFormatPluginmetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QPictureFormatPlugin(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QPictureFormatPlugin, param1: cstring): pointer =


  fQPictureFormatPlugin_virtualbase_metacast(self.h, param1)

type QPictureFormatPluginmetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPluginmetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPluginmetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_metacast(self: ptr cQPictureFormatPlugin, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QPictureFormatPlugin_metacast ".} =
  type Cb = proc(super: QPictureFormatPluginmetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QPictureFormatPlugin(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QPictureFormatPlugin, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQPictureFormatPlugin_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QPictureFormatPluginmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_metacall(self: ptr cQPictureFormatPlugin, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QPictureFormatPlugin_metacall ".} =
  type Cb = proc(super: QPictureFormatPluginmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QPictureFormatPlugin(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_loadPicture(self: QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture.QPicture): bool =


  fQPictureFormatPlugin_virtualbase_loadPicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

type QPictureFormatPluginloadPictureBase* = proc(format: string, filename: string, pic: gen_qpicture.QPicture): bool
proc onloadPicture*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPluginloadPictureBase, format: string, filename: string, pic: gen_qpicture.QPicture): bool) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPluginloadPictureBase, format: string, filename: string, pic: gen_qpicture.QPicture): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_loadPicture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_loadPicture(self: ptr cQPictureFormatPlugin, slot: int, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_loadPicture ".} =
  type Cb = proc(super: QPictureFormatPluginloadPictureBase, format: string, filename: string, pic: gen_qpicture.QPicture): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(format: string, filename: string, pic: gen_qpicture.QPicture): auto =
    callVirtualBase_loadPicture(QPictureFormatPlugin(h: self), format, filename, pic)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret

  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret

  let slotval3 = gen_qpicture.QPicture(h: pic)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_savePicture(self: QPictureFormatPlugin, format: string, filename: string, pic: gen_qpicture.QPicture): bool =


  fQPictureFormatPlugin_virtualbase_savePicture(self.h, struct_miqt_string(data: format, len: csize_t(len(format))), struct_miqt_string(data: filename, len: csize_t(len(filename))), pic.h)

type QPictureFormatPluginsavePictureBase* = proc(format: string, filename: string, pic: gen_qpicture.QPicture): bool
proc onsavePicture*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPluginsavePictureBase, format: string, filename: string, pic: gen_qpicture.QPicture): bool) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPluginsavePictureBase, format: string, filename: string, pic: gen_qpicture.QPicture): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_savePicture(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_savePicture(self: ptr cQPictureFormatPlugin, slot: int, format: struct_miqt_string, filename: struct_miqt_string, pic: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_savePicture ".} =
  type Cb = proc(super: QPictureFormatPluginsavePictureBase, format: string, filename: string, pic: gen_qpicture.QPicture): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(format: string, filename: string, pic: gen_qpicture.QPicture): auto =
    callVirtualBase_savePicture(QPictureFormatPlugin(h: self), format, filename, pic)
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret

  let vfilename_ms = filename
  let vfilenamex_ret = string.fromBytes(toOpenArrayByte(vfilename_ms.data, 0, int(vfilename_ms.len)-1))
  c_free(vfilename_ms.data)
  let slotval2 = vfilenamex_ret

  let slotval3 = gen_qpicture.QPicture(h: pic)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QPictureFormatPlugininstallIOHandlerBase* = proc(format: string): bool
proc oninstallIOHandler*(self: QPictureFormatPlugin, slot: proc(format: string): bool) =
  # TODO check subclass
  type Cb = proc(format: string): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_installIOHandler(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_installIOHandler(self: ptr cQPictureFormatPlugin, slot: int, format: struct_miqt_string): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_installIOHandler ".} =
  type Cb = proc(format: string): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vformat_ms = format
  let vformatx_ret = string.fromBytes(toOpenArrayByte(vformat_ms.data, 0, int(vformat_ms.len)-1))
  c_free(vformat_ms.data)
  let slotval1 = vformatx_ret


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QPictureFormatPlugin, event: gen_qcoreevent.QEvent): bool =


  fQPictureFormatPlugin_virtualbase_event(self.h, event.h)

type QPictureFormatPlugineventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPlugineventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_event(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_event ".} =
  type Cb = proc(super: QPictureFormatPlugineventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QPictureFormatPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QPictureFormatPlugin, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQPictureFormatPlugin_virtualbase_eventFilter(self.h, watched.h, event.h)

type QPictureFormatPlugineventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_eventFilter(self: ptr cQPictureFormatPlugin, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QPictureFormatPlugin_eventFilter ".} =
  type Cb = proc(super: QPictureFormatPlugineventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QPictureFormatPlugin(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QPictureFormatPlugin, event: gen_qcoreevent.QTimerEvent): void =


  fQPictureFormatPlugin_virtualbase_timerEvent(self.h, event.h)

type QPictureFormatPlugintimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_timerEvent(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_timerEvent ".} =
  type Cb = proc(super: QPictureFormatPlugintimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QPictureFormatPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QPictureFormatPlugin, event: gen_qcoreevent.QChildEvent): void =


  fQPictureFormatPlugin_virtualbase_childEvent(self.h, event.h)

type QPictureFormatPluginchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_childEvent(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_childEvent ".} =
  type Cb = proc(super: QPictureFormatPluginchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QPictureFormatPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QPictureFormatPlugin, event: gen_qcoreevent.QEvent): void =


  fQPictureFormatPlugin_virtualbase_customEvent(self.h, event.h)

type QPictureFormatPlugincustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPlugincustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_customEvent(self: ptr cQPictureFormatPlugin, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_customEvent ".} =
  type Cb = proc(super: QPictureFormatPlugincustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QPictureFormatPlugin(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QPictureFormatPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQPictureFormatPlugin_virtualbase_connectNotify(self.h, signal.h)

type QPictureFormatPluginconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_connectNotify(self: ptr cQPictureFormatPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_connectNotify ".} =
  type Cb = proc(super: QPictureFormatPluginconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QPictureFormatPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QPictureFormatPlugin, signal: gen_qmetaobject.QMetaMethod): void =


  fQPictureFormatPlugin_virtualbase_disconnectNotify(self.h, signal.h)

type QPictureFormatPlugindisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QPictureFormatPlugin, slot: proc(super: QPictureFormatPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QPictureFormatPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQPictureFormatPlugin_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QPictureFormatPlugin_disconnectNotify(self: ptr cQPictureFormatPlugin, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QPictureFormatPlugin_disconnectNotify ".} =
  type Cb = proc(super: QPictureFormatPlugindisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QPictureFormatPlugin(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QPictureFormatPlugin): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQPictureFormatPlugin_staticMetaObject())
proc delete*(self: QPictureFormatPlugin) =
  fcQPictureFormatPlugin_delete(self.h)
