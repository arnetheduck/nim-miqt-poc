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
{.compile("gen_qfileiconprovider.cpp", cflags).}


type QFileIconProviderIconTypeEnum* = distinct cint
template Computer*(_: type QFileIconProviderIconTypeEnum): untyped = 0
template Desktop*(_: type QFileIconProviderIconTypeEnum): untyped = 1
template Trashcan*(_: type QFileIconProviderIconTypeEnum): untyped = 2
template Network*(_: type QFileIconProviderIconTypeEnum): untyped = 3
template Drive*(_: type QFileIconProviderIconTypeEnum): untyped = 4
template Folder*(_: type QFileIconProviderIconTypeEnum): untyped = 5
template File*(_: type QFileIconProviderIconTypeEnum): untyped = 6


type QFileIconProviderOptionEnum* = distinct cint
template DontUseCustomDirectoryIcons*(_: type QFileIconProviderOptionEnum): untyped = 1

import gen_qfileiconprovider_types
export gen_qfileiconprovider_types

import
  gen_qfileinfo_types,
  gen_qicon_types
export
  gen_qfileinfo_types,
  gen_qicon_types

type cQFileIconProvider*{.exportc: "QFileIconProvider", incompleteStruct.} = object

proc fcQFileIconProvider_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_icon".}
proc fcQFileIconProvider_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_iconWithInfo".}
proc fcQFileIconProvider_typeX(self: pointer, info: pointer): struct_miqt_string {.importc: "QFileIconProvider_type".}
proc fcQFileIconProvider_setOptions(self: pointer, options: cint): void {.importc: "QFileIconProvider_setOptions".}
proc fcQFileIconProvider_options(self: pointer, ): cint {.importc: "QFileIconProvider_options".}
type cQFileIconProviderVTable = object
  destructor*: proc(vtbl: ptr cQFileIconProviderVTable, self: ptr cQFileIconProvider) {.cdecl, raises:[], gcsafe.}
  icon*: proc(vtbl, self: pointer, typeVal: cint): pointer {.cdecl, raises: [], gcsafe.}
  icon*: proc(vtbl, self: pointer, info: pointer): pointer {.cdecl, raises: [], gcsafe.}
  typeX*: proc(vtbl, self: pointer, info: pointer): struct_miqt_string {.cdecl, raises: [], gcsafe.}
proc fcQFileIconProvider_virtualbase_icon(self: pointer, typeVal: cint): pointer {.importc: "QFileIconProvider_virtualbase_icon".}
proc fcQFileIconProvider_virtualbase_iconWithInfo(self: pointer, info: pointer): pointer {.importc: "QFileIconProvider_virtualbase_iconWithInfo".}
proc fcQFileIconProvider_virtualbase_typeX(self: pointer, info: pointer): struct_miqt_string {.importc: "QFileIconProvider_virtualbase_type".}
proc fcQFileIconProvider_new(vtbl: pointer, ): ptr cQFileIconProvider {.importc: "QFileIconProvider_new".}
proc fcQFileIconProvider_delete(self: pointer) {.importc: "QFileIconProvider_delete".}

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_icon(self.h, cint(typeVal)))

proc icon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_iconWithInfo(self.h, info.h))

proc typeX*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileIconProvider_typeX(self.h, info.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOptions*(self: gen_qfileiconprovider_types.QFileIconProvider, options: cint): void =
  fcQFileIconProvider_setOptions(self.h, cint(options))

proc options*(self: gen_qfileiconprovider_types.QFileIconProvider, ): cint =
  cint(fcQFileIconProvider_options(self.h))

type QFileIconProvidericonProc* = proc(self: QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QFileIconProvidericonProc* = proc(self: QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon {.raises: [], gcsafe.}
type QFileIconProvidertypeXProc* = proc(self: QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string {.raises: [], gcsafe.}
type QFileIconProviderVTable* = object
  vtbl: cQFileIconProviderVTable
  icon*: QFileIconProvidericonProc
  icon*: QFileIconProvidericonProc
  typeX*: QFileIconProvidertypeXProc
proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, typeVal: cint): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_virtualbase_icon(self.h, cint(typeVal)))

proc miqt_exec_callback_cQFileIconProvider_icon(vtbl: pointer, self: pointer, typeVal: cint): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  let slotval1 = cint(typeVal)
  let virtualReturn = vtbl[].icon(self, slotval1)
  virtualReturn.h

proc QFileIconProvidericon*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): gen_qicon_types.QIcon =
  gen_qicon_types.QIcon(h: fcQFileIconProvider_virtualbase_iconWithInfo(self.h, info.h))

proc miqt_exec_callback_cQFileIconProvider_iconWithInfo(vtbl: pointer, self: pointer, info: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info)
  let virtualReturn = vtbl[].icon(self, slotval1)
  virtualReturn.h

proc QFileIconProvidertypeX*(self: gen_qfileiconprovider_types.QFileIconProvider, info: gen_qfileinfo_types.QFileInfo): string =
  let v_ms = fcQFileIconProvider_virtualbase_typeX(self.h, info.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc miqt_exec_callback_cQFileIconProvider_typeX(vtbl: pointer, self: pointer, info: pointer): struct_miqt_string {.cdecl.} =
  let vtbl = cast[ptr QFileIconProviderVTable](vtbl)
  let self = QFileIconProvider(h: self)
  let slotval1 = gen_qfileinfo_types.QFileInfo(h: info)
  let virtualReturn = vtbl[].typeX(self, slotval1)
  struct_miqt_string(data: virtualReturn, len: csize_t(len(virtualReturn)))

proc create*(T: type gen_qfileiconprovider_types.QFileIconProvider,
    vtbl: ref QFileIconProviderVTable = nil): gen_qfileiconprovider_types.QFileIconProvider =
  let vtbl = if vtbl == nil: new QFileIconProviderVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQFileIconProviderVTable, _: ptr cQFileIconProvider) {.cdecl.} =
    let vtbl = cast[ref QFileIconProviderVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.icon):
    vtbl[].vtbl.icon = miqt_exec_callback_cQFileIconProvider_icon
  if not isNil(vtbl.icon):
    vtbl[].vtbl.icon = miqt_exec_callback_cQFileIconProvider_iconWithInfo
  if not isNil(vtbl.typeX):
    vtbl[].vtbl.typeX = miqt_exec_callback_cQFileIconProvider_typeX
  gen_qfileiconprovider_types.QFileIconProvider(h: fcQFileIconProvider_new(addr(vtbl[]), ))

proc delete*(self: gen_qfileiconprovider_types.QFileIconProvider) =
  fcQFileIconProvider_delete(self.h)
