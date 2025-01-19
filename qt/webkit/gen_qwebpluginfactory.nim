import Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebKitWidgets")
{.compile("gen_qwebpluginfactory.cpp", cflags).}


import gen_qwebpluginfactory_types
export gen_qwebpluginfactory_types

import
  TODO,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl
export
  TODO,
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qurl

type cQWebPluginFactory*{.exportc: "QWebPluginFactory", incompleteStruct.} = object
type cQWebPluginFactoryMimeType*{.exportc: "QWebPluginFactory__MimeType", incompleteStruct.} = object
type cQWebPluginFactoryPlugin*{.exportc: "QWebPluginFactory__Plugin", incompleteStruct.} = object
type cQWebPluginFactoryExtensionOption*{.exportc: "QWebPluginFactory__ExtensionOption", incompleteStruct.} = object
type cQWebPluginFactoryExtensionReturn*{.exportc: "QWebPluginFactory__ExtensionReturn", incompleteStruct.} = object

proc fcQWebPluginFactory_new(): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new".}
proc fcQWebPluginFactory_new2(parent: pointer): ptr cQWebPluginFactory {.importc: "QWebPluginFactory_new2".}
proc fcQWebPluginFactory_metaObject(self: pointer, ): pointer {.importc: "QWebPluginFactory_metaObject".}
proc fcQWebPluginFactory_metacast(self: pointer, param1: cstring): pointer {.importc: "QWebPluginFactory_metacast".}
proc fcQWebPluginFactory_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QWebPluginFactory_metacall".}
proc fcQWebPluginFactory_tr(s: cstring): struct_miqt_string {.importc: "QWebPluginFactory_tr".}
proc fcQWebPluginFactory_trUtf8(s: cstring): struct_miqt_string {.importc: "QWebPluginFactory_trUtf8".}
proc fcQWebPluginFactory_plugins(self: pointer, ): struct_miqt_array {.importc: "QWebPluginFactory_plugins".}
proc fcQWebPluginFactory_refreshPlugins(self: pointer, ): void {.importc: "QWebPluginFactory_refreshPlugins".}
proc fcQWebPluginFactory_create(self: pointer, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.importc: "QWebPluginFactory_create".}
proc fcQWebPluginFactory_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool {.importc: "QWebPluginFactory_extension".}
proc fcQWebPluginFactory_supportsExtension(self: pointer, extension: cint): bool {.importc: "QWebPluginFactory_supportsExtension".}
proc fcQWebPluginFactory_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPluginFactory_tr2".}
proc fcQWebPluginFactory_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPluginFactory_tr3".}
proc fcQWebPluginFactory_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QWebPluginFactory_trUtf82".}
proc fcQWebPluginFactory_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QWebPluginFactory_trUtf83".}
proc fQWebPluginFactory_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QWebPluginFactory_virtualbase_metacall".}
proc fcQWebPluginFactory_override_virtual_metacall(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_metacall".}
proc fcQWebPluginFactory_override_virtual_plugins(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_plugins".}
proc fQWebPluginFactory_virtualbase_refreshPlugins(self: pointer, ): void{.importc: "QWebPluginFactory_virtualbase_refreshPlugins".}
proc fcQWebPluginFactory_override_virtual_refreshPlugins(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_refreshPlugins".}
proc fcQWebPluginFactory_override_virtual_create(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_create".}
proc fQWebPluginFactory_virtualbase_extension(self: pointer, extension: cint, option: pointer, output: pointer): bool{.importc: "QWebPluginFactory_virtualbase_extension".}
proc fcQWebPluginFactory_override_virtual_extension(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_extension".}
proc fQWebPluginFactory_virtualbase_supportsExtension(self: pointer, extension: cint): bool{.importc: "QWebPluginFactory_virtualbase_supportsExtension".}
proc fcQWebPluginFactory_override_virtual_supportsExtension(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_supportsExtension".}
proc fQWebPluginFactory_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QWebPluginFactory_virtualbase_event".}
proc fcQWebPluginFactory_override_virtual_event(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_event".}
proc fQWebPluginFactory_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QWebPluginFactory_virtualbase_eventFilter".}
proc fcQWebPluginFactory_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_eventFilter".}
proc fQWebPluginFactory_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QWebPluginFactory_virtualbase_timerEvent".}
proc fcQWebPluginFactory_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_timerEvent".}
proc fQWebPluginFactory_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QWebPluginFactory_virtualbase_childEvent".}
proc fcQWebPluginFactory_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_childEvent".}
proc fQWebPluginFactory_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QWebPluginFactory_virtualbase_customEvent".}
proc fcQWebPluginFactory_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_customEvent".}
proc fQWebPluginFactory_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QWebPluginFactory_virtualbase_connectNotify".}
proc fcQWebPluginFactory_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_connectNotify".}
proc fQWebPluginFactory_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QWebPluginFactory_virtualbase_disconnectNotify".}
proc fcQWebPluginFactory_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QWebPluginFactory_override_virtual_disconnectNotify".}
proc fcQWebPluginFactory_staticMetaObject(): pointer {.importc: "QWebPluginFactory_staticMetaObject".}
proc fcQWebPluginFactory_delete(self: pointer) {.importc: "QWebPluginFactory_delete".}
proc fcQWebPluginFactoryMimeType_new(param1: pointer): ptr cQWebPluginFactoryMimeType {.importc: "QWebPluginFactory__MimeType_new".}
proc fcQWebPluginFactoryMimeType_operatorEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorEqual".}
proc fcQWebPluginFactoryMimeType_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QWebPluginFactory__MimeType_operatorNotEqual".}
proc fcQWebPluginFactoryMimeType_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__MimeType_operatorAssign".}
proc fcQWebPluginFactoryMimeType_delete(self: pointer) {.importc: "QWebPluginFactory__MimeType_delete".}
proc fcQWebPluginFactoryPlugin_new(param1: pointer): ptr cQWebPluginFactoryPlugin {.importc: "QWebPluginFactory__Plugin_new".}
proc fcQWebPluginFactoryPlugin_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebPluginFactory__Plugin_operatorAssign".}
proc fcQWebPluginFactoryPlugin_delete(self: pointer) {.importc: "QWebPluginFactory__Plugin_delete".}
proc fcQWebPluginFactoryExtensionOption_delete(self: pointer) {.importc: "QWebPluginFactory__ExtensionOption_delete".}
proc fcQWebPluginFactoryExtensionReturn_delete(self: pointer) {.importc: "QWebPluginFactory__ExtensionReturn_delete".}


func init*(T: type QWebPluginFactory, h: ptr cQWebPluginFactory): QWebPluginFactory =
  T(h: h)
proc create*(T: type QWebPluginFactory, ): QWebPluginFactory =

  QWebPluginFactory.init(fcQWebPluginFactory_new())
proc create*(T: type QWebPluginFactory, parent: gen_qobject.QObject): QWebPluginFactory =

  QWebPluginFactory.init(fcQWebPluginFactory_new2(parent.h))
proc metaObject*(self: QWebPluginFactory, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQWebPluginFactory_metaObject(self.h))

proc metacast*(self: QWebPluginFactory, param1: cstring): pointer =

  fcQWebPluginFactory_metacast(self.h, param1)

proc metacall*(self: QWebPluginFactory, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQWebPluginFactory_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QWebPluginFactory, s: cstring): string =

  let v_ms = fcQWebPluginFactory_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QWebPluginFactory, s: cstring): string =

  let v_ms = fcQWebPluginFactory_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc plugins*(self: QWebPluginFactory, ): seq[QWebPluginFactoryPlugin] =

  var v_ma = fcQWebPluginFactory_plugins(self.h)
  var vx_ret = newSeq[QWebPluginFactoryPlugin](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QWebPluginFactoryPlugin(h: v_outCast[i])
  vx_ret

proc refreshPlugins*(self: QWebPluginFactory, ): void =

  fcQWebPluginFactory_refreshPlugins(self.h)

proc create*(self: QWebPluginFactory, mimeType: string, param2: gen_qurl.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject.QObject =

  var argumentNames_CArray = newSeq[struct_miqt_string](len(argumentNames))
  for i in 0..<len(argumentNames):
    argumentNames_CArray[i] = struct_miqt_string(data: argumentNames[i], len: csize_t(len(argumentNames[i])))

  var argumentValues_CArray = newSeq[struct_miqt_string](len(argumentValues))
  for i in 0..<len(argumentValues):
    argumentValues_CArray[i] = struct_miqt_string(data: argumentValues[i], len: csize_t(len(argumentValues[i])))

  gen_qobject.QObject(h: fcQWebPluginFactory_create(self.h, struct_miqt_string(data: mimeType, len: csize_t(len(mimeType))), param2.h, struct_miqt_array(len: csize_t(len(argumentNames)), data: if len(argumentNames) == 0: nil else: addr(argumentNames_CArray[0])), struct_miqt_array(len: csize_t(len(argumentValues)), data: if len(argumentValues) == 0: nil else: addr(argumentValues_CArray[0]))))

proc extension*(self: QWebPluginFactory, extension: TODO.QWebPluginFactoryExtension, option: QWebPluginFactoryExtensionOption, output: QWebPluginFactoryExtensionReturn): bool =

  fcQWebPluginFactory_extension(self.h, cint(extension), option.h, output.h)

proc supportsExtension*(self: QWebPluginFactory, extension: TODO.QWebPluginFactoryExtension): bool =

  fcQWebPluginFactory_supportsExtension(self.h, cint(extension))

proc tr2*(_: type QWebPluginFactory, s: cstring, c: cstring): string =

  let v_ms = fcQWebPluginFactory_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QWebPluginFactory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebPluginFactory_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QWebPluginFactory, s: cstring, c: cstring): string =

  let v_ms = fcQWebPluginFactory_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QWebPluginFactory, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQWebPluginFactory_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metacall(self: QWebPluginFactory, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQWebPluginFactory_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QWebPluginFactorymetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_metacall(self: ptr cQWebPluginFactory, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QWebPluginFactory_metacall ".} =
  type Cb = proc(super: QWebPluginFactorymetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QWebPluginFactory(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
type QWebPluginFactorypluginsBase* = proc(): seq[QWebPluginFactoryPlugin]
proc onplugins*(self: QWebPluginFactory, slot: proc(): seq[QWebPluginFactoryPlugin]) =
  # TODO check subclass
  type Cb = proc(): seq[QWebPluginFactoryPlugin]
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_plugins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_plugins(self: ptr cQWebPluginFactory, slot: int): struct_miqt_array {.exportc: "miqt_exec_callback_QWebPluginFactory_plugins ".} =
  type Cb = proc(): seq[QWebPluginFactoryPlugin]
  var nimfunc = cast[ptr Cb](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )
  var virtualReturn_CArray = newSeq[pointer](len(virtualReturn))
  for i in 0..<len(virtualReturn):
    virtualReturn_CArray[i] = virtualReturn[i].h


  struct_miqt_array(len: csize_t(len(virtualReturn)), data: if len(virtualReturn) == 0: nil else: addr(virtualReturn_CArray[0]))
proc callVirtualBase_refreshPlugins(self: QWebPluginFactory, ): void =


  fQWebPluginFactory_virtualbase_refreshPlugins(self.h)

type QWebPluginFactoryrefreshPluginsBase* = proc(): void
proc onrefreshPlugins*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactoryrefreshPluginsBase): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactoryrefreshPluginsBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_refreshPlugins(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_refreshPlugins(self: ptr cQWebPluginFactory, slot: int): void {.exportc: "miqt_exec_callback_QWebPluginFactory_refreshPlugins ".} =
  type Cb = proc(super: QWebPluginFactoryrefreshPluginsBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_refreshPlugins(QWebPluginFactory(h: self), )

  nimfunc[](superCall)
type QWebPluginFactorycreateBase* = proc(mimeType: string, param2: gen_qurl.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject.QObject
proc oncreate*(self: QWebPluginFactory, slot: proc(mimeType: string, param2: gen_qurl.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(mimeType: string, param2: gen_qurl.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_create(self: ptr cQWebPluginFactory, slot: int, mimeType: struct_miqt_string, param2: pointer, argumentNames: struct_miqt_array, argumentValues: struct_miqt_array): pointer {.exportc: "miqt_exec_callback_QWebPluginFactory_create ".} =
  type Cb = proc(mimeType: string, param2: gen_qurl.QUrl, argumentNames: seq[string], argumentValues: seq[string]): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vmimeType_ms = mimeType
  let vmimeTypex_ret = string.fromBytes(toOpenArrayByte(vmimeType_ms.data, 0, int(vmimeType_ms.len)-1))
  c_free(vmimeType_ms.data)
  let slotval1 = vmimeTypex_ret

  let slotval2 = gen_qurl.QUrl(h: param2)

  var vargumentNames_ma = argumentNames
  var vargumentNamesx_ret = newSeq[string](int(vargumentNames_ma.len))
  let vargumentNames_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentNames_ma.data)
  for i in 0 ..< vargumentNames_ma.len:
    let vargumentNames_lv_ms = vargumentNames_outCast[i]
    let vargumentNames_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentNames_lv_ms.data, 0, int(vargumentNames_lv_ms.len)-1))
    c_free(vargumentNames_lv_ms.data)
    vargumentNamesx_ret[i] = vargumentNames_lvx_ret
  let slotval3 = vargumentNamesx_ret

  var vargumentValues_ma = argumentValues
  var vargumentValuesx_ret = newSeq[string](int(vargumentValues_ma.len))
  let vargumentValues_outCast = cast[ptr UncheckedArray[struct_miqt_string]](vargumentValues_ma.data)
  for i in 0 ..< vargumentValues_ma.len:
    let vargumentValues_lv_ms = vargumentValues_outCast[i]
    let vargumentValues_lvx_ret = string.fromBytes(toOpenArrayByte(vargumentValues_lv_ms.data, 0, int(vargumentValues_lv_ms.len)-1))
    c_free(vargumentValues_lv_ms.data)
    vargumentValuesx_ret[i] = vargumentValues_lvx_ret
  let slotval4 = vargumentValuesx_ret


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3, slotval4 )

  virtualReturn.h
proc callVirtualBase_extension(self: QWebPluginFactory, extension: TODO.QWebPluginFactoryExtension, option: QWebPluginFactoryExtensionOption, output: QWebPluginFactoryExtensionReturn): bool =


  fQWebPluginFactory_virtualbase_extension(self.h, cint(extension), option.h, output.h)

type QWebPluginFactoryextensionBase* = proc(extension: TODO.QWebPluginFactoryExtension, option: QWebPluginFactoryExtensionOption, output: QWebPluginFactoryExtensionReturn): bool
proc onextension*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactoryextensionBase, extension: TODO.QWebPluginFactoryExtension, option: QWebPluginFactoryExtensionOption, output: QWebPluginFactoryExtensionReturn): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactoryextensionBase, extension: TODO.QWebPluginFactoryExtension, option: QWebPluginFactoryExtensionOption, output: QWebPluginFactoryExtensionReturn): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_extension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_extension(self: ptr cQWebPluginFactory, slot: int, extension: cint, option: pointer, output: pointer): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_extension ".} =
  type Cb = proc(super: QWebPluginFactoryextensionBase, extension: TODO.QWebPluginFactoryExtension, option: QWebPluginFactoryExtensionOption, output: QWebPluginFactoryExtensionReturn): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: TODO.QWebPluginFactoryExtension, option: QWebPluginFactoryExtensionOption, output: QWebPluginFactoryExtensionReturn): auto =
    callVirtualBase_extension(QWebPluginFactory(h: self), extension, option, output)
  let slotval1 = TODO.QWebPluginFactoryExtension(extension)

  let slotval2 = QWebPluginFactoryExtensionOption(h: option)

  let slotval3 = QWebPluginFactoryExtensionReturn(h: output)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_supportsExtension(self: QWebPluginFactory, extension: TODO.QWebPluginFactoryExtension): bool =


  fQWebPluginFactory_virtualbase_supportsExtension(self.h, cint(extension))

type QWebPluginFactorysupportsExtensionBase* = proc(extension: TODO.QWebPluginFactoryExtension): bool
proc onsupportsExtension*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactorysupportsExtensionBase, extension: TODO.QWebPluginFactoryExtension): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactorysupportsExtensionBase, extension: TODO.QWebPluginFactoryExtension): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_supportsExtension(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_supportsExtension(self: ptr cQWebPluginFactory, slot: int, extension: cint): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_supportsExtension ".} =
  type Cb = proc(super: QWebPluginFactorysupportsExtensionBase, extension: TODO.QWebPluginFactoryExtension): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(extension: TODO.QWebPluginFactoryExtension): auto =
    callVirtualBase_supportsExtension(QWebPluginFactory(h: self), extension)
  let slotval1 = TODO.QWebPluginFactoryExtension(extension)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_event(self: QWebPluginFactory, event: gen_qcoreevent.QEvent): bool =


  fQWebPluginFactory_virtualbase_event(self.h, event.h)

type QWebPluginFactoryeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactoryeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactoryeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_event(self: ptr cQWebPluginFactory, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_event ".} =
  type Cb = proc(super: QWebPluginFactoryeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QWebPluginFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QWebPluginFactory, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQWebPluginFactory_virtualbase_eventFilter(self.h, watched.h, event.h)

type QWebPluginFactoryeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_eventFilter(self: ptr cQWebPluginFactory, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QWebPluginFactory_eventFilter ".} =
  type Cb = proc(super: QWebPluginFactoryeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QWebPluginFactory(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QWebPluginFactory, event: gen_qcoreevent.QTimerEvent): void =


  fQWebPluginFactory_virtualbase_timerEvent(self.h, event.h)

type QWebPluginFactorytimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_timerEvent(self: ptr cQWebPluginFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_timerEvent ".} =
  type Cb = proc(super: QWebPluginFactorytimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QWebPluginFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QWebPluginFactory, event: gen_qcoreevent.QChildEvent): void =


  fQWebPluginFactory_virtualbase_childEvent(self.h, event.h)

type QWebPluginFactorychildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactorychildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactorychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_childEvent(self: ptr cQWebPluginFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_childEvent ".} =
  type Cb = proc(super: QWebPluginFactorychildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QWebPluginFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QWebPluginFactory, event: gen_qcoreevent.QEvent): void =


  fQWebPluginFactory_virtualbase_customEvent(self.h, event.h)

type QWebPluginFactorycustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactorycustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactorycustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_customEvent(self: ptr cQWebPluginFactory, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_customEvent ".} =
  type Cb = proc(super: QWebPluginFactorycustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QWebPluginFactory(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QWebPluginFactory, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebPluginFactory_virtualbase_connectNotify(self.h, signal.h)

type QWebPluginFactoryconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_connectNotify(self: ptr cQWebPluginFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_connectNotify ".} =
  type Cb = proc(super: QWebPluginFactoryconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QWebPluginFactory(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QWebPluginFactory, signal: gen_qmetaobject.QMetaMethod): void =


  fQWebPluginFactory_virtualbase_disconnectNotify(self.h, signal.h)

type QWebPluginFactorydisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QWebPluginFactory, slot: proc(super: QWebPluginFactorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QWebPluginFactorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQWebPluginFactory_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QWebPluginFactory_disconnectNotify(self: ptr cQWebPluginFactory, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QWebPluginFactory_disconnectNotify ".} =
  type Cb = proc(super: QWebPluginFactorydisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QWebPluginFactory(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QWebPluginFactory): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebPluginFactory_staticMetaObject())
proc delete*(self: QWebPluginFactory) =
  fcQWebPluginFactory_delete(self.h)

func init*(T: type QWebPluginFactoryMimeType, h: ptr cQWebPluginFactoryMimeType): QWebPluginFactoryMimeType =
  T(h: h)
proc create*(T: type QWebPluginFactoryMimeType, param1: QWebPluginFactoryMimeType): QWebPluginFactoryMimeType =

  QWebPluginFactoryMimeType.init(fcQWebPluginFactoryMimeType_new(param1.h))
proc operatorEqual*(self: QWebPluginFactoryMimeType, other: QWebPluginFactoryMimeType): bool =

  fcQWebPluginFactoryMimeType_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QWebPluginFactoryMimeType, other: QWebPluginFactoryMimeType): bool =

  fcQWebPluginFactoryMimeType_operatorNotEqual(self.h, other.h)

proc operatorAssign*(self: QWebPluginFactoryMimeType, param1: QWebPluginFactoryMimeType): void =

  fcQWebPluginFactoryMimeType_operatorAssign(self.h, param1.h)

proc delete*(self: QWebPluginFactoryMimeType) =
  fcQWebPluginFactoryMimeType_delete(self.h)

func init*(T: type QWebPluginFactoryPlugin, h: ptr cQWebPluginFactoryPlugin): QWebPluginFactoryPlugin =
  T(h: h)
proc create*(T: type QWebPluginFactoryPlugin, param1: QWebPluginFactoryPlugin): QWebPluginFactoryPlugin =

  QWebPluginFactoryPlugin.init(fcQWebPluginFactoryPlugin_new(param1.h))
proc operatorAssign*(self: QWebPluginFactoryPlugin, param1: QWebPluginFactoryPlugin): void =

  fcQWebPluginFactoryPlugin_operatorAssign(self.h, param1.h)

proc delete*(self: QWebPluginFactoryPlugin) =
  fcQWebPluginFactoryPlugin_delete(self.h)

func init*(T: type QWebPluginFactoryExtensionOption, h: ptr cQWebPluginFactoryExtensionOption): QWebPluginFactoryExtensionOption =
  T(h: h)
proc delete*(self: QWebPluginFactoryExtensionOption) =
  fcQWebPluginFactoryExtensionOption_delete(self.h)

func init*(T: type QWebPluginFactoryExtensionReturn, h: ptr cQWebPluginFactoryExtensionReturn): QWebPluginFactoryExtensionReturn =
  T(h: h)
proc delete*(self: QWebPluginFactoryExtensionReturn) =
  fcQWebPluginFactoryExtensionReturn_delete(self.h)
