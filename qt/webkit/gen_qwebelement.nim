import Qt5WebKitWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt5WebKitWidgets")
{.compile("gen_qwebelement.cpp", cflags).}


type QWebElementStyleResolveStrategy* = cint
const
  QWebElementInlineStyle* = 0
  QWebElementCascadedStyle* = 1
  QWebElementComputedStyle* = 2



import gen_qwebelement_types
export gen_qwebelement_types

import
  gen_qpainter,
  gen_qrect,
  gen_qvariant,
  gen_qwebframe
export
  gen_qpainter,
  gen_qrect,
  gen_qvariant,
  gen_qwebframe

type cQWebElement*{.exportc: "QWebElement", incompleteStruct.} = object
type cQWebElementCollection*{.exportc: "QWebElementCollection", incompleteStruct.} = object
type cQWebElementCollectionconst_iterator*{.exportc: "QWebElementCollection__const_iterator", incompleteStruct.} = object
type cQWebElementCollectioniterator*{.exportc: "QWebElementCollection__iterator", incompleteStruct.} = object

proc fcQWebElement_new(): ptr cQWebElement {.importc: "QWebElement_new".}
proc fcQWebElement_new2(param1: pointer): ptr cQWebElement {.importc: "QWebElement_new2".}
proc fcQWebElement_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebElement_operatorAssign".}
proc fcQWebElement_operatorEqual(self: pointer, o: pointer): bool {.importc: "QWebElement_operatorEqual".}
proc fcQWebElement_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QWebElement_operatorNotEqual".}
proc fcQWebElement_isNull(self: pointer, ): bool {.importc: "QWebElement_isNull".}
proc fcQWebElement_findAll(self: pointer, selectorQuery: struct_miqt_string): pointer {.importc: "QWebElement_findAll".}
proc fcQWebElement_findFirst(self: pointer, selectorQuery: struct_miqt_string): pointer {.importc: "QWebElement_findFirst".}
proc fcQWebElement_setPlainText(self: pointer, text: struct_miqt_string): void {.importc: "QWebElement_setPlainText".}
proc fcQWebElement_toPlainText(self: pointer, ): struct_miqt_string {.importc: "QWebElement_toPlainText".}
proc fcQWebElement_setOuterXml(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_setOuterXml".}
proc fcQWebElement_toOuterXml(self: pointer, ): struct_miqt_string {.importc: "QWebElement_toOuterXml".}
proc fcQWebElement_setInnerXml(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_setInnerXml".}
proc fcQWebElement_toInnerXml(self: pointer, ): struct_miqt_string {.importc: "QWebElement_toInnerXml".}
proc fcQWebElement_setAttribute(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebElement_setAttribute".}
proc fcQWebElement_setAttributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebElement_setAttributeNS".}
proc fcQWebElement_attribute(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attribute".}
proc fcQWebElement_attributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attributeNS".}
proc fcQWebElement_hasAttribute(self: pointer, name: struct_miqt_string): bool {.importc: "QWebElement_hasAttribute".}
proc fcQWebElement_hasAttributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): bool {.importc: "QWebElement_hasAttributeNS".}
proc fcQWebElement_removeAttribute(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_removeAttribute".}
proc fcQWebElement_removeAttributeNS(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): void {.importc: "QWebElement_removeAttributeNS".}
proc fcQWebElement_hasAttributes(self: pointer, ): bool {.importc: "QWebElement_hasAttributes".}
proc fcQWebElement_attributeNames(self: pointer, ): struct_miqt_array {.importc: "QWebElement_attributeNames".}
proc fcQWebElement_classes(self: pointer, ): struct_miqt_array {.importc: "QWebElement_classes".}
proc fcQWebElement_hasClass(self: pointer, name: struct_miqt_string): bool {.importc: "QWebElement_hasClass".}
proc fcQWebElement_addClass(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_addClass".}
proc fcQWebElement_removeClass(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_removeClass".}
proc fcQWebElement_toggleClass(self: pointer, name: struct_miqt_string): void {.importc: "QWebElement_toggleClass".}
proc fcQWebElement_hasFocus(self: pointer, ): bool {.importc: "QWebElement_hasFocus".}
proc fcQWebElement_setFocus(self: pointer, ): void {.importc: "QWebElement_setFocus".}
proc fcQWebElement_geometry(self: pointer, ): pointer {.importc: "QWebElement_geometry".}
proc fcQWebElement_tagName(self: pointer, ): struct_miqt_string {.importc: "QWebElement_tagName".}
proc fcQWebElement_prefix(self: pointer, ): struct_miqt_string {.importc: "QWebElement_prefix".}
proc fcQWebElement_localName(self: pointer, ): struct_miqt_string {.importc: "QWebElement_localName".}
proc fcQWebElement_namespaceUri(self: pointer, ): struct_miqt_string {.importc: "QWebElement_namespaceUri".}
proc fcQWebElement_parent(self: pointer, ): pointer {.importc: "QWebElement_parent".}
proc fcQWebElement_firstChild(self: pointer, ): pointer {.importc: "QWebElement_firstChild".}
proc fcQWebElement_lastChild(self: pointer, ): pointer {.importc: "QWebElement_lastChild".}
proc fcQWebElement_nextSibling(self: pointer, ): pointer {.importc: "QWebElement_nextSibling".}
proc fcQWebElement_previousSibling(self: pointer, ): pointer {.importc: "QWebElement_previousSibling".}
proc fcQWebElement_document(self: pointer, ): pointer {.importc: "QWebElement_document".}
proc fcQWebElement_webFrame(self: pointer, ): pointer {.importc: "QWebElement_webFrame".}
proc fcQWebElement_appendInside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_appendInside".}
proc fcQWebElement_appendInsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_appendInsideWithElement".}
proc fcQWebElement_prependInside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_prependInside".}
proc fcQWebElement_prependInsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_prependInsideWithElement".}
proc fcQWebElement_appendOutside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_appendOutside".}
proc fcQWebElement_appendOutsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_appendOutsideWithElement".}
proc fcQWebElement_prependOutside(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_prependOutside".}
proc fcQWebElement_prependOutsideWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_prependOutsideWithElement".}
proc fcQWebElement_encloseContentsWith(self: pointer, element: pointer): void {.importc: "QWebElement_encloseContentsWith".}
proc fcQWebElement_encloseContentsWithWithMarkup(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_encloseContentsWithWithMarkup".}
proc fcQWebElement_encloseWith(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_encloseWith".}
proc fcQWebElement_encloseWithWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_encloseWithWithElement".}
proc fcQWebElement_replace(self: pointer, markup: struct_miqt_string): void {.importc: "QWebElement_replace".}
proc fcQWebElement_replaceWithElement(self: pointer, element: pointer): void {.importc: "QWebElement_replaceWithElement".}
proc fcQWebElement_clone(self: pointer, ): pointer {.importc: "QWebElement_clone".}
proc fcQWebElement_takeFromDocument(self: pointer, ): pointer {.importc: "QWebElement_takeFromDocument".}
proc fcQWebElement_removeFromDocument(self: pointer, ): void {.importc: "QWebElement_removeFromDocument".}
proc fcQWebElement_removeAllChildren(self: pointer, ): void {.importc: "QWebElement_removeAllChildren".}
proc fcQWebElement_evaluateJavaScript(self: pointer, scriptSource: struct_miqt_string): pointer {.importc: "QWebElement_evaluateJavaScript".}
proc fcQWebElement_styleProperty(self: pointer, name: struct_miqt_string, strategy: cint): struct_miqt_string {.importc: "QWebElement_styleProperty".}
proc fcQWebElement_setStyleProperty(self: pointer, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QWebElement_setStyleProperty".}
proc fcQWebElement_render(self: pointer, painter: pointer): void {.importc: "QWebElement_render".}
proc fcQWebElement_render2(self: pointer, painter: pointer, clipRect: pointer): void {.importc: "QWebElement_render2".}
proc fcQWebElement_attribute2(self: pointer, name: struct_miqt_string, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attribute2".}
proc fcQWebElement_attributeNS3(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, defaultValue: struct_miqt_string): struct_miqt_string {.importc: "QWebElement_attributeNS3".}
proc fcQWebElement_attributeNames1(self: pointer, namespaceUri: struct_miqt_string): struct_miqt_array {.importc: "QWebElement_attributeNames1".}
proc fcQWebElement_delete(self: pointer) {.importc: "QWebElement_delete".}
proc fcQWebElementCollection_new(): ptr cQWebElementCollection {.importc: "QWebElementCollection_new".}
proc fcQWebElementCollection_new2(contextElement: pointer, query: struct_miqt_string): ptr cQWebElementCollection {.importc: "QWebElementCollection_new2".}
proc fcQWebElementCollection_new3(param1: pointer): ptr cQWebElementCollection {.importc: "QWebElementCollection_new3".}
proc fcQWebElementCollection_operatorAssign(self: pointer, param1: pointer): void {.importc: "QWebElementCollection_operatorAssign".}
proc fcQWebElementCollection_operatorPlus(self: pointer, other: pointer): pointer {.importc: "QWebElementCollection_operatorPlus".}
proc fcQWebElementCollection_operatorPlusAssign(self: pointer, other: pointer): pointer {.importc: "QWebElementCollection_operatorPlusAssign".}
proc fcQWebElementCollection_append(self: pointer, collection: pointer): void {.importc: "QWebElementCollection_append".}
proc fcQWebElementCollection_count(self: pointer, ): cint {.importc: "QWebElementCollection_count".}
proc fcQWebElementCollection_at(self: pointer, i: cint): pointer {.importc: "QWebElementCollection_at".}
proc fcQWebElementCollection_operatorSubscript(self: pointer, i: cint): pointer {.importc: "QWebElementCollection_operatorSubscript".}
proc fcQWebElementCollection_first(self: pointer, ): pointer {.importc: "QWebElementCollection_first".}
proc fcQWebElementCollection_last(self: pointer, ): pointer {.importc: "QWebElementCollection_last".}
proc fcQWebElementCollection_toList(self: pointer, ): struct_miqt_array {.importc: "QWebElementCollection_toList".}
proc fcQWebElementCollection_begin(self: pointer, ): pointer {.importc: "QWebElementCollection_begin".}
proc fcQWebElementCollection_endX(self: pointer, ): pointer {.importc: "QWebElementCollection_end".}
proc fcQWebElementCollection_constBegin(self: pointer, ): pointer {.importc: "QWebElementCollection_constBegin".}
proc fcQWebElementCollection_constEnd(self: pointer, ): pointer {.importc: "QWebElementCollection_constEnd".}
proc fcQWebElementCollection_begin2(self: pointer, ): pointer {.importc: "QWebElementCollection_begin2".}
proc fcQWebElementCollection_end2(self: pointer, ): pointer {.importc: "QWebElementCollection_end2".}
proc fcQWebElementCollection_delete(self: pointer) {.importc: "QWebElementCollection_delete".}
proc fcQWebElementCollectionconst_iterator_new(collection_x: pointer, index: cint): ptr cQWebElementCollectionconst_iterator {.importc: "QWebElementCollection__const_iterator_new".}
proc fcQWebElementCollectionconst_iterator_new2(o: pointer): ptr cQWebElementCollectionconst_iterator {.importc: "QWebElementCollection__const_iterator_new2".}
proc fcQWebElementCollectionconst_iterator_operatorMultiply(self: pointer, ): pointer {.importc: "QWebElementCollection__const_iterator_operatorMultiply".}
proc fcQWebElementCollectionconst_iterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorEqual".}
proc fcQWebElementCollectionconst_iterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorNotEqual".}
proc fcQWebElementCollectionconst_iterator_operatorLesser(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorLesser".}
proc fcQWebElementCollectionconst_iterator_operatorLesserOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorLesserOrEqual".}
proc fcQWebElementCollectionconst_iterator_operatorGreater(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorGreater".}
proc fcQWebElementCollectionconst_iterator_operatorGreaterOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__const_iterator_operatorGreaterOrEqual".}
proc fcQWebElementCollectionconst_iterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlusPlus".}
proc fcQWebElementCollectionconst_iterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlusPlusWithInt".}
proc fcQWebElementCollectionconst_iterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinusMinus".}
proc fcQWebElementCollectionconst_iterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinusMinusWithInt".}
proc fcQWebElementCollectionconst_iterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlusAssign".}
proc fcQWebElementCollectionconst_iterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinusAssign".}
proc fcQWebElementCollectionconst_iterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorPlus".}
proc fcQWebElementCollectionconst_iterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__const_iterator_operatorMinus".}
proc fcQWebElementCollectionconst_iterator_operatorMinusWithQWebElementCollectionconstIterator(self: pointer, j: pointer): cint {.importc: "QWebElementCollection__const_iterator_operatorMinusWithQWebElementCollectionconstIterator".}
proc fcQWebElementCollectionconst_iterator_delete(self: pointer) {.importc: "QWebElementCollection__const_iterator_delete".}
proc fcQWebElementCollectioniterator_new(collection_x: pointer, index: cint): ptr cQWebElementCollectioniterator {.importc: "QWebElementCollection__iterator_new".}
proc fcQWebElementCollectioniterator_new2(o: pointer): ptr cQWebElementCollectioniterator {.importc: "QWebElementCollection__iterator_new2".}
proc fcQWebElementCollectioniterator_operatorMultiply(self: pointer, ): pointer {.importc: "QWebElementCollection__iterator_operatorMultiply".}
proc fcQWebElementCollectioniterator_operatorEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorEqual".}
proc fcQWebElementCollectioniterator_operatorNotEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorNotEqual".}
proc fcQWebElementCollectioniterator_operatorLesser(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorLesser".}
proc fcQWebElementCollectioniterator_operatorLesserOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorLesserOrEqual".}
proc fcQWebElementCollectioniterator_operatorGreater(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorGreater".}
proc fcQWebElementCollectioniterator_operatorGreaterOrEqual(self: pointer, o: pointer): bool {.importc: "QWebElementCollection__iterator_operatorGreaterOrEqual".}
proc fcQWebElementCollectioniterator_operatorPlusPlus(self: pointer, ): pointer {.importc: "QWebElementCollection__iterator_operatorPlusPlus".}
proc fcQWebElementCollectioniterator_operatorPlusPlusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__iterator_operatorPlusPlusWithInt".}
proc fcQWebElementCollectioniterator_operatorMinusMinus(self: pointer, ): pointer {.importc: "QWebElementCollection__iterator_operatorMinusMinus".}
proc fcQWebElementCollectioniterator_operatorMinusMinusWithInt(self: pointer, param1: cint): pointer {.importc: "QWebElementCollection__iterator_operatorMinusMinusWithInt".}
proc fcQWebElementCollectioniterator_operatorPlusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorPlusAssign".}
proc fcQWebElementCollectioniterator_operatorMinusAssign(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorMinusAssign".}
proc fcQWebElementCollectioniterator_operatorPlus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorPlus".}
proc fcQWebElementCollectioniterator_operatorMinus(self: pointer, j: cint): pointer {.importc: "QWebElementCollection__iterator_operatorMinus".}
proc fcQWebElementCollectioniterator_operatorMinusWithQWebElementCollectioniterator(self: pointer, j: pointer): cint {.importc: "QWebElementCollection__iterator_operatorMinusWithQWebElementCollectioniterator".}
proc fcQWebElementCollectioniterator_delete(self: pointer) {.importc: "QWebElementCollection__iterator_delete".}


func init*(T: type QWebElement, h: ptr cQWebElement): QWebElement =
  T(h: h)
proc create*(T: type QWebElement, ): QWebElement =

  QWebElement.init(fcQWebElement_new())
proc create*(T: type QWebElement, param1: QWebElement): QWebElement =

  QWebElement.init(fcQWebElement_new2(param1.h))
proc operatorAssign*(self: QWebElement, param1: QWebElement): void =

  fcQWebElement_operatorAssign(self.h, param1.h)

proc operatorEqual*(self: QWebElement, o: QWebElement): bool =

  fcQWebElement_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QWebElement, o: QWebElement): bool =

  fcQWebElement_operatorNotEqual(self.h, o.h)

proc isNull*(self: QWebElement, ): bool =

  fcQWebElement_isNull(self.h)

proc findAll*(self: QWebElement, selectorQuery: string): QWebElementCollection =

  QWebElementCollection(h: fcQWebElement_findAll(self.h, struct_miqt_string(data: selectorQuery, len: csize_t(len(selectorQuery)))))

proc findFirst*(self: QWebElement, selectorQuery: string): QWebElement =

  QWebElement(h: fcQWebElement_findFirst(self.h, struct_miqt_string(data: selectorQuery, len: csize_t(len(selectorQuery)))))

proc setPlainText*(self: QWebElement, text: string): void =

  fcQWebElement_setPlainText(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc toPlainText*(self: QWebElement, ): string =

  let v_ms = fcQWebElement_toPlainText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setOuterXml*(self: QWebElement, markup: string): void =

  fcQWebElement_setOuterXml(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc toOuterXml*(self: QWebElement, ): string =

  let v_ms = fcQWebElement_toOuterXml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setInnerXml*(self: QWebElement, markup: string): void =

  fcQWebElement_setInnerXml(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc toInnerXml*(self: QWebElement, ): string =

  let v_ms = fcQWebElement_toInnerXml(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setAttribute*(self: QWebElement, name: string, value: string): void =

  fcQWebElement_setAttribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc setAttributeNS*(self: QWebElement, namespaceUri: string, name: string, value: string): void =

  fcQWebElement_setAttributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc attribute*(self: QWebElement, name: string): string =

  let v_ms = fcQWebElement_attribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc attributeNS*(self: QWebElement, namespaceUri: string, name: string): string =

  let v_ms = fcQWebElement_attributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc hasAttribute*(self: QWebElement, name: string): bool =

  fcQWebElement_hasAttribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasAttributeNS*(self: QWebElement, namespaceUri: string, name: string): bool =

  fcQWebElement_hasAttributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc removeAttribute*(self: QWebElement, name: string): void =

  fcQWebElement_removeAttribute(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc removeAttributeNS*(self: QWebElement, namespaceUri: string, name: string): void =

  fcQWebElement_removeAttributeNS(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasAttributes*(self: QWebElement, ): bool =

  fcQWebElement_hasAttributes(self.h)

proc attributeNames*(self: QWebElement, ): seq[string] =

  var v_ma = fcQWebElement_attributeNames(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc classes*(self: QWebElement, ): seq[string] =

  var v_ma = fcQWebElement_classes(self.h)
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc hasClass*(self: QWebElement, name: string): bool =

  fcQWebElement_hasClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc addClass*(self: QWebElement, name: string): void =

  fcQWebElement_addClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc removeClass*(self: QWebElement, name: string): void =

  fcQWebElement_removeClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc toggleClass*(self: QWebElement, name: string): void =

  fcQWebElement_toggleClass(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc hasFocus*(self: QWebElement, ): bool =

  fcQWebElement_hasFocus(self.h)

proc setFocus*(self: QWebElement, ): void =

  fcQWebElement_setFocus(self.h)

proc geometry*(self: QWebElement, ): gen_qrect.QRect =

  gen_qrect.QRect(h: fcQWebElement_geometry(self.h))

proc tagName*(self: QWebElement, ): string =

  let v_ms = fcQWebElement_tagName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc prefix*(self: QWebElement, ): string =

  let v_ms = fcQWebElement_prefix(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc localName*(self: QWebElement, ): string =

  let v_ms = fcQWebElement_localName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc namespaceUri*(self: QWebElement, ): string =

  let v_ms = fcQWebElement_namespaceUri(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc parent*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_parent(self.h))

proc firstChild*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_firstChild(self.h))

proc lastChild*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_lastChild(self.h))

proc nextSibling*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_nextSibling(self.h))

proc previousSibling*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_previousSibling(self.h))

proc document*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_document(self.h))

proc webFrame*(self: QWebElement, ): gen_qwebframe.QWebFrame =

  gen_qwebframe.QWebFrame(h: fcQWebElement_webFrame(self.h))

proc appendInside*(self: QWebElement, markup: string): void =

  fcQWebElement_appendInside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc appendInsideWithElement*(self: QWebElement, element: QWebElement): void =

  fcQWebElement_appendInsideWithElement(self.h, element.h)

proc prependInside*(self: QWebElement, markup: string): void =

  fcQWebElement_prependInside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc prependInsideWithElement*(self: QWebElement, element: QWebElement): void =

  fcQWebElement_prependInsideWithElement(self.h, element.h)

proc appendOutside*(self: QWebElement, markup: string): void =

  fcQWebElement_appendOutside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc appendOutsideWithElement*(self: QWebElement, element: QWebElement): void =

  fcQWebElement_appendOutsideWithElement(self.h, element.h)

proc prependOutside*(self: QWebElement, markup: string): void =

  fcQWebElement_prependOutside(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc prependOutsideWithElement*(self: QWebElement, element: QWebElement): void =

  fcQWebElement_prependOutsideWithElement(self.h, element.h)

proc encloseContentsWith*(self: QWebElement, element: QWebElement): void =

  fcQWebElement_encloseContentsWith(self.h, element.h)

proc encloseContentsWithWithMarkup*(self: QWebElement, markup: string): void =

  fcQWebElement_encloseContentsWithWithMarkup(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc encloseWith*(self: QWebElement, markup: string): void =

  fcQWebElement_encloseWith(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc encloseWithWithElement*(self: QWebElement, element: QWebElement): void =

  fcQWebElement_encloseWithWithElement(self.h, element.h)

proc replace*(self: QWebElement, markup: string): void =

  fcQWebElement_replace(self.h, struct_miqt_string(data: markup, len: csize_t(len(markup))))

proc replaceWithElement*(self: QWebElement, element: QWebElement): void =

  fcQWebElement_replaceWithElement(self.h, element.h)

proc clone*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_clone(self.h))

proc takeFromDocument*(self: QWebElement, ): QWebElement =

  QWebElement(h: fcQWebElement_takeFromDocument(self.h))

proc removeFromDocument*(self: QWebElement, ): void =

  fcQWebElement_removeFromDocument(self.h)

proc removeAllChildren*(self: QWebElement, ): void =

  fcQWebElement_removeAllChildren(self.h)

proc evaluateJavaScript*(self: QWebElement, scriptSource: string): gen_qvariant.QVariant =

  gen_qvariant.QVariant(h: fcQWebElement_evaluateJavaScript(self.h, struct_miqt_string(data: scriptSource, len: csize_t(len(scriptSource)))))

proc styleProperty*(self: QWebElement, name: string, strategy: QWebElementStyleResolveStrategy): string =

  let v_ms = fcQWebElement_styleProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), cint(strategy))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setStyleProperty*(self: QWebElement, name: string, value: string): void =

  fcQWebElement_setStyleProperty(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc render*(self: QWebElement, painter: gen_qpainter.QPainter): void =

  fcQWebElement_render(self.h, painter.h)

proc render2*(self: QWebElement, painter: gen_qpainter.QPainter, clipRect: gen_qrect.QRect): void =

  fcQWebElement_render2(self.h, painter.h, clipRect.h)

proc attribute2*(self: QWebElement, name: string, defaultValue: string): string =

  let v_ms = fcQWebElement_attribute2(self.h, struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc attributeNS3*(self: QWebElement, namespaceUri: string, name: string, defaultValue: string): string =

  let v_ms = fcQWebElement_attributeNS3(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: defaultValue, len: csize_t(len(defaultValue))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc attributeNames1*(self: QWebElement, namespaceUri: string): seq[string] =

  var v_ma = fcQWebElement_attributeNames1(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))))
  var vx_ret = newSeq[string](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[struct_miqt_string]](v_ma.data)
  for i in 0 ..< v_ma.len:
    let vx_lv_ms = v_outCast[i]
    let vx_lvx_ret = string.fromBytes(toOpenArrayByte(vx_lv_ms.data, 0, int(vx_lv_ms.len)-1))
    c_free(vx_lv_ms.data)
    vx_ret[i] = vx_lvx_ret
  vx_ret

proc delete*(self: QWebElement) =
  fcQWebElement_delete(self.h)

func init*(T: type QWebElementCollection, h: ptr cQWebElementCollection): QWebElementCollection =
  T(h: h)
proc create*(T: type QWebElementCollection, ): QWebElementCollection =

  QWebElementCollection.init(fcQWebElementCollection_new())
proc create*(T: type QWebElementCollection, contextElement: QWebElement, query: string): QWebElementCollection =

  QWebElementCollection.init(fcQWebElementCollection_new2(contextElement.h, struct_miqt_string(data: query, len: csize_t(len(query)))))
proc create*(T: type QWebElementCollection, param1: QWebElementCollection): QWebElementCollection =

  QWebElementCollection.init(fcQWebElementCollection_new3(param1.h))
proc operatorAssign*(self: QWebElementCollection, param1: QWebElementCollection): void =

  fcQWebElementCollection_operatorAssign(self.h, param1.h)

proc operatorPlus*(self: QWebElementCollection, other: QWebElementCollection): QWebElementCollection =

  QWebElementCollection(h: fcQWebElementCollection_operatorPlus(self.h, other.h))

proc operatorPlusAssign*(self: QWebElementCollection, other: QWebElementCollection): QWebElementCollection =

  QWebElementCollection(h: fcQWebElementCollection_operatorPlusAssign(self.h, other.h))

proc append*(self: QWebElementCollection, collection: QWebElementCollection): void =

  fcQWebElementCollection_append(self.h, collection.h)

proc count*(self: QWebElementCollection, ): cint =

  fcQWebElementCollection_count(self.h)

proc at*(self: QWebElementCollection, i: cint): QWebElement =

  QWebElement(h: fcQWebElementCollection_at(self.h, i))

proc operatorSubscript*(self: QWebElementCollection, i: cint): QWebElement =

  QWebElement(h: fcQWebElementCollection_operatorSubscript(self.h, i))

proc first*(self: QWebElementCollection, ): QWebElement =

  QWebElement(h: fcQWebElementCollection_first(self.h))

proc last*(self: QWebElementCollection, ): QWebElement =

  QWebElement(h: fcQWebElementCollection_last(self.h))

proc toList*(self: QWebElementCollection, ): seq[QWebElement] =

  var v_ma = fcQWebElementCollection_toList(self.h)
  var vx_ret = newSeq[QWebElement](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QWebElement(h: v_outCast[i])
  vx_ret

proc begin*(self: QWebElementCollection, ): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollection_begin(self.h))

proc endX*(self: QWebElementCollection, ): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollection_endX(self.h))

proc constBegin*(self: QWebElementCollection, ): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollection_constBegin(self.h))

proc constEnd*(self: QWebElementCollection, ): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollection_constEnd(self.h))

proc begin2*(self: QWebElementCollection, ): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollection_begin2(self.h))

proc end2*(self: QWebElementCollection, ): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollection_end2(self.h))

proc delete*(self: QWebElementCollection) =
  fcQWebElementCollection_delete(self.h)

func init*(T: type QWebElementCollectionconst_iterator, h: ptr cQWebElementCollectionconst_iterator): QWebElementCollectionconst_iterator =
  T(h: h)
proc create*(T: type QWebElementCollectionconst_iterator, collection_x: QWebElementCollection, index: cint): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator.init(fcQWebElementCollectionconst_iterator_new(collection_x.h, index))
proc create*(T: type QWebElementCollectionconst_iterator, o: QWebElementCollectionconst_iterator): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator.init(fcQWebElementCollectionconst_iterator_new2(o.h))
proc operatorMultiply*(self: QWebElementCollectionconst_iterator, ): QWebElement =

  QWebElement(h: fcQWebElementCollectionconst_iterator_operatorMultiply(self.h))

proc operatorEqual*(self: QWebElementCollectionconst_iterator, o: QWebElementCollectionconst_iterator): bool =

  fcQWebElementCollectionconst_iterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QWebElementCollectionconst_iterator, o: QWebElementCollectionconst_iterator): bool =

  fcQWebElementCollectionconst_iterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: QWebElementCollectionconst_iterator, o: QWebElementCollectionconst_iterator): bool =

  fcQWebElementCollectionconst_iterator_operatorLesser(self.h, o.h)

proc operatorLesserOrEqual*(self: QWebElementCollectionconst_iterator, o: QWebElementCollectionconst_iterator): bool =

  fcQWebElementCollectionconst_iterator_operatorLesserOrEqual(self.h, o.h)

proc operatorGreater*(self: QWebElementCollectionconst_iterator, o: QWebElementCollectionconst_iterator): bool =

  fcQWebElementCollectionconst_iterator_operatorGreater(self.h, o.h)

proc operatorGreaterOrEqual*(self: QWebElementCollectionconst_iterator, o: QWebElementCollectionconst_iterator): bool =

  fcQWebElementCollectionconst_iterator_operatorGreaterOrEqual(self.h, o.h)

proc operatorPlusPlus*(self: QWebElementCollectionconst_iterator, ): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QWebElementCollectionconst_iterator, param1: cint): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QWebElementCollectionconst_iterator, ): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QWebElementCollectionconst_iterator, param1: cint): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlusAssign*(self: QWebElementCollectionconst_iterator, j: cint): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QWebElementCollectionconst_iterator, j: cint): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinusAssign(self.h, j))

proc operatorPlus*(self: QWebElementCollectionconst_iterator, j: cint): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QWebElementCollectionconst_iterator, j: cint): QWebElementCollectionconst_iterator =

  QWebElementCollectionconst_iterator(h: fcQWebElementCollectionconst_iterator_operatorMinus(self.h, j))

proc operatorMinusWithQWebElementCollectionconstIterator*(self: QWebElementCollectionconst_iterator, j: QWebElementCollectionconst_iterator): cint =

  fcQWebElementCollectionconst_iterator_operatorMinusWithQWebElementCollectionconstIterator(self.h, j.h)

proc delete*(self: QWebElementCollectionconst_iterator) =
  fcQWebElementCollectionconst_iterator_delete(self.h)

func init*(T: type QWebElementCollectioniterator, h: ptr cQWebElementCollectioniterator): QWebElementCollectioniterator =
  T(h: h)
proc create*(T: type QWebElementCollectioniterator, collection_x: QWebElementCollection, index: cint): QWebElementCollectioniterator =

  QWebElementCollectioniterator.init(fcQWebElementCollectioniterator_new(collection_x.h, index))
proc create*(T: type QWebElementCollectioniterator, o: QWebElementCollectioniterator): QWebElementCollectioniterator =

  QWebElementCollectioniterator.init(fcQWebElementCollectioniterator_new2(o.h))
proc operatorMultiply*(self: QWebElementCollectioniterator, ): QWebElement =

  QWebElement(h: fcQWebElementCollectioniterator_operatorMultiply(self.h))

proc operatorEqual*(self: QWebElementCollectioniterator, o: QWebElementCollectioniterator): bool =

  fcQWebElementCollectioniterator_operatorEqual(self.h, o.h)

proc operatorNotEqual*(self: QWebElementCollectioniterator, o: QWebElementCollectioniterator): bool =

  fcQWebElementCollectioniterator_operatorNotEqual(self.h, o.h)

proc operatorLesser*(self: QWebElementCollectioniterator, o: QWebElementCollectioniterator): bool =

  fcQWebElementCollectioniterator_operatorLesser(self.h, o.h)

proc operatorLesserOrEqual*(self: QWebElementCollectioniterator, o: QWebElementCollectioniterator): bool =

  fcQWebElementCollectioniterator_operatorLesserOrEqual(self.h, o.h)

proc operatorGreater*(self: QWebElementCollectioniterator, o: QWebElementCollectioniterator): bool =

  fcQWebElementCollectioniterator_operatorGreater(self.h, o.h)

proc operatorGreaterOrEqual*(self: QWebElementCollectioniterator, o: QWebElementCollectioniterator): bool =

  fcQWebElementCollectioniterator_operatorGreaterOrEqual(self.h, o.h)

proc operatorPlusPlus*(self: QWebElementCollectioniterator, ): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlusPlus(self.h))

proc operatorPlusPlusWithInt*(self: QWebElementCollectioniterator, param1: cint): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlusPlusWithInt(self.h, param1))

proc operatorMinusMinus*(self: QWebElementCollectioniterator, ): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinusMinus(self.h))

proc operatorMinusMinusWithInt*(self: QWebElementCollectioniterator, param1: cint): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinusMinusWithInt(self.h, param1))

proc operatorPlusAssign*(self: QWebElementCollectioniterator, j: cint): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlusAssign(self.h, j))

proc operatorMinusAssign*(self: QWebElementCollectioniterator, j: cint): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinusAssign(self.h, j))

proc operatorPlus*(self: QWebElementCollectioniterator, j: cint): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorPlus(self.h, j))

proc operatorMinus*(self: QWebElementCollectioniterator, j: cint): QWebElementCollectioniterator =

  QWebElementCollectioniterator(h: fcQWebElementCollectioniterator_operatorMinus(self.h, j))

proc operatorMinusWithQWebElementCollectioniterator*(self: QWebElementCollectioniterator, j: QWebElementCollectioniterator): cint =

  fcQWebElementCollectioniterator_operatorMinusWithQWebElementCollectioniterator(self.h, j.h)

proc delete*(self: QWebElementCollectioniterator) =
  fcQWebElementCollectioniterator_delete(self.h)
