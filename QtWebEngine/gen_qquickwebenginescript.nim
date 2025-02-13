import Qt5WebEngine_libs

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

const cflags = gorge("pkg-config --cflags Qt5WebEngine")
{.compile("gen_qquickwebenginescript.cpp", cflags).}


type QQuickWebEngineScriptInjectionPointEnum* = distinct cint
template Deferred*(_: type QQuickWebEngineScriptInjectionPointEnum): untyped = 0
template DocumentReady*(_: type QQuickWebEngineScriptInjectionPointEnum): untyped = 1
template DocumentCreation*(_: type QQuickWebEngineScriptInjectionPointEnum): untyped = 2


type QQuickWebEngineScriptScriptWorldIdEnum* = distinct cint
template MainWorld*(_: type QQuickWebEngineScriptScriptWorldIdEnum): untyped = 0
template ApplicationWorld*(_: type QQuickWebEngineScriptScriptWorldIdEnum): untyped = 1
template UserWorld*(_: type QQuickWebEngineScriptScriptWorldIdEnum): untyped = 2


import gen_qquickwebenginescript_types
export gen_qquickwebenginescript_types

import
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qurl_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQQuickWebEngineScript*{.exportc: "QQuickWebEngineScript", incompleteStruct.} = object

proc fcQQuickWebEngineScript_new(): ptr cQQuickWebEngineScript {.importc: "QQuickWebEngineScript_new".}
proc fcQQuickWebEngineScript_new2(parent: pointer): ptr cQQuickWebEngineScript {.importc: "QQuickWebEngineScript_new2".}
proc fcQQuickWebEngineScript_metaObject(self: pointer, ): pointer {.importc: "QQuickWebEngineScript_metaObject".}
proc fcQQuickWebEngineScript_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWebEngineScript_metacast".}
proc fcQQuickWebEngineScript_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWebEngineScript_metacall".}
proc fcQQuickWebEngineScript_tr(s: cstring): struct_miqt_string {.importc: "QQuickWebEngineScript_tr".}
proc fcQQuickWebEngineScript_trUtf8(s: cstring): struct_miqt_string {.importc: "QQuickWebEngineScript_trUtf8".}
proc fcQQuickWebEngineScript_toString(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineScript_toString".}
proc fcQQuickWebEngineScript_name(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineScript_name".}
proc fcQQuickWebEngineScript_sourceUrl(self: pointer, ): pointer {.importc: "QQuickWebEngineScript_sourceUrl".}
proc fcQQuickWebEngineScript_sourceCode(self: pointer, ): struct_miqt_string {.importc: "QQuickWebEngineScript_sourceCode".}
proc fcQQuickWebEngineScript_injectionPoint(self: pointer, ): cint {.importc: "QQuickWebEngineScript_injectionPoint".}
proc fcQQuickWebEngineScript_worldId(self: pointer, ): cint {.importc: "QQuickWebEngineScript_worldId".}
proc fcQQuickWebEngineScript_runOnSubframes(self: pointer, ): bool {.importc: "QQuickWebEngineScript_runOnSubframes".}
proc fcQQuickWebEngineScript_setName(self: pointer, name: struct_miqt_string): void {.importc: "QQuickWebEngineScript_setName".}
proc fcQQuickWebEngineScript_setSourceUrl(self: pointer, url: pointer): void {.importc: "QQuickWebEngineScript_setSourceUrl".}
proc fcQQuickWebEngineScript_setSourceCode(self: pointer, code: struct_miqt_string): void {.importc: "QQuickWebEngineScript_setSourceCode".}
proc fcQQuickWebEngineScript_setInjectionPoint(self: pointer, injectionPoint: cint): void {.importc: "QQuickWebEngineScript_setInjectionPoint".}
proc fcQQuickWebEngineScript_setWorldId(self: pointer, scriptWorldId: cint): void {.importc: "QQuickWebEngineScript_setWorldId".}
proc fcQQuickWebEngineScript_setRunOnSubframes(self: pointer, on: bool): void {.importc: "QQuickWebEngineScript_setRunOnSubframes".}
proc fcQQuickWebEngineScript_nameChanged(self: pointer, name: struct_miqt_string): void {.importc: "QQuickWebEngineScript_nameChanged".}
proc fQQuickWebEngineScript_connect_nameChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_nameChanged".}
proc fcQQuickWebEngineScript_sourceUrlChanged(self: pointer, url: pointer): void {.importc: "QQuickWebEngineScript_sourceUrlChanged".}
proc fQQuickWebEngineScript_connect_sourceUrlChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_sourceUrlChanged".}
proc fcQQuickWebEngineScript_sourceCodeChanged(self: pointer, code: struct_miqt_string): void {.importc: "QQuickWebEngineScript_sourceCodeChanged".}
proc fQQuickWebEngineScript_connect_sourceCodeChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_sourceCodeChanged".}
proc fcQQuickWebEngineScript_injectionPointChanged(self: pointer, injectionPoint: cint): void {.importc: "QQuickWebEngineScript_injectionPointChanged".}
proc fQQuickWebEngineScript_connect_injectionPointChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_injectionPointChanged".}
proc fcQQuickWebEngineScript_worldIdChanged(self: pointer, scriptWorldId: cint): void {.importc: "QQuickWebEngineScript_worldIdChanged".}
proc fQQuickWebEngineScript_connect_worldIdChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_worldIdChanged".}
proc fcQQuickWebEngineScript_runOnSubframesChanged(self: pointer, on: bool): void {.importc: "QQuickWebEngineScript_runOnSubframesChanged".}
proc fQQuickWebEngineScript_connect_runOnSubframesChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_runOnSubframesChanged".}
proc fcQQuickWebEngineScript_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWebEngineScript_tr2".}
proc fcQQuickWebEngineScript_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWebEngineScript_tr3".}
proc fcQQuickWebEngineScript_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWebEngineScript_trUtf82".}
proc fcQQuickWebEngineScript_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWebEngineScript_trUtf83".}
proc fQQuickWebEngineScript_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QQuickWebEngineScript_virtualbase_metaObject".}
proc fcQQuickWebEngineScript_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_metaObject".}
proc fQQuickWebEngineScript_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QQuickWebEngineScript_virtualbase_metacast".}
proc fcQQuickWebEngineScript_override_virtual_metacast(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_metacast".}
proc fQQuickWebEngineScript_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QQuickWebEngineScript_virtualbase_metacall".}
proc fcQQuickWebEngineScript_override_virtual_metacall(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_metacall".}
proc fQQuickWebEngineScript_virtualbase_timerEvent(self: pointer, e: pointer): void{.importc: "QQuickWebEngineScript_virtualbase_timerEvent".}
proc fcQQuickWebEngineScript_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_timerEvent".}
proc fQQuickWebEngineScript_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QQuickWebEngineScript_virtualbase_event".}
proc fcQQuickWebEngineScript_override_virtual_event(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_event".}
proc fQQuickWebEngineScript_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QQuickWebEngineScript_virtualbase_eventFilter".}
proc fcQQuickWebEngineScript_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_eventFilter".}
proc fQQuickWebEngineScript_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QQuickWebEngineScript_virtualbase_childEvent".}
proc fcQQuickWebEngineScript_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_childEvent".}
proc fQQuickWebEngineScript_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QQuickWebEngineScript_virtualbase_customEvent".}
proc fcQQuickWebEngineScript_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_customEvent".}
proc fQQuickWebEngineScript_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWebEngineScript_virtualbase_connectNotify".}
proc fcQQuickWebEngineScript_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_connectNotify".}
proc fQQuickWebEngineScript_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QQuickWebEngineScript_virtualbase_disconnectNotify".}
proc fcQQuickWebEngineScript_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_override_virtual_disconnectNotify".}
proc fcQQuickWebEngineScript_staticMetaObject(): pointer {.importc: "QQuickWebEngineScript_staticMetaObject".}
proc fcQQuickWebEngineScript_delete(self: pointer) {.importc: "QQuickWebEngineScript_delete".}


func init*(T: type gen_qquickwebenginescript_types.QQuickWebEngineScript, h: ptr cQQuickWebEngineScript): gen_qquickwebenginescript_types.QQuickWebEngineScript =
  T(h: h)
proc create*(T: type gen_qquickwebenginescript_types.QQuickWebEngineScript, ): gen_qquickwebenginescript_types.QQuickWebEngineScript =
  gen_qquickwebenginescript_types.QQuickWebEngineScript.init(fcQQuickWebEngineScript_new())

proc create*(T: type gen_qquickwebenginescript_types.QQuickWebEngineScript, parent: gen_qobject_types.QObject): gen_qquickwebenginescript_types.QQuickWebEngineScript =
  gen_qquickwebenginescript_types.QQuickWebEngineScript.init(fcQQuickWebEngineScript_new2(parent.h))

proc metaObject*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineScript_metaObject(self.h))

proc metacast*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, param1: cstring): pointer =
  fcQQuickWebEngineScript_metacast(self.h, param1)

proc metacall*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWebEngineScript_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript, s: cstring): string =
  let v_ms = fcQQuickWebEngineScript_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript, s: cstring): string =
  let v_ms = fcQQuickWebEngineScript_trUtf8(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc toString*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): string =
  let v_ms = fcQQuickWebEngineScript_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc name*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): string =
  let v_ms = fcQQuickWebEngineScript_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc sourceUrl*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): gen_qurl_types.QUrl =
  gen_qurl_types.QUrl(h: fcQQuickWebEngineScript_sourceUrl(self.h))

proc sourceCode*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): string =
  let v_ms = fcQQuickWebEngineScript_sourceCode(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc injectionPoint*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): cint =
  cint(fcQQuickWebEngineScript_injectionPoint(self.h))

proc worldId*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): cint =
  cint(fcQQuickWebEngineScript_worldId(self.h))

proc runOnSubframes*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): bool =
  fcQQuickWebEngineScript_runOnSubframes(self.h)

proc setName*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, name: string): void =
  fcQQuickWebEngineScript_setName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc setSourceUrl*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, url: gen_qurl_types.QUrl): void =
  fcQQuickWebEngineScript_setSourceUrl(self.h, url.h)

proc setSourceCode*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, code: string): void =
  fcQQuickWebEngineScript_setSourceCode(self.h, struct_miqt_string(data: code, len: csize_t(len(code))))

proc setInjectionPoint*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, injectionPoint: cint): void =
  fcQQuickWebEngineScript_setInjectionPoint(self.h, cint(injectionPoint))

proc setWorldId*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, scriptWorldId: cint): void =
  fcQQuickWebEngineScript_setWorldId(self.h, cint(scriptWorldId))

proc setRunOnSubframes*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, on: bool): void =
  fcQQuickWebEngineScript_setRunOnSubframes(self.h, on)

proc nameChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, name: string): void =
  fcQQuickWebEngineScript_nameChanged(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

type QQuickWebEngineScriptnameChangedSlot* = proc(name: string)
proc miqt_exec_callback_QQuickWebEngineScript_nameChanged(slot: int, name: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineScriptnameChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc onnameChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptnameChangedSlot) =
  var tmp = new QQuickWebEngineScriptnameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWebEngineScript_connect_nameChanged(self.h, cast[int](addr tmp[]))

proc sourceUrlChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, url: gen_qurl_types.QUrl): void =
  fcQQuickWebEngineScript_sourceUrlChanged(self.h, url.h)

type QQuickWebEngineScriptsourceUrlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_QQuickWebEngineScript_sourceUrlChanged(slot: int, url: pointer) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineScriptsourceUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc onsourceUrlChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptsourceUrlChangedSlot) =
  var tmp = new QQuickWebEngineScriptsourceUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWebEngineScript_connect_sourceUrlChanged(self.h, cast[int](addr tmp[]))

proc sourceCodeChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, code: string): void =
  fcQQuickWebEngineScript_sourceCodeChanged(self.h, struct_miqt_string(data: code, len: csize_t(len(code))))

type QQuickWebEngineScriptsourceCodeChangedSlot* = proc(code: string)
proc miqt_exec_callback_QQuickWebEngineScript_sourceCodeChanged(slot: int, code: struct_miqt_string) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineScriptsourceCodeChangedSlot](cast[pointer](slot))
  let vcode_ms = code
  let vcodex_ret = string.fromBytes(toOpenArrayByte(vcode_ms.data, 0, int(vcode_ms.len)-1))
  c_free(vcode_ms.data)
  let slotval1 = vcodex_ret

  nimfunc[](slotval1)

proc onsourceCodeChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptsourceCodeChangedSlot) =
  var tmp = new QQuickWebEngineScriptsourceCodeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWebEngineScript_connect_sourceCodeChanged(self.h, cast[int](addr tmp[]))

proc injectionPointChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, injectionPoint: cint): void =
  fcQQuickWebEngineScript_injectionPointChanged(self.h, cint(injectionPoint))

type QQuickWebEngineScriptinjectionPointChangedSlot* = proc(injectionPoint: cint)
proc miqt_exec_callback_QQuickWebEngineScript_injectionPointChanged(slot: int, injectionPoint: cint) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineScriptinjectionPointChangedSlot](cast[pointer](slot))
  let slotval1 = cint(injectionPoint)

  nimfunc[](slotval1)

proc oninjectionPointChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptinjectionPointChangedSlot) =
  var tmp = new QQuickWebEngineScriptinjectionPointChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWebEngineScript_connect_injectionPointChanged(self.h, cast[int](addr tmp[]))

proc worldIdChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, scriptWorldId: cint): void =
  fcQQuickWebEngineScript_worldIdChanged(self.h, cint(scriptWorldId))

type QQuickWebEngineScriptworldIdChangedSlot* = proc(scriptWorldId: cint)
proc miqt_exec_callback_QQuickWebEngineScript_worldIdChanged(slot: int, scriptWorldId: cint) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineScriptworldIdChangedSlot](cast[pointer](slot))
  let slotval1 = cint(scriptWorldId)

  nimfunc[](slotval1)

proc onworldIdChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptworldIdChangedSlot) =
  var tmp = new QQuickWebEngineScriptworldIdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWebEngineScript_connect_worldIdChanged(self.h, cast[int](addr tmp[]))

proc runOnSubframesChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, on: bool): void =
  fcQQuickWebEngineScript_runOnSubframesChanged(self.h, on)

type QQuickWebEngineScriptrunOnSubframesChangedSlot* = proc(on: bool)
proc miqt_exec_callback_QQuickWebEngineScript_runOnSubframesChanged(slot: int, on: bool) {.exportc.} =
  let nimfunc = cast[ptr QQuickWebEngineScriptrunOnSubframesChangedSlot](cast[pointer](slot))
  let slotval1 = on

  nimfunc[](slotval1)

proc onrunOnSubframesChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptrunOnSubframesChangedSlot) =
  var tmp = new QQuickWebEngineScriptrunOnSubframesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fQQuickWebEngineScript_connect_runOnSubframesChanged(self.h, cast[int](addr tmp[]))

proc tr*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript, s: cstring, c: cstring): string =
  let v_ms = fcQQuickWebEngineScript_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickWebEngineScript_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript, s: cstring, c: cstring): string =
  let v_ms = fcQQuickWebEngineScript_trUtf82(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc trUtf8*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript, s: cstring, c: cstring, n: cint): string =
  let v_ms = fcQQuickWebEngineScript_trUtf83(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc QQuickWebEngineScriptmetaObject*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fQQuickWebEngineScript_virtualbase_metaObject(self.h))

type QQuickWebEngineScriptmetaObjectProc* = proc(): gen_qobjectdefs_types.QMetaObject
proc onmetaObject*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptmetaObjectProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScriptmetaObjectProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_metaObject(self: ptr cQQuickWebEngineScript, slot: int): pointer {.exportc: "miqt_exec_callback_QQuickWebEngineScript_metaObject ".} =
  var nimfunc = cast[ptr QQuickWebEngineScriptmetaObjectProc](cast[pointer](slot))

  let virtualReturn = nimfunc[]( )

  virtualReturn.h
proc QQuickWebEngineScriptmetacast*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, param1: cstring): pointer =
  fQQuickWebEngineScript_virtualbase_metacast(self.h, param1)

type QQuickWebEngineScriptmetacastProc* = proc(param1: cstring): pointer
proc onmetacast*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptmetacastProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScriptmetacastProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_metacast(self: ptr cQQuickWebEngineScript, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QQuickWebEngineScript_metacast ".} =
  var nimfunc = cast[ptr QQuickWebEngineScriptmetacastProc](cast[pointer](slot))
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickWebEngineScriptmetacall*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, param1: cint, param2: cint, param3: pointer): cint =
  fQQuickWebEngineScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QQuickWebEngineScriptmetacallProc* = proc(param1: cint, param2: cint, param3: pointer): cint
proc onmetacall*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptmetacallProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScriptmetacallProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_metacall(self: ptr cQQuickWebEngineScript, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QQuickWebEngineScript_metacall ".} =
  var nimfunc = cast[ptr QQuickWebEngineScriptmetacallProc](cast[pointer](slot))
  let slotval1 = cint(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](slotval1, slotval2, slotval3 )

  virtualReturn
proc QQuickWebEngineScripttimerEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, e: gen_qcoreevent_types.QTimerEvent): void =
  fQQuickWebEngineScript_virtualbase_timerEvent(self.h, e.h)

type QQuickWebEngineScripttimerEventProc* = proc(e: gen_qcoreevent_types.QTimerEvent): void
proc ontimerEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScripttimerEventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScripttimerEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_timerEvent(self: ptr cQQuickWebEngineScript, slot: int, e: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineScript_timerEvent ".} =
  var nimfunc = cast[ptr QQuickWebEngineScripttimerEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)


  nimfunc[](slotval1)
proc QQuickWebEngineScriptevent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickWebEngineScript_virtualbase_event(self.h, event.h)

type QQuickWebEngineScripteventProc* = proc(event: gen_qcoreevent_types.QEvent): bool
proc onevent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScripteventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScripteventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_event(self: ptr cQQuickWebEngineScript, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickWebEngineScript_event ".} =
  var nimfunc = cast[ptr QQuickWebEngineScripteventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1 )

  virtualReturn
proc QQuickWebEngineScripteventFilter*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fQQuickWebEngineScript_virtualbase_eventFilter(self.h, watched.h, event.h)

type QQuickWebEngineScripteventFilterProc* = proc(watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool
proc oneventFilter*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScripteventFilterProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScripteventFilterProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_eventFilter(self: ptr cQQuickWebEngineScript, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QQuickWebEngineScript_eventFilter ".} =
  var nimfunc = cast[ptr QQuickWebEngineScripteventFilterProc](cast[pointer](slot))
  let slotval1 = gen_qobject_types.QObject(h: watched)

  let slotval2 = gen_qcoreevent_types.QEvent(h: event)


  let virtualReturn = nimfunc[](slotval1, slotval2 )

  virtualReturn
proc QQuickWebEngineScriptchildEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, event: gen_qcoreevent_types.QChildEvent): void =
  fQQuickWebEngineScript_virtualbase_childEvent(self.h, event.h)

type QQuickWebEngineScriptchildEventProc* = proc(event: gen_qcoreevent_types.QChildEvent): void
proc onchildEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptchildEventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScriptchildEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_childEvent(self: ptr cQQuickWebEngineScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineScript_childEvent ".} =
  var nimfunc = cast[ptr QQuickWebEngineScriptchildEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWebEngineScriptcustomEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, event: gen_qcoreevent_types.QEvent): void =
  fQQuickWebEngineScript_virtualbase_customEvent(self.h, event.h)

type QQuickWebEngineScriptcustomEventProc* = proc(event: gen_qcoreevent_types.QEvent): void
proc oncustomEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptcustomEventProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScriptcustomEventProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_customEvent(self: ptr cQQuickWebEngineScript, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineScript_customEvent ".} =
  var nimfunc = cast[ptr QQuickWebEngineScriptcustomEventProc](cast[pointer](slot))
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)


  nimfunc[](slotval1)
proc QQuickWebEngineScriptconnectNotify*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickWebEngineScript_virtualbase_connectNotify(self.h, signal.h)

type QQuickWebEngineScriptconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc onconnectNotify*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScriptconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_connectNotify(self: ptr cQQuickWebEngineScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineScript_connectNotify ".} =
  var nimfunc = cast[ptr QQuickWebEngineScriptconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc QQuickWebEngineScriptdisconnectNotify*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fQQuickWebEngineScript_virtualbase_disconnectNotify(self.h, signal.h)

type QQuickWebEngineScriptdisconnectNotifyProc* = proc(signal: gen_qmetaobject_types.QMetaMethod): void
proc ondisconnectNotify*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptdisconnectNotifyProc) =
  # TODO check subclass
  var tmp = new QQuickWebEngineScriptdisconnectNotifyProc
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QQuickWebEngineScript_disconnectNotify(self: ptr cQQuickWebEngineScript, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QQuickWebEngineScript_disconnectNotify ".} =
  var nimfunc = cast[ptr QQuickWebEngineScriptdisconnectNotifyProc](cast[pointer](slot))
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)


  nimfunc[](slotval1)
proc staticMetaObject*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQQuickWebEngineScript_staticMetaObject())
proc delete*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript) =
  fcQQuickWebEngineScript_delete(self.h)
