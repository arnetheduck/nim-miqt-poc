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
{.compile("gen_qkeysequence.cpp", cflags).}


type QKeySequenceStandardKey* = cint
const
  QKeySequenceUnknownKey* = 0
  QKeySequenceHelpContents* = 1
  QKeySequenceWhatsThis* = 2
  QKeySequenceOpen* = 3
  QKeySequenceClose* = 4
  QKeySequenceSave* = 5
  QKeySequenceNew* = 6
  QKeySequenceDelete* = 7
  QKeySequenceCut* = 8
  QKeySequenceCopy* = 9
  QKeySequencePaste* = 10
  QKeySequenceUndo* = 11
  QKeySequenceRedo* = 12
  QKeySequenceBack* = 13
  QKeySequenceForward* = 14
  QKeySequenceRefresh* = 15
  QKeySequenceZoomIn* = 16
  QKeySequenceZoomOut* = 17
  QKeySequencePrint* = 18
  QKeySequenceAddTab* = 19
  QKeySequenceNextChild* = 20
  QKeySequencePreviousChild* = 21
  QKeySequenceFind* = 22
  QKeySequenceFindNext* = 23
  QKeySequenceFindPrevious* = 24
  QKeySequenceReplace* = 25
  QKeySequenceSelectAll* = 26
  QKeySequenceBold* = 27
  QKeySequenceItalic* = 28
  QKeySequenceUnderline* = 29
  QKeySequenceMoveToNextChar* = 30
  QKeySequenceMoveToPreviousChar* = 31
  QKeySequenceMoveToNextWord* = 32
  QKeySequenceMoveToPreviousWord* = 33
  QKeySequenceMoveToNextLine* = 34
  QKeySequenceMoveToPreviousLine* = 35
  QKeySequenceMoveToNextPage* = 36
  QKeySequenceMoveToPreviousPage* = 37
  QKeySequenceMoveToStartOfLine* = 38
  QKeySequenceMoveToEndOfLine* = 39
  QKeySequenceMoveToStartOfBlock* = 40
  QKeySequenceMoveToEndOfBlock* = 41
  QKeySequenceMoveToStartOfDocument* = 42
  QKeySequenceMoveToEndOfDocument* = 43
  QKeySequenceSelectNextChar* = 44
  QKeySequenceSelectPreviousChar* = 45
  QKeySequenceSelectNextWord* = 46
  QKeySequenceSelectPreviousWord* = 47
  QKeySequenceSelectNextLine* = 48
  QKeySequenceSelectPreviousLine* = 49
  QKeySequenceSelectNextPage* = 50
  QKeySequenceSelectPreviousPage* = 51
  QKeySequenceSelectStartOfLine* = 52
  QKeySequenceSelectEndOfLine* = 53
  QKeySequenceSelectStartOfBlock* = 54
  QKeySequenceSelectEndOfBlock* = 55
  QKeySequenceSelectStartOfDocument* = 56
  QKeySequenceSelectEndOfDocument* = 57
  QKeySequenceDeleteStartOfWord* = 58
  QKeySequenceDeleteEndOfWord* = 59
  QKeySequenceDeleteEndOfLine* = 60
  QKeySequenceInsertParagraphSeparator* = 61
  QKeySequenceInsertLineSeparator* = 62
  QKeySequenceSaveAs* = 63
  QKeySequencePreferences* = 64
  QKeySequenceQuit* = 65
  QKeySequenceFullScreen* = 66
  QKeySequenceDeselect* = 67
  QKeySequenceDeleteCompleteLine* = 68
  QKeySequenceBackspace* = 69
  QKeySequenceCancel* = 70



type QKeySequenceSequenceFormat* = cint
const
  QKeySequenceNativeText* = 0
  QKeySequencePortableText* = 1



type QKeySequenceSequenceMatch* = cint
const
  QKeySequenceNoMatch* = 0
  QKeySequencePartialMatch* = 1
  QKeySequenceExactMatch* = 2



import gen_qkeysequence_types
export gen_qkeysequence_types

import
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qvariant
export
  gen_qnamespace,
  gen_qobjectdefs,
  gen_qvariant

type cQKeySequence*{.exportc: "QKeySequence", incompleteStruct.} = object

proc fcQKeySequence_new(): ptr cQKeySequence {.importc: "QKeySequence_new".}
proc fcQKeySequence_new2(key: struct_miqt_string): ptr cQKeySequence {.importc: "QKeySequence_new2".}
proc fcQKeySequence_new3(k1: cint): ptr cQKeySequence {.importc: "QKeySequence_new3".}
proc fcQKeySequence_new4(k1: pointer): ptr cQKeySequence {.importc: "QKeySequence_new4".}
proc fcQKeySequence_new5(ks: pointer): ptr cQKeySequence {.importc: "QKeySequence_new5".}
proc fcQKeySequence_new6(key: cint): ptr cQKeySequence {.importc: "QKeySequence_new6".}
proc fcQKeySequence_new7(key: struct_miqt_string, format: cint): ptr cQKeySequence {.importc: "QKeySequence_new7".}
proc fcQKeySequence_new8(k1: cint, k2: cint): ptr cQKeySequence {.importc: "QKeySequence_new8".}
proc fcQKeySequence_new9(k1: cint, k2: cint, k3: cint): ptr cQKeySequence {.importc: "QKeySequence_new9".}
proc fcQKeySequence_new10(k1: cint, k2: cint, k3: cint, k4: cint): ptr cQKeySequence {.importc: "QKeySequence_new10".}
proc fcQKeySequence_new11(k1: pointer, k2: pointer): ptr cQKeySequence {.importc: "QKeySequence_new11".}
proc fcQKeySequence_new12(k1: pointer, k2: pointer, k3: pointer): ptr cQKeySequence {.importc: "QKeySequence_new12".}
proc fcQKeySequence_new13(k1: pointer, k2: pointer, k3: pointer, k4: pointer): ptr cQKeySequence {.importc: "QKeySequence_new13".}
proc fcQKeySequence_count(self: pointer, ): cint {.importc: "QKeySequence_count".}
proc fcQKeySequence_isEmpty(self: pointer, ): bool {.importc: "QKeySequence_isEmpty".}
proc fcQKeySequence_toString(self: pointer, ): struct_miqt_string {.importc: "QKeySequence_toString".}
proc fcQKeySequence_fromString(str: struct_miqt_string): pointer {.importc: "QKeySequence_fromString".}
proc fcQKeySequence_listFromString(str: struct_miqt_string): struct_miqt_array {.importc: "QKeySequence_listFromString".}
proc fcQKeySequence_listToString(list: struct_miqt_array): struct_miqt_string {.importc: "QKeySequence_listToString".}
proc fcQKeySequence_matches(self: pointer, seq: pointer): cint {.importc: "QKeySequence_matches".}
proc fcQKeySequence_mnemonic(text: struct_miqt_string): pointer {.importc: "QKeySequence_mnemonic".}
proc fcQKeySequence_keyBindings(key: cint): struct_miqt_array {.importc: "QKeySequence_keyBindings".}
proc fcQKeySequence_ToQVariant(self: pointer, ): pointer {.importc: "QKeySequence_ToQVariant".}
proc fcQKeySequence_operatorSubscript(self: pointer, i: cuint): pointer {.importc: "QKeySequence_operatorSubscript".}
proc fcQKeySequence_operatorAssign(self: pointer, other: pointer): void {.importc: "QKeySequence_operatorAssign".}
proc fcQKeySequence_swap(self: pointer, other: pointer): void {.importc: "QKeySequence_swap".}
proc fcQKeySequence_operatorEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorEqual".}
proc fcQKeySequence_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorNotEqual".}
proc fcQKeySequence_operatorLesser(self: pointer, ks: pointer): bool {.importc: "QKeySequence_operatorLesser".}
proc fcQKeySequence_operatorGreater(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorGreater".}
proc fcQKeySequence_operatorLesserOrEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorLesserOrEqual".}
proc fcQKeySequence_operatorGreaterOrEqual(self: pointer, other: pointer): bool {.importc: "QKeySequence_operatorGreaterOrEqual".}
proc fcQKeySequence_isDetached(self: pointer, ): bool {.importc: "QKeySequence_isDetached".}
proc fcQKeySequence_toString1(self: pointer, format: cint): struct_miqt_string {.importc: "QKeySequence_toString1".}
proc fcQKeySequence_fromString2(str: struct_miqt_string, format: cint): pointer {.importc: "QKeySequence_fromString2".}
proc fcQKeySequence_listFromString2(str: struct_miqt_string, format: cint): struct_miqt_array {.importc: "QKeySequence_listFromString2".}
proc fcQKeySequence_listToString2(list: struct_miqt_array, format: cint): struct_miqt_string {.importc: "QKeySequence_listToString2".}
proc fcQKeySequence_staticMetaObject(): pointer {.importc: "QKeySequence_staticMetaObject".}
proc fcQKeySequence_delete(self: pointer) {.importc: "QKeySequence_delete".}


func init*(T: type QKeySequence, h: ptr cQKeySequence): QKeySequence =
  T(h: h)
proc create*(T: type QKeySequence, ): QKeySequence =

  QKeySequence.init(fcQKeySequence_new())
proc create*(T: type QKeySequence, key: string): QKeySequence =

  QKeySequence.init(fcQKeySequence_new2(struct_miqt_string(data: key, len: csize_t(len(key)))))
proc create*(T: type QKeySequence, k1: cint): QKeySequence =

  QKeySequence.init(fcQKeySequence_new3(k1))
proc create*(T: type QKeySequence, k1: gen_qnamespace.QKeyCombination): QKeySequence =

  QKeySequence.init(fcQKeySequence_new4(k1.h))
proc create2*(T: type QKeySequence, ks: QKeySequence): QKeySequence =

  QKeySequence.init(fcQKeySequence_new5(ks.h))
proc create2*(T: type QKeySequence, key: QKeySequenceStandardKey): QKeySequence =

  QKeySequence.init(fcQKeySequence_new6(cint(key)))
proc create*(T: type QKeySequence, key: string, format: QKeySequenceSequenceFormat): QKeySequence =

  QKeySequence.init(fcQKeySequence_new7(struct_miqt_string(data: key, len: csize_t(len(key))), cint(format)))
proc create*(T: type QKeySequence, k1: cint, k2: cint): QKeySequence =

  QKeySequence.init(fcQKeySequence_new8(k1, k2))
proc create*(T: type QKeySequence, k1: cint, k2: cint, k3: cint): QKeySequence =

  QKeySequence.init(fcQKeySequence_new9(k1, k2, k3))
proc create*(T: type QKeySequence, k1: cint, k2: cint, k3: cint, k4: cint): QKeySequence =

  QKeySequence.init(fcQKeySequence_new10(k1, k2, k3, k4))
proc create*(T: type QKeySequence, k1: gen_qnamespace.QKeyCombination, k2: gen_qnamespace.QKeyCombination): QKeySequence =

  QKeySequence.init(fcQKeySequence_new11(k1.h, k2.h))
proc create*(T: type QKeySequence, k1: gen_qnamespace.QKeyCombination, k2: gen_qnamespace.QKeyCombination, k3: gen_qnamespace.QKeyCombination): QKeySequence =

  QKeySequence.init(fcQKeySequence_new12(k1.h, k2.h, k3.h))
proc create*(T: type QKeySequence, k1: gen_qnamespace.QKeyCombination, k2: gen_qnamespace.QKeyCombination, k3: gen_qnamespace.QKeyCombination, k4: gen_qnamespace.QKeyCombination): QKeySequence =

  QKeySequence.init(fcQKeySequence_new13(k1.h, k2.h, k3.h, k4.h))
proc count*(self: QKeySequence, ): cint =

  fcQKeySequence_count(self.h)

proc isEmpty*(self: QKeySequence, ): bool =

  fcQKeySequence_isEmpty(self.h)

proc toString*(self: QKeySequence, ): string =

  let v_ms = fcQKeySequence_toString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString*(_: type QKeySequence, str: string): QKeySequence =

  QKeySequence(h: fcQKeySequence_fromString(struct_miqt_string(data: str, len: csize_t(len(str)))))

proc listFromString*(_: type QKeySequence, str: string): seq[QKeySequence] =

  var v_ma = fcQKeySequence_listFromString(struct_miqt_string(data: str, len: csize_t(len(str))))
  var vx_ret = newSeq[QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QKeySequence(h: v_outCast[i])
  vx_ret

proc listToString*(_: type QKeySequence, list: seq[QKeySequence]): string =

  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  let v_ms = fcQKeySequence_listToString(struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc matches*(self: QKeySequence, seq: QKeySequence): QKeySequenceSequenceMatch =

  QKeySequenceSequenceMatch(fcQKeySequence_matches(self.h, seq.h))

proc mnemonic*(_: type QKeySequence, text: string): QKeySequence =

  QKeySequence(h: fcQKeySequence_mnemonic(struct_miqt_string(data: text, len: csize_t(len(text)))))

proc keyBindings*(_: type QKeySequence, key: QKeySequenceStandardKey): seq[QKeySequence] =

  var v_ma = fcQKeySequence_keyBindings(cint(key))
  var vx_ret = newSeq[QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QKeySequence(h: v_outCast[i])
  vx_ret

proc ToQVariant*(self: QKeySequence, ): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQKeySequence_ToQVariant(self.h))

proc operatorSubscript*(self: QKeySequence, i: cuint): gen_qnamespace.QKeyCombination =

  gen_qnamespace.QKeyCombination(h: fcQKeySequence_operatorSubscript(self.h, i))

proc operatorAssign*(self: QKeySequence, other: QKeySequence): void =

  fcQKeySequence_operatorAssign(self.h, other.h)

proc swap*(self: QKeySequence, other: QKeySequence): void =

  fcQKeySequence_swap(self.h, other.h)

proc operatorEqual*(self: QKeySequence, other: QKeySequence): bool =

  fcQKeySequence_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QKeySequence, other: QKeySequence): bool =

  fcQKeySequence_operatorNotEqual(self.h, other.h)

proc operatorLesser*(self: QKeySequence, ks: QKeySequence): bool =

  fcQKeySequence_operatorLesser(self.h, ks.h)

proc operatorGreater*(self: QKeySequence, other: QKeySequence): bool =

  fcQKeySequence_operatorGreater(self.h, other.h)

proc operatorLesserOrEqual*(self: QKeySequence, other: QKeySequence): bool =

  fcQKeySequence_operatorLesserOrEqual(self.h, other.h)

proc operatorGreaterOrEqual*(self: QKeySequence, other: QKeySequence): bool =

  fcQKeySequence_operatorGreaterOrEqual(self.h, other.h)

proc isDetached*(self: QKeySequence, ): bool =

  fcQKeySequence_isDetached(self.h)

proc toString1*(self: QKeySequence, format: QKeySequenceSequenceFormat): string =

  let v_ms = fcQKeySequence_toString1(self.h, cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc fromString2*(_: type QKeySequence, str: string, format: QKeySequenceSequenceFormat): QKeySequence =

  QKeySequence(h: fcQKeySequence_fromString2(struct_miqt_string(data: str, len: csize_t(len(str))), cint(format)))

proc listFromString2*(_: type QKeySequence, str: string, format: QKeySequenceSequenceFormat): seq[QKeySequence] =

  var v_ma = fcQKeySequence_listFromString2(struct_miqt_string(data: str, len: csize_t(len(str))), cint(format))
  var vx_ret = newSeq[QKeySequence](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QKeySequence(h: v_outCast[i])
  vx_ret

proc listToString2*(_: type QKeySequence, list: seq[QKeySequence], format: QKeySequenceSequenceFormat): string =

  var list_CArray = newSeq[pointer](len(list))
  for i in 0..<len(list):
    list_CArray[i] = list[i].h

  let v_ms = fcQKeySequence_listToString2(struct_miqt_array(len: csize_t(len(list)), data: if len(list) == 0: nil else: addr(list_CArray[0])), cint(format))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QKeySequence): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQKeySequence_staticMetaObject())
proc delete*(self: QKeySequence) =
  fcQKeySequence_delete(self.h)
