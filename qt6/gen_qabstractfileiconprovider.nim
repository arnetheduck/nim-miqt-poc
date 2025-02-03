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
{.compile("gen_qabstractfileiconprovider.cpp", cflags).}


type QAbstractFileIconProviderIconType* = cint
const
  QAbstractFileIconProviderComputer* = 0
  QAbstractFileIconProviderDesktop* = 1
  QAbstractFileIconProviderTrashcan* = 2
  QAbstractFileIconProviderNetwork* = 3
  QAbstractFileIconProviderDrive* = 4
  QAbstractFileIconProviderFolder* = 5
  QAbstractFileIconProviderFile* = 6



type QAbstractFileIconProviderOption* = cint
const
  QAbstractFileIconProviderDontUseCustomDirectoryIcons* = 1



import gen_qabstractfileiconprovider_types
export gen_qabstractfileiconprovider_types

import
  gen_qfileinfo,
  gen_qicon
export
  gen_qfileinfo,
  gen_qicon

type cQAbstractFileIconProvider*{.exportc: "QAbstractFileIconProvider", incompleteStruct.} = object

proc fcQAbstractFileIconProvider_new(): ptr cQAbstractFileIconProvider {.importc: "QAbstractFileIconProvider_new".}
proc fcQAbstractFileIconProvider_icon(self: pointer, param1: cint): pointer {.importc: "QAbstractFileIconProvider_icon".}
proc fcQAbstractFileIconProvider_iconWithQFileInfo(self: pointer, param1: pointer): pointer {.importc: "QAbstractFileIconProvider_iconWithQFileInfo".}
proc fcQAbstractFileIconProvider_typeX(self: pointer, param1: pointer): struct_miqt_string {.importc: "QAbstractFileIconProvider_type".}
proc fcQAbstractFileIconProvider_setOptions(self: pointer, options: cint): void {.importc: "QAbstractFileIconProvider_setOptions".}
proc fcQAbstractFileIconProvider_options(self: pointer, ): cint {.importc: "QAbstractFileIconProvider_options".}
proc fQAbstractFileIconProvider_virtualbase_icon(self: pointer, param1: cint): pointer{.importc: "QAbstractFileIconProvider_virtualbase_icon".}
proc fcQAbstractFileIconProvider_override_virtual_icon(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_icon".}
proc fQAbstractFileIconProvider_virtualbase_iconWithQFileInfo(self: pointer, param1: pointer): pointer{.importc: "QAbstractFileIconProvider_virtualbase_iconWithQFileInfo".}
proc fcQAbstractFileIconProvider_override_virtual_iconWithQFileInfo(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_iconWithQFileInfo".}
proc fQAbstractFileIconProvider_virtualbase_type(self: pointer, param1: pointer): struct_miqt_string{.importc: "QAbstractFileIconProvider_virtualbase_type".}
proc fcQAbstractFileIconProvider_override_virtual_typeX(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_type".}
proc fQAbstractFileIconProvider_virtualbase_setOptions(self: pointer, options: cint): void{.importc: "QAbstractFileIconProvider_virtualbase_setOptions".}
proc fcQAbstractFileIconProvider_override_virtual_setOptions(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_setOptions".}
proc fQAbstractFileIconProvider_virtualbase_options(self: pointer, ): cint{.importc: "QAbstractFileIconProvider_virtualbase_options".}
proc fcQAbstractFileIconProvider_override_virtual_options(self: pointer, slot: int) {.importc: "QAbstractFileIconProvider_override_virtual_options".}
proc fcQAbstractFileIconProvider_delete(self: pointer) {.importc: "QAbstractFileIconProvider_delete".}


func init*(T: type QAbstractFileIconProvider, h: ptr cQAbstractFileIconProvider): QAbstractFileIconProvider =
  T(h: h)
proc create*(T: type QAbstractFileIconProvider, ): QAbstractFileIconProvider =

  QAbstractFileIconProvider.init(fcQAbstractFileIconProvider_new())
proc icon*(self: QAbstractFileIconProvider, param1: QAbstractFileIconProviderIconType): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQAbstractFileIconProvider_icon(self.h, cint(param1)))

proc iconWithQFileInfo*(self: QAbstractFileIconProvider, param1: gen_qfileinfo.QFileInfo): gen_qicon.QIcon =

  gen_qicon.QIcon(h: fcQAbstractFileIconProvider_iconWithQFileInfo(self.h, param1.h))

proc typeX*(self: QAbstractFileIconProvider, param1: gen_qfileinfo.QFileInfo): string =

  let v_ms = fcQAbstractFileIconProvider_typeX(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOptions*(self: QAbstractFileIconProvider, options: QAbstractFileIconProviderOption): void =

  fcQAbstractFileIconProvider_setOptions(self.h, cint(options))

proc options*(self: QAbstractFileIconProvider, ): QAbstractFileIconProviderOption =

  QAbstractFileIconProviderOption(fcQAbstractFileIconProvider_options(self.h))

proc callVirtualBase_icon(self: QAbstractFileIconProvider, param1: QAbstractFileIconProviderIconType): gen_qicon.QIcon =


  gen_qicon.QIcon(h: fQAbstractFileIconProvider_virtualbase_icon(self.h, cint(param1)))

type QAbstractFileIconProvidericonBase* = proc(param1: QAbstractFileIconProviderIconType): gen_qicon.QIcon
proc onicon*(self: QAbstractFileIconProvider, slot: proc(super: QAbstractFileIconProvidericonBase, param1: QAbstractFileIconProviderIconType): gen_qicon.QIcon) =
  # TODO check subclass
  type Cb = proc(super: QAbstractFileIconProvidericonBase, param1: QAbstractFileIconProviderIconType): gen_qicon.QIcon
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_icon(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_icon(self: ptr cQAbstractFileIconProvider, slot: int, param1: cint): pointer {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_icon ".} =
  type Cb = proc(super: QAbstractFileIconProvidericonBase, param1: QAbstractFileIconProviderIconType): gen_qicon.QIcon
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: QAbstractFileIconProviderIconType): auto =
    callVirtualBase_icon(QAbstractFileIconProvider(h: self), param1)
  let slotval1 = QAbstractFileIconProviderIconType(param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_iconWithQFileInfo(self: QAbstractFileIconProvider, param1: gen_qfileinfo.QFileInfo): gen_qicon.QIcon =


  gen_qicon.QIcon(h: fQAbstractFileIconProvider_virtualbase_iconWithQFileInfo(self.h, param1.h))

type QAbstractFileIconProvidericonWithQFileInfoBase* = proc(param1: gen_qfileinfo.QFileInfo): gen_qicon.QIcon
proc oniconWithQFileInfo*(self: QAbstractFileIconProvider, slot: proc(super: QAbstractFileIconProvidericonWithQFileInfoBase, param1: gen_qfileinfo.QFileInfo): gen_qicon.QIcon) =
  # TODO check subclass
  type Cb = proc(super: QAbstractFileIconProvidericonWithQFileInfoBase, param1: gen_qfileinfo.QFileInfo): gen_qicon.QIcon
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_iconWithQFileInfo(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_iconWithQFileInfo(self: ptr cQAbstractFileIconProvider, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_iconWithQFileInfo ".} =
  type Cb = proc(super: QAbstractFileIconProvidericonWithQFileInfoBase, param1: gen_qfileinfo.QFileInfo): gen_qicon.QIcon
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qfileinfo.QFileInfo): auto =
    callVirtualBase_iconWithQFileInfo(QAbstractFileIconProvider(h: self), param1)
  let slotval1 = gen_qfileinfo.QFileInfo(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_typeX(self: QAbstractFileIconProvider, param1: gen_qfileinfo.QFileInfo): string =


  let v_ms = fQAbstractFileIconProvider_virtualbase_type(self.h, param1.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

type QAbstractFileIconProvidertypeXBase* = proc(param1: gen_qfileinfo.QFileInfo): string
proc ontypeX*(self: QAbstractFileIconProvider, slot: proc(super: QAbstractFileIconProvidertypeXBase, param1: gen_qfileinfo.QFileInfo): string) =
  # TODO check subclass
  type Cb = proc(super: QAbstractFileIconProvidertypeXBase, param1: gen_qfileinfo.QFileInfo): string
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_typeX(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_type(self: ptr cQAbstractFileIconProvider, slot: int, param1: pointer): struct_miqt_string {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_type ".} =
  type Cb = proc(super: QAbstractFileIconProvidertypeXBase, param1: gen_qfileinfo.QFileInfo): string
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qfileinfo.QFileInfo): auto =
    callVirtualBase_typeX(QAbstractFileIconProvider(h: self), param1)
  let slotval1 = gen_qfileinfo.QFileInfo(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))
proc callVirtualBase_setOptions(self: QAbstractFileIconProvider, options: QAbstractFileIconProviderOption): void =


  fQAbstractFileIconProvider_virtualbase_setOptions(self.h, cint(options))

type QAbstractFileIconProvidersetOptionsBase* = proc(options: QAbstractFileIconProviderOption): void
proc onsetOptions*(self: QAbstractFileIconProvider, slot: proc(super: QAbstractFileIconProvidersetOptionsBase, options: QAbstractFileIconProviderOption): void) =
  # TODO check subclass
  type Cb = proc(super: QAbstractFileIconProvidersetOptionsBase, options: QAbstractFileIconProviderOption): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_setOptions(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_setOptions(self: ptr cQAbstractFileIconProvider, slot: int, options: cint): void {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_setOptions ".} =
  type Cb = proc(super: QAbstractFileIconProvidersetOptionsBase, options: QAbstractFileIconProviderOption): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(options: QAbstractFileIconProviderOption): auto =
    callVirtualBase_setOptions(QAbstractFileIconProvider(h: self), options)
  let slotval1 = QAbstractFileIconProviderOption(options)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_options(self: QAbstractFileIconProvider, ): QAbstractFileIconProviderOption =


  QAbstractFileIconProviderOption(fQAbstractFileIconProvider_virtualbase_options(self.h))

type QAbstractFileIconProvideroptionsBase* = proc(): QAbstractFileIconProviderOption
proc onoptions*(self: QAbstractFileIconProvider, slot: proc(super: QAbstractFileIconProvideroptionsBase): QAbstractFileIconProviderOption) =
  # TODO check subclass
  type Cb = proc(super: QAbstractFileIconProvideroptionsBase): QAbstractFileIconProviderOption
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQAbstractFileIconProvider_override_virtual_options(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QAbstractFileIconProvider_options(self: ptr cQAbstractFileIconProvider, slot: int): cint {.exportc: "miqt_exec_callback_QAbstractFileIconProvider_options ".} =
  type Cb = proc(super: QAbstractFileIconProvideroptionsBase): QAbstractFileIconProviderOption
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_options(QAbstractFileIconProvider(h: self), )

  let virtualReturn = nimfunc[](superCall )

  cint(virtualReturn)
proc delete*(self: QAbstractFileIconProvider) =
  fcQAbstractFileIconProvider_delete(self.h)
