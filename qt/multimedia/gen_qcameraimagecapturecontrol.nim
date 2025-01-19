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
{.compile("gen_qcameraimagecapturecontrol.cpp", cflags).}


import gen_qcameraimagecapturecontrol_types
export gen_qcameraimagecapturecontrol_types

import
  gen_qcameraimagecapture,
  gen_qimage,
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant,
  gen_qvideoframe
export
  gen_qcameraimagecapture,
  gen_qimage,
  gen_qmediacontrol,
  gen_qobjectdefs,
  gen_qvariant,
  gen_qvideoframe

type cQCameraImageCaptureControl*{.exportc: "QCameraImageCaptureControl", incompleteStruct.} = object

proc fcQCameraImageCaptureControl_metaObject(self: pointer, ): pointer {.importc: "QCameraImageCaptureControl_metaObject".}
proc fcQCameraImageCaptureControl_metacast(self: pointer, param1: cstring): pointer {.importc: "QCameraImageCaptureControl_metacast".}
proc fcQCameraImageCaptureControl_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QCameraImageCaptureControl_metacall".}
proc fcQCameraImageCaptureControl_tr(s: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_tr".}
proc fcQCameraImageCaptureControl_trUtf8(s: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_trUtf8".}
proc fcQCameraImageCaptureControl_isReadyForCapture(self: pointer, ): bool {.importc: "QCameraImageCaptureControl_isReadyForCapture".}
proc fcQCameraImageCaptureControl_driveMode(self: pointer, ): cint {.importc: "QCameraImageCaptureControl_driveMode".}
proc fcQCameraImageCaptureControl_setDriveMode(self: pointer, mode: cint): void {.importc: "QCameraImageCaptureControl_setDriveMode".}
proc fcQCameraImageCaptureControl_capture(self: pointer, fileName: struct_miqt_string): cint {.importc: "QCameraImageCaptureControl_capture".}
proc fcQCameraImageCaptureControl_cancelCapture(self: pointer, ): void {.importc: "QCameraImageCaptureControl_cancelCapture".}
proc fcQCameraImageCaptureControl_readyForCaptureChanged(self: pointer, ready: bool): void {.importc: "QCameraImageCaptureControl_readyForCaptureChanged".}
proc fQCameraImageCaptureControl_connect_readyForCaptureChanged(self: pointer, slot: int) {.importc: "QCameraImageCaptureControl_connect_readyForCaptureChanged".}
proc fcQCameraImageCaptureControl_imageExposed(self: pointer, requestId: cint): void {.importc: "QCameraImageCaptureControl_imageExposed".}
proc fQCameraImageCaptureControl_connect_imageExposed(self: pointer, slot: int) {.importc: "QCameraImageCaptureControl_connect_imageExposed".}
proc fcQCameraImageCaptureControl_imageCaptured(self: pointer, requestId: cint, preview: pointer): void {.importc: "QCameraImageCaptureControl_imageCaptured".}
proc fQCameraImageCaptureControl_connect_imageCaptured(self: pointer, slot: int) {.importc: "QCameraImageCaptureControl_connect_imageCaptured".}
proc fcQCameraImageCaptureControl_imageMetadataAvailable(self: pointer, id: cint, key: struct_miqt_string, value: pointer): void {.importc: "QCameraImageCaptureControl_imageMetadataAvailable".}
proc fQCameraImageCaptureControl_connect_imageMetadataAvailable(self: pointer, slot: int) {.importc: "QCameraImageCaptureControl_connect_imageMetadataAvailable".}
proc fcQCameraImageCaptureControl_imageAvailable(self: pointer, requestId: cint, buffer: pointer): void {.importc: "QCameraImageCaptureControl_imageAvailable".}
proc fQCameraImageCaptureControl_connect_imageAvailable(self: pointer, slot: int) {.importc: "QCameraImageCaptureControl_connect_imageAvailable".}
proc fcQCameraImageCaptureControl_imageSaved(self: pointer, requestId: cint, fileName: struct_miqt_string): void {.importc: "QCameraImageCaptureControl_imageSaved".}
proc fQCameraImageCaptureControl_connect_imageSaved(self: pointer, slot: int) {.importc: "QCameraImageCaptureControl_connect_imageSaved".}
proc fcQCameraImageCaptureControl_error(self: pointer, id: cint, error: cint, errorString: struct_miqt_string): void {.importc: "QCameraImageCaptureControl_error".}
proc fQCameraImageCaptureControl_connect_error(self: pointer, slot: int) {.importc: "QCameraImageCaptureControl_connect_error".}
proc fcQCameraImageCaptureControl_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_tr2".}
proc fcQCameraImageCaptureControl_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCaptureControl_tr3".}
proc fcQCameraImageCaptureControl_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QCameraImageCaptureControl_trUtf82".}
proc fcQCameraImageCaptureControl_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QCameraImageCaptureControl_trUtf83".}
proc fcQCameraImageCaptureControl_staticMetaObject(): pointer {.importc: "QCameraImageCaptureControl_staticMetaObject".}
proc fcQCameraImageCaptureControl_delete(self: pointer) {.importc: "QCameraImageCaptureControl_delete".}


func init*(T: type QCameraImageCaptureControl, h: ptr cQCameraImageCaptureControl): QCameraImageCaptureControl =
  T(h: h)
proc metaObject*(self: QCameraImageCaptureControl, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQCameraImageCaptureControl_metaObject(self.h))

proc metacast*(self: QCameraImageCaptureControl, param1: cstring): pointer =

  fcQCameraImageCaptureControl_metacast(self.h, param1)

proc metacall*(self: QCameraImageCaptureControl, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQCameraImageCaptureControl_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QCameraImageCaptureControl, s: cstring): string =

  let v_ms = fcQCameraImageCaptureControl_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QCameraImageCaptureControl, s: cstring): string =

  let v_ms = fcQCameraImageCaptureControl_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isReadyForCapture*(self: QCameraImageCaptureControl, ): bool =

  fcQCameraImageCaptureControl_isReadyForCapture(self.h)

proc driveMode*(self: QCameraImageCaptureControl, ): gen_qcameraimagecapture.QCameraImageCaptureDriveMode =

  gen_qcameraimagecapture.QCameraImageCaptureDriveMode(fcQCameraImageCaptureControl_driveMode(self.h))

proc setDriveMode*(self: QCameraImageCaptureControl, mode: gen_qcameraimagecapture.QCameraImageCaptureDriveMode): void =

  fcQCameraImageCaptureControl_setDriveMode(self.h, cint(mode))

proc capture*(self: QCameraImageCaptureControl, fileName: string): cint =

  fcQCameraImageCaptureControl_capture(self.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc cancelCapture*(self: QCameraImageCaptureControl, ): void =

  fcQCameraImageCaptureControl_cancelCapture(self.h)

proc readyForCaptureChanged*(self: QCameraImageCaptureControl, ready: bool): void =

  fcQCameraImageCaptureControl_readyForCaptureChanged(self.h, ready)

proc miqt_exec_callback_QCameraImageCaptureControl_readyForCaptureChanged(slot: int, ready: bool) {.exportc.} =
  type Cb = proc(ready: bool)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = ready


  nimfunc[](slotval1)

proc onreadyForCaptureChanged*(self: QCameraImageCaptureControl, slot: proc(ready: bool)) =
  type Cb = proc(ready: bool)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCaptureControl_connect_readyForCaptureChanged(self.h, cast[int](addr tmp[]))
proc imageExposed*(self: QCameraImageCaptureControl, requestId: cint): void =

  fcQCameraImageCaptureControl_imageExposed(self.h, requestId)

proc miqt_exec_callback_QCameraImageCaptureControl_imageExposed(slot: int, requestId: cint) {.exportc.} =
  type Cb = proc(requestId: cint)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = requestId


  nimfunc[](slotval1)

proc onimageExposed*(self: QCameraImageCaptureControl, slot: proc(requestId: cint)) =
  type Cb = proc(requestId: cint)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCaptureControl_connect_imageExposed(self.h, cast[int](addr tmp[]))
proc imageCaptured*(self: QCameraImageCaptureControl, requestId: cint, preview: gen_qimage.QImage): void =

  fcQCameraImageCaptureControl_imageCaptured(self.h, requestId, preview.h)

proc miqt_exec_callback_QCameraImageCaptureControl_imageCaptured(slot: int, requestId: cint, preview: pointer) {.exportc.} =
  type Cb = proc(requestId: cint, preview: gen_qimage.QImage)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = requestId

  let slotval2 = gen_qimage.QImage(h: preview)


  nimfunc[](slotval1, slotval2)

proc onimageCaptured*(self: QCameraImageCaptureControl, slot: proc(requestId: cint, preview: gen_qimage.QImage)) =
  type Cb = proc(requestId: cint, preview: gen_qimage.QImage)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCaptureControl_connect_imageCaptured(self.h, cast[int](addr tmp[]))
proc imageMetadataAvailable*(self: QCameraImageCaptureControl, id: cint, key: string, value: gen_qvariant.QVariant): void =

  fcQCameraImageCaptureControl_imageMetadataAvailable(self.h, id, struct_miqt_string(data: key, len: csize_t(len(key))), value.h)

proc miqt_exec_callback_QCameraImageCaptureControl_imageMetadataAvailable(slot: int, id: cint, key: struct_miqt_string, value: pointer) {.exportc.} =
  type Cb = proc(id: cint, key: string, value: gen_qvariant.QVariant)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let vkey_ms = key
  let vkeyx_ret = string.fromBytes(toOpenArrayByte(vkey_ms.data, 0, int(vkey_ms.len)-1))
  c_free(vkey_ms.data)
  let slotval2 = vkeyx_ret

  let slotval3 = gen_qvariant.QVariant(h: value)


  nimfunc[](slotval1, slotval2, slotval3)

proc onimageMetadataAvailable*(self: QCameraImageCaptureControl, slot: proc(id: cint, key: string, value: gen_qvariant.QVariant)) =
  type Cb = proc(id: cint, key: string, value: gen_qvariant.QVariant)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCaptureControl_connect_imageMetadataAvailable(self.h, cast[int](addr tmp[]))
proc imageAvailable*(self: QCameraImageCaptureControl, requestId: cint, buffer: gen_qvideoframe.QVideoFrame): void =

  fcQCameraImageCaptureControl_imageAvailable(self.h, requestId, buffer.h)

proc miqt_exec_callback_QCameraImageCaptureControl_imageAvailable(slot: int, requestId: cint, buffer: pointer) {.exportc.} =
  type Cb = proc(requestId: cint, buffer: gen_qvideoframe.QVideoFrame)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = requestId

  let slotval2 = gen_qvideoframe.QVideoFrame(h: buffer)


  nimfunc[](slotval1, slotval2)

proc onimageAvailable*(self: QCameraImageCaptureControl, slot: proc(requestId: cint, buffer: gen_qvideoframe.QVideoFrame)) =
  type Cb = proc(requestId: cint, buffer: gen_qvideoframe.QVideoFrame)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCaptureControl_connect_imageAvailable(self.h, cast[int](addr tmp[]))
proc imageSaved*(self: QCameraImageCaptureControl, requestId: cint, fileName: string): void =

  fcQCameraImageCaptureControl_imageSaved(self.h, requestId, struct_miqt_string(data: fileName, len: csize_t(len(fileName))))

proc miqt_exec_callback_QCameraImageCaptureControl_imageSaved(slot: int, requestId: cint, fileName: struct_miqt_string) {.exportc.} =
  type Cb = proc(requestId: cint, fileName: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = requestId

  let vfileName_ms = fileName
  let vfileNamex_ret = string.fromBytes(toOpenArrayByte(vfileName_ms.data, 0, int(vfileName_ms.len)-1))
  c_free(vfileName_ms.data)
  let slotval2 = vfileNamex_ret


  nimfunc[](slotval1, slotval2)

proc onimageSaved*(self: QCameraImageCaptureControl, slot: proc(requestId: cint, fileName: string)) =
  type Cb = proc(requestId: cint, fileName: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCaptureControl_connect_imageSaved(self.h, cast[int](addr tmp[]))
proc error*(self: QCameraImageCaptureControl, id: cint, error: cint, errorString: string): void =

  fcQCameraImageCaptureControl_error(self.h, id, error, struct_miqt_string(data: errorString, len: csize_t(len(errorString))))

proc miqt_exec_callback_QCameraImageCaptureControl_error(slot: int, id: cint, error: cint, errorString: struct_miqt_string) {.exportc.} =
  type Cb = proc(id: cint, error: cint, errorString: string)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = id

  let slotval2 = error

  let verrorString_ms = errorString
  let verrorStringx_ret = string.fromBytes(toOpenArrayByte(verrorString_ms.data, 0, int(verrorString_ms.len)-1))
  c_free(verrorString_ms.data)
  let slotval3 = verrorStringx_ret


  nimfunc[](slotval1, slotval2, slotval3)

proc onerror*(self: QCameraImageCaptureControl, slot: proc(id: cint, error: cint, errorString: string)) =
  type Cb = proc(id: cint, error: cint, errorString: string)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQCameraImageCaptureControl_connect_error(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QCameraImageCaptureControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageCaptureControl_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QCameraImageCaptureControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageCaptureControl_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QCameraImageCaptureControl, s: cstring, c: cstring): string =

  let v_ms = fcQCameraImageCaptureControl_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QCameraImageCaptureControl, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQCameraImageCaptureControl_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QCameraImageCaptureControl): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQCameraImageCaptureControl_staticMetaObject())
proc delete*(self: QCameraImageCaptureControl) =
  fcQCameraImageCaptureControl_delete(self.h)
