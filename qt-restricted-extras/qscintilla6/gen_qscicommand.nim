import Qt6PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt6PrintSupport")
{.compile("gen_qscicommand.cpp", cflags).}


type QsciCommandCommandEnum* = distinct cint
template LineDown*(_: type QsciCommandCommandEnum): untyped = 2300
template LineDownExtend*(_: type QsciCommandCommandEnum): untyped = 2301
template LineDownRectExtend*(_: type QsciCommandCommandEnum): untyped = 2426
template LineScrollDown*(_: type QsciCommandCommandEnum): untyped = 2342
template LineUp*(_: type QsciCommandCommandEnum): untyped = 2302
template LineUpExtend*(_: type QsciCommandCommandEnum): untyped = 2303
template LineUpRectExtend*(_: type QsciCommandCommandEnum): untyped = 2427
template LineScrollUp*(_: type QsciCommandCommandEnum): untyped = 2343
template ScrollToStart*(_: type QsciCommandCommandEnum): untyped = 2628
template ScrollToEnd*(_: type QsciCommandCommandEnum): untyped = 2629
template VerticalCentreCaret*(_: type QsciCommandCommandEnum): untyped = 2619
template ParaDown*(_: type QsciCommandCommandEnum): untyped = 2413
template ParaDownExtend*(_: type QsciCommandCommandEnum): untyped = 2414
template ParaUp*(_: type QsciCommandCommandEnum): untyped = 2415
template ParaUpExtend*(_: type QsciCommandCommandEnum): untyped = 2416
template CharLeft*(_: type QsciCommandCommandEnum): untyped = 2304
template CharLeftExtend*(_: type QsciCommandCommandEnum): untyped = 2305
template CharLeftRectExtend*(_: type QsciCommandCommandEnum): untyped = 2428
template CharRight*(_: type QsciCommandCommandEnum): untyped = 2306
template CharRightExtend*(_: type QsciCommandCommandEnum): untyped = 2307
template CharRightRectExtend*(_: type QsciCommandCommandEnum): untyped = 2429
template WordLeft*(_: type QsciCommandCommandEnum): untyped = 2308
template WordLeftExtend*(_: type QsciCommandCommandEnum): untyped = 2309
template WordRight*(_: type QsciCommandCommandEnum): untyped = 2310
template WordRightExtend*(_: type QsciCommandCommandEnum): untyped = 2311
template WordLeftEnd*(_: type QsciCommandCommandEnum): untyped = 2439
template WordLeftEndExtend*(_: type QsciCommandCommandEnum): untyped = 2440
template WordRightEnd*(_: type QsciCommandCommandEnum): untyped = 2441
template WordRightEndExtend*(_: type QsciCommandCommandEnum): untyped = 2442
template WordPartLeft*(_: type QsciCommandCommandEnum): untyped = 2390
template WordPartLeftExtend*(_: type QsciCommandCommandEnum): untyped = 2391
template WordPartRight*(_: type QsciCommandCommandEnum): untyped = 2392
template WordPartRightExtend*(_: type QsciCommandCommandEnum): untyped = 2393
template Home*(_: type QsciCommandCommandEnum): untyped = 2312
template HomeExtend*(_: type QsciCommandCommandEnum): untyped = 2313
template HomeRectExtend*(_: type QsciCommandCommandEnum): untyped = 2430
template HomeDisplay*(_: type QsciCommandCommandEnum): untyped = 2345
template HomeDisplayExtend*(_: type QsciCommandCommandEnum): untyped = 2346
template HomeWrap*(_: type QsciCommandCommandEnum): untyped = 2349
template HomeWrapExtend*(_: type QsciCommandCommandEnum): untyped = 2450
template VCHome*(_: type QsciCommandCommandEnum): untyped = 2331
template VCHomeExtend*(_: type QsciCommandCommandEnum): untyped = 2332
template VCHomeRectExtend*(_: type QsciCommandCommandEnum): untyped = 2431
template VCHomeWrap*(_: type QsciCommandCommandEnum): untyped = 2453
template VCHomeWrapExtend*(_: type QsciCommandCommandEnum): untyped = 2454
template LineEnd*(_: type QsciCommandCommandEnum): untyped = 2314
template LineEndExtend*(_: type QsciCommandCommandEnum): untyped = 2315
template LineEndRectExtend*(_: type QsciCommandCommandEnum): untyped = 2432
template LineEndDisplay*(_: type QsciCommandCommandEnum): untyped = 2347
template LineEndDisplayExtend*(_: type QsciCommandCommandEnum): untyped = 2348
template LineEndWrap*(_: type QsciCommandCommandEnum): untyped = 2451
template LineEndWrapExtend*(_: type QsciCommandCommandEnum): untyped = 2452
template DocumentStart*(_: type QsciCommandCommandEnum): untyped = 2316
template DocumentStartExtend*(_: type QsciCommandCommandEnum): untyped = 2317
template DocumentEnd*(_: type QsciCommandCommandEnum): untyped = 2318
template DocumentEndExtend*(_: type QsciCommandCommandEnum): untyped = 2319
template PageUp*(_: type QsciCommandCommandEnum): untyped = 2320
template PageUpExtend*(_: type QsciCommandCommandEnum): untyped = 2321
template PageUpRectExtend*(_: type QsciCommandCommandEnum): untyped = 2433
template PageDown*(_: type QsciCommandCommandEnum): untyped = 2322
template PageDownExtend*(_: type QsciCommandCommandEnum): untyped = 2323
template PageDownRectExtend*(_: type QsciCommandCommandEnum): untyped = 2434
template StutteredPageUp*(_: type QsciCommandCommandEnum): untyped = 2435
template StutteredPageUpExtend*(_: type QsciCommandCommandEnum): untyped = 2436
template StutteredPageDown*(_: type QsciCommandCommandEnum): untyped = 2437
template StutteredPageDownExtend*(_: type QsciCommandCommandEnum): untyped = 2438
template Delete*(_: type QsciCommandCommandEnum): untyped = 2180
template DeleteBack*(_: type QsciCommandCommandEnum): untyped = 2326
template DeleteBackNotLine*(_: type QsciCommandCommandEnum): untyped = 2344
template DeleteWordLeft*(_: type QsciCommandCommandEnum): untyped = 2335
template DeleteWordRight*(_: type QsciCommandCommandEnum): untyped = 2336
template DeleteWordRightEnd*(_: type QsciCommandCommandEnum): untyped = 2518
template DeleteLineLeft*(_: type QsciCommandCommandEnum): untyped = 2395
template DeleteLineRight*(_: type QsciCommandCommandEnum): untyped = 2396
template LineDelete*(_: type QsciCommandCommandEnum): untyped = 2338
template LineCut*(_: type QsciCommandCommandEnum): untyped = 2337
template LineCopy*(_: type QsciCommandCommandEnum): untyped = 2455
template LineTranspose*(_: type QsciCommandCommandEnum): untyped = 2339
template LineDuplicate*(_: type QsciCommandCommandEnum): untyped = 2404
template SelectAll*(_: type QsciCommandCommandEnum): untyped = 2013
template MoveSelectedLinesUp*(_: type QsciCommandCommandEnum): untyped = 2620
template MoveSelectedLinesDown*(_: type QsciCommandCommandEnum): untyped = 2621
template SelectionDuplicate*(_: type QsciCommandCommandEnum): untyped = 2469
template SelectionLowerCase*(_: type QsciCommandCommandEnum): untyped = 2340
template SelectionUpperCase*(_: type QsciCommandCommandEnum): untyped = 2341
template SelectionCut*(_: type QsciCommandCommandEnum): untyped = 2177
template SelectionCopy*(_: type QsciCommandCommandEnum): untyped = 2178
template Paste*(_: type QsciCommandCommandEnum): untyped = 2179
template EditToggleOvertype*(_: type QsciCommandCommandEnum): untyped = 2324
template Newline*(_: type QsciCommandCommandEnum): untyped = 2329
template Formfeed*(_: type QsciCommandCommandEnum): untyped = 2330
template Tab*(_: type QsciCommandCommandEnum): untyped = 2327
template Backtab*(_: type QsciCommandCommandEnum): untyped = 2328
template Cancel*(_: type QsciCommandCommandEnum): untyped = 2325
template Undo*(_: type QsciCommandCommandEnum): untyped = 2176
template Redo*(_: type QsciCommandCommandEnum): untyped = 2011
template ZoomIn*(_: type QsciCommandCommandEnum): untyped = 2333
template ZoomOut*(_: type QsciCommandCommandEnum): untyped = 2334
template ReverseLines*(_: type QsciCommandCommandEnum): untyped = 2354

import gen_qscicommand_types
export gen_qscicommand_types


type cQsciCommand*{.exportc: "QsciCommand", incompleteStruct.} = object

proc fcQsciCommand_command(self: pointer, ): cint {.importc: "QsciCommand_command".}
proc fcQsciCommand_execute(self: pointer, ): void {.importc: "QsciCommand_execute".}
proc fcQsciCommand_setKey(self: pointer, key: cint): void {.importc: "QsciCommand_setKey".}
proc fcQsciCommand_setAlternateKey(self: pointer, altkey: cint): void {.importc: "QsciCommand_setAlternateKey".}
proc fcQsciCommand_key(self: pointer, ): cint {.importc: "QsciCommand_key".}
proc fcQsciCommand_alternateKey(self: pointer, ): cint {.importc: "QsciCommand_alternateKey".}
proc fcQsciCommand_validKey(key: cint): bool {.importc: "QsciCommand_validKey".}
proc fcQsciCommand_description(self: pointer, ): struct_miqt_string {.importc: "QsciCommand_description".}
proc fcQsciCommand_delete(self: pointer) {.importc: "QsciCommand_delete".}

proc command*(self: gen_qscicommand_types.QsciCommand, ): cint =
  cint(fcQsciCommand_command(self.h))

proc execute*(self: gen_qscicommand_types.QsciCommand, ): void =
  fcQsciCommand_execute(self.h)

proc setKey*(self: gen_qscicommand_types.QsciCommand, key: cint): void =
  fcQsciCommand_setKey(self.h, key)

proc setAlternateKey*(self: gen_qscicommand_types.QsciCommand, altkey: cint): void =
  fcQsciCommand_setAlternateKey(self.h, altkey)

proc key*(self: gen_qscicommand_types.QsciCommand, ): cint =
  fcQsciCommand_key(self.h)

proc alternateKey*(self: gen_qscicommand_types.QsciCommand, ): cint =
  fcQsciCommand_alternateKey(self.h)

proc validKey*(_: type gen_qscicommand_types.QsciCommand, key: cint): bool =
  fcQsciCommand_validKey(key)

proc description*(self: gen_qscicommand_types.QsciCommand, ): string =
  let v_ms = fcQsciCommand_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: gen_qscicommand_types.QsciCommand) =
  fcQsciCommand_delete(self.h)
