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
{.compile("gen_qtextobject.cpp", cflags).}


import gen_qtextobject_types
export gen_qtextobject_types

import
  gen_qcoreevent,
  gen_qglyphrun,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextlayout,
  gen_qtextlist
export
  gen_qcoreevent,
  gen_qglyphrun,
  gen_qmetaobject,
  gen_qnamespace,
  gen_qobject,
  gen_qobjectdefs,
  gen_qtextcursor,
  gen_qtextdocument,
  gen_qtextformat,
  gen_qtextlayout,
  gen_qtextlist

type cQTextObject*{.exportc: "QTextObject", incompleteStruct.} = object
type cQTextBlockGroup*{.exportc: "QTextBlockGroup", incompleteStruct.} = object
type cQTextFrameLayoutData*{.exportc: "QTextFrameLayoutData", incompleteStruct.} = object
type cQTextFrame*{.exportc: "QTextFrame", incompleteStruct.} = object
type cQTextBlockUserData*{.exportc: "QTextBlockUserData", incompleteStruct.} = object
type cQTextBlock*{.exportc: "QTextBlock", incompleteStruct.} = object
type cQTextFragment*{.exportc: "QTextFragment", incompleteStruct.} = object
type cQTextFrameiterator*{.exportc: "QTextFrame__iterator", incompleteStruct.} = object
type cQTextBlockiterator*{.exportc: "QTextBlock__iterator", incompleteStruct.} = object

proc fcQTextObject_metaObject(self: pointer, ): pointer {.importc: "QTextObject_metaObject".}
proc fcQTextObject_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextObject_metacast".}
proc fcQTextObject_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextObject_metacall".}
proc fcQTextObject_tr(s: cstring): struct_miqt_string {.importc: "QTextObject_tr".}
proc fcQTextObject_format(self: pointer, ): pointer {.importc: "QTextObject_format".}
proc fcQTextObject_formatIndex(self: pointer, ): cint {.importc: "QTextObject_formatIndex".}
proc fcQTextObject_document(self: pointer, ): pointer {.importc: "QTextObject_document".}
proc fcQTextObject_objectIndex(self: pointer, ): cint {.importc: "QTextObject_objectIndex".}
proc fcQTextObject_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextObject_tr2".}
proc fcQTextObject_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextObject_tr3".}
proc fcQTextObject_staticMetaObject(): pointer {.importc: "QTextObject_staticMetaObject".}
proc fcQTextBlockGroup_metaObject(self: pointer, ): pointer {.importc: "QTextBlockGroup_metaObject".}
proc fcQTextBlockGroup_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextBlockGroup_metacast".}
proc fcQTextBlockGroup_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextBlockGroup_metacall".}
proc fcQTextBlockGroup_tr(s: cstring): struct_miqt_string {.importc: "QTextBlockGroup_tr".}
proc fcQTextBlockGroup_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextBlockGroup_tr2".}
proc fcQTextBlockGroup_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextBlockGroup_tr3".}
proc fcQTextBlockGroup_staticMetaObject(): pointer {.importc: "QTextBlockGroup_staticMetaObject".}
proc fcQTextFrameLayoutData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextFrameLayoutData_operatorAssign".}
proc fcQTextFrameLayoutData_delete(self: pointer) {.importc: "QTextFrameLayoutData_delete".}
proc fcQTextFrame_new(doc: pointer): ptr cQTextFrame {.importc: "QTextFrame_new".}
proc fcQTextFrame_metaObject(self: pointer, ): pointer {.importc: "QTextFrame_metaObject".}
proc fcQTextFrame_metacast(self: pointer, param1: cstring): pointer {.importc: "QTextFrame_metacast".}
proc fcQTextFrame_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint {.importc: "QTextFrame_metacall".}
proc fcQTextFrame_tr(s: cstring): struct_miqt_string {.importc: "QTextFrame_tr".}
proc fcQTextFrame_setFrameFormat(self: pointer, format: pointer): void {.importc: "QTextFrame_setFrameFormat".}
proc fcQTextFrame_frameFormat(self: pointer, ): pointer {.importc: "QTextFrame_frameFormat".}
proc fcQTextFrame_firstCursorPosition(self: pointer, ): pointer {.importc: "QTextFrame_firstCursorPosition".}
proc fcQTextFrame_lastCursorPosition(self: pointer, ): pointer {.importc: "QTextFrame_lastCursorPosition".}
proc fcQTextFrame_firstPosition(self: pointer, ): cint {.importc: "QTextFrame_firstPosition".}
proc fcQTextFrame_lastPosition(self: pointer, ): cint {.importc: "QTextFrame_lastPosition".}
proc fcQTextFrame_layoutData(self: pointer, ): pointer {.importc: "QTextFrame_layoutData".}
proc fcQTextFrame_setLayoutData(self: pointer, data: pointer): void {.importc: "QTextFrame_setLayoutData".}
proc fcQTextFrame_childFrames(self: pointer, ): struct_miqt_array {.importc: "QTextFrame_childFrames".}
proc fcQTextFrame_parentFrame(self: pointer, ): pointer {.importc: "QTextFrame_parentFrame".}
proc fcQTextFrame_begin(self: pointer, ): pointer {.importc: "QTextFrame_begin".}
proc fcQTextFrame_endX(self: pointer, ): pointer {.importc: "QTextFrame_end".}
proc fcQTextFrame_tr2(s: cstring, c: cstring): struct_miqt_string {.importc: "QTextFrame_tr2".}
proc fcQTextFrame_tr3(s: cstring, c: cstring, n: cint): struct_miqt_string {.importc: "QTextFrame_tr3".}
proc fQTextFrame_virtualbase_metaObject(self: pointer, ): pointer{.importc: "QTextFrame_virtualbase_metaObject".}
proc fcQTextFrame_override_virtual_metaObject(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_metaObject".}
proc fQTextFrame_virtualbase_metacast(self: pointer, param1: cstring): pointer{.importc: "QTextFrame_virtualbase_metacast".}
proc fcQTextFrame_override_virtual_metacast(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_metacast".}
proc fQTextFrame_virtualbase_metacall(self: pointer, param1: cint, param2: cint, param3: pointer): cint{.importc: "QTextFrame_virtualbase_metacall".}
proc fcQTextFrame_override_virtual_metacall(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_metacall".}
proc fQTextFrame_virtualbase_event(self: pointer, event: pointer): bool{.importc: "QTextFrame_virtualbase_event".}
proc fcQTextFrame_override_virtual_event(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_event".}
proc fQTextFrame_virtualbase_eventFilter(self: pointer, watched: pointer, event: pointer): bool{.importc: "QTextFrame_virtualbase_eventFilter".}
proc fcQTextFrame_override_virtual_eventFilter(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_eventFilter".}
proc fQTextFrame_virtualbase_timerEvent(self: pointer, event: pointer): void{.importc: "QTextFrame_virtualbase_timerEvent".}
proc fcQTextFrame_override_virtual_timerEvent(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_timerEvent".}
proc fQTextFrame_virtualbase_childEvent(self: pointer, event: pointer): void{.importc: "QTextFrame_virtualbase_childEvent".}
proc fcQTextFrame_override_virtual_childEvent(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_childEvent".}
proc fQTextFrame_virtualbase_customEvent(self: pointer, event: pointer): void{.importc: "QTextFrame_virtualbase_customEvent".}
proc fcQTextFrame_override_virtual_customEvent(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_customEvent".}
proc fQTextFrame_virtualbase_connectNotify(self: pointer, signal: pointer): void{.importc: "QTextFrame_virtualbase_connectNotify".}
proc fcQTextFrame_override_virtual_connectNotify(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_connectNotify".}
proc fQTextFrame_virtualbase_disconnectNotify(self: pointer, signal: pointer): void{.importc: "QTextFrame_virtualbase_disconnectNotify".}
proc fcQTextFrame_override_virtual_disconnectNotify(self: pointer, slot: int) {.importc: "QTextFrame_override_virtual_disconnectNotify".}
proc fcQTextFrame_staticMetaObject(): pointer {.importc: "QTextFrame_staticMetaObject".}
proc fcQTextFrame_delete(self: pointer) {.importc: "QTextFrame_delete".}
proc fcQTextBlockUserData_operatorAssign(self: pointer, param1: pointer): void {.importc: "QTextBlockUserData_operatorAssign".}
proc fcQTextBlockUserData_delete(self: pointer) {.importc: "QTextBlockUserData_delete".}
proc fcQTextBlock_new(): ptr cQTextBlock {.importc: "QTextBlock_new".}
proc fcQTextBlock_new2(o: pointer): ptr cQTextBlock {.importc: "QTextBlock_new2".}
proc fcQTextBlock_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextBlock_operatorAssign".}
proc fcQTextBlock_isValid(self: pointer, ): bool {.importc: "QTextBlock_isValid".}
proc fcQTextBlock_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock_operatorEqual".}
proc fcQTextBlock_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock_operatorNotEqual".}
proc fcQTextBlock_operatorLesser(self: pointer, o: pointer): bool {.importc: "QTextBlock_operatorLesser".}
proc fcQTextBlock_position(self: pointer, ): cint {.importc: "QTextBlock_position".}
proc fcQTextBlock_length(self: pointer, ): cint {.importc: "QTextBlock_length".}
proc fcQTextBlock_contains(self: pointer, position: cint): bool {.importc: "QTextBlock_contains".}
proc fcQTextBlock_layout(self: pointer, ): pointer {.importc: "QTextBlock_layout".}
proc fcQTextBlock_clearLayout(self: pointer, ): void {.importc: "QTextBlock_clearLayout".}
proc fcQTextBlock_blockFormat(self: pointer, ): pointer {.importc: "QTextBlock_blockFormat".}
proc fcQTextBlock_blockFormatIndex(self: pointer, ): cint {.importc: "QTextBlock_blockFormatIndex".}
proc fcQTextBlock_charFormat(self: pointer, ): pointer {.importc: "QTextBlock_charFormat".}
proc fcQTextBlock_charFormatIndex(self: pointer, ): cint {.importc: "QTextBlock_charFormatIndex".}
proc fcQTextBlock_textDirection(self: pointer, ): cint {.importc: "QTextBlock_textDirection".}
proc fcQTextBlock_text(self: pointer, ): struct_miqt_string {.importc: "QTextBlock_text".}
proc fcQTextBlock_textFormats(self: pointer, ): struct_miqt_array {.importc: "QTextBlock_textFormats".}
proc fcQTextBlock_document(self: pointer, ): pointer {.importc: "QTextBlock_document".}
proc fcQTextBlock_textList(self: pointer, ): pointer {.importc: "QTextBlock_textList".}
proc fcQTextBlock_userData(self: pointer, ): pointer {.importc: "QTextBlock_userData".}
proc fcQTextBlock_setUserData(self: pointer, data: pointer): void {.importc: "QTextBlock_setUserData".}
proc fcQTextBlock_userState(self: pointer, ): cint {.importc: "QTextBlock_userState".}
proc fcQTextBlock_setUserState(self: pointer, state: cint): void {.importc: "QTextBlock_setUserState".}
proc fcQTextBlock_revision(self: pointer, ): cint {.importc: "QTextBlock_revision".}
proc fcQTextBlock_setRevision(self: pointer, rev: cint): void {.importc: "QTextBlock_setRevision".}
proc fcQTextBlock_isVisible(self: pointer, ): bool {.importc: "QTextBlock_isVisible".}
proc fcQTextBlock_setVisible(self: pointer, visible: bool): void {.importc: "QTextBlock_setVisible".}
proc fcQTextBlock_blockNumber(self: pointer, ): cint {.importc: "QTextBlock_blockNumber".}
proc fcQTextBlock_firstLineNumber(self: pointer, ): cint {.importc: "QTextBlock_firstLineNumber".}
proc fcQTextBlock_setLineCount(self: pointer, count: cint): void {.importc: "QTextBlock_setLineCount".}
proc fcQTextBlock_lineCount(self: pointer, ): cint {.importc: "QTextBlock_lineCount".}
proc fcQTextBlock_begin(self: pointer, ): pointer {.importc: "QTextBlock_begin".}
proc fcQTextBlock_endX(self: pointer, ): pointer {.importc: "QTextBlock_end".}
proc fcQTextBlock_next(self: pointer, ): pointer {.importc: "QTextBlock_next".}
proc fcQTextBlock_previous(self: pointer, ): pointer {.importc: "QTextBlock_previous".}
proc fcQTextBlock_fragmentIndex(self: pointer, ): cint {.importc: "QTextBlock_fragmentIndex".}
proc fcQTextBlock_delete(self: pointer) {.importc: "QTextBlock_delete".}
proc fcQTextFragment_new(): ptr cQTextFragment {.importc: "QTextFragment_new".}
proc fcQTextFragment_new2(o: pointer): ptr cQTextFragment {.importc: "QTextFragment_new2".}
proc fcQTextFragment_operatorAssign(self: pointer, o: pointer): void {.importc: "QTextFragment_operatorAssign".}
proc fcQTextFragment_isValid(self: pointer, ): bool {.importc: "QTextFragment_isValid".}
proc fcQTextFragment_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextFragment_operatorEqual".}
proc fcQTextFragment_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextFragment_operatorNotEqual".}
proc fcQTextFragment_operatorLesser(self: pointer, o: pointer): bool {.importc: "QTextFragment_operatorLesser".}
proc fcQTextFragment_position(self: pointer, ): cint {.importc: "QTextFragment_position".}
proc fcQTextFragment_length(self: pointer, ): cint {.importc: "QTextFragment_length".}
proc fcQTextFragment_contains(self: pointer, position: cint): bool {.importc: "QTextFragment_contains".}
proc fcQTextFragment_charFormat(self: pointer, ): pointer {.importc: "QTextFragment_charFormat".}
proc fcQTextFragment_charFormatIndex(self: pointer, ): cint {.importc: "QTextFragment_charFormatIndex".}
proc fcQTextFragment_text(self: pointer, ): struct_miqt_string {.importc: "QTextFragment_text".}
proc fcQTextFragment_glyphRuns(self: pointer, ): struct_miqt_array {.importc: "QTextFragment_glyphRuns".}
proc fcQTextFragment_glyphRuns1(self: pointer, fromVal: cint): struct_miqt_array {.importc: "QTextFragment_glyphRuns1".}
proc fcQTextFragment_glyphRuns2(self: pointer, fromVal: cint, length: cint): struct_miqt_array {.importc: "QTextFragment_glyphRuns2".}
proc fcQTextFragment_delete(self: pointer) {.importc: "QTextFragment_delete".}
proc fcQTextFrameiterator_new(): ptr cQTextFrameiterator {.importc: "QTextFrame__iterator_new".}
proc fcQTextFrameiterator_new2(param1: pointer): ptr cQTextFrameiterator {.importc: "QTextFrame__iterator_new2".}
proc fcQTextFrameiterator_parentFrame(self: pointer, ): pointer {.importc: "QTextFrame__iterator_parentFrame".}
proc fcQTextFrameiterator_currentFrame(self: pointer, ): pointer {.importc: "QTextFrame__iterator_currentFrame".}
proc fcQTextFrameiterator_currentBlock(self: pointer, ): pointer {.importc: "QTextFrame__iterator_currentBlock".}
proc fcQTextFrameiterator_atEnd(self: pointer, ): bool {.importc: "QTextFrame__iterator_atEnd".}
proc fcQTextFrameiterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextFrame__iterator_operatorEqual".}
proc fcQTextFrameiterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextFrame__iterator_operatorNotEqual".}
proc fcQTextFrameiterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QTextFrame__iterator_operatorPlusPlus".}
proc fcQTextFrameiterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextFrame__iterator_operatorPlusPlusWithInt".}
proc fcQTextFrameiterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QTextFrame__iterator_operatorMinusMinus".}
proc fcQTextFrameiterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextFrame__iterator_operatorMinusMinusWithInt".}
proc fcQTextFrameiterator_delete(self: pointer) {.importc: "QTextFrame__iterator_delete".}
proc fcQTextBlockiterator_new(): ptr cQTextBlockiterator {.importc: "QTextBlock__iterator_new".}
proc fcQTextBlockiterator_new2(param1: pointer): ptr cQTextBlockiterator {.importc: "QTextBlock__iterator_new2".}
proc fcQTextBlockiterator_fragment(self: pointer, ): pointer {.importc: "QTextBlock__iterator_fragment".}
proc fcQTextBlockiterator_atEnd(self: pointer, ): bool {.importc: "QTextBlock__iterator_atEnd".}
proc fcQTextBlockiterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock__iterator_operatorEqual".}
proc fcQTextBlockiterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QTextBlock__iterator_operatorNotEqual".}
proc fcQTextBlockiterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QTextBlock__iterator_operatorPlusPlus".}
proc fcQTextBlockiterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextBlock__iterator_operatorPlusPlusWithInt".}
proc fcQTextBlockiterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QTextBlock__iterator_operatorMinusMinus".}
proc fcQTextBlockiterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QTextBlock__iterator_operatorMinusMinusWithInt".}
proc fcQTextBlockiterator_delete(self: pointer) {.importc: "QTextBlock__iterator_delete".}


func init*(T: type QTextObject, h: ptr cQTextObject): QTextObject =
  T(h: h)
proc metaObject*(self: QTextObject, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextObject_metaObject(self.h))

proc metacast*(self: QTextObject, param1: cstring): pointer =

  fcQTextObject_metacast(self.h, param1)

proc metacall*(self: QTextObject, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextObject_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextObject, s: cstring): string =

  let v_ms = fcQTextObject_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc format*(self: QTextObject, ): gen_qtextformat.QTextFormat =

  gen_qtextformat.QTextFormat(h: fcQTextObject_format(self.h))

proc formatIndex*(self: QTextObject, ): cint =

  fcQTextObject_formatIndex(self.h)

proc document*(self: QTextObject, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQTextObject_document(self.h))

proc objectIndex*(self: QTextObject, ): cint =

  fcQTextObject_objectIndex(self.h)

proc tr2*(_: type QTextObject, s: cstring, c: cstring): string =

  let v_ms = fcQTextObject_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextObject, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextObject_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QTextObject): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTextObject_staticMetaObject())

func init*(T: type QTextBlockGroup, h: ptr cQTextBlockGroup): QTextBlockGroup =
  T(h: h)
proc metaObject*(self: QTextBlockGroup, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextBlockGroup_metaObject(self.h))

proc metacast*(self: QTextBlockGroup, param1: cstring): pointer =

  fcQTextBlockGroup_metacast(self.h, param1)

proc metacall*(self: QTextBlockGroup, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextBlockGroup_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextBlockGroup, s: cstring): string =

  let v_ms = fcQTextBlockGroup_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr2*(_: type QTextBlockGroup, s: cstring, c: cstring): string =

  let v_ms = fcQTextBlockGroup_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextBlockGroup, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextBlockGroup_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc staticMetaObject*(_: type QTextBlockGroup): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTextBlockGroup_staticMetaObject())

func init*(T: type QTextFrameLayoutData, h: ptr cQTextFrameLayoutData): QTextFrameLayoutData =
  T(h: h)
proc operatorAssign*(self: QTextFrameLayoutData, param1: QTextFrameLayoutData): void =

  fcQTextFrameLayoutData_operatorAssign(self.h, param1.h)

proc delete*(self: QTextFrameLayoutData) =
  fcQTextFrameLayoutData_delete(self.h)

func init*(T: type QTextFrame, h: ptr cQTextFrame): QTextFrame =
  T(h: h)
proc create*(T: type QTextFrame, doc: gen_qtextdocument.QTextDocument): QTextFrame =

  QTextFrame.init(fcQTextFrame_new(doc.h))
proc metaObject*(self: QTextFrame, ): gen_qobjectdefs.QMetaObject =

  gen_qobjectdefs.QMetaObject(h: fcQTextFrame_metaObject(self.h))

proc metacast*(self: QTextFrame, param1: cstring): pointer =

  fcQTextFrame_metacast(self.h, param1)

proc metacall*(self: QTextFrame, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =

  fcQTextFrame_metacall(self.h, cint(param1), param2, param3)

proc tr*(_: type QTextFrame, s: cstring): string =

  let v_ms = fcQTextFrame_tr(s)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setFrameFormat*(self: QTextFrame, format: gen_qtextformat.QTextFrameFormat): void =

  fcQTextFrame_setFrameFormat(self.h, format.h)

proc frameFormat*(self: QTextFrame, ): gen_qtextformat.QTextFrameFormat =

  gen_qtextformat.QTextFrameFormat(h: fcQTextFrame_frameFormat(self.h))

proc firstCursorPosition*(self: QTextFrame, ): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextFrame_firstCursorPosition(self.h))

proc lastCursorPosition*(self: QTextFrame, ): gen_qtextcursor.QTextCursor =

  gen_qtextcursor.QTextCursor(h: fcQTextFrame_lastCursorPosition(self.h))

proc firstPosition*(self: QTextFrame, ): cint =

  fcQTextFrame_firstPosition(self.h)

proc lastPosition*(self: QTextFrame, ): cint =

  fcQTextFrame_lastPosition(self.h)

proc layoutData*(self: QTextFrame, ): QTextFrameLayoutData =

  QTextFrameLayoutData(h: fcQTextFrame_layoutData(self.h))

proc setLayoutData*(self: QTextFrame, data: QTextFrameLayoutData): void =

  fcQTextFrame_setLayoutData(self.h, data.h)

proc childFrames*(self: QTextFrame, ): seq[QTextFrame] =

  var v_ma = fcQTextFrame_childFrames(self.h)
  var vx_ret = newSeq[QTextFrame](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QTextFrame(h: v_outCast[i])
  vx_ret

proc parentFrame*(self: QTextFrame, ): QTextFrame =

  QTextFrame(h: fcQTextFrame_parentFrame(self.h))

proc begin*(self: QTextFrame, ): QTextFrameiterator =

  QTextFrameiterator(h: fcQTextFrame_begin(self.h))

proc endX*(self: QTextFrame, ): QTextFrameiterator =

  QTextFrameiterator(h: fcQTextFrame_endX(self.h))

proc tr2*(_: type QTextFrame, s: cstring, c: cstring): string =

  let v_ms = fcQTextFrame_tr2(s, c)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc tr3*(_: type QTextFrame, s: cstring, c: cstring, n: cint): string =

  let v_ms = fcQTextFrame_tr3(s, c, n)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc callVirtualBase_metaObject(self: QTextFrame, ): gen_qobjectdefs.QMetaObject =


  gen_qobjectdefs.QMetaObject(h: fQTextFrame_virtualbase_metaObject(self.h))

type QTextFramemetaObjectBase* = proc(): gen_qobjectdefs.QMetaObject
proc onmetaObject*(self: QTextFrame, slot: proc(super: QTextFramemetaObjectBase): gen_qobjectdefs.QMetaObject) =
  # TODO check subclass
  type Cb = proc(super: QTextFramemetaObjectBase): gen_qobjectdefs.QMetaObject
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_metaObject(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_metaObject(self: ptr cQTextFrame, slot: int): pointer {.exportc: "miqt_exec_callback_QTextFrame_metaObject ".} =
  type Cb = proc(super: QTextFramemetaObjectBase): gen_qobjectdefs.QMetaObject
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(): auto =
    callVirtualBase_metaObject(QTextFrame(h: self), )

  let virtualReturn = nimfunc[](superCall )

  virtualReturn.h
proc callVirtualBase_metacast(self: QTextFrame, param1: cstring): pointer =


  fQTextFrame_virtualbase_metacast(self.h, param1)

type QTextFramemetacastBase* = proc(param1: cstring): pointer
proc onmetacast*(self: QTextFrame, slot: proc(super: QTextFramemetacastBase, param1: cstring): pointer) =
  # TODO check subclass
  type Cb = proc(super: QTextFramemetacastBase, param1: cstring): pointer
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_metacast(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_metacast(self: ptr cQTextFrame, slot: int, param1: cstring): pointer {.exportc: "miqt_exec_callback_QTextFrame_metacast ".} =
  type Cb = proc(super: QTextFramemetacastBase, param1: cstring): pointer
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: cstring): auto =
    callVirtualBase_metacast(QTextFrame(h: self), param1)
  let slotval1 = (param1)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_metacall(self: QTextFrame, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint =


  fQTextFrame_virtualbase_metacall(self.h, cint(param1), param2, param3)

type QTextFramemetacallBase* = proc(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
proc onmetacall*(self: QTextFrame, slot: proc(super: QTextFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint) =
  # TODO check subclass
  type Cb = proc(super: QTextFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_metacall(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_metacall(self: ptr cQTextFrame, slot: int, param1: cint, param2: cint, param3: pointer): cint {.exportc: "miqt_exec_callback_QTextFrame_metacall ".} =
  type Cb = proc(super: QTextFramemetacallBase, param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): cint
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(param1: gen_qobjectdefs.QMetaObjectCall, param2: cint, param3: pointer): auto =
    callVirtualBase_metacall(QTextFrame(h: self), param1, param2, param3)
  let slotval1 = gen_qobjectdefs.QMetaObjectCall(param1)

  let slotval2 = param2

  let slotval3 = param3


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2, slotval3 )

  virtualReturn
proc callVirtualBase_event(self: QTextFrame, event: gen_qcoreevent.QEvent): bool =


  fQTextFrame_virtualbase_event(self.h, event.h)

type QTextFrameeventBase* = proc(event: gen_qcoreevent.QEvent): bool
proc onevent*(self: QTextFrame, slot: proc(super: QTextFrameeventBase, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextFrameeventBase, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_event(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_event(self: ptr cQTextFrame, slot: int, event: pointer): bool {.exportc: "miqt_exec_callback_QTextFrame_event ".} =
  type Cb = proc(super: QTextFrameeventBase, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_event(QTextFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1 )

  virtualReturn
proc callVirtualBase_eventFilter(self: QTextFrame, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool =


  fQTextFrame_virtualbase_eventFilter(self.h, watched.h, event.h)

type QTextFrameeventFilterBase* = proc(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
proc oneventFilter*(self: QTextFrame, slot: proc(super: QTextFrameeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool) =
  # TODO check subclass
  type Cb = proc(super: QTextFrameeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_eventFilter(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_eventFilter(self: ptr cQTextFrame, slot: int, watched: pointer, event: pointer): bool {.exportc: "miqt_exec_callback_QTextFrame_eventFilter ".} =
  type Cb = proc(super: QTextFrameeventFilterBase, watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): bool
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(watched: gen_qobject.QObject, event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_eventFilter(QTextFrame(h: self), watched, event)
  let slotval1 = gen_qobject.QObject(h: watched)

  let slotval2 = gen_qcoreevent.QEvent(h: event)


  let virtualReturn = nimfunc[](superCall, slotval1, slotval2 )

  virtualReturn
proc callVirtualBase_timerEvent(self: QTextFrame, event: gen_qcoreevent.QTimerEvent): void =


  fQTextFrame_virtualbase_timerEvent(self.h, event.h)

type QTextFrametimerEventBase* = proc(event: gen_qcoreevent.QTimerEvent): void
proc ontimerEvent*(self: QTextFrame, slot: proc(super: QTextFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_timerEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_timerEvent(self: ptr cQTextFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextFrame_timerEvent ".} =
  type Cb = proc(super: QTextFrametimerEventBase, event: gen_qcoreevent.QTimerEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QTimerEvent): auto =
    callVirtualBase_timerEvent(QTextFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QTimerEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_childEvent(self: QTextFrame, event: gen_qcoreevent.QChildEvent): void =


  fQTextFrame_virtualbase_childEvent(self.h, event.h)

type QTextFramechildEventBase* = proc(event: gen_qcoreevent.QChildEvent): void
proc onchildEvent*(self: QTextFrame, slot: proc(super: QTextFramechildEventBase, event: gen_qcoreevent.QChildEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextFramechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_childEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_childEvent(self: ptr cQTextFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextFrame_childEvent ".} =
  type Cb = proc(super: QTextFramechildEventBase, event: gen_qcoreevent.QChildEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QChildEvent): auto =
    callVirtualBase_childEvent(QTextFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QChildEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_customEvent(self: QTextFrame, event: gen_qcoreevent.QEvent): void =


  fQTextFrame_virtualbase_customEvent(self.h, event.h)

type QTextFramecustomEventBase* = proc(event: gen_qcoreevent.QEvent): void
proc oncustomEvent*(self: QTextFrame, slot: proc(super: QTextFramecustomEventBase, event: gen_qcoreevent.QEvent): void) =
  # TODO check subclass
  type Cb = proc(super: QTextFramecustomEventBase, event: gen_qcoreevent.QEvent): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_customEvent(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_customEvent(self: ptr cQTextFrame, slot: int, event: pointer): void {.exportc: "miqt_exec_callback_QTextFrame_customEvent ".} =
  type Cb = proc(super: QTextFramecustomEventBase, event: gen_qcoreevent.QEvent): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(event: gen_qcoreevent.QEvent): auto =
    callVirtualBase_customEvent(QTextFrame(h: self), event)
  let slotval1 = gen_qcoreevent.QEvent(h: event)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_connectNotify(self: QTextFrame, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextFrame_virtualbase_connectNotify(self.h, signal.h)

type QTextFrameconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc onconnectNotify*(self: QTextFrame, slot: proc(super: QTextFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_connectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_connectNotify(self: ptr cQTextFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextFrame_connectNotify ".} =
  type Cb = proc(super: QTextFrameconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_connectNotify(QTextFrame(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc callVirtualBase_disconnectNotify(self: QTextFrame, signal: gen_qmetaobject.QMetaMethod): void =


  fQTextFrame_virtualbase_disconnectNotify(self.h, signal.h)

type QTextFramedisconnectNotifyBase* = proc(signal: gen_qmetaobject.QMetaMethod): void
proc ondisconnectNotify*(self: QTextFrame, slot: proc(super: QTextFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void) =
  # TODO check subclass
  type Cb = proc(super: QTextFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var tmp = new Cb
  tmp[] = slot
  GC_ref(tmp)
  fcQTextFrame_override_virtual_disconnectNotify(self.h, cast[int](addr tmp[]))

proc miqt_exec_callback_QTextFrame_disconnectNotify(self: ptr cQTextFrame, slot: int, signal: pointer): void {.exportc: "miqt_exec_callback_QTextFrame_disconnectNotify ".} =
  type Cb = proc(super: QTextFramedisconnectNotifyBase, signal: gen_qmetaobject.QMetaMethod): void
  var nimfunc = cast[ptr Cb](cast[pointer](slot))
  proc superCall(signal: gen_qmetaobject.QMetaMethod): auto =
    callVirtualBase_disconnectNotify(QTextFrame(h: self), signal)
  let slotval1 = gen_qmetaobject.QMetaMethod(h: signal)


  nimfunc[](superCall, slotval1)
proc staticMetaObject*(_: type QTextFrame): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQTextFrame_staticMetaObject())
proc delete*(self: QTextFrame) =
  fcQTextFrame_delete(self.h)

func init*(T: type QTextBlockUserData, h: ptr cQTextBlockUserData): QTextBlockUserData =
  T(h: h)
proc operatorAssign*(self: QTextBlockUserData, param1: QTextBlockUserData): void =

  fcQTextBlockUserData_operatorAssign(self.h, param1.h)

proc delete*(self: QTextBlockUserData) =
  fcQTextBlockUserData_delete(self.h)

func init*(T: type QTextBlock, h: ptr cQTextBlock): QTextBlock =
  T(h: h)
proc create*(T: type QTextBlock, ): QTextBlock =

  QTextBlock.init(fcQTextBlock_new())
proc create*(T: type QTextBlock, o: QTextBlock): QTextBlock =

  QTextBlock.init(fcQTextBlock_new2(o.h))
proc operatorAssign*(self: QTextBlock, o: QTextBlock): void =

  fcQTextBlock_operatorAssign(self.h, o.h)

proc isValid*(self: QTextBlock, ): bool =

  fcQTextBlock_isValid(self.h)

proc operatorEqual*(self: QTextBlock, o: QTextBlock): bool =

  fcQTextBlock_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QTextBlock, o: QTextBlock): bool =

  fcQTextBlock_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: QTextBlock, o: QTextBlock): bool =

  fcQTextBlock_operatorLesser(self.h, o.h)

proc position*(self: QTextBlock, ): cint =

  fcQTextBlock_position(self.h)

proc length*(self: QTextBlock, ): cint =

  fcQTextBlock_length(self.h)

proc contains*(self: QTextBlock, position: cint): bool =

  fcQTextBlock_contains(self.h, position)

proc layout*(self: QTextBlock, ): gen_qtextlayout.QTextLayout =

  gen_qtextlayout.QTextLayout(h: fcQTextBlock_layout(self.h))

proc clearLayout*(self: QTextBlock, ): void =

  fcQTextBlock_clearLayout(self.h)

proc blockFormat*(self: QTextBlock, ): gen_qtextformat.QTextBlockFormat =

  gen_qtextformat.QTextBlockFormat(h: fcQTextBlock_blockFormat(self.h))

proc blockFormatIndex*(self: QTextBlock, ): cint =

  fcQTextBlock_blockFormatIndex(self.h)

proc charFormat*(self: QTextBlock, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQTextBlock_charFormat(self.h))

proc charFormatIndex*(self: QTextBlock, ): cint =

  fcQTextBlock_charFormatIndex(self.h)

proc textDirection*(self: QTextBlock, ): gen_qnamespace.LayoutDirection =

  gen_qnamespace.LayoutDirection(fcQTextBlock_textDirection(self.h))

proc text*(self: QTextBlock, ): string =

  let v_ms = fcQTextBlock_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc textFormats*(self: QTextBlock, ): seq[gen_qtextlayout.QTextLayoutFormatRange] =

  var v_ma = fcQTextBlock_textFormats(self.h)
  var vx_ret = newSeq[gen_qtextlayout.QTextLayoutFormatRange](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qtextlayout.QTextLayoutFormatRange(h: v_outCast[i])
  vx_ret

proc document*(self: QTextBlock, ): gen_qtextdocument.QTextDocument =

  gen_qtextdocument.QTextDocument(h: fcQTextBlock_document(self.h))

proc textList*(self: QTextBlock, ): gen_qtextlist.QTextList =

  gen_qtextlist.QTextList(h: fcQTextBlock_textList(self.h))

proc userData*(self: QTextBlock, ): QTextBlockUserData =

  QTextBlockUserData(h: fcQTextBlock_userData(self.h))

proc setUserData*(self: QTextBlock, data: QTextBlockUserData): void =

  fcQTextBlock_setUserData(self.h, data.h)

proc userState*(self: QTextBlock, ): cint =

  fcQTextBlock_userState(self.h)

proc setUserState*(self: QTextBlock, state: cint): void =

  fcQTextBlock_setUserState(self.h, state)

proc revision*(self: QTextBlock, ): cint =

  fcQTextBlock_revision(self.h)

proc setRevision*(self: QTextBlock, rev: cint): void =

  fcQTextBlock_setRevision(self.h, rev)

proc isVisible*(self: QTextBlock, ): bool =

  fcQTextBlock_isVisible(self.h)

proc setVisible*(self: QTextBlock, visible: bool): void =

  fcQTextBlock_setVisible(self.h, visible)

proc blockNumber*(self: QTextBlock, ): cint =

  fcQTextBlock_blockNumber(self.h)

proc firstLineNumber*(self: QTextBlock, ): cint =

  fcQTextBlock_firstLineNumber(self.h)

proc setLineCount*(self: QTextBlock, count: cint): void =

  fcQTextBlock_setLineCount(self.h, count)

proc lineCount*(self: QTextBlock, ): cint =

  fcQTextBlock_lineCount(self.h)

proc begin*(self: QTextBlock, ): QTextBlockiterator =

  QTextBlockiterator(h: fcQTextBlock_begin(self.h))

proc endX*(self: QTextBlock, ): QTextBlockiterator =

  QTextBlockiterator(h: fcQTextBlock_endX(self.h))

proc next*(self: QTextBlock, ): QTextBlock =

  QTextBlock(h: fcQTextBlock_next(self.h))

proc previous*(self: QTextBlock, ): QTextBlock =

  QTextBlock(h: fcQTextBlock_previous(self.h))

proc fragmentIndex*(self: QTextBlock, ): cint =

  fcQTextBlock_fragmentIndex(self.h)

proc delete*(self: QTextBlock) =
  fcQTextBlock_delete(self.h)

func init*(T: type QTextFragment, h: ptr cQTextFragment): QTextFragment =
  T(h: h)
proc create*(T: type QTextFragment, ): QTextFragment =

  QTextFragment.init(fcQTextFragment_new())
proc create*(T: type QTextFragment, o: QTextFragment): QTextFragment =

  QTextFragment.init(fcQTextFragment_new2(o.h))
proc operatorAssign*(self: QTextFragment, o: QTextFragment): void =

  fcQTextFragment_operatorAssign(self.h, o.h)

proc isValid*(self: QTextFragment, ): bool =

  fcQTextFragment_isValid(self.h)

proc operatorEqual*(self: QTextFragment, o: QTextFragment): bool =

  fcQTextFragment_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QTextFragment, o: QTextFragment): bool =

  fcQTextFragment_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: QTextFragment, o: QTextFragment): bool =

  fcQTextFragment_operatorLesser(self.h, o.h)

proc position*(self: QTextFragment, ): cint =

  fcQTextFragment_position(self.h)

proc length*(self: QTextFragment, ): cint =

  fcQTextFragment_length(self.h)

proc contains*(self: QTextFragment, position: cint): bool =

  fcQTextFragment_contains(self.h, position)

proc charFormat*(self: QTextFragment, ): gen_qtextformat.QTextCharFormat =

  gen_qtextformat.QTextCharFormat(h: fcQTextFragment_charFormat(self.h))

proc charFormatIndex*(self: QTextFragment, ): cint =

  fcQTextFragment_charFormatIndex(self.h)

proc text*(self: QTextFragment, ): string =

  let v_ms = fcQTextFragment_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc glyphRuns*(self: QTextFragment, ): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextFragment_glyphRuns(self.h)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc glyphRuns1*(self: QTextFragment, fromVal: cint): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextFragment_glyphRuns1(self.h, fromVal)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc glyphRuns2*(self: QTextFragment, fromVal: cint, length: cint): seq[gen_qglyphrun.QGlyphRun] =

  var v_ma = fcQTextFragment_glyphRuns2(self.h, fromVal, length)
  var vx_ret = newSeq[gen_qglyphrun.QGlyphRun](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = gen_qglyphrun.QGlyphRun(h: v_outCast[i])
  vx_ret

proc delete*(self: QTextFragment) =
  fcQTextFragment_delete(self.h)

func init*(T: type QTextFrameiterator, h: ptr cQTextFrameiterator): QTextFrameiterator =
  T(h: h)
proc create*(T: type QTextFrameiterator, ): QTextFrameiterator =

  QTextFrameiterator.init(fcQTextFrameiterator_new())
proc create*(T: type QTextFrameiterator, param1: QTextFrameiterator): QTextFrameiterator =

  QTextFrameiterator.init(fcQTextFrameiterator_new2(param1.h))
proc parentFrame*(self: QTextFrameiterator, ): QTextFrame =

  QTextFrame(h: fcQTextFrameiterator_parentFrame(self.h))

proc currentFrame*(self: QTextFrameiterator, ): QTextFrame =

  QTextFrame(h: fcQTextFrameiterator_currentFrame(self.h))

proc currentBlock*(self: QTextFrameiterator, ): QTextBlock =

  QTextBlock(h: fcQTextFrameiterator_currentBlock(self.h))

proc atEnd*(self: QTextFrameiterator, ): bool =

  fcQTextFrameiterator_atEnd(self.h)

proc operatorEqual*(self: QTextFrameiterator, o: QTextFrameiterator): bool =

  fcQTextFrameiterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QTextFrameiterator, o: QTextFrameiterator): bool =

  fcQTextFrameiterator_operatorNotEqual(self.h, o.h)

proc operatorPlusPlus*(self: QTextFrameiterator, ): QTextFrameiterator =

  QTextFrameiterator(h: fcQTextFrameiterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QTextFrameiterator, param1: cint): QTextFrameiterator =

  QTextFrameiterator(h: fcQTextFrameiterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QTextFrameiterator, ): QTextFrameiterator =

  QTextFrameiterator(h: fcQTextFrameiterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QTextFrameiterator, param1: cint): QTextFrameiterator =

  QTextFrameiterator(h: fcQTextFrameiterator_operatorMinusMinusWithInt(self.h, param1))

proc delete*(self: QTextFrameiterator) =
  fcQTextFrameiterator_delete(self.h)

func init*(T: type QTextBlockiterator, h: ptr cQTextBlockiterator): QTextBlockiterator =
  T(h: h)
proc create*(T: type QTextBlockiterator, ): QTextBlockiterator =

  QTextBlockiterator.init(fcQTextBlockiterator_new())
proc create*(T: type QTextBlockiterator, param1: QTextBlockiterator): QTextBlockiterator =

  QTextBlockiterator.init(fcQTextBlockiterator_new2(param1.h))
proc fragment*(self: QTextBlockiterator, ): QTextFragment =

  QTextFragment(h: fcQTextBlockiterator_fragment(self.h))

proc atEnd*(self: QTextBlockiterator, ): bool =

  fcQTextBlockiterator_atEnd(self.h)

proc operatorEqual*(self: QTextBlockiterator, o: QTextBlockiterator): bool =

  fcQTextBlockiterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QTextBlockiterator, o: QTextBlockiterator): bool =

  fcQTextBlockiterator_operatorNotEqual(self.h, o.h)

proc operatorPlusPlus*(self: QTextBlockiterator, ): QTextBlockiterator =

  QTextBlockiterator(h: fcQTextBlockiterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QTextBlockiterator, param1: cint): QTextBlockiterator =

  QTextBlockiterator(h: fcQTextBlockiterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QTextBlockiterator, ): QTextBlockiterator =

  QTextBlockiterator(h: fcQTextBlockiterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QTextBlockiterator, param1: cint): QTextBlockiterator =

  QTextBlockiterator(h: fcQTextBlockiterator_operatorMinusMinusWithInt(self.h, param1))

proc delete*(self: QTextBlockiterator) =
  fcQTextBlockiterator_delete(self.h)
