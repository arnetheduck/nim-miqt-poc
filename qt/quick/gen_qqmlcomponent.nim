import Qt5Quick_libs

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

const cflags = gorge("pkg-config -cflags Qt5Quick")
{.compile("gen_qqmlcomponent.cpp", cflags).}


type QQmlComponentCompilationMode* = cint
const
  QQmlComponentPreferSynchronous* = 0
  QQmlComponentAsynchronous* = 1



type QQmlComponentStatus* = cint
const
  QQmlComponentNull* = 0
  QQmlComponentReady* = 1
  QQmlComponentLoading* = 2
  QQmlComponentError* = 3



import gen_qqmlcomponent_types
export gen_qqmlcomponent_types

import
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qqmlincubator,
  gen_qurl,
  gen_qvariant,
  std/tables
export
  gen_qcoreevent,
  gen_qmetaobject,
  gen_qobject,
  gen_qobjectdefs,
  gen_qqmlcontext,
  gen_qqmlengine,
  gen_qqmlerror,
  gen_qqmlincubator,
  gen_qurl,
  gen_qvariant

type cQQmlComponent*{.exportc: "QQmlComponent", incompleteStruct.} = object

proc fcQQmlComponent_new(): ptr cQQmlComponent {.importc: "QQmlComponent_new".}
proc fcQQmlComponent_new2(param1: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new2".}
proc fcQQmlComponent_new3(param1: pointer, fileName: struct_miqt_string): ptr cQQmlComponent {.importc: "QQmlComponent_new3".}
proc fcQQmlComponent_new4(param1: pointer, fileName: struct_miqt_string, mode: cint): ptr cQQmlComponent {.importc: "QQmlComponent_new4".}
proc fcQQmlComponent_new5(param1: pointer, url: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new5".}
proc fcQQmlComponent_new6(param1: pointer, url: pointer, mode: cint): ptr cQQmlComponent {.importc: "QQmlComponent_new6".}
proc fcQQmlComponent_new7(parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new7".}
proc fcQQmlComponent_new8(param1: pointer, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new8".}
proc fcQQmlComponent_new9(param1: pointer, fileName: struct_miqt_string, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new9".}
proc fcQQmlComponent_new10(param1: pointer, fileName: struct_miqt_string, mode: cint, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new10".}
proc fcQQmlComponent_new11(param1: pointer, url: pointer, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new11".}
proc fcQQmlComponent_new12(param1: pointer, url: pointer, mode: cint, parent: pointer): ptr cQQmlComponent {.importc: "QQmlComponent_new12".}
proc fcQQmlComponent_metaObject(self: pointer, ): pointer {.importc: "QQmlComponent_metaObject".}
proc fcQQmlComponent_metacast(self: pointer, param1: cstring): pointer {.importc: "QQmlComponent_metacast".}
proc fcQQmlComponent_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQmlComponent_metacall".}
proc fcQQmlComponent_tr(s: cstring): struct_miqt_string {.importc: "QQmlComponent_tr".}
proc fcQQmlComponent_trUtf8(s: cstring): struct_miqt_string {.importc: "QQmlComponent_trUtf8".}
proc fcQQmlComponent_status(self: pointer, ): cint {.importc: "QQmlComponent_status".}
proc fcQQmlComponent_isNull(self: pointer, ): bool {.importc: "QQmlComponent_isNull".}
proc fcQQmlComponent_isReady(self: pointer, ): bool {.importc: "QQmlComponent_isReady".}
proc fcQQmlComponent_isError(self: pointer, ): bool {.importc: "QQmlComponent_isError".}
proc fcQQmlComponent_isLoading(self: pointer, ): bool {.importc: "QQmlComponent_isLoading".}
proc fcQQmlComponent_errors(self: pointer, ): struct_miqt_array {.importc: "QQmlComponent_errors".}
proc fcQQmlComponent_errorString(self: pointer, ): struct_miqt_string {.importc: "QQmlComponent_errorString".}
proc fcQQmlComponent_progress(self: pointer, ): float64 {.importc: "QQmlComponent_progress".}
proc fcQQmlComponent_url(self: pointer, ): pointer {.importc: "QQmlComponent_url".}
proc fcQQmlComponent_create(self: pointer, context: pointer): pointer {.importc: "QQmlComponent_create".}
proc fcQQmlComponent_createWithInitialProperties(self: pointer, initialProperties: struct_miqt_map): pointer {.importc: "QQmlComponent_createWithInitialProperties".}
proc fcQQmlComponent_setInitialProperties(self: pointer, component: pointer, properties: struct_miqt_map): void {.importc: "QQmlComponent_setInitialProperties".}
proc fcQQmlComponent_beginCreate(self: pointer, param1: pointer): pointer {.importc: "QQmlComponent_beginCreate".}
proc fcQQmlComponent_completeCreate(self: pointer, ): void {.importc: "QQmlComponent_completeCreate".}
proc fcQQmlComponent_createWithQQmlIncubator(self: pointer, param1: pointer): void {.importc: "QQmlComponent_createWithQQmlIncubator".}
proc fcQQmlComponent_creationContext(self: pointer, ): pointer {.importc: "QQmlComponent_creationContext".}
proc fcQQmlComponent_engine(self: pointer, ): pointer {.importc: "QQmlComponent_engine".}
proc fcQQmlComponent_loadUrl(self: pointer, url: pointer): void {.importc: "QQmlComponent_loadUrl".}
proc fcQQmlComponent_loadUrl2(self: pointer, url: pointer, mode: cint): void {.importc: "QQmlComponent_loadUrl2".}
proc fcQQmlComponent_setData(self: pointer, param1: struct_miqt_string, baseUrl: pointer): void {.importc: "QQmlComponent_setData".}
proc fcQQmlComponent_statusChanged(self: pointer, param1: cint): void {.importc: "QQmlComponent_statusChanged".}
proc fQQmlComponent_connect_statusChanged(self: pointer, slot: int) {.importc: "QQmlComponent_connect_statusChanged".}
proc fcQQmlComponent_progressChanged(self: pointer, param1: float64): void {.importc: "QQmlComponent_progressChanged".}
proc fQQmlComponent_connect_progressChanged(self: pointer, slot: int) {.importc: "QQmlComponent_connect_progressChanged".}
proc fcQQmlComponent_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlComponent_tr2".}
proc fcQQmlComponent_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlComponent_tr3".}
proc fcQQmlComponent_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQmlComponent_trUtf82".}
proc fcQQmlComponent_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQmlComponent_trUtf83".}
proc fcQQmlComponent_createWithInitialProperties2(self: pointer, initialProperties: struct_miqt_map, context: pointer): pointer {.importc: "QQmlComponent_createWithInitialProperties2".}
proc fcQQmlComponent_create2(self: pointer, param1: pointer, context: pointer): void {.importc: "QQmlComponent_create2".}
proc fcQQmlComponent_create3(self: pointer, param1: pointer, context: pointer, forContext: pointer): void {.importc: "QQmlComponent_create3".}
proc fQQmlComponent_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQmlComponent_virtualbase_metacall".}
proc fcQQmlComponent_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_metacall".}
proc fQQmlComponent_virtualbase_create(self: pointer, context: pointer): pointer{.importc: "QQmlComponent_virtualbase_create".}
proc fcQQmlComponent_override_virtual_create(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_create".}
proc fQQmlComponent_virtualbase_beginCreate(self: pointer, param1: pointer): pointer{.importc: "QQmlComponent_virtualbase_beginCreate".}
proc fcQQmlComponent_override_virtual_beginCreate(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_beginCreate".}
proc fQQmlComponent_virtualbase_completeCreate(self: pointer, ): void{.importc: "QQmlComponent_virtualbase_completeCreate".}
proc fcQQmlComponent_override_virtual_completeCreate(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_completeCreate".}
proc fQQmlComponent_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQmlComponent_virtualbase_event".}
proc fcQQmlComponent_override_virtual_event(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_event".}
proc fQQmlComponent_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQmlComponent_virtualbase_eventFilter".}
proc fcQQmlComponent_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_eventFilter".}
proc fQQmlComponent_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QQmlComponent_virtualbase_timerEvent".}
proc fcQQmlComponent_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_timerEvent".}
proc fQQmlComponent_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQmlComponent_virtualbase_childEvent".}
proc fcQQmlComponent_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_childEvent".}
proc fQQmlComponent_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQmlComponent_virtualbase_customEvent".}
proc fcQQmlComponent_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_customEvent".}
proc fQQmlComponent_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQmlComponent_virtualbase_connectNotify".}
proc fcQQmlComponent_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_connectNotify".}
proc fQQmlComponent_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQmlComponent_virtualbase_disconnectNotify".}
proc fcQQmlComponent_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQmlComponent_override_virtual_disconnectNotify".}
proc fcQQmlComponent_delete(self: pointer) {.importc: "QQmlComponent_delete".}


func init*(T: type QQmlComponent, h: ptr cQQmlComponent): QQmlComponent =
  T(h: h)
proc create*(T: type QQmlComponent, ): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new())
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new2(param1.h))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, fileName: string): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new3(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName)))))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, fileName: string, mode: QQmlComponentCompilationMode): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new4(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode)))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, url: gen_qurl.QUrl): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new5(param1.h, url.h))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, url: gen_qurl.QUrl, mode: QQmlComponentCompilationMode): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new6(param1.h, url.h, cint(mode)))
proc create2*(T: type QQmlComponent, parent: gen_qobject.QObject): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new7(parent.h))
proc create2*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, parent: gen_qobject.QObject): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new8(param1.h, parent.h))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, fileName: string, parent: gen_qobject.QObject): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new9(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), parent.h))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, fileName: string, mode: QQmlComponentCompilationMode, parent: gen_qobject.QObject): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new10(param1.h, struct_miqt_string(data: fileName, len: csize_t(len(fileName))), cint(mode), parent.h))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, url: gen_qurl.QUrl, parent: gen_qobject.QObject): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new11(param1.h, url.h, parent.h))
proc create*(T: type QQmlComponent, param1: gen_qqmlengine.QQmlEngine, url: gen_qurl.QUrl, mode: QQmlComponentCompilationMode, parent: gen_qobject.QObject): QQmlComponent =

  QQmlComponent.init(fcQQmlComponent_new12(param1.h, url.h, cint(mode), parent.h))
proc metaObject*(self: QQmlComponent, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQQmlComponent_metaObject(self.h))

proc metacast*(self: QQmlComponent, param1: cstring): pointer =

  fcQQmlComponent_metacast(self.h, param1)

proc metacall*(self: QQmlComponent, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQQmlComponent_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QQmlComponent, s: cstring): string =

  let v_ms = fcQQmlComponent_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type QQmlComponent, s: cstring): string =

  let v_ms = fcQQmlComponent_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc status*(self: QQmlComponent, ): QQmlComponentStatus =

  QQmlComponentStatus(fcQQmlComponent_status(self.h))

proc isNull*(self: QQmlComponent, ): bool =

  fcQQmlComponent_isNull(self.h)

proc isReady*(self: QQmlComponent, ): bool =

  fcQQmlComponent_isReady(self.h)

proc isError*(self: QQmlComponent, ): bool =

  fcQQmlComponent_isError(self.h)

proc isLoading*(self: QQmlComponent, ): bool =

  fcQQmlComponent_isLoading(self.h)

proc errors*(self: QQmlComponent, ): seq[gen_qqmlerror.QQmlError] =

  var v_ma = fcQQmlComponent_errors(self.h)
  var vx_ret = newSeq[gen_qqmlerror.QQmlError](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qqmlerror.QQmlError(h: v_outCast[i])
  vx_ret

proc errorString*(self: QQmlComponent, ): string =

  let v_ms = fcQQmlComponent_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc progress*(self: QQmlComponent, ): float64 =

  fcQQmlComponent_progress(self.h)

proc url*(self: QQmlComponent, ): gen_qurl.QUrl =

  gen_qurl.QUrl(h: fcQQmlComponent_url(self.h))

proc create*(self: QQmlComponent, context: gen_qqmlcontext.QQmlContext): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQmlComponent_create(self.h, context.h))

proc createWithInitialProperties*(self: QQmlComponent, initialProperties: Table[string,gen_qvariant.QVariant]): gen_qobject.QObject =

  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  gen_qobject.QObject(h: fcQQmlComponent_createWithInitialProperties(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),)))

proc setInitialProperties*(self: QQmlComponent, component: gen_qobject.QObject, properties: Table[string,gen_qvariant.QVariant]): void =

  var properties_Keys_CArray = newSeq[struct_miqt_string](len(properties))
  var properties_Values_CArray = newSeq[pointer](len(properties))
  var properties_ctr = 0
  for propertiesk, propertiesv in properties:
    properties_Keys_CArray[properties_ctr] = struct_miqt_string(data: properties_k, len: csize_t(len(properties_k)))
    properties_Values_CArray[properties_ctr] = properties_v.h
    properties_ctr += 1

  fcQQmlComponent_setInitialProperties(self.h, component.h, struct_miqt_map(len: csize_t(len(properties)),keys: if len(properties) == 0: nil else: addr(properties_Keys_CArray[0]), values: if len(properties) == 0: nil else: addr(properties_Values_CArray[0]),))

proc beginCreate*(self: QQmlComponent, param1: gen_qqmlcontext.QQmlContext): gen_qobject.QObject =

  gen_qobject.QObject(h: fcQQmlComponent_beginCreate(self.h, param1.h))

proc completeCreate*(self: QQmlComponent, ): void =

  fcQQmlComponent_completeCreate(self.h)

proc createWithQQmlIncubator*(self: QQmlComponent, param1: gen_qqmlincubator.QQmlIncubator): void =

  fcQQmlComponent_createWithQQmlIncubator(self.h, param1.h)

proc creationContext*(self: QQmlComponent, ): gen_qqmlcontext.QQmlContext =

  gen_qqmlcontext.QQmlContext(h: fcQQmlComponent_creationContext(self.h))

proc engine*(self: QQmlComponent, ): gen_qqmlengine.QQmlEngine =

  gen_qqmlengine.QQmlEngine(h: fcQQmlComponent_engine(self.h))

proc loadUrl*(self: QQmlComponent, url: gen_qurl.QUrl): void =

  fcQQmlComponent_loadUrl(self.h, url.h)

proc loadUrl2*(self: QQmlComponent, url: gen_qurl.QUrl, mode: QQmlComponentCompilationMode): void =

  fcQQmlComponent_loadUrl2(self.h, url.h, cint(mode))

proc setData*(self: QQmlComponent, param1: seq[byte], baseUrl: gen_qurl.QUrl): void =

  fcQQmlComponent_setData(self.h, struct_miqt_string(data: cast[cstring](if len(param1) == 0: nil else: unsafeAddr param1[0]), len: csize_t(len(param1))), baseUrl.h)

proc statusChanged*(self: QQmlComponent, param1: QQmlComponentStatus): void =

  fcQQmlComponent_statusChanged(self.h, cint(param1))

proc miqt_exec_callback_QQmlComponent_statusChanged(slot: int, param1: cint) {.exportc.} =
  type Cb = proc(param1: QQmlComponentStatus)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = QQmlComponentStatus(param1)


  nimfunc[](slotval1)

proc onstatusChanged*(self: QQmlComponent, slot: proc(param1: QQmlComponentStatus)) =
  type Cb = proc(param1: QQmlComponentStatus)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQmlComponent_connect_statusChanged(self.h, cast[int](addr tmp[]))
proc progressChanged*(self: QQmlComponent, param1: float64): void =

  fcQQmlComponent_progressChanged(self.h, param1)

proc miqt_exec_callback_QQmlComponent_progressChanged(slot: int, param1: float64) {.exportc.} =
  type Cb = proc(param1: float64)
  let nimfunc = cast[ptr Cb](cast[pointer](slot))
  let slotval1 = param1


  nimfunc[](slotval1)

proc onprogressChanged*(self: QQmlComponent, slot: proc(param1: float64)) =
  type Cb = proc(param1: float64)
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fQQmlComponent_connect_progressChanged(self.h, cast[int](addr tmp[]))
proc tr2*(_: type QQmlComponent, s: cstring, c: cstring): string =

  let v_ms = fcQQmlComponent_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QQmlComponent, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlComponent_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf82*(_: type QQmlComponent, s: cstring, c: cstring): string =

  let v_ms = fcQQmlComponent_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf83*(_: type QQmlComponent, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQQmlComponent_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc createWithInitialProperties2*(self: QQmlComponent, initialProperties: Table[string,gen_qvariant.QVariant], context: gen_qqmlcontext.QQmlContext): gen_qobject.QObject =

  var initialProperties_Keys_CArray = newSeq[struct_miqt_string](len(initialProperties))
  var initialProperties_Values_CArray = newSeq[pointer](len(initialProperties))
  var initialProperties_ctr = 0
  for initialPropertiesk, initialPropertiesv in initialProperties:
    initialProperties_Keys_CArray[initialProperties_ctr] = struct_miqt_string(data: initialProperties_k, len: csize_t(len(initialProperties_k)))
    initialProperties_Values_CArray[initialProperties_ctr] = initialProperties_v.h
    initialProperties_ctr += 1

  gen_qobject.QObject(h: fcQQmlComponent_createWithInitialProperties2(self.h, struct_miqt_map(len: csize_t(len(initialProperties)),keys: if len(initialProperties) == 0: nil else: addr(initialProperties_Keys_CArray[0]), values: if len(initialProperties) == 0: nil else: addr(initialProperties_Values_CArray[0]),), context.h))

proc create2*(self: QQmlComponent, param1: gen_qqmlincubator.QQmlIncubator, context: gen_qqmlcontext.QQmlContext): void =

  fcQQmlComponent_create2(self.h, param1.h, context.h)

proc create3*(self: QQmlComponent, param1: gen_qqmlincubator.QQmlIncubator, context: gen_qqmlcontext.QQmlContext, forContext: gen_qqmlcontext.QQmlContext): void =

  fcQQmlComponent_create3(self.h, param1.h, context.h, forContext.h)

proc callVirtualBase_metacall(self: QQmlComponent, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQQmlComponent_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQmlComponentmetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QQmlComponent, slot: proc(super: QQmlComponentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_metacall(self: ptr cQQmlComponent, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQmlComponent_metacall ".} =
  type Cb = proc(super: QQmlComponentmetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QQmlComponent(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_create(self: QQmlComponent, context: gen_qqmlcontext.QQmlContext): gen_qobject.QObject =


  gen_qobject.QObject(h: fQQmlComponent_virtualbase_create(self.h, context.h))

type QQmlComponentcreateBase* = proc(context: gen_qqmlcontext.QQmlContext): gen_qobject.QObject
proc oncreate*(self: QQmlComponent, slot: proc(super: QQmlComponentcreateBase, context: gen_qqmlcontext.QQmlContext): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentcreateBase, context: gen_qqmlcontext.QQmlContext): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_create(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_create(self: ptr cQQmlComponent, slot: int, context: pointer): pointer {.exportc: "miqt_exec_callback_QQmlComponent_create ".} =
  type Cb = proc(super: QQmlComponentcreateBase, context: gen_qqmlcontext.QQmlContext): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(context: gen_qqmlcontext.QQmlContext): auto =
    callVirtualBase_create(QQmlComponent(h: self), context)
  let slotval1 = gen_qqmlcontext.QQmlContext(h: context)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_beginCreate(self: QQmlComponent, param1: gen_qqmlcontext.QQmlContext): gen_qobject.QObject =


  gen_qobject.QObject(h: fQQmlComponent_virtualbase_beginCreate(self.h, param1.h))

type QQmlComponentbeginCreateBase* = proc(param1: gen_qqmlcontext.QQmlContext): gen_qobject.QObject
proc onbeginCreate*(self: QQmlComponent, slot: proc(super: QQmlComponentbeginCreateBase, param1: gen_qqmlcontext.QQmlContext): gen_qobject.QObject) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentbeginCreateBase, param1: gen_qqmlcontext.QQmlContext): gen_qobject.QObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_beginCreate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_beginCreate(self: ptr cQQmlComponent, slot: int, param1: pointer): pointer {.exportc: "miqt_exec_callback_QQmlComponent_beginCreate ".} =
  type Cb = proc(super: QQmlComponentbeginCreateBase, param1: gen_qqmlcontext.QQmlContext): gen_qobject.QObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qqmlcontext.QQmlContext): auto =
    callVirtualBase_beginCreate(QQmlComponent(h: self), param1)
  let slotval1 = gen_qqmlcontext.QQmlContext(h: param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn.h
proc callVirtualBase_completeCreate(self: QQmlComponent, ): void =


  fQQmlComponent_virtualbase_completeCreate(self.h)

type QQmlComponentcompleteCreateBase* = proc(): void
proc oncompleteCreate*(self: QQmlComponent, slot: proc(super: QQmlComponentcompleteCreateBase): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentcompleteCreateBase): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_completeCreate(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_completeCreate(self: ptr cQQmlComponent, slot: int): void {.exportc: "miqt_exec_callback_QQmlComponent_completeCreate ".} =
  type Cb = proc(super: QQmlComponentcompleteCreateBase): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_completeCreate(QQmlComponent(h: self), )

  nimfunc[](superCall)
proc callVirtualBase_event(self: QQmlComponent, event: gen_qcoreevent.QEvent): bool =


  fQQmlComponent_virtualbase_event(self.h, event.h)

type QQmlComponenteventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QQmlComponent, slot: proc(super: QQmlComponenteventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponenteventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_event(self: ptr cQQmlComponent, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlComponent_event ".} =
  type Cb = proc(super: QQmlComponenteventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QQmlComponent(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QQmlComponent, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQQmlComponent_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQmlComponenteventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QQmlComponent, slot: proc(super: QQmlComponenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_eventFilter(self: ptr cQQmlComponent, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQmlComponent_eventFilter ".} =
  type Cb = proc(super: QQmlComponenteventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QQmlComponent(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QQmlComponent, event: gen_qcoreevent.QTimerEvent): void =


  fQQmlComponent_virtualbase_timerEvent(self.h, event.h)

type QQmlComponenttimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QQmlComponent, slot: proc(super: QQmlComponenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_timerEvent(self: ptr cQQmlComponent, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_timerEvent ".} =
  type Cb = proc(super: QQmlComponenttimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QQmlComponent(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QQmlComponent, event: gen_qcoreevent.QChildEvent): void =


  fQQmlComponent_virtualbase_childEvent(self.h, event.h)

type QQmlComponentchildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QQmlComponent, slot: proc(super: QQmlComponentchildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_childEvent(self: ptr cQQmlComponent, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_childEvent ".} =
  type Cb = proc(super: QQmlComponentchildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QQmlComponent(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QQmlComponent, event: gen_qcoreevent.QEvent): void =


  fQQmlComponent_virtualbase_customEvent(self.h, event.h)

type QQmlComponentcustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QQmlComponent, slot: proc(super: QQmlComponentcustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_customEvent(self: ptr cQQmlComponent, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_customEvent ".} =
  type Cb = proc(super: QQmlComponentcustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QQmlComponent(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QQmlComponent, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlComponent_virtualbase_connectNotify(self.h, signal.h)

type QQmlComponentconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QQmlComponent, slot: proc(super: QQmlComponentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_connectNotify(self: ptr cQQmlComponent, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_connectNotify ".} =
  type Cb = proc(super: QQmlComponentconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QQmlComponent(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QQmlComponent, signal: gen_qmetaobject.QMetaMethod): void =


  fQQmlComponent_virtualbase_disconnectNotify(self.h, signal.h)

type QQmlComponentdisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QQmlComponent, slot: proc(super: QQmlComponentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QQmlComponentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQQmlComponent_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQmlComponent_disconnectNotify(self: ptr cQQmlComponent, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQmlComponent_disconnectNotify ".} =
  type Cb = proc(super: QQmlComponentdisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QQmlComponent(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc delete*(self: QQmlComponent) =
  fcQQmlComponent_delete(self.h)
