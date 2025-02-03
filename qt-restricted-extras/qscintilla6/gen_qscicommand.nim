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

const cflags = gorge("pkg-config -cflags Qt6PrintSupport")
{.compile("gen_qscicommand.cpp", cflags).}


type QsciCommandCommand* = cint
const
  QsciCommandLineDown* = 2300
  QsciCommandLineDownExtend* = 2301
  QsciCommandLineDownRectExtend* = 2426
  QsciCommandLineScrollDown* = 2342
  QsciCommandLineUp* = 2302
  QsciCommandLineUpExtend* = 2303
  QsciCommandLineUpRectExtend* = 2427
  QsciCommandLineScrollUp* = 2343
  QsciCommandScrollToStart* = 2628
  QsciCommandScrollToEnd* = 2629
  QsciCommandVerticalCentreCaret* = 2619
  QsciCommandParaDown* = 2413
  QsciCommandParaDownExtend* = 2414
  QsciCommandParaUp* = 2415
  QsciCommandParaUpExtend* = 2416
  QsciCommandCharLeft* = 2304
  QsciCommandCharLeftExtend* = 2305
  QsciCommandCharLeftRectExtend* = 2428
  QsciCommandCharRight* = 2306
  QsciCommandCharRightExtend* = 2307
  QsciCommandCharRightRectExtend* = 2429
  QsciCommandWordLeft* = 2308
  QsciCommandWordLeftExtend* = 2309
  QsciCommandWordRight* = 2310
  QsciCommandWordRightExtend* = 2311
  QsciCommandWordLeftEnd* = 2439
  QsciCommandWordLeftEndExtend* = 2440
  QsciCommandWordRightEnd* = 2441
  QsciCommandWordRightEndExtend* = 2442
  QsciCommandWordPartLeft* = 2390
  QsciCommandWordPartLeftExtend* = 2391
  QsciCommandWordPartRight* = 2392
  QsciCommandWordPartRightExtend* = 2393
  QsciCommandHome* = 2312
  QsciCommandHomeExtend* = 2313
  QsciCommandHomeRectExtend* = 2430
  QsciCommandHomeDisplay* = 2345
  QsciCommandHomeDisplayExtend* = 2346
  QsciCommandHomeWrap* = 2349
  QsciCommandHomeWrapExtend* = 2450
  QsciCommandVCHome* = 2331
  QsciCommandVCHomeExtend* = 2332
  QsciCommandVCHomeRectExtend* = 2431
  QsciCommandVCHomeWrap* = 2453
  QsciCommandVCHomeWrapExtend* = 2454
  QsciCommandLineEnd* = 2314
  QsciCommandLineEndExtend* = 2315
  QsciCommandLineEndRectExtend* = 2432
  QsciCommandLineEndDisplay* = 2347
  QsciCommandLineEndDisplayExtend* = 2348
  QsciCommandLineEndWrap* = 2451
  QsciCommandLineEndWrapExtend* = 2452
  QsciCommandDocumentStart* = 2316
  QsciCommandDocumentStartExtend* = 2317
  QsciCommandDocumentEnd* = 2318
  QsciCommandDocumentEndExtend* = 2319
  QsciCommandPageUp* = 2320
  QsciCommandPageUpExtend* = 2321
  QsciCommandPageUpRectExtend* = 2433
  QsciCommandPageDown* = 2322
  QsciCommandPageDownExtend* = 2323
  QsciCommandPageDownRectExtend* = 2434
  QsciCommandStutteredPageUp* = 2435
  QsciCommandStutteredPageUpExtend* = 2436
  QsciCommandStutteredPageDown* = 2437
  QsciCommandStutteredPageDownExtend* = 2438
  QsciCommandDelete* = 2180
  QsciCommandDeleteBack* = 2326
  QsciCommandDeleteBackNotLine* = 2344
  QsciCommandDeleteWordLeft* = 2335
  QsciCommandDeleteWordRight* = 2336
  QsciCommandDeleteWordRightEnd* = 2518
  QsciCommandDeleteLineLeft* = 2395
  QsciCommandDeleteLineRight* = 2396
  QsciCommandLineDelete* = 2338
  QsciCommandLineCut* = 2337
  QsciCommandLineCopy* = 2455
  QsciCommandLineTranspose* = 2339
  QsciCommandLineDuplicate* = 2404
  QsciCommandSelectAll* = 2013
  QsciCommandMoveSelectedLinesUp* = 2620
  QsciCommandMoveSelectedLinesDown* = 2621
  QsciCommandSelectionDuplicate* = 2469
  QsciCommandSelectionLowerCase* = 2340
  QsciCommandSelectionUpperCase* = 2341
  QsciCommandSelectionCut* = 2177
  QsciCommandSelectionCopy* = 2178
  QsciCommandPaste* = 2179
  QsciCommandEditToggleOvertype* = 2324
  QsciCommandNewline* = 2329
  QsciCommandFormfeed* = 2330
  QsciCommandTab* = 2327
  QsciCommandBacktab* = 2328
  QsciCommandCancel* = 2325
  QsciCommandUndo* = 2176
  QsciCommandRedo* = 2011
  QsciCommandZoomIn* = 2333
  QsciCommandZoomOut* = 2334
  QsciCommandReverseLines* = 2354



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


func init*(T: type QsciCommand, h: ptr cQsciCommand): QsciCommand =
  T(h: h)
proc command*(self: QsciCommand, ): QsciCommandCommand =

  QsciCommandCommand(fcQsciCommand_command(self.h))

proc execute*(self: QsciCommand, ): void =

  fcQsciCommand_execute(self.h)

proc setKey*(self: QsciCommand, key: cint): void =

  fcQsciCommand_setKey(self.h, key)

proc setAlternateKey*(self: QsciCommand, altkey: cint): void =

  fcQsciCommand_setAlternateKey(self.h, altkey)

proc key*(self: QsciCommand, ): cint =

  fcQsciCommand_key(self.h)

proc alternateKey*(self: QsciCommand, ): cint =

  fcQsciCommand_alternateKey(self.h)

proc validKey*(_: type QsciCommand, key: cint): bool =

  fcQsciCommand_validKey(key)

proc description*(self: QsciCommand, ): string =

  let v_ms = fcQsciCommand_description(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QsciCommand) =
  fcQsciCommand_delete(self.h)
