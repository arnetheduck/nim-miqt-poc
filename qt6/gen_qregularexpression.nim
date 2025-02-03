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
{.compile("gen_qregularexpression.cpp", cflags).}


type QRegularExpressionPatternOption* = cint
const
  QRegularExpressionNoPatternOption* = 0
  QRegularExpressionCaseInsensitiveOption* = 1
  QRegularExpressionDotMatchesEverythingOption* = 2
  QRegularExpressionMultilineOption* = 4
  QRegularExpressionExtendedPatternSyntaxOption* = 8
  QRegularExpressionInvertedGreedinessOption* = 16
  QRegularExpressionDontCaptureOption* = 32
  QRegularExpressionUseUnicodePropertiesOption* = 64



type QRegularExpressionMatchType* = cint
const
  QRegularExpressionNormalMatch* = 0
  QRegularExpressionPartialPreferCompleteMatch* = 1
  QRegularExpressionPartialPreferFirstMatch* = 2
  QRegularExpressionNoMatch* = 3



type QRegularExpressionMatchOption* = cint
const
  QRegularExpressionNoMatchOption* = 0
  QRegularExpressionAnchorAtOffsetMatchOption* = 1
  QRegularExpressionAnchoredMatchOption* = 1
  QRegularExpressionDontCheckSubjectStringMatchOption* = 2



type QRegularExpressionWildcardConversionOption* = cint
const
  QRegularExpressionDefaultWildcardConversion* = 0
  QRegularExpressionUnanchoredWildcardConversion* = 1



import gen_qregularexpression_types
export gen_qregularexpression_types


type cQRegularExpression*{.exportc: "QRegularExpression", incompleteStruct.} = object
type cQRegularExpressionMatch*{.exportc: "QRegularExpressionMatch", incompleteStruct.} = object
type cQRegularExpressionMatchIterator*{.exportc: "QRegularExpressionMatchIterator", incompleteStruct.} = object

proc fcQRegularExpression_new(): ptr cQRegularExpression {.importc: "QRegularExpression_new".}
proc fcQRegularExpression_new2(pattern: struct_miqt_string): ptr cQRegularExpression {.importc: "QRegularExpression_new2".}
proc fcQRegularExpression_new3(re: pointer): ptr cQRegularExpression {.importc: "QRegularExpression_new3".}
proc fcQRegularExpression_new4(pattern: struct_miqt_string, options: cint): ptr cQRegularExpression {.importc: "QRegularExpression_new4".}
proc fcQRegularExpression_patternOptions(self: pointer, ): cint {.importc: "QRegularExpression_patternOptions".}
proc fcQRegularExpression_setPatternOptions(self: pointer, options: cint): void {.importc: "QRegularExpression_setPatternOptions".}
proc fcQRegularExpression_operatorAssign(self: pointer, re: pointer): void {.importc: "QRegularExpression_operatorAssign".}
proc fcQRegularExpression_swap(self: pointer, other: pointer): void {.importc: "QRegularExpression_swap".}
proc fcQRegularExpression_pattern(self: pointer, ): struct_miqt_string {.importc: "QRegularExpression_pattern".}
proc fcQRegularExpression_setPattern(self: pointer, pattern: struct_miqt_string): void {.importc: "QRegularExpression_setPattern".}
proc fcQRegularExpression_isValid(self: pointer, ): bool {.importc: "QRegularExpression_isValid".}
proc fcQRegularExpression_patternErrorOffset(self: pointer, ): int64 {.importc: "QRegularExpression_patternErrorOffset".}
proc fcQRegularExpression_errorString(self: pointer, ): struct_miqt_string {.importc: "QRegularExpression_errorString".}
proc fcQRegularExpression_captureCount(self: pointer, ): cint {.importc: "QRegularExpression_captureCount".}
proc fcQRegularExpression_namedCaptureGroups(self: pointer, ): struct_miqt_array {.importc: "QRegularExpression_namedCaptureGroups".}
proc fcQRegularExpression_match(self: pointer, subject: struct_miqt_string): pointer {.importc: "QRegularExpression_match".}
proc fcQRegularExpression_globalMatch(self: pointer, subject: struct_miqt_string): pointer {.importc: "QRegularExpression_globalMatch".}
proc fcQRegularExpression_optimize(self: pointer, ): void {.importc: "QRegularExpression_optimize".}
proc fcQRegularExpression_escape(str: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpression_escape".}
proc fcQRegularExpression_wildcardToRegularExpression(str: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpression_wildcardToRegularExpression".}
proc fcQRegularExpression_anchoredPattern(expression: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpression_anchoredPattern".}
proc fcQRegularExpression_operatorEqual(self: pointer, re: pointer): bool {.importc: "QRegularExpression_operatorEqual".}
proc fcQRegularExpression_operatorNotEqual(self: pointer, re: pointer): bool {.importc: "QRegularExpression_operatorNotEqual".}
proc fcQRegularExpression_match2(self: pointer, subject: struct_miqt_string, offset: int64): pointer {.importc: "QRegularExpression_match2".}
proc fcQRegularExpression_match3(self: pointer, subject: struct_miqt_string, offset: int64, matchType: cint): pointer {.importc: "QRegularExpression_match3".}
proc fcQRegularExpression_match4(self: pointer, subject: struct_miqt_string, offset: int64, matchType: cint, matchOptions: cint): pointer {.importc: "QRegularExpression_match4".}
proc fcQRegularExpression_globalMatch2(self: pointer, subject: struct_miqt_string, offset: int64): pointer {.importc: "QRegularExpression_globalMatch2".}
proc fcQRegularExpression_globalMatch3(self: pointer, subject: struct_miqt_string, offset: int64, matchType: cint): pointer {.importc: "QRegularExpression_globalMatch3".}
proc fcQRegularExpression_globalMatch4(self: pointer, subject: struct_miqt_string, offset: int64, matchType: cint, matchOptions: cint): pointer {.importc: "QRegularExpression_globalMatch4".}
proc fcQRegularExpression_wildcardToRegularExpression2(str: struct_miqt_string, options: cint): struct_miqt_string {.importc: "QRegularExpression_wildcardToRegularExpression2".}
proc fcQRegularExpression_delete(self: pointer) {.importc: "QRegularExpression_delete".}
proc fcQRegularExpressionMatch_new(): ptr cQRegularExpressionMatch {.importc: "QRegularExpressionMatch_new".}
proc fcQRegularExpressionMatch_new2(match: pointer): ptr cQRegularExpressionMatch {.importc: "QRegularExpressionMatch_new2".}
proc fcQRegularExpressionMatch_operatorAssign(self: pointer, match: pointer): void {.importc: "QRegularExpressionMatch_operatorAssign".}
proc fcQRegularExpressionMatch_swap(self: pointer, other: pointer): void {.importc: "QRegularExpressionMatch_swap".}
proc fcQRegularExpressionMatch_regularExpression(self: pointer, ): pointer {.importc: "QRegularExpressionMatch_regularExpression".}
proc fcQRegularExpressionMatch_matchType(self: pointer, ): cint {.importc: "QRegularExpressionMatch_matchType".}
proc fcQRegularExpressionMatch_matchOptions(self: pointer, ): cint {.importc: "QRegularExpressionMatch_matchOptions".}
proc fcQRegularExpressionMatch_hasMatch(self: pointer, ): bool {.importc: "QRegularExpressionMatch_hasMatch".}
proc fcQRegularExpressionMatch_hasPartialMatch(self: pointer, ): bool {.importc: "QRegularExpressionMatch_hasPartialMatch".}
proc fcQRegularExpressionMatch_isValid(self: pointer, ): bool {.importc: "QRegularExpressionMatch_isValid".}
proc fcQRegularExpressionMatch_lastCapturedIndex(self: pointer, ): cint {.importc: "QRegularExpressionMatch_lastCapturedIndex".}
proc fcQRegularExpressionMatch_hasCaptured(self: pointer, name: struct_miqt_string): bool {.importc: "QRegularExpressionMatch_hasCaptured".}
proc fcQRegularExpressionMatch_hasCapturedWithNth(self: pointer, nth: cint): bool {.importc: "QRegularExpressionMatch_hasCapturedWithNth".}
proc fcQRegularExpressionMatch_captured(self: pointer, ): struct_miqt_string {.importc: "QRegularExpressionMatch_captured".}
proc fcQRegularExpressionMatch_capturedWithName(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QRegularExpressionMatch_capturedWithName".}
proc fcQRegularExpressionMatch_capturedTexts(self: pointer, ): struct_miqt_array {.importc: "QRegularExpressionMatch_capturedTexts".}
proc fcQRegularExpressionMatch_capturedStart(self: pointer, ): int64 {.importc: "QRegularExpressionMatch_capturedStart".}
proc fcQRegularExpressionMatch_capturedLength(self: pointer, ): int64 {.importc: "QRegularExpressionMatch_capturedLength".}
proc fcQRegularExpressionMatch_capturedEnd(self: pointer, ): int64 {.importc: "QRegularExpressionMatch_capturedEnd".}
proc fcQRegularExpressionMatch_capturedStartWithName(self: pointer, name: struct_miqt_string): int64 {.importc: "QRegularExpressionMatch_capturedStartWithName".}
proc fcQRegularExpressionMatch_capturedLengthWithName(self: pointer, name: struct_miqt_string): int64 {.importc: "QRegularExpressionMatch_capturedLengthWithName".}
proc fcQRegularExpressionMatch_capturedEndWithName(self: pointer, name: struct_miqt_string): int64 {.importc: "QRegularExpressionMatch_capturedEndWithName".}
proc fcQRegularExpressionMatch_captured1(self: pointer, nth: cint): struct_miqt_string {.importc: "QRegularExpressionMatch_captured1".}
proc fcQRegularExpressionMatch_capturedStart1(self: pointer, nth: cint): int64 {.importc: "QRegularExpressionMatch_capturedStart1".}
proc fcQRegularExpressionMatch_capturedLength1(self: pointer, nth: cint): int64 {.importc: "QRegularExpressionMatch_capturedLength1".}
proc fcQRegularExpressionMatch_capturedEnd1(self: pointer, nth: cint): int64 {.importc: "QRegularExpressionMatch_capturedEnd1".}
proc fcQRegularExpressionMatch_delete(self: pointer) {.importc: "QRegularExpressionMatch_delete".}
proc fcQRegularExpressionMatchIterator_new(): ptr cQRegularExpressionMatchIterator {.importc: "QRegularExpressionMatchIterator_new".}
proc fcQRegularExpressionMatchIterator_new2(iteratorVal: pointer): ptr cQRegularExpressionMatchIterator {.importc: "QRegularExpressionMatchIterator_new2".}
proc fcQRegularExpressionMatchIterator_operatorAssign(self: pointer, iteratorVal: pointer): void {.importc: "QRegularExpressionMatchIterator_operatorAssign".}
proc fcQRegularExpressionMatchIterator_swap(self: pointer, other: pointer): void {.importc: "QRegularExpressionMatchIterator_swap".}
proc fcQRegularExpressionMatchIterator_isValid(self: pointer, ): bool {.importc: "QRegularExpressionMatchIterator_isValid".}
proc fcQRegularExpressionMatchIterator_hasNext(self: pointer, ): bool {.importc: "QRegularExpressionMatchIterator_hasNext".}
proc fcQRegularExpressionMatchIterator_next(self: pointer, ): pointer {.importc: "QRegularExpressionMatchIterator_next".}
proc fcQRegularExpressionMatchIterator_peekNext(self: pointer, ): pointer {.importc: "QRegularExpressionMatchIterator_peekNext".}
proc fcQRegularExpressionMatchIterator_regularExpression(self: pointer, ): pointer {.importc: "QRegularExpressionMatchIterator_regularExpression".}
proc fcQRegularExpressionMatchIterator_matchType(self: pointer, ): cint {.importc: "QRegularExpressionMatchIterator_matchType".}
proc fcQRegularExpressionMatchIterator_matchOptions(self: pointer, ): cint {.importc: "QRegularExpressionMatchIterator_matchOptions".}
proc fcQRegularExpressionMatchIterator_delete(self: pointer) {.importc: "QRegularExpressionMatchIterator_delete".}


func init*(T: type QRegularExpression, h: ptr cQRegularExpression): QRegularExpression =
  T(h: h)
proc create*(T: type QRegularExpression, ): QRegularExpression =

  QRegularExpression.init(fcQRegularExpression_new())
proc create*(T: type QRegularExpression, pattern: string): QRegularExpression =

  QRegularExpression.init(fcQRegularExpression_new2(struct_miqt_string(data: pattern, len: csize_t(len(pattern)))))
proc create*(T: type QRegularExpression, re: QRegularExpression): QRegularExpression =

  QRegularExpression.init(fcQRegularExpression_new3(re.h))
proc create*(T: type QRegularExpression, pattern: string, options: QRegularExpressionPatternOption): QRegularExpression =

  QRegularExpression.init(fcQRegularExpression_new4(struct_miqt_string(data: pattern, len: csize_t(len(pattern))), cint(options)))
proc patternOptions*(self: QRegularExpression, ): QRegularExpressionPatternOption =

  QRegularExpressionPatternOption(fcQRegularExpression_patternOptions(self.h))

proc setPatternOptions*(self: QRegularExpression, options: QRegularExpressionPatternOption): void =

  fcQRegularExpression_setPatternOptions(self.h, cint(options))

proc operatorAssign*(self: QRegularExpression, re: QRegularExpression): void =

  fcQRegularExpression_operatorAssign(self.h, re.h)

proc swap*(self: QRegularExpression, other: QRegularExpression): void =

  fcQRegularExpression_swap(self.h, other.h)

proc pattern*(self: QRegularExpression, ): string =

  let v_ms = fcQRegularExpression_pattern(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setPattern*(self: QRegularExpression, pattern: string): void =

  fcQRegularExpression_setPattern(self.h, struct_miqt_string(data: pattern, len: csize_t(len(pattern))))

proc isValid*(self: QRegularExpression, ): bool =

  fcQRegularExpression_isValid(self.h)

proc patternErrorOffset*(self: QRegularExpression, ): int64 =

  fcQRegularExpression_patternErrorOffset(self.h)

proc errorString*(self: QRegularExpression, ): string =

  let v_ms = fcQRegularExpression_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc captureCount*(self: QRegularExpression, ): cint =

  fcQRegularExpression_captureCount(self.h)

proc namedCaptureGroups*(self: QRegularExpression, ): seq[string] =

  var v_ma = fcQRegularExpression_namedCaptureGroups(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc match*(self: QRegularExpression, subject: string): QRegularExpressionMatch =

  QRegularExpressionMatch(h: fcQRegularExpression_match(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject)))))

proc globalMatch*(self: QRegularExpression, subject: string): QRegularExpressionMatchIterator =

  QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject)))))

proc optimize*(self: QRegularExpression, ): void =

  fcQRegularExpression_optimize(self.h)

proc escape*(_: type QRegularExpression, str: string): string =

  let v_ms = fcQRegularExpression_escape(struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc wildcardToRegularExpression*(_: type QRegularExpression, str: string): string =

  let v_ms = fcQRegularExpression_wildcardToRegularExpression(struct_miqt_string(data: str, len: csize_t(len(str))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc anchoredPattern*(_: type QRegularExpression, expression: string): string =

  let v_ms = fcQRegularExpression_anchoredPattern(struct_miqt_string(data: expression, len: csize_t(len(expression))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc operatorEqual*(self: QRegularExpression, re: QRegularExpression): bool =

  fcQRegularExpression_operatorEqual(self.h, re.h)

proc operatorNotEqual*(self: QRegularExpression, re: QRegularExpression): bool =

  fcQRegularExpression_operatorNotEqual(self.h, re.h)

proc match2*(self: QRegularExpression, subject: string, offset: int64): QRegularExpressionMatch =

  QRegularExpressionMatch(h: fcQRegularExpression_match2(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset))

proc match3*(self: QRegularExpression, subject: string, offset: int64, matchType: QRegularExpressionMatchType): QRegularExpressionMatch =

  QRegularExpressionMatch(h: fcQRegularExpression_match3(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType)))

proc match4*(self: QRegularExpression, subject: string, offset: int64, matchType: QRegularExpressionMatchType, matchOptions: QRegularExpressionMatchOption): QRegularExpressionMatch =

  QRegularExpressionMatch(h: fcQRegularExpression_match4(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType), cint(matchOptions)))

proc globalMatch2*(self: QRegularExpression, subject: string, offset: int64): QRegularExpressionMatchIterator =

  QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch2(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset))

proc globalMatch3*(self: QRegularExpression, subject: string, offset: int64, matchType: QRegularExpressionMatchType): QRegularExpressionMatchIterator =

  QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch3(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType)))

proc globalMatch4*(self: QRegularExpression, subject: string, offset: int64, matchType: QRegularExpressionMatchType, matchOptions: QRegularExpressionMatchOption): QRegularExpressionMatchIterator =

  QRegularExpressionMatchIterator(h: fcQRegularExpression_globalMatch4(self.h, struct_miqt_string(data: subject, len: csize_t(len(subject))), offset, cint(matchType), cint(matchOptions)))

proc wildcardToRegularExpression2*(_: type QRegularExpression, str: string, options: QRegularExpressionWildcardConversionOption): string =

  let v_ms = fcQRegularExpression_wildcardToRegularExpression2(struct_miqt_string(data: str, len: csize_t(len(str))), cint(options))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QRegularExpression) =
  fcQRegularExpression_delete(self.h)

func init*(T: type QRegularExpressionMatch, h: ptr cQRegularExpressionMatch): QRegularExpressionMatch =
  T(h: h)
proc create*(T: type QRegularExpressionMatch, ): QRegularExpressionMatch =

  QRegularExpressionMatch.init(fcQRegularExpressionMatch_new())
proc create*(T: type QRegularExpressionMatch, match: QRegularExpressionMatch): QRegularExpressionMatch =

  QRegularExpressionMatch.init(fcQRegularExpressionMatch_new2(match.h))
proc operatorAssign*(self: QRegularExpressionMatch, match: QRegularExpressionMatch): void =

  fcQRegularExpressionMatch_operatorAssign(self.h, match.h)

proc swap*(self: QRegularExpressionMatch, other: QRegularExpressionMatch): void =

  fcQRegularExpressionMatch_swap(self.h, other.h)

proc regularExpression*(self: QRegularExpressionMatch, ): QRegularExpression =

  QRegularExpression(h: fcQRegularExpressionMatch_regularExpression(self.h))

proc matchType*(self: QRegularExpressionMatch, ): QRegularExpressionMatchType =

  QRegularExpressionMatchType(fcQRegularExpressionMatch_matchType(self.h))

proc matchOptions*(self: QRegularExpressionMatch, ): QRegularExpressionMatchOption =

  QRegularExpressionMatchOption(fcQRegularExpressionMatch_matchOptions(self.h))

proc hasMatch*(self: QRegularExpressionMatch, ): bool =

  fcQRegularExpressionMatch_hasMatch(self.h)

proc hasPartialMatch*(self: QRegularExpressionMatch, ): bool =

  fcQRegularExpressionMatch_hasPartialMatch(self.h)

proc isValid*(self: QRegularExpressionMatch, ): bool =

  fcQRegularExpressionMatch_isValid(self.h)

proc lastCapturedIndex*(self: QRegularExpressionMatch, ): cint =

  fcQRegularExpressionMatch_lastCapturedIndex(self.h)

proc hasCaptured*(self: QRegularExpressionMatch, name: string): bool =

  fcQRegularExpressionMatch_hasCaptured(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasCapturedWithNth*(self: QRegularExpressionMatch, nth: cint): bool =

  fcQRegularExpressionMatch_hasCapturedWithNth(self.h, nth)

proc captured*(self: QRegularExpressionMatch, ): string =

  let v_ms = fcQRegularExpressionMatch_captured(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capturedWithName*(self: QRegularExpressionMatch, name: string): string =

  let v_ms = fcQRegularExpressionMatch_capturedWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capturedTexts*(self: QRegularExpressionMatch, ): seq[string] =

  var v_ma = fcQRegularExpressionMatch_capturedTexts(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc capturedStart*(self: QRegularExpressionMatch, ): int64 =

  fcQRegularExpressionMatch_capturedStart(self.h)

proc capturedLength*(self: QRegularExpressionMatch, ): int64 =

  fcQRegularExpressionMatch_capturedLength(self.h)

proc capturedEnd*(self: QRegularExpressionMatch, ): int64 =

  fcQRegularExpressionMatch_capturedEnd(self.h)

proc capturedStartWithName*(self: QRegularExpressionMatch, name: string): int64 =

  fcQRegularExpressionMatch_capturedStartWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc capturedLengthWithName*(self: QRegularExpressionMatch, name: string): int64 =

  fcQRegularExpressionMatch_capturedLengthWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc capturedEndWithName*(self: QRegularExpressionMatch, name: string): int64 =

  fcQRegularExpressionMatch_capturedEndWithName(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc captured1*(self: QRegularExpressionMatch, nth: cint): string =

  let v_ms = fcQRegularExpressionMatch_captured1(self.h, nth)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc capturedStart1*(self: QRegularExpressionMatch, nth: cint): int64 =

  fcQRegularExpressionMatch_capturedStart1(self.h, nth)

proc capturedLength1*(self: QRegularExpressionMatch, nth: cint): int64 =

  fcQRegularExpressionMatch_capturedLength1(self.h, nth)

proc capturedEnd1*(self: QRegularExpressionMatch, nth: cint): int64 =

  fcQRegularExpressionMatch_capturedEnd1(self.h, nth)

proc delete*(self: QRegularExpressionMatch) =
  fcQRegularExpressionMatch_delete(self.h)

func init*(T: type QRegularExpressionMatchIterator, h: ptr cQRegularExpressionMatchIterator): QRegularExpressionMatchIterator =
  T(h: h)
proc create*(T: type QRegularExpressionMatchIterator, ): QRegularExpressionMatchIterator =

  QRegularExpressionMatchIterator.init(fcQRegularExpressionMatchIterator_new())
proc create*(T: type QRegularExpressionMatchIterator, iteratorVal: QRegularExpressionMatchIterator): QRegularExpressionMatchIterator =

  QRegularExpressionMatchIterator.init(fcQRegularExpressionMatchIterator_new2(iteratorVal.h))
proc operatorAssign*(self: QRegularExpressionMatchIterator, iteratorVal: QRegularExpressionMatchIterator): void =

  fcQRegularExpressionMatchIterator_operatorAssign(self.h, iteratorVal.h)

proc swap*(self: QRegularExpressionMatchIterator, other: QRegularExpressionMatchIterator): void =

  fcQRegularExpressionMatchIterator_swap(self.h, other.h)

proc isValid*(self: QRegularExpressionMatchIterator, ): bool =

  fcQRegularExpressionMatchIterator_isValid(self.h)

proc hasNext*(self: QRegularExpressionMatchIterator, ): bool =

  fcQRegularExpressionMatchIterator_hasNext(self.h)

proc next*(self: QRegularExpressionMatchIterator, ): QRegularExpressionMatch =

  QRegularExpressionMatch(h: fcQRegularExpressionMatchIterator_next(self.h))

proc peekNext*(self: QRegularExpressionMatchIterator, ): QRegularExpressionMatch =

  QRegularExpressionMatch(h: fcQRegularExpressionMatchIterator_peekNext(self.h))

proc regularExpression*(self: QRegularExpressionMatchIterator, ): QRegularExpression =

  QRegularExpression(h: fcQRegularExpressionMatchIterator_regularExpression(self.h))

proc matchType*(self: QRegularExpressionMatchIterator, ): QRegularExpressionMatchType =

  QRegularExpressionMatchType(fcQRegularExpressionMatchIterator_matchType(self.h))

proc matchOptions*(self: QRegularExpressionMatchIterator, ): QRegularExpressionMatchOption =

  QRegularExpressionMatchOption(fcQRegularExpressionMatchIterator_matchOptions(self.h))

proc delete*(self: QRegularExpressionMatchIterator) =
  fcQRegularExpressionMatchIterator_delete(self.h)
