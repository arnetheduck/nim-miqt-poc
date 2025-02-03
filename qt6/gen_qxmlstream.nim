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
{.compile("gen_qxmlstream.cpp", cflags).}


type QXmlStreamReaderTokenType* = cint
const
  QXmlStreamReaderNoToken* = 0
  QXmlStreamReaderInvalid* = 1
  QXmlStreamReaderStartDocument* = 2
  QXmlStreamReaderEndDocument* = 3
  QXmlStreamReaderStartElement* = 4
  QXmlStreamReaderEndElement* = 5
  QXmlStreamReaderCharacters* = 6
  QXmlStreamReaderComment* = 7
  QXmlStreamReaderDTD* = 8
  QXmlStreamReaderEntityReference* = 9
  QXmlStreamReaderProcessingInstruction* = 10



type QXmlStreamReaderReadElementTextBehaviour* = cint
const
  QXmlStreamReaderErrorOnUnexpectedElement* = 0
  QXmlStreamReaderIncludeChildElements* = 1
  QXmlStreamReaderSkipChildElements* = 2



type QXmlStreamReaderError* = cint
const
  QXmlStreamReaderNoError* = 0
  QXmlStreamReaderUnexpectedElementError* = 1
  QXmlStreamReaderCustomError* = 2
  QXmlStreamReaderNotWellFormedError* = 3
  QXmlStreamReaderPrematureEndOfDocumentError* = 4



import gen_qxmlstream_types
export gen_qxmlstream_types

import
  gen_qiodevice
export
  gen_qiodevice

type cQXmlStreamAttribute*{.exportc: "QXmlStreamAttribute", incompleteStruct.} = object
type cQXmlStreamNamespaceDeclaration*{.exportc: "QXmlStreamNamespaceDeclaration", incompleteStruct.} = object
type cQXmlStreamNotationDeclaration*{.exportc: "QXmlStreamNotationDeclaration", incompleteStruct.} = object
type cQXmlStreamEntityDeclaration*{.exportc: "QXmlStreamEntityDeclaration", incompleteStruct.} = object
type cQXmlStreamEntityResolver*{.exportc: "QXmlStreamEntityResolver", incompleteStruct.} = object
type cQXmlStreamReader*{.exportc: "QXmlStreamReader", incompleteStruct.} = object
type cQXmlStreamWriter*{.exportc: "QXmlStreamWriter", incompleteStruct.} = object

proc fcQXmlStreamAttribute_new(): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new".}
proc fcQXmlStreamAttribute_new2(qualifiedName: struct_miqt_string, value: struct_miqt_string): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new2".}
proc fcQXmlStreamAttribute_new3(namespaceUri: struct_miqt_string, name: struct_miqt_string, value: struct_miqt_string): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new3".}
proc fcQXmlStreamAttribute_new4(param1: pointer): ptr cQXmlStreamAttribute {.importc: "QXmlStreamAttribute_new4".}
proc fcQXmlStreamAttribute_isDefault(self: pointer, ): bool {.importc: "QXmlStreamAttribute_isDefault".}
proc fcQXmlStreamAttribute_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamAttribute_operatorEqual".}
proc fcQXmlStreamAttribute_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamAttribute_operatorNotEqual".}
proc fcQXmlStreamAttribute_operatorAssign(self: pointer, param1: pointer): void {.importc: "QXmlStreamAttribute_operatorAssign".}
proc fcQXmlStreamAttribute_delete(self: pointer) {.importc: "QXmlStreamAttribute_delete".}
proc fcQXmlStreamNamespaceDeclaration_new(): ptr cQXmlStreamNamespaceDeclaration {.importc: "QXmlStreamNamespaceDeclaration_new".}
proc fcQXmlStreamNamespaceDeclaration_new2(prefix: struct_miqt_string, namespaceUri: struct_miqt_string): ptr cQXmlStreamNamespaceDeclaration {.importc: "QXmlStreamNamespaceDeclaration_new2".}
proc fcQXmlStreamNamespaceDeclaration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNamespaceDeclaration_operatorEqual".}
proc fcQXmlStreamNamespaceDeclaration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNamespaceDeclaration_operatorNotEqual".}
proc fcQXmlStreamNamespaceDeclaration_delete(self: pointer) {.importc: "QXmlStreamNamespaceDeclaration_delete".}
proc fcQXmlStreamNotationDeclaration_new(): ptr cQXmlStreamNotationDeclaration {.importc: "QXmlStreamNotationDeclaration_new".}
proc fcQXmlStreamNotationDeclaration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNotationDeclaration_operatorEqual".}
proc fcQXmlStreamNotationDeclaration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamNotationDeclaration_operatorNotEqual".}
proc fcQXmlStreamNotationDeclaration_delete(self: pointer) {.importc: "QXmlStreamNotationDeclaration_delete".}
proc fcQXmlStreamEntityDeclaration_new(): ptr cQXmlStreamEntityDeclaration {.importc: "QXmlStreamEntityDeclaration_new".}
proc fcQXmlStreamEntityDeclaration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamEntityDeclaration_operatorEqual".}
proc fcQXmlStreamEntityDeclaration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QXmlStreamEntityDeclaration_operatorNotEqual".}
proc fcQXmlStreamEntityDeclaration_delete(self: pointer) {.importc: "QXmlStreamEntityDeclaration_delete".}
proc fcQXmlStreamEntityResolver_resolveEntity(self: pointer, publicId: struct_miqt_string, systemId: struct_miqt_string): struct_miqt_string {.importc: "QXmlStreamEntityResolver_resolveEntity".}
proc fcQXmlStreamEntityResolver_resolveUndeclaredEntity(self: pointer, name: struct_miqt_string): struct_miqt_string {.importc: "QXmlStreamEntityResolver_resolveUndeclaredEntity".}
proc fcQXmlStreamEntityResolver_delete(self: pointer) {.importc: "QXmlStreamEntityResolver_delete".}
proc fcQXmlStreamReader_new(): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new".}
proc fcQXmlStreamReader_new2(device: pointer): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new2".}
proc fcQXmlStreamReader_new3(data: struct_miqt_string): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new3".}
proc fcQXmlStreamReader_new4(data: struct_miqt_string): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new4".}
proc fcQXmlStreamReader_new5(data: cstring): ptr cQXmlStreamReader {.importc: "QXmlStreamReader_new5".}
proc fcQXmlStreamReader_setDevice(self: pointer, device: pointer): void {.importc: "QXmlStreamReader_setDevice".}
proc fcQXmlStreamReader_device(self: pointer, ): pointer {.importc: "QXmlStreamReader_device".}
proc fcQXmlStreamReader_addData(self: pointer, data: struct_miqt_string): void {.importc: "QXmlStreamReader_addData".}
proc fcQXmlStreamReader_addDataWithData(self: pointer, data: struct_miqt_string): void {.importc: "QXmlStreamReader_addDataWithData".}
proc fcQXmlStreamReader_addData2(self: pointer, data: cstring): void {.importc: "QXmlStreamReader_addData2".}
proc fcQXmlStreamReader_clear(self: pointer, ): void {.importc: "QXmlStreamReader_clear".}
proc fcQXmlStreamReader_atEnd(self: pointer, ): bool {.importc: "QXmlStreamReader_atEnd".}
proc fcQXmlStreamReader_readNext(self: pointer, ): cint {.importc: "QXmlStreamReader_readNext".}
proc fcQXmlStreamReader_readNextStartElement(self: pointer, ): bool {.importc: "QXmlStreamReader_readNextStartElement".}
proc fcQXmlStreamReader_skipCurrentElement(self: pointer, ): void {.importc: "QXmlStreamReader_skipCurrentElement".}
proc fcQXmlStreamReader_tokenType(self: pointer, ): cint {.importc: "QXmlStreamReader_tokenType".}
proc fcQXmlStreamReader_tokenString(self: pointer, ): struct_miqt_string {.importc: "QXmlStreamReader_tokenString".}
proc fcQXmlStreamReader_setNamespaceProcessing(self: pointer, namespaceProcessing: bool): void {.importc: "QXmlStreamReader_setNamespaceProcessing".}
proc fcQXmlStreamReader_namespaceProcessing(self: pointer, ): bool {.importc: "QXmlStreamReader_namespaceProcessing".}
proc fcQXmlStreamReader_isStartDocument(self: pointer, ): bool {.importc: "QXmlStreamReader_isStartDocument".}
proc fcQXmlStreamReader_isEndDocument(self: pointer, ): bool {.importc: "QXmlStreamReader_isEndDocument".}
proc fcQXmlStreamReader_isStartElement(self: pointer, ): bool {.importc: "QXmlStreamReader_isStartElement".}
proc fcQXmlStreamReader_isEndElement(self: pointer, ): bool {.importc: "QXmlStreamReader_isEndElement".}
proc fcQXmlStreamReader_isCharacters(self: pointer, ): bool {.importc: "QXmlStreamReader_isCharacters".}
proc fcQXmlStreamReader_isWhitespace(self: pointer, ): bool {.importc: "QXmlStreamReader_isWhitespace".}
proc fcQXmlStreamReader_isCDATA(self: pointer, ): bool {.importc: "QXmlStreamReader_isCDATA".}
proc fcQXmlStreamReader_isComment(self: pointer, ): bool {.importc: "QXmlStreamReader_isComment".}
proc fcQXmlStreamReader_isDTD(self: pointer, ): bool {.importc: "QXmlStreamReader_isDTD".}
proc fcQXmlStreamReader_isEntityReference(self: pointer, ): bool {.importc: "QXmlStreamReader_isEntityReference".}
proc fcQXmlStreamReader_isProcessingInstruction(self: pointer, ): bool {.importc: "QXmlStreamReader_isProcessingInstruction".}
proc fcQXmlStreamReader_isStandaloneDocument(self: pointer, ): bool {.importc: "QXmlStreamReader_isStandaloneDocument".}
proc fcQXmlStreamReader_lineNumber(self: pointer, ): clonglong {.importc: "QXmlStreamReader_lineNumber".}
proc fcQXmlStreamReader_columnNumber(self: pointer, ): clonglong {.importc: "QXmlStreamReader_columnNumber".}
proc fcQXmlStreamReader_characterOffset(self: pointer, ): clonglong {.importc: "QXmlStreamReader_characterOffset".}
proc fcQXmlStreamReader_readElementText(self: pointer, ): struct_miqt_string {.importc: "QXmlStreamReader_readElementText".}
proc fcQXmlStreamReader_namespaceDeclarations(self: pointer, ): struct_miqt_array {.importc: "QXmlStreamReader_namespaceDeclarations".}
proc fcQXmlStreamReader_addExtraNamespaceDeclaration(self: pointer, extraNamespaceDeclaraction: pointer): void {.importc: "QXmlStreamReader_addExtraNamespaceDeclaration".}
proc fcQXmlStreamReader_addExtraNamespaceDeclarations(self: pointer, extraNamespaceDeclaractions: struct_miqt_array): void {.importc: "QXmlStreamReader_addExtraNamespaceDeclarations".}
proc fcQXmlStreamReader_notationDeclarations(self: pointer, ): struct_miqt_array {.importc: "QXmlStreamReader_notationDeclarations".}
proc fcQXmlStreamReader_entityDeclarations(self: pointer, ): struct_miqt_array {.importc: "QXmlStreamReader_entityDeclarations".}
proc fcQXmlStreamReader_entityExpansionLimit(self: pointer, ): cint {.importc: "QXmlStreamReader_entityExpansionLimit".}
proc fcQXmlStreamReader_setEntityExpansionLimit(self: pointer, limit: cint): void {.importc: "QXmlStreamReader_setEntityExpansionLimit".}
proc fcQXmlStreamReader_raiseError(self: pointer, ): void {.importc: "QXmlStreamReader_raiseError".}
proc fcQXmlStreamReader_errorString(self: pointer, ): struct_miqt_string {.importc: "QXmlStreamReader_errorString".}
proc fcQXmlStreamReader_error(self: pointer, ): cint {.importc: "QXmlStreamReader_error".}
proc fcQXmlStreamReader_hasError(self: pointer, ): bool {.importc: "QXmlStreamReader_hasError".}
proc fcQXmlStreamReader_setEntityResolver(self: pointer, resolver: pointer): void {.importc: "QXmlStreamReader_setEntityResolver".}
proc fcQXmlStreamReader_entityResolver(self: pointer, ): pointer {.importc: "QXmlStreamReader_entityResolver".}
proc fcQXmlStreamReader_readElementText1(self: pointer, behaviour: cint): struct_miqt_string {.importc: "QXmlStreamReader_readElementText1".}
proc fcQXmlStreamReader_raiseError1(self: pointer, message: struct_miqt_string): void {.importc: "QXmlStreamReader_raiseError1".}
proc fcQXmlStreamReader_delete(self: pointer) {.importc: "QXmlStreamReader_delete".}
proc fcQXmlStreamWriter_new(): ptr cQXmlStreamWriter {.importc: "QXmlStreamWriter_new".}
proc fcQXmlStreamWriter_new2(device: pointer): ptr cQXmlStreamWriter {.importc: "QXmlStreamWriter_new2".}
proc fcQXmlStreamWriter_setDevice(self: pointer, device: pointer): void {.importc: "QXmlStreamWriter_setDevice".}
proc fcQXmlStreamWriter_device(self: pointer, ): pointer {.importc: "QXmlStreamWriter_device".}
proc fcQXmlStreamWriter_setAutoFormatting(self: pointer, autoFormatting: bool): void {.importc: "QXmlStreamWriter_setAutoFormatting".}
proc fcQXmlStreamWriter_autoFormatting(self: pointer, ): bool {.importc: "QXmlStreamWriter_autoFormatting".}
proc fcQXmlStreamWriter_setAutoFormattingIndent(self: pointer, spacesOrTabs: cint): void {.importc: "QXmlStreamWriter_setAutoFormattingIndent".}
proc fcQXmlStreamWriter_autoFormattingIndent(self: pointer, ): cint {.importc: "QXmlStreamWriter_autoFormattingIndent".}
proc fcQXmlStreamWriter_writeAttribute(self: pointer, qualifiedName: struct_miqt_string, value: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeAttribute".}
proc fcQXmlStreamWriter_writeAttribute2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, value: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeAttribute2".}
proc fcQXmlStreamWriter_writeAttributeWithAttribute(self: pointer, attribute: pointer): void {.importc: "QXmlStreamWriter_writeAttributeWithAttribute".}
proc fcQXmlStreamWriter_writeCDATA(self: pointer, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeCDATA".}
proc fcQXmlStreamWriter_writeCharacters(self: pointer, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeCharacters".}
proc fcQXmlStreamWriter_writeComment(self: pointer, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeComment".}
proc fcQXmlStreamWriter_writeDTD(self: pointer, dtd: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeDTD".}
proc fcQXmlStreamWriter_writeEmptyElement(self: pointer, qualifiedName: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeEmptyElement".}
proc fcQXmlStreamWriter_writeEmptyElement2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeEmptyElement2".}
proc fcQXmlStreamWriter_writeTextElement(self: pointer, qualifiedName: struct_miqt_string, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeTextElement".}
proc fcQXmlStreamWriter_writeTextElement2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string, text: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeTextElement2".}
proc fcQXmlStreamWriter_writeEndDocument(self: pointer, ): void {.importc: "QXmlStreamWriter_writeEndDocument".}
proc fcQXmlStreamWriter_writeEndElement(self: pointer, ): void {.importc: "QXmlStreamWriter_writeEndElement".}
proc fcQXmlStreamWriter_writeEntityReference(self: pointer, name: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeEntityReference".}
proc fcQXmlStreamWriter_writeNamespace(self: pointer, namespaceUri: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeNamespace".}
proc fcQXmlStreamWriter_writeDefaultNamespace(self: pointer, namespaceUri: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeDefaultNamespace".}
proc fcQXmlStreamWriter_writeProcessingInstruction(self: pointer, target: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeProcessingInstruction".}
proc fcQXmlStreamWriter_writeStartDocument(self: pointer, ): void {.importc: "QXmlStreamWriter_writeStartDocument".}
proc fcQXmlStreamWriter_writeStartDocumentWithVersion(self: pointer, version: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeStartDocumentWithVersion".}
proc fcQXmlStreamWriter_writeStartDocument2(self: pointer, version: struct_miqt_string, standalone: bool): void {.importc: "QXmlStreamWriter_writeStartDocument2".}
proc fcQXmlStreamWriter_writeStartElement(self: pointer, qualifiedName: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeStartElement".}
proc fcQXmlStreamWriter_writeStartElement2(self: pointer, namespaceUri: struct_miqt_string, name: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeStartElement2".}
proc fcQXmlStreamWriter_writeCurrentToken(self: pointer, reader: pointer): void {.importc: "QXmlStreamWriter_writeCurrentToken".}
proc fcQXmlStreamWriter_hasError(self: pointer, ): bool {.importc: "QXmlStreamWriter_hasError".}
proc fcQXmlStreamWriter_writeNamespace2(self: pointer, namespaceUri: struct_miqt_string, prefix: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeNamespace2".}
proc fcQXmlStreamWriter_writeProcessingInstruction2(self: pointer, target: struct_miqt_string, data: struct_miqt_string): void {.importc: "QXmlStreamWriter_writeProcessingInstruction2".}
proc fcQXmlStreamWriter_delete(self: pointer) {.importc: "QXmlStreamWriter_delete".}


func init*(T: type QXmlStreamAttribute, h: ptr cQXmlStreamAttribute): QXmlStreamAttribute =
  T(h: h)
proc create*(T: type QXmlStreamAttribute, ): QXmlStreamAttribute =

  QXmlStreamAttribute.init(fcQXmlStreamAttribute_new())
proc create*(T: type QXmlStreamAttribute, qualifiedName: string, value: string): QXmlStreamAttribute =

  QXmlStreamAttribute.init(fcQXmlStreamAttribute_new2(struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))), struct_miqt_string(data: value, len: csize_t(len(value)))))
proc create*(T: type QXmlStreamAttribute, namespaceUri: string, name: string, value: string): QXmlStreamAttribute =

  QXmlStreamAttribute.init(fcQXmlStreamAttribute_new3(struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value)))))
proc create*(T: type QXmlStreamAttribute, param1: QXmlStreamAttribute): QXmlStreamAttribute =

  QXmlStreamAttribute.init(fcQXmlStreamAttribute_new4(param1.h))
proc isDefault*(self: QXmlStreamAttribute, ): bool =

  fcQXmlStreamAttribute_isDefault(self.h)

proc operatorEqual*(self: QXmlStreamAttribute, other: QXmlStreamAttribute): bool =

  fcQXmlStreamAttribute_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QXmlStreamAttribute, other: QXmlStreamAttribute): bool =

  fcQXmlStreamAttribute_operatorNotEqual(self.h, other.h)

proc operatorAssign*(self: QXmlStreamAttribute, param1: QXmlStreamAttribute): void =

  fcQXmlStreamAttribute_operatorAssign(self.h, param1.h)

proc delete*(self: QXmlStreamAttribute) =
  fcQXmlStreamAttribute_delete(self.h)

func init*(T: type QXmlStreamNamespaceDeclaration, h: ptr cQXmlStreamNamespaceDeclaration): QXmlStreamNamespaceDeclaration =
  T(h: h)
proc create*(T: type QXmlStreamNamespaceDeclaration, ): QXmlStreamNamespaceDeclaration =

  QXmlStreamNamespaceDeclaration.init(fcQXmlStreamNamespaceDeclaration_new())
proc create*(T: type QXmlStreamNamespaceDeclaration, prefix: string, namespaceUri: string): QXmlStreamNamespaceDeclaration =

  QXmlStreamNamespaceDeclaration.init(fcQXmlStreamNamespaceDeclaration_new2(struct_miqt_string(data: prefix, len: csize_t(len(prefix))), struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri)))))
proc operatorEqual*(self: QXmlStreamNamespaceDeclaration, other: QXmlStreamNamespaceDeclaration): bool =

  fcQXmlStreamNamespaceDeclaration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QXmlStreamNamespaceDeclaration, other: QXmlStreamNamespaceDeclaration): bool =

  fcQXmlStreamNamespaceDeclaration_operatorNotEqual(self.h, other.h)

proc delete*(self: QXmlStreamNamespaceDeclaration) =
  fcQXmlStreamNamespaceDeclaration_delete(self.h)

func init*(T: type QXmlStreamNotationDeclaration, h: ptr cQXmlStreamNotationDeclaration): QXmlStreamNotationDeclaration =
  T(h: h)
proc create*(T: type QXmlStreamNotationDeclaration, ): QXmlStreamNotationDeclaration =

  QXmlStreamNotationDeclaration.init(fcQXmlStreamNotationDeclaration_new())
proc operatorEqual*(self: QXmlStreamNotationDeclaration, other: QXmlStreamNotationDeclaration): bool =

  fcQXmlStreamNotationDeclaration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QXmlStreamNotationDeclaration, other: QXmlStreamNotationDeclaration): bool =

  fcQXmlStreamNotationDeclaration_operatorNotEqual(self.h, other.h)

proc delete*(self: QXmlStreamNotationDeclaration) =
  fcQXmlStreamNotationDeclaration_delete(self.h)

func init*(T: type QXmlStreamEntityDeclaration, h: ptr cQXmlStreamEntityDeclaration): QXmlStreamEntityDeclaration =
  T(h: h)
proc create*(T: type QXmlStreamEntityDeclaration, ): QXmlStreamEntityDeclaration =

  QXmlStreamEntityDeclaration.init(fcQXmlStreamEntityDeclaration_new())
proc operatorEqual*(self: QXmlStreamEntityDeclaration, other: QXmlStreamEntityDeclaration): bool =

  fcQXmlStreamEntityDeclaration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QXmlStreamEntityDeclaration, other: QXmlStreamEntityDeclaration): bool =

  fcQXmlStreamEntityDeclaration_operatorNotEqual(self.h, other.h)

proc delete*(self: QXmlStreamEntityDeclaration) =
  fcQXmlStreamEntityDeclaration_delete(self.h)

func init*(T: type QXmlStreamEntityResolver, h: ptr cQXmlStreamEntityResolver): QXmlStreamEntityResolver =
  T(h: h)
proc resolveEntity*(self: QXmlStreamEntityResolver, publicId: string, systemId: string): string =

  let v_ms = fcQXmlStreamEntityResolver_resolveEntity(self.h, struct_miqt_string(data: publicId, len: csize_t(len(publicId))), struct_miqt_string(data: systemId, len: csize_t(len(systemId))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc resolveUndeclaredEntity*(self: QXmlStreamEntityResolver, name: string): string =

  let v_ms = fcQXmlStreamEntityResolver_resolveUndeclaredEntity(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc delete*(self: QXmlStreamEntityResolver) =
  fcQXmlStreamEntityResolver_delete(self.h)

func init*(T: type QXmlStreamReader, h: ptr cQXmlStreamReader): QXmlStreamReader =
  T(h: h)
proc create*(T: type QXmlStreamReader, ): QXmlStreamReader =

  QXmlStreamReader.init(fcQXmlStreamReader_new())
proc create*(T: type QXmlStreamReader, device: gen_qiodevice.QIODevice): QXmlStreamReader =

  QXmlStreamReader.init(fcQXmlStreamReader_new2(device.h))
proc create*(T: type QXmlStreamReader, data: seq[byte]): QXmlStreamReader =

  QXmlStreamReader.init(fcQXmlStreamReader_new3(struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data)))))
proc create2*(T: type QXmlStreamReader, data: string): QXmlStreamReader =

  QXmlStreamReader.init(fcQXmlStreamReader_new4(struct_miqt_string(data: data, len: csize_t(len(data)))))
proc create*(T: type QXmlStreamReader, data: cstring): QXmlStreamReader =

  QXmlStreamReader.init(fcQXmlStreamReader_new5(data))
proc setDevice*(self: QXmlStreamReader, device: gen_qiodevice.QIODevice): void =

  fcQXmlStreamReader_setDevice(self.h, device.h)

proc device*(self: QXmlStreamReader, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQXmlStreamReader_device(self.h))

proc addData*(self: QXmlStreamReader, data: seq[byte]): void =

  fcQXmlStreamReader_addData(self.h, struct_miqt_string(data: cast[cstring](if len(data) == 0: nil else: unsafeAddr data[0]), len: csize_t(len(data))))

proc addDataWithData*(self: QXmlStreamReader, data: string): void =

  fcQXmlStreamReader_addDataWithData(self.h, struct_miqt_string(data: data, len: csize_t(len(data))))

proc addData2*(self: QXmlStreamReader, data: cstring): void =

  fcQXmlStreamReader_addData2(self.h, data)

proc clear*(self: QXmlStreamReader, ): void =

  fcQXmlStreamReader_clear(self.h)

proc atEnd*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_atEnd(self.h)

proc readNext*(self: QXmlStreamReader, ): QXmlStreamReaderTokenType =

  QXmlStreamReaderTokenType(fcQXmlStreamReader_readNext(self.h))

proc readNextStartElement*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_readNextStartElement(self.h)

proc skipCurrentElement*(self: QXmlStreamReader, ): void =

  fcQXmlStreamReader_skipCurrentElement(self.h)

proc tokenType*(self: QXmlStreamReader, ): QXmlStreamReaderTokenType =

  QXmlStreamReaderTokenType(fcQXmlStreamReader_tokenType(self.h))

proc tokenString*(self: QXmlStreamReader, ): string =

  let v_ms = fcQXmlStreamReader_tokenString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc setNamespaceProcessing*(self: QXmlStreamReader, namespaceProcessing: bool): void =

  fcQXmlStreamReader_setNamespaceProcessing(self.h, namespaceProcessing)

proc namespaceProcessing*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_namespaceProcessing(self.h)

proc isStartDocument*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isStartDocument(self.h)

proc isEndDocument*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isEndDocument(self.h)

proc isStartElement*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isStartElement(self.h)

proc isEndElement*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isEndElement(self.h)

proc isCharacters*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isCharacters(self.h)

proc isWhitespace*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isWhitespace(self.h)

proc isCDATA*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isCDATA(self.h)

proc isComment*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isComment(self.h)

proc isDTD*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isDTD(self.h)

proc isEntityReference*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isEntityReference(self.h)

proc isProcessingInstruction*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isProcessingInstruction(self.h)

proc isStandaloneDocument*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_isStandaloneDocument(self.h)

proc lineNumber*(self: QXmlStreamReader, ): clonglong =

  fcQXmlStreamReader_lineNumber(self.h)

proc columnNumber*(self: QXmlStreamReader, ): clonglong =

  fcQXmlStreamReader_columnNumber(self.h)

proc characterOffset*(self: QXmlStreamReader, ): clonglong =

  fcQXmlStreamReader_characterOffset(self.h)

proc readElementText*(self: QXmlStreamReader, ): string =

  let v_ms = fcQXmlStreamReader_readElementText(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc namespaceDeclarations*(self: QXmlStreamReader, ): seq[QXmlStreamNamespaceDeclaration] =

  var v_ma = fcQXmlStreamReader_namespaceDeclarations(self.h)
  var vx_ret = newSeq[QXmlStreamNamespaceDeclaration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QXmlStreamNamespaceDeclaration(h: v_outCast[i])
  vx_ret

proc addExtraNamespaceDeclaration*(self: QXmlStreamReader, extraNamespaceDeclaraction: QXmlStreamNamespaceDeclaration): void =

  fcQXmlStreamReader_addExtraNamespaceDeclaration(self.h, extraNamespaceDeclaraction.h)

proc addExtraNamespaceDeclarations*(self: QXmlStreamReader, extraNamespaceDeclaractions: seq[QXmlStreamNamespaceDeclaration]): void =

  var extraNamespaceDeclaractions_CArray = newSeq[pointer](len(extraNamespaceDeclaractions))
  for i in 0..<len(extraNamespaceDeclaractions):
    extraNamespaceDeclaractions_CArray[i] = extraNamespaceDeclaractions[i].h

  fcQXmlStreamReader_addExtraNamespaceDeclarations(self.h, struct_miqt_array(len: csize_t(len(extraNamespaceDeclaractions)), data: if len(extraNamespaceDeclaractions) == 0: nil else: addr(extraNamespaceDeclaractions_CArray[0])))

proc notationDeclarations*(self: QXmlStreamReader, ): seq[QXmlStreamNotationDeclaration] =

  var v_ma = fcQXmlStreamReader_notationDeclarations(self.h)
  var vx_ret = newSeq[QXmlStreamNotationDeclaration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QXmlStreamNotationDeclaration(h: v_outCast[i])
  vx_ret

proc entityDeclarations*(self: QXmlStreamReader, ): seq[QXmlStreamEntityDeclaration] =

  var v_ma = fcQXmlStreamReader_entityDeclarations(self.h)
  var vx_ret = newSeq[QXmlStreamEntityDeclaration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QXmlStreamEntityDeclaration(h: v_outCast[i])
  vx_ret

proc entityExpansionLimit*(self: QXmlStreamReader, ): cint =

  fcQXmlStreamReader_entityExpansionLimit(self.h)

proc setEntityExpansionLimit*(self: QXmlStreamReader, limit: cint): void =

  fcQXmlStreamReader_setEntityExpansionLimit(self.h, limit)

proc raiseError*(self: QXmlStreamReader, ): void =

  fcQXmlStreamReader_raiseError(self.h)

proc errorString*(self: QXmlStreamReader, ): string =

  let v_ms = fcQXmlStreamReader_errorString(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc error*(self: QXmlStreamReader, ): QXmlStreamReaderError =

  QXmlStreamReaderError(fcQXmlStreamReader_error(self.h))

proc hasError*(self: QXmlStreamReader, ): bool =

  fcQXmlStreamReader_hasError(self.h)

proc setEntityResolver*(self: QXmlStreamReader, resolver: QXmlStreamEntityResolver): void =

  fcQXmlStreamReader_setEntityResolver(self.h, resolver.h)

proc entityResolver*(self: QXmlStreamReader, ): QXmlStreamEntityResolver =

  QXmlStreamEntityResolver(h: fcQXmlStreamReader_entityResolver(self.h))

proc readElementText1*(self: QXmlStreamReader, behaviour: QXmlStreamReaderReadElementTextBehaviour): string =

  let v_ms = fcQXmlStreamReader_readElementText1(self.h, cint(behaviour))
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc raiseError1*(self: QXmlStreamReader, message: string): void =

  fcQXmlStreamReader_raiseError1(self.h, struct_miqt_string(data: message, len: csize_t(len(message))))

proc delete*(self: QXmlStreamReader) =
  fcQXmlStreamReader_delete(self.h)

func init*(T: type QXmlStreamWriter, h: ptr cQXmlStreamWriter): QXmlStreamWriter =
  T(h: h)
proc create*(T: type QXmlStreamWriter, ): QXmlStreamWriter =

  QXmlStreamWriter.init(fcQXmlStreamWriter_new())
proc create*(T: type QXmlStreamWriter, device: gen_qiodevice.QIODevice): QXmlStreamWriter =

  QXmlStreamWriter.init(fcQXmlStreamWriter_new2(device.h))
proc setDevice*(self: QXmlStreamWriter, device: gen_qiodevice.QIODevice): void =

  fcQXmlStreamWriter_setDevice(self.h, device.h)

proc device*(self: QXmlStreamWriter, ): gen_qiodevice.QIODevice =

  gen_qiodevice.QIODevice(h: fcQXmlStreamWriter_device(self.h))

proc setAutoFormatting*(self: QXmlStreamWriter, autoFormatting: bool): void =

  fcQXmlStreamWriter_setAutoFormatting(self.h, autoFormatting)

proc autoFormatting*(self: QXmlStreamWriter, ): bool =

  fcQXmlStreamWriter_autoFormatting(self.h)

proc setAutoFormattingIndent*(self: QXmlStreamWriter, spacesOrTabs: cint): void =

  fcQXmlStreamWriter_setAutoFormattingIndent(self.h, spacesOrTabs)

proc autoFormattingIndent*(self: QXmlStreamWriter, ): cint =

  fcQXmlStreamWriter_autoFormattingIndent(self.h)

proc writeAttribute*(self: QXmlStreamWriter, qualifiedName: string, value: string): void =

  fcQXmlStreamWriter_writeAttribute(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc writeAttribute2*(self: QXmlStreamWriter, namespaceUri: string, name: string, value: string): void =

  fcQXmlStreamWriter_writeAttribute2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: value, len: csize_t(len(value))))

proc writeAttributeWithAttribute*(self: QXmlStreamWriter, attribute: QXmlStreamAttribute): void =

  fcQXmlStreamWriter_writeAttributeWithAttribute(self.h, attribute.h)

proc writeCDATA*(self: QXmlStreamWriter, text: string): void =

  fcQXmlStreamWriter_writeCDATA(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeCharacters*(self: QXmlStreamWriter, text: string): void =

  fcQXmlStreamWriter_writeCharacters(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeComment*(self: QXmlStreamWriter, text: string): void =

  fcQXmlStreamWriter_writeComment(self.h, struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeDTD*(self: QXmlStreamWriter, dtd: string): void =

  fcQXmlStreamWriter_writeDTD(self.h, struct_miqt_string(data: dtd, len: csize_t(len(dtd))))

proc writeEmptyElement*(self: QXmlStreamWriter, qualifiedName: string): void =

  fcQXmlStreamWriter_writeEmptyElement(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))))

proc writeEmptyElement2*(self: QXmlStreamWriter, namespaceUri: string, name: string): void =

  fcQXmlStreamWriter_writeEmptyElement2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc writeTextElement*(self: QXmlStreamWriter, qualifiedName: string, text: string): void =

  fcQXmlStreamWriter_writeTextElement(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))), struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeTextElement2*(self: QXmlStreamWriter, namespaceUri: string, name: string, text: string): void =

  fcQXmlStreamWriter_writeTextElement2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))), struct_miqt_string(data: text, len: csize_t(len(text))))

proc writeEndDocument*(self: QXmlStreamWriter, ): void =

  fcQXmlStreamWriter_writeEndDocument(self.h)

proc writeEndElement*(self: QXmlStreamWriter, ): void =

  fcQXmlStreamWriter_writeEndElement(self.h)

proc writeEntityReference*(self: QXmlStreamWriter, name: string): void =

  fcQXmlStreamWriter_writeEntityReference(self.h, struct_miqt_string(data: name, len: csize_t(len(name))))

proc writeNamespace*(self: QXmlStreamWriter, namespaceUri: string): void =

  fcQXmlStreamWriter_writeNamespace(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))))

proc writeDefaultNamespace*(self: QXmlStreamWriter, namespaceUri: string): void =

  fcQXmlStreamWriter_writeDefaultNamespace(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))))

proc writeProcessingInstruction*(self: QXmlStreamWriter, target: string): void =

  fcQXmlStreamWriter_writeProcessingInstruction(self.h, struct_miqt_string(data: target, len: csize_t(len(target))))

proc writeStartDocument*(self: QXmlStreamWriter, ): void =

  fcQXmlStreamWriter_writeStartDocument(self.h)

proc writeStartDocumentWithVersion*(self: QXmlStreamWriter, version: string): void =

  fcQXmlStreamWriter_writeStartDocumentWithVersion(self.h, struct_miqt_string(data: version, len: csize_t(len(version))))

proc writeStartDocument2*(self: QXmlStreamWriter, version: string, standalone: bool): void =

  fcQXmlStreamWriter_writeStartDocument2(self.h, struct_miqt_string(data: version, len: csize_t(len(version))), standalone)

proc writeStartElement*(self: QXmlStreamWriter, qualifiedName: string): void =

  fcQXmlStreamWriter_writeStartElement(self.h, struct_miqt_string(data: qualifiedName, len: csize_t(len(qualifiedName))))

proc writeStartElement2*(self: QXmlStreamWriter, namespaceUri: string, name: string): void =

  fcQXmlStreamWriter_writeStartElement2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: name, len: csize_t(len(name))))

proc writeCurrentToken*(self: QXmlStreamWriter, reader: QXmlStreamReader): void =

  fcQXmlStreamWriter_writeCurrentToken(self.h, reader.h)

proc hasError*(self: QXmlStreamWriter, ): bool =

  fcQXmlStreamWriter_hasError(self.h)

proc writeNamespace2*(self: QXmlStreamWriter, namespaceUri: string, prefix: string): void =

  fcQXmlStreamWriter_writeNamespace2(self.h, struct_miqt_string(data: namespaceUri, len: csize_t(len(namespaceUri))), struct_miqt_string(data: prefix, len: csize_t(len(prefix))))

proc writeProcessingInstruction2*(self: QXmlStreamWriter, target: string, data: string): void =

  fcQXmlStreamWriter_writeProcessingInstruction2(self.h, struct_miqt_string(data: target, len: csize_t(len(target))), struct_miqt_string(data: data, len: csize_t(len(data))))

proc delete*(self: QXmlStreamWriter) =
  fcQXmlStreamWriter_delete(self.h)
