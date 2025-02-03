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
{.compile("gen_qfileiconprovider.cpp", cflags).}


import gen_qfileiconprovider_types
export gen_qfileiconprovider_types

import
  gen_qabstractfileiconprovider,
  gen_qfileinfo,
  gen_qicon
export
  gen_qabstractfileiconprovider,
  gen_qfileinfo,
  gen_qicon

type cQFileIconProvider*{.exportc: "QFileIconProvider", incompleteStruct.} = object

proc fcQFileIconProvider_new(): ptr cQFileIconProvider {.importc: "QFileIconProvider_new".}
proc fcQFileIconProvider_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_icon".}
proc fcQFileIconProvider_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_iconWithInfo".}
proc fQFileIconProvider_virtualbase_icon(self: pointer, typeVal: cint): pointer{.importc: "QFileIconProvider_virtualbase_icon".}
proc fcQFileIconProvider_override_virtual_icon(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_icon".}
proc fQFileIconProvider_virtualbase_iconWithInfo(self: pointer, info: pointer): pointer{.importc: "QFileIconProvider_virtualbase_iconWithInfo".}
proc fcQFileIconProvider_override_virtual_iconWithInfo(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_iconWithInfo".}
proc fQFileIconProvider_virtualbase_type(self: pointer, param1: pointer): struct_miqt_string{.importc: "QFileIconProvider_virtualbase_type".}
proc fcQFileIconProvider_override_virtual_typeX(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_type".}
proc fQFileIconProvider_virtualbase_setOptions(self: pointer, options: cint): void{.importc: "QFileIconProvider_virtualbase_setOptions".}
proc fcQFileIconProvider_override_virtual_setOptions(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_setOptions".}
proc fQFileIconProvider_virtualbase_options(self: pointer, ): cint{.importc: "QFileIconProvider_virtualbase_options".}
proc fcQFileIconProvider_override_virtual_options(self: pointer, slot: int) {.importc: "QFileIconProvider_override_virtual_options".}
proc fcQFileIconProvider_delete(self: pointer) {.importc: "QFileIconProvider_delete".}


func init*(T: type QFileIconProvider, h: ptr cQFileIconProvider): QFileIconProvider =
  T(h: h)
proc create*(T: type QFileIconProvider, ): QFileIconProvider =

  QFileIconProvider.init(fcQFileIconProvider_new())
proc icon*(self: QFileIconProvider, typeVal: gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQFileIconProvider_icon(self.h, cint(typeVal)))

proc iconWithInfo*(self: QFileIconProvider, info: gen_qfileinfo.QFileInfo): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQFileIconProvider_iconWithInfo(self.h, info.h))

proc callVirtualBase_icon(self: QFileIconProvider, typeVal: gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType): gen_qicon.QIcon =


  gen_qicon.QIcon(h: fQFileIconProvider_virtualbase_icon(self.h, cint(typeVal)))

type QFileIconProvidericonBase* = proc(typeVal: gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType): gen_qicon.QIcon
proc onicon*(self: QFileIconProvider, slot: proc(super: QFileIconProvidericonBase, typeVal: gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType): gen_qicon.QIcon) =
  # TODO check subclass
  type Cb = proc(super: QFileIconProvidericonBase, typeVal: gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType): gen_qicon.QIcon
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_icon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_icon(self: ptr cQFileIconProvider, slot: int, typeVal: cint): pointer {.exportc: "miqt_exec_callback_QFileIconProvider_icon ".} =
  type Cb = proc(super: QFileIconProvidericonBase, typeVal: gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType): gen_qicon.QIcon
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(typeVal: gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType): auto =
    callVirtualBase_icon(QFileIconProvider(h: self), typeVal)
  let slotval1 = gen_qabstractfileiconprovider.QAbstractFileIconProviderIconType(typeVal)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_iconWithInfo(self: QFileIconProvider, info: gen_qfileinfo.QFileInfo): gen_qicon.QIcon =


  gen_qicon.QIcon(h: fQFileIconProvider_virtualbase_iconWithInfo(self.h, info.h))

type QFileIconProvidericonWithInfoBase* = proc(info: gen_qfileinfo.QFileInfo): gen_qicon.QIcon
proc oniconWithInfo*(self: QFileIconProvider, slot: proc(super: QFileIconProvidericonWithInfoBase, info: gen_qfileinfo.QFileInfo): gen_qicon.QIcon) =
  # TODO check subclass
  type Cb = proc(super: QFileIconProvidericonWithInfoBase, info: gen_qfileinfo.QFileInfo): gen_qicon.QIcon
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_iconWithInfo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_iconWithInfo(self: ptr cQFileIconProvider, slot: int, info: pointer): pointer {.exportc: "miqt_exec_callback_QFileIconProvider_iconWithInfo ".} =
  type Cb = proc(super: QFileIconProvidericonWithInfoBase, info: gen_qfileinfo.QFileInfo): gen_qicon.QIcon
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(info: gen_qfileinfo.QFileInfo): auto =
    callVirtualBase_iconWithInfo(QFileIconProvider(h: self), info)
  let slotval1 = gen_qfileinfo.QFileInfo(h: info)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_typeX(self: QFileIconProvider, param1: gen_qfileinfo.QFileInfo): string =


  let v_ms = fQFileIconProvider_virtualbase_type(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QFileIconProvidertypeXBase* = proc(param1: gen_qfileinfo.QFileInfo): string
proc ontypeX*(self: QFileIconProvider, slot: proc(super: QFileIconProvidertypeXBase, param1: gen_qfileinfo.QFileInfo): string) =
  # TODO check subclass
  type Cb = proc(super: QFileIconProvidertypeXBase, param1: gen_qfileinfo.QFileInfo): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_type(self: ptr cQFileIconProvider, slot: int, param1: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QFileIconProvider_type ".} =
  type Cb = proc(super: QFileIconProvidertypeXBase, param1: gen_qfileinfo.QFileInfo): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qfileinfo.QFileInfo): auto =
    callVirtualBase_typeX(QFileIconProvider(h: self), param1)
  let slotval1 = gen_qfileinfo.QFileInfo(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_setOptions(self: QFileIconProvider, options: gen_qabstractfileiconprovider.QAbstractFileIconProviderOption): void =


  fQFileIconProvider_virtualbase_setOptions(self.h, cint(options))

type QFileIconProvidersetOptionsBase* = proc(options: gen_qabstractfileiconprovider.QAbstractFileIconProviderOption): void
proc onsetOptions*(self: QFileIconProvider, slot: proc(super: QFileIconProvidersetOptionsBase, options: gen_qabstractfileiconprovider.QAbstractFileIconProviderOption): void) =
  # TODO check subclass
  type Cb = proc(super: QFileIconProvidersetOptionsBase, options: gen_qabstractfileiconprovider.QAbstractFileIconProviderOption): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_setOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_setOptions(self: ptr cQFileIconProvider, slot: int, options: cint): void {.exportc: "miqt_exec_callback_QFileIconProvider_setOptions ".} =
  type Cb = proc(super: QFileIconProvidersetOptionsBase, options: gen_qabstractfileiconprovider.QAbstractFileIconProviderOption): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(options: gen_qabstractfileiconprovider.QAbstractFileIconProviderOption): auto =
    callVirtualBase_setOptions(QFileIconProvider(h: self), options)
  let slotval1 = gen_qabstractfileiconprovider.QAbstractFileIconProviderOption(options)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_options(self: QFileIconProvider, ): gen_qabstractfileiconprovider.QAbstractFileIconProviderOption =


  gen_qabstractfileiconprovider.QAbstractFileIconProviderOption(fQFileIconProvider_virtualbase_options(self.h))

type QFileIconProvideroptionsBase* = proc(): gen_qabstractfileiconprovider.QAbstractFileIconProviderOption
proc onoptions*(self: QFileIconProvider, slot: proc(super: QFileIconProvideroptionsBase): gen_qabstractfileiconprovider.QAbstractFileIconProviderOption) =
  # TODO check subclass
  type Cb = proc(super: QFileIconProvideroptionsBase): gen_qabstractfileiconprovider.QAbstractFileIconProviderOption
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQFileIconProvider_override_virtual_options(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QFileIconProvider_options(self: ptr cQFileIconProvider, slot: int): cint {.exportc: "miqt_exec_callback_QFileIconProvider_options ".} =
  type Cb = proc(super: QFileIconProvideroptionsBase): gen_qabstractfileiconprovider.QAbstractFileIconProviderOption
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_options(QFileIconProvider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc delete*(self: QFileIconProvider) =
  fcQFileIconProvider_delete(self.h)
