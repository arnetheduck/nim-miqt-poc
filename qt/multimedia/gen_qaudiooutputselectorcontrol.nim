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
{.compile("gen_qaudiooutputselectorcontrol.cpp", cflags).}


import gen_qaudiooutputselectorcontrol_types
export gen_qaudiooutputselectorcontrol_types

import
  gen_qmediacontrol,
  gen_qobjectdefs
export
  gen_qmediacontrol,
  gen_qobjectdefs

type cQAudioOutputSelectorControl*{.exportc: "QAudioOutputSelectorControl", incompleteStruct.} = object

proc fcQAudioOutputSelectorControl_metaObject(self: pointer, ): pointer {.importc: "QAudioOutputSelectorControl_metaObject".}
proc fcQAudioOutputSelectorControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QAudioOutputSelectorControl_metacast".}
proc fcQAudioOutputSelectorControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QAudioOutputSelectorControl_metacall".}
proc fcQAudioOutputSelectorControl_tr(s: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_tr".}
proc fcQAudioOutputSelectorControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_trUtf8".}
proc fcQAudioOutputSelectorControl_availableOutputs(self: pointer, ): struct_miqt_array {.importc: "QAudioOutputSelectorControl_availableOutputs".}
proc fcQAudioOutputSelectorControl_outputDescription(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QAudioOutputSelectorControl_outputDescription".}
proc fcQAudioOutputSelectorControl_defaultOutput(self: pointer, ): struct_miqt_string {.importc: "QAudioOutputSelectorControl_defaultOutput".}
proc fcQAudioOutputSelectorControl_activeOutput(self: pointer, ): struct_miqt_string {.importc: "QAudioOutputSelectorControl_activeOutput".}
proc fcQAudioOutputSelectorControl_setActiveOutput(self: pointer, name: struct_miqt_string): void {.importc: "QAudioOutputSelectorControl_setActiveOutput".}
proc fcQAudioOutputSelectorControl_activeOutputChanged(self: pointer, name: struct_miqt_string): void {.importc: "QAudioOutputSelectorControl_activeOutputChanged".}
proc fQAudioOutputSelectorControl_connect_activeOutputChanged(self: pointer, slot: int) {.importc: "QAudioOutputSelectorControl_connect_activeOutputChanged".}
proc fcQAudioOutputSelectorControl_availableOutputsChanged(self: pointer, ): void {.importc: "QAudioOutputSelectorControl_availableOutputsChanged".}
proc fQAudioOutputSelectorControl_connect_availableOutputsChanged(self: pointer, slot: int) {.importc: "QAudioOutputSelectorControl_connect_availableOutputsChanged".}
proc fcQAudioOutputSelectorControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_tr2".}
proc fcQAudioOutputSelectorControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutputSelectorControl_tr3".}
proc fcQAudioOutputSelectorControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QAudioOutputSelectorControl_trUtf82".}
proc fcQAudioOutputSelectorControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QAudioOutputSelectorControl_trUtf83".}
proc fcQAudioOutputSelectorControl_delete(self: pointer) {.importc: "QAudioOutputSelectorControl_delete".}


func init*(T: type QAudioOutputSelectorControl, h: ptr cQAudioOutputSelectorControl): QAudioOutputSelectorControl =
  T(h: h)
proc metaObject*(self: QAudioOutputSelectorControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQAudioOutputSelectorControl_metaObject(self.h))

proc metacast*(self: QAudioOutputSelectorControl, param1: cstring): pointer =

  fcQAudioOutputSelectorControl_metacast(self.h, param1)

proc metacall*(self: QAudioOutputSelectorControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQAudioOutputSelectorControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QAudioOutputSelectorControl, s: cstring): string =

  let v_ms = fcQAudioOutputSelectorControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QAudioOutputSelectorControl, s: cstring): string =

  let v_ms = fcQAudioOutputSelectorControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc availableOutputs*(self: QAudioOutputSelectorControl, ): seq[string] =

  var v_ma = fcQAudioOutputSelectorControl_availableOutputs(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc outputDescription*(self: QAudioOutputSelectorControl, name: string): string =

  let v_ms = fcQAudioOutputSelectorControl_outputDescription(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc defaultOutput*(self: QAudioOutputSelectorControl, ): string =

  let v_ms = fcQAudioOutputSelectorControl_defaultOutput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc activeOutput*(self: QAudioOutputSelectorControl, ): string =

  let v_ms = fcQAudioOutputSelectorControl_activeOutput(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setActiveOutput*(self: QAudioOutputSelectorControl, name: string): void =

  fcQAudioOutputSelectorControl_setActiveOutput(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc activeOutputChanged*(self: QAudioOutputSelectorControl, name: string): void =

  fcQAudioOutputSelectorControl_activeOutputChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc miqt_exec_callback_QAudioOutputSelectorControl_activeOutputChanged(slot: int, name: struct_miqt_string) {.exportc.} =
  type Cb = proc(name: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret


  nimfunc[](slotval1)

proc onactiveOutputChanged*(self: QAudioOutputSelectorControl, slot: proc(name: string)) =
  type Cb = proc(name: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioOutputSelectorControl_connect_activeOutputChanged(self.h, cast[int](addr tmp[]))
proc availableOutputsChanged*(self: QAudioOutputSelectorControl, ): void =

  fcQAudioOutputSelectorControl_availableOutputsChanged(self.h)

proc miqt_exec_callback_QAudioOutputSelectorControl_availableOutputsChanged(slot: int) {.exportc.} =
  type Cb = proc()
  let nimfunc = cast[ptr Cb](cast[pointer](slot))

  nimfunc[]()

proc onavailableOutputsChanged*(self: QAudioOutputSelectorControl, slot: proc()) =
  type Cb = proc()
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQAudioOutputSelectorControl_connect_availableOutputsChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QAudioOutputSelectorControl, s: cstring, c: cstring): string =

  let v_ms = fcQAudioOutputSelectorControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QAudioOutputSelectorControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioOutputSelectorControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QAudioOutputSelectorControl, s: cstring, c: cstring): string =

  let v_ms = fcQAudioOutputSelectorControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QAudioOutputSelectorControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQAudioOutputSelectorControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QAudioOutputSelectorControl) =
  fcQAudioOutputSelectorControl_delete(self.h)
