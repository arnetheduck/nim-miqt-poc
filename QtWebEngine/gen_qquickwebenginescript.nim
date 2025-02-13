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
  gen_qobjectdefs_types,
  gen_qurl_types
export
  gen_qcoreevent_types,
  gen_qmetaobject_types,
  gen_qobject,
  gen_qobjectdefs_types,
  gen_qurl_types

type cQQuickWebEngineScript*{.exportc: "QQuickWebEngineScript", incompleteStruct.} = object

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
proc fcQQuickWebEngineScript_connect_nameChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_nameChanged".}
proc fcQQuickWebEngineScript_sourceUrlChanged(self: pointer, url: pointer): void {.importc: "QQuickWebEngineScript_sourceUrlChanged".}
proc fcQQuickWebEngineScript_connect_sourceUrlChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_sourceUrlChanged".}
proc fcQQuickWebEngineScript_sourceCodeChanged(self: pointer, code: struct_miqt_string): void {.importc: "QQuickWebEngineScript_sourceCodeChanged".}
proc fcQQuickWebEngineScript_connect_sourceCodeChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_sourceCodeChanged".}
proc fcQQuickWebEngineScript_injectionPointChanged(self: pointer, injectionPoint: cint): void {.importc: "QQuickWebEngineScript_injectionPointChanged".}
proc fcQQuickWebEngineScript_connect_injectionPointChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_injectionPointChanged".}
proc fcQQuickWebEngineScript_worldIdChanged(self: pointer, scriptWorldId: cint): void {.importc: "QQuickWebEngineScript_worldIdChanged".}
proc fcQQuickWebEngineScript_connect_worldIdChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_worldIdChanged".}
proc fcQQuickWebEngineScript_runOnSubframesChanged(self: pointer, on: bool): void {.importc: "QQuickWebEngineScript_runOnSubframesChanged".}
proc fcQQuickWebEngineScript_connect_runOnSubframesChanged(self: pointer, slot: int) {.importc: "QQuickWebEngineScript_connect_runOnSubframesChanged".}
proc fcQQuickWebEngineScript_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWebEngineScript_tr2".}
proc fcQQuickWebEngineScript_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWebEngineScript_tr3".}
proc fcQQuickWebEngineScript_trUtf82(s: cstring, c: cstring): struct_miqt_string {.importc: "QQuickWebEngineScript_trUtf82".}
proc fcQQuickWebEngineScript_trUtf83(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QQuickWebEngineScript_trUtf83".}
type cQQuickWebEngineScriptVTable = object
  destructor*: proc(vtbl: ptr cQQuickWebEngineScriptVTable, self: ptr cQQuickWebEngineScript) {.cdecl, raises:[], gcsafe.}
  metaObject*: proc(vtbl, self: pointer, ): pointer {.cdecl, raises: [], gcsafe.}
  metacast*: proc(vtbl, self: pointer, param1: cstring): pointer {.cdecl, raises: [], gcsafe.}
  metacall*: proc(vtbl, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl, raises: [], gcsafe.}
  timerEvent*: proc(vtbl, self: pointer, e: pointer): void {.cdecl, raises: [], gcsafe.}
  event*: proc(vtbl, self: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  eventFilter*: proc(vtbl, self: pointer, watched: pointer, event: pointer): bool {.cdecl, raises: [], gcsafe.}
  childEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  customEvent*: proc(vtbl, self: pointer, event: pointer): void {.cdecl, raises: [], gcsafe.}
  connectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
  disconnectNotify*: proc(vtbl, self: pointer, signal: pointer): void {.cdecl, raises: [], gcsafe.}
proc fcQQuickWebEngineScript_virtualbase_metaObject(self: pointer, ): pointer {.importc: "QQuickWebEngineScript_virtualbase_metaObject".}
proc fcQQuickWebEngineScript_virtualbase_metacast(self: pointer, param1: cstring): pointer {.importc: "QQuickWebEngineScript_virtualbase_metacast".}
proc fcQQuickWebEngineScript_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QQuickWebEngineScript_virtualbase_metacall".}
proc fcQQuickWebEngineScript_virtualbase_timerEvent(self: pointer, e: pointer): void {.importc: "QQuickWebEngineScript_virtualbase_timerEvent".}
proc fcQQuickWebEngineScript_virtualbase_event(self: pointer, event: pointer): bool {.importc: "QQuickWebEngineScript_virtualbase_event".}
proc fcQQuickWebEngineScript_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool {.importc: "QQuickWebEngineScript_virtualbase_eventFilter".}
proc fcQQuickWebEngineScript_virtualbase_childEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineScript_virtualbase_childEvent".}
proc fcQQuickWebEngineScript_virtualbase_customEvent(self: pointer, event: pointer): void {.importc: "QQuickWebEngineScript_virtualbase_customEvent".}
proc fcQQuickWebEngineScript_virtualbase_connectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWebEngineScript_virtualbase_connectNotify".}
proc fcQQuickWebEngineScript_virtualbase_disconnectNotify(self: pointer, signal: pointer): void {.importc: "QQuickWebEngineScript_virtualbase_disconnectNotify".}
proc fcQQuickWebEngineScript_protectedbase_sender(self: pointer, ): pointer {.importc: "QQuickWebEngineScript_protectedbase_sender".}
proc fcQQuickWebEngineScript_protectedbase_senderSignalIndex(self: pointer, ): cint {.importc: "QQuickWebEngineScript_protectedbase_senderSignalIndex".}
proc fcQQuickWebEngineScript_protectedbase_receivers(self: pointer, signal: cstring): cint {.importc: "QQuickWebEngineScript_protectedbase_receivers".}
proc fcQQuickWebEngineScript_protectedbase_isSignalConnected(self: pointer, signal: pointer): bool {.importc: "QQuickWebEngineScript_protectedbase_isSignalConnected".}
proc fcQQuickWebEngineScript_new(vtbl: pointer, ): ptr cQQuickWebEngineScript {.importc: "QQuickWebEngineScript_new".}
proc fcQQuickWebEngineScript_new2(vtbl: pointer, parent: pointer): ptr cQQuickWebEngineScript {.importc: "QQuickWebEngineScript_new2".}
proc fcQQuickWebEngineScript_staticMetaObject(): pointer {.importc: "QQuickWebEngineScript_staticMetaObject".}
proc fcQQuickWebEngineScript_delete(self: pointer) {.importc: "QQuickWebEngineScript_delete".}

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
proc miqt_exec_callback_cQQuickWebEngineScript_nameChanged(slot: int, name: struct_miqt_string) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_nameChanged".} =
  let nimfunc = cast[ptr QQuickWebEngineScriptnameChangedSlot](cast[pointer](slot))
  let vname_ms = name
  let vnamex_ret = string.fromBytes(toOpenArrayByte(vname_ms.data, 0, int(vname_ms.len)-1))
  c_free(vname_ms.data)
  let slotval1 = vnamex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWebEngineScript_nameChanged_release(slot: int) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_nameChanged_release".} =
  let nimfunc = cast[ref QQuickWebEngineScriptnameChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onnameChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptnameChangedSlot) =
  var tmp = new QQuickWebEngineScriptnameChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_connect_nameChanged(self.h, cast[int](addr tmp[]))

proc sourceUrlChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, url: gen_qurl_types.QUrl): void =
  fcQQuickWebEngineScript_sourceUrlChanged(self.h, url.h)

type QQuickWebEngineScriptsourceUrlChangedSlot* = proc(url: gen_qurl_types.QUrl)
proc miqt_exec_callback_cQQuickWebEngineScript_sourceUrlChanged(slot: int, url: pointer) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_sourceUrlChanged".} =
  let nimfunc = cast[ptr QQuickWebEngineScriptsourceUrlChangedSlot](cast[pointer](slot))
  let slotval1 = gen_qurl_types.QUrl(h: url)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWebEngineScript_sourceUrlChanged_release(slot: int) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_sourceUrlChanged_release".} =
  let nimfunc = cast[ref QQuickWebEngineScriptsourceUrlChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceUrlChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptsourceUrlChangedSlot) =
  var tmp = new QQuickWebEngineScriptsourceUrlChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_connect_sourceUrlChanged(self.h, cast[int](addr tmp[]))

proc sourceCodeChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, code: string): void =
  fcQQuickWebEngineScript_sourceCodeChanged(self.h, struct_miqt_string(data: code, len: csize_t(len(code))))

type QQuickWebEngineScriptsourceCodeChangedSlot* = proc(code: string)
proc miqt_exec_callback_cQQuickWebEngineScript_sourceCodeChanged(slot: int, code: struct_miqt_string) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_sourceCodeChanged".} =
  let nimfunc = cast[ptr QQuickWebEngineScriptsourceCodeChangedSlot](cast[pointer](slot))
  let vcode_ms = code
  let vcodex_ret = string.fromBytes(toOpenArrayByte(vcode_ms.data, 0, int(vcode_ms.len)-1))
  c_free(vcode_ms.data)
  let slotval1 = vcodex_ret

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWebEngineScript_sourceCodeChanged_release(slot: int) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_sourceCodeChanged_release".} =
  let nimfunc = cast[ref QQuickWebEngineScriptsourceCodeChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onsourceCodeChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptsourceCodeChangedSlot) =
  var tmp = new QQuickWebEngineScriptsourceCodeChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_connect_sourceCodeChanged(self.h, cast[int](addr tmp[]))

proc injectionPointChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, injectionPoint: cint): void =
  fcQQuickWebEngineScript_injectionPointChanged(self.h, cint(injectionPoint))

type QQuickWebEngineScriptinjectionPointChangedSlot* = proc(injectionPoint: cint)
proc miqt_exec_callback_cQQuickWebEngineScript_injectionPointChanged(slot: int, injectionPoint: cint) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_injectionPointChanged".} =
  let nimfunc = cast[ptr QQuickWebEngineScriptinjectionPointChangedSlot](cast[pointer](slot))
  let slotval1 = cint(injectionPoint)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWebEngineScript_injectionPointChanged_release(slot: int) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_injectionPointChanged_release".} =
  let nimfunc = cast[ref QQuickWebEngineScriptinjectionPointChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc oninjectionPointChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptinjectionPointChangedSlot) =
  var tmp = new QQuickWebEngineScriptinjectionPointChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_connect_injectionPointChanged(self.h, cast[int](addr tmp[]))

proc worldIdChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, scriptWorldId: cint): void =
  fcQQuickWebEngineScript_worldIdChanged(self.h, cint(scriptWorldId))

type QQuickWebEngineScriptworldIdChangedSlot* = proc(scriptWorldId: cint)
proc miqt_exec_callback_cQQuickWebEngineScript_worldIdChanged(slot: int, scriptWorldId: cint) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_worldIdChanged".} =
  let nimfunc = cast[ptr QQuickWebEngineScriptworldIdChangedSlot](cast[pointer](slot))
  let slotval1 = cint(scriptWorldId)

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWebEngineScript_worldIdChanged_release(slot: int) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_worldIdChanged_release".} =
  let nimfunc = cast[ref QQuickWebEngineScriptworldIdChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onworldIdChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptworldIdChangedSlot) =
  var tmp = new QQuickWebEngineScriptworldIdChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_connect_worldIdChanged(self.h, cast[int](addr tmp[]))

proc runOnSubframesChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, on: bool): void =
  fcQQuickWebEngineScript_runOnSubframesChanged(self.h, on)

type QQuickWebEngineScriptrunOnSubframesChangedSlot* = proc(on: bool)
proc miqt_exec_callback_cQQuickWebEngineScript_runOnSubframesChanged(slot: int, on: bool) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_runOnSubframesChanged".} =
  let nimfunc = cast[ptr QQuickWebEngineScriptrunOnSubframesChangedSlot](cast[pointer](slot))
  let slotval1 = on

  nimfunc[](slotval1)

proc miqt_exec_callback_cQQuickWebEngineScript_runOnSubframesChanged_release(slot: int) {.exportc: "miqt_exec_callback_QQuickWebEngineScript_runOnSubframesChanged_release".} =
  let nimfunc = cast[ref QQuickWebEngineScriptrunOnSubframesChangedSlot](cast[pointer](slot))
  GC_unref(nimfunc)

proc onrunOnSubframesChanged*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, slot: QQuickWebEngineScriptrunOnSubframesChangedSlot) =
  var tmp = new QQuickWebEngineScriptrunOnSubframesChangedSlot
  tmp[] = slot
  GC_ref(tmp)
  fcQQuickWebEngineScript_connect_runOnSubframesChanged(self.h, cast[int](addr tmp[]))

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

type QQuickWebEngineScriptmetaObjectProc* = proc(self: QQuickWebEngineScript): gen_qobjectdefs_types.QMetaObject {.raises: [], gcsafe.}
type QQuickWebEngineScriptmetacastProc* = proc(self: QQuickWebEngineScript, param1: cstring): pointer {.raises: [], gcsafe.}
type QQuickWebEngineScriptmetacallProc* = proc(self: QQuickWebEngineScript, param1: cint, param2: cint, param3: pointer): cint {.raises: [], gcsafe.}
type QQuickWebEngineScripttimerEventProc* = proc(self: QQuickWebEngineScript, e: gen_qcoreevent_types.QTimerEvent): void {.raises: [], gcsafe.}
type QQuickWebEngineScripteventProc* = proc(self: QQuickWebEngineScript, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickWebEngineScripteventFilterProc* = proc(self: QQuickWebEngineScript, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool {.raises: [], gcsafe.}
type QQuickWebEngineScriptchildEventProc* = proc(self: QQuickWebEngineScript, event: gen_qcoreevent_types.QChildEvent): void {.raises: [], gcsafe.}
type QQuickWebEngineScriptcustomEventProc* = proc(self: QQuickWebEngineScript, event: gen_qcoreevent_types.QEvent): void {.raises: [], gcsafe.}
type QQuickWebEngineScriptconnectNotifyProc* = proc(self: QQuickWebEngineScript, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickWebEngineScriptdisconnectNotifyProc* = proc(self: QQuickWebEngineScript, signal: gen_qmetaobject_types.QMetaMethod): void {.raises: [], gcsafe.}
type QQuickWebEngineScriptVTable* = object
  vtbl: cQQuickWebEngineScriptVTable
  metaObject*: QQuickWebEngineScriptmetaObjectProc
  metacast*: QQuickWebEngineScriptmetacastProc
  metacall*: QQuickWebEngineScriptmetacallProc
  timerEvent*: QQuickWebEngineScripttimerEventProc
  event*: QQuickWebEngineScripteventProc
  eventFilter*: QQuickWebEngineScripteventFilterProc
  childEvent*: QQuickWebEngineScriptchildEventProc
  customEvent*: QQuickWebEngineScriptcustomEventProc
  connectNotify*: QQuickWebEngineScriptconnectNotifyProc
  disconnectNotify*: QQuickWebEngineScriptdisconnectNotifyProc
proc QQuickWebEngineScriptmetaObject*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineScript_virtualbase_metaObject(self.h))

proc miqt_exec_callback_cQQuickWebEngineScript_metaObject(vtbl: pointer, self: pointer): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let virtualReturn = vtbl[].metaObject(self)
  virtualReturn.h

proc QQuickWebEngineScriptmetacast*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, param1: cstring): pointer =
  fcQQuickWebEngineScript_virtualbase_metacast(self.h, param1)

proc miqt_exec_callback_cQQuickWebEngineScript_metacast(vtbl: pointer, self: pointer, param1: cstring): pointer {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = (param1)
  let virtualReturn = vtbl[].metacast(self, slotval1)
  virtualReturn

proc QQuickWebEngineScriptmetacall*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, param1: cint, param2: cint, param3: pointer): cint =
  fcQQuickWebEngineScript_virtualbase_metacall(self.h, cint(param1), param2, param3)

proc miqt_exec_callback_cQQuickWebEngineScript_metacall(vtbl: pointer, self: pointer, param1: cint, param2: cint, param3: pointer): cint {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = cint(param1)
  let slotval2 = param2
  let slotval3 = param3
  let virtualReturn = vtbl[].metacall(self, slotval1, slotval2, slotval3)
  virtualReturn

proc QQuickWebEngineScripttimerEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, e: gen_qcoreevent_types.QTimerEvent): void =
  fcQQuickWebEngineScript_virtualbase_timerEvent(self.h, e.h)

proc miqt_exec_callback_cQQuickWebEngineScript_timerEvent(vtbl: pointer, self: pointer, e: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = gen_qcoreevent_types.QTimerEvent(h: e)
  vtbl[].timerEvent(self, slotval1)

proc QQuickWebEngineScriptevent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWebEngineScript_virtualbase_event(self.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineScript_event(vtbl: pointer, self: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].event(self, slotval1)
  virtualReturn

proc QQuickWebEngineScripteventFilter*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, watched: gen_qobject_types.QObject, event: gen_qcoreevent_types.QEvent): bool =
  fcQQuickWebEngineScript_virtualbase_eventFilter(self.h, watched.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineScript_eventFilter(vtbl: pointer, self: pointer, watched: pointer, event: pointer): bool {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = gen_qobject_types.QObject(h: watched)
  let slotval2 = gen_qcoreevent_types.QEvent(h: event)
  let virtualReturn = vtbl[].eventFilter(self, slotval1, slotval2)
  virtualReturn

proc QQuickWebEngineScriptchildEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, event: gen_qcoreevent_types.QChildEvent): void =
  fcQQuickWebEngineScript_virtualbase_childEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineScript_childEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = gen_qcoreevent_types.QChildEvent(h: event)
  vtbl[].childEvent(self, slotval1)

proc QQuickWebEngineScriptcustomEvent*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, event: gen_qcoreevent_types.QEvent): void =
  fcQQuickWebEngineScript_virtualbase_customEvent(self.h, event.h)

proc miqt_exec_callback_cQQuickWebEngineScript_customEvent(vtbl: pointer, self: pointer, event: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = gen_qcoreevent_types.QEvent(h: event)
  vtbl[].customEvent(self, slotval1)

proc QQuickWebEngineScriptconnectNotify*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWebEngineScript_virtualbase_connectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickWebEngineScript_connectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].connectNotify(self, slotval1)

proc QQuickWebEngineScriptdisconnectNotify*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, signal: gen_qmetaobject_types.QMetaMethod): void =
  fcQQuickWebEngineScript_virtualbase_disconnectNotify(self.h, signal.h)

proc miqt_exec_callback_cQQuickWebEngineScript_disconnectNotify(vtbl: pointer, self: pointer, signal: pointer): void {.cdecl.} =
  let vtbl = cast[ptr QQuickWebEngineScriptVTable](vtbl)
  let self = QQuickWebEngineScript(h: self)
  let slotval1 = gen_qmetaobject_types.QMetaMethod(h: signal)
  vtbl[].disconnectNotify(self, slotval1)

proc sender*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): gen_qobject_types.QObject =
  gen_qobject_types.QObject(h: fcQQuickWebEngineScript_protectedbase_sender(self.h))

proc senderSignalIndex*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, ): cint =
  fcQQuickWebEngineScript_protectedbase_senderSignalIndex(self.h)

proc receivers*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, signal: cstring): cint =
  fcQQuickWebEngineScript_protectedbase_receivers(self.h, signal)

proc isSignalConnected*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript, signal: gen_qmetaobject_types.QMetaMethod): bool =
  fcQQuickWebEngineScript_protectedbase_isSignalConnected(self.h, signal.h)

proc create*(T: type gen_qquickwebenginescript_types.QQuickWebEngineScript,
    vtbl: ref QQuickWebEngineScriptVTable = nil): gen_qquickwebenginescript_types.QQuickWebEngineScript =
  let vtbl = if vtbl == nil: new QQuickWebEngineScriptVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickWebEngineScriptVTable, _: ptr cQQuickWebEngineScript) {.cdecl.} =
    let vtbl = cast[ref QQuickWebEngineScriptVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickWebEngineScript_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickWebEngineScript_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickWebEngineScript_metacall
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickWebEngineScript_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickWebEngineScript_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickWebEngineScript_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickWebEngineScript_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickWebEngineScript_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickWebEngineScript_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickWebEngineScript_disconnectNotify
  gen_qquickwebenginescript_types.QQuickWebEngineScript(h: fcQQuickWebEngineScript_new(addr(vtbl[]), ))

proc create*(T: type gen_qquickwebenginescript_types.QQuickWebEngineScript,
    parent: gen_qobject_types.QObject,
    vtbl: ref QQuickWebEngineScriptVTable = nil): gen_qquickwebenginescript_types.QQuickWebEngineScript =
  let vtbl = if vtbl == nil: new QQuickWebEngineScriptVTable else: vtbl
  GC_ref(vtbl)
  vtbl.vtbl.destructor = proc(vtbl: ptr cQQuickWebEngineScriptVTable, _: ptr cQQuickWebEngineScript) {.cdecl.} =
    let vtbl = cast[ref QQuickWebEngineScriptVTable](vtbl)
    GC_unref(vtbl)
  if not isNil(vtbl.metaObject):
    vtbl[].vtbl.metaObject = miqt_exec_callback_cQQuickWebEngineScript_metaObject
  if not isNil(vtbl.metacast):
    vtbl[].vtbl.metacast = miqt_exec_callback_cQQuickWebEngineScript_metacast
  if not isNil(vtbl.metacall):
    vtbl[].vtbl.metacall = miqt_exec_callback_cQQuickWebEngineScript_metacall
  if not isNil(vtbl.timerEvent):
    vtbl[].vtbl.timerEvent = miqt_exec_callback_cQQuickWebEngineScript_timerEvent
  if not isNil(vtbl.event):
    vtbl[].vtbl.event = miqt_exec_callback_cQQuickWebEngineScript_event
  if not isNil(vtbl.eventFilter):
    vtbl[].vtbl.eventFilter = miqt_exec_callback_cQQuickWebEngineScript_eventFilter
  if not isNil(vtbl.childEvent):
    vtbl[].vtbl.childEvent = miqt_exec_callback_cQQuickWebEngineScript_childEvent
  if not isNil(vtbl.customEvent):
    vtbl[].vtbl.customEvent = miqt_exec_callback_cQQuickWebEngineScript_customEvent
  if not isNil(vtbl.connectNotify):
    vtbl[].vtbl.connectNotify = miqt_exec_callback_cQQuickWebEngineScript_connectNotify
  if not isNil(vtbl.disconnectNotify):
    vtbl[].vtbl.disconnectNotify = miqt_exec_callback_cQQuickWebEngineScript_disconnectNotify
  gen_qquickwebenginescript_types.QQuickWebEngineScript(h: fcQQuickWebEngineScript_new2(addr(vtbl[]), parent.h))

proc staticMetaObject*(_: type gen_qquickwebenginescript_types.QQuickWebEngineScript): gen_qobjectdefs_types.QMetaObject =
  gen_qobjectdefs_types.QMetaObject(h: fcQQuickWebEngineScript_staticMetaObject())
proc delete*(self: gen_qquickwebenginescript_types.QQuickWebEngineScript) =
  fcQQuickWebEngineScript_delete(self.h)
