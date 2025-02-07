import Qt5PrintSupport_libs

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

const cflags = gorge("pkg-config --cflags Qt5PrintSupport")
{.compile("gen_qscistyledtext.cpp", cflags).}

import gen_qscistyledtext_types
export gen_qscistyledtext_types

import
  gen_qsciscintillabase_types,
  gen_qscistyle_types
export
  gen_qsciscintillabase_types,
  gen_qscistyle_types

type cQsciStyledText*{.exportc: "QsciStyledText", incompleteStruct.} = object

proc fcQsciStyledText_apply(self: pointer, sci: pointer): void {.importc: "QsciStyledText_apply".}
proc fcQsciStyledText_text(self: pointer, ): struct_miqt_string {.importc: "QsciStyledText_text".}
proc fcQsciStyledText_style(self: pointer, ): cint {.importc: "QsciStyledText_style".}
proc fcQsciStyledText_new(text: struct_miqt_string, style: cint): ptr cQsciStyledText {.importc: "QsciStyledText_new".}
proc fcQsciStyledText_new2(text: struct_miqt_string, style: pointer): ptr cQsciStyledText {.importc: "QsciStyledText_new2".}
proc fcQsciStyledText_new3(param1: pointer): ptr cQsciStyledText {.importc: "QsciStyledText_new3".}
proc fcQsciStyledText_delete(self: pointer) {.importc: "QsciStyledText_delete".}

proc apply*(self: gen_qscistyledtext_types.QsciStyledText, sci: gen_qsciscintillabase_types.QsciScintillaBase): void =
  fcQsciStyledText_apply(self.h, sci.h)

proc text*(self: gen_qscistyledtext_types.QsciStyledText, ): string =
  let v_ms = fcQsciStyledText_text(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc style*(self: gen_qscistyledtext_types.QsciStyledText, ): cint =
  fcQsciStyledText_style(self.h)

proc create*(T: type gen_qscistyledtext_types.QsciStyledText,
    text: string, style: cint): gen_qscistyledtext_types.QsciStyledText =
  gen_qscistyledtext_types.QsciStyledText(h: fcQsciStyledText_new(struct_miqt_string(data: text, len: csize_t(len(text))), style))

proc create*(T: type gen_qscistyledtext_types.QsciStyledText,
    text: string, style: gen_qscistyle_types.QsciStyle): gen_qscistyledtext_types.QsciStyledText =
  gen_qscistyledtext_types.QsciStyledText(h: fcQsciStyledText_new2(struct_miqt_string(data: text, len: csize_t(len(text))), style.h))

proc create*(T: type gen_qscistyledtext_types.QsciStyledText,
    param1: gen_qscistyledtext_types.QsciStyledText): gen_qscistyledtext_types.QsciStyledText =
  gen_qscistyledtext_types.QsciStyledText(h: fcQsciStyledText_new3(param1.h))

proc delete*(self: gen_qscistyledtext_types.QsciStyledText) =
  fcQsciStyledText_delete(self.h)
