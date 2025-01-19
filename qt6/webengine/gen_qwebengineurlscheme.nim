import Qt6WebEngineWidgets_libs

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

const cflags = gorge("pkg-config -cflags Qt6WebEngineWidgets")
{.compile("gen_qwebengineurlscheme.cpp", cflags).}


type QWebEngineUrlSchemeSyntax* = cint
const
  QWebEngineUrlSchemeHostPortAndUserInformation* = 0
  QWebEngineUrlSchemeHostAndPort* = 1
  QWebEngineUrlSchemeHost* = 2
  QWebEngineUrlSchemePath* = 3



type QWebEngineUrlSchemeSpecialPort* = cint
const
  QWebEngineUrlSchemePortUnspecified* = -1



type QWebEngineUrlSchemeFlag* = cint
const
  QWebEngineUrlSchemeSecureScheme* = 1
  QWebEngineUrlSchemeLocalScheme* = 2
  QWebEngineUrlSchemeLocalAccessAllowed* = 4
  QWebEngineUrlSchemeNoAccessAllowed* = 8
  QWebEngineUrlSchemeServiceWorkersAllowed* = 16
  QWebEngineUrlSchemeViewSourceAllowed* = 32
  QWebEngineUrlSchemeContentSecurityPolicyIgnored* = 64
  QWebEngineUrlSchemeCorsEnabled* = 128



import gen_qwebengineurlscheme_types
export gen_qwebengineurlscheme_types

import
  gen_qobjectdefs
export
  gen_qobjectdefs

type cQWebEngineUrlScheme*{.exportc: "QWebEngineUrlScheme", incompleteStruct.} = object

proc fcQWebEngineUrlScheme_new(): ptr cQWebEngineUrlScheme {.importc: "QWebEngineUrlScheme_new".}
proc fcQWebEngineUrlScheme_new2(name: struct_miqt_string): ptr cQWebEngineUrlScheme {.importc: "QWebEngineUrlScheme_new2".}
proc fcQWebEngineUrlScheme_new3(that: pointer): ptr cQWebEngineUrlScheme {.importc: "QWebEngineUrlScheme_new3".}
proc fcQWebEngineUrlScheme_operatorAssign(self: pointer, that: pointer): void {.importc: "QWebEngineUrlScheme_operatorAssign".}
proc fcQWebEngineUrlScheme_operatorEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineUrlScheme_operatorEqual".}
proc fcQWebEngineUrlScheme_operatorNotEqual(self: pointer, that: pointer): bool {.importc: "QWebEngineUrlScheme_operatorNotEqual".}
proc fcQWebEngineUrlScheme_name(self: pointer, ): struct_miqt_string {.importc: "QWebEngineUrlScheme_name".}
proc fcQWebEngineUrlScheme_setName(self: pointer, newValue: struct_miqt_string): void {.importc: "QWebEngineUrlScheme_setName".}
proc fcQWebEngineUrlScheme_syntax(self: pointer, ): cint {.importc: "QWebEngineUrlScheme_syntax".}
proc fcQWebEngineUrlScheme_setSyntax(self: pointer, newValue: cint): void {.importc: "QWebEngineUrlScheme_setSyntax".}
proc fcQWebEngineUrlScheme_defaultPort(self: pointer, ): cint {.importc: "QWebEngineUrlScheme_defaultPort".}
proc fcQWebEngineUrlScheme_setDefaultPort(self: pointer, newValue: cint): void {.importc: "QWebEngineUrlScheme_setDefaultPort".}
proc fcQWebEngineUrlScheme_flags(self: pointer, ): cint {.importc: "QWebEngineUrlScheme_flags".}
proc fcQWebEngineUrlScheme_setFlags(self: pointer, newValue: cint): void {.importc: "QWebEngineUrlScheme_setFlags".}
proc fcQWebEngineUrlScheme_registerScheme(scheme: pointer): void {.importc: "QWebEngineUrlScheme_registerScheme".}
proc fcQWebEngineUrlScheme_schemeByName(name: struct_miqt_string): pointer {.importc: "QWebEngineUrlScheme_schemeByName".}
proc fcQWebEngineUrlScheme_staticMetaObject(): pointer {.importc: "QWebEngineUrlScheme_staticMetaObject".}
proc fcQWebEngineUrlScheme_delete(self: pointer) {.importc: "QWebEngineUrlScheme_delete".}


func init*(T: type QWebEngineUrlScheme, h: ptr cQWebEngineUrlScheme): QWebEngineUrlScheme =
  T(h: h)
proc create*(T: type QWebEngineUrlScheme, ): QWebEngineUrlScheme =

  QWebEngineUrlScheme.init(fcQWebEngineUrlScheme_new())
proc create*(T: type QWebEngineUrlScheme, name: seq[byte]): QWebEngineUrlScheme =

  QWebEngineUrlScheme.init(fcQWebEngineUrlScheme_new2(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))))
proc create*(T: type QWebEngineUrlScheme, that: QWebEngineUrlScheme): QWebEngineUrlScheme =

  QWebEngineUrlScheme.init(fcQWebEngineUrlScheme_new3(that.h))
proc operatorAssign*(self: QWebEngineUrlScheme, that: QWebEngineUrlScheme): void =

  fcQWebEngineUrlScheme_operatorAssign(self.h, that.h)

proc operatorEqual*(self: QWebEngineUrlScheme, that: QWebEngineUrlScheme): bool =

  fcQWebEngineUrlScheme_operatorEqual(self.h, that.h)

proc operatorNotEqual*(self: QWebEngineUrlScheme, that: QWebEngineUrlScheme): bool =

  fcQWebEngineUrlScheme_operatorNotEqual(self.h, that.h)

proc name*(self: QWebEngineUrlScheme, ): seq[byte] =

  var v_bytearray = fcQWebEngineUrlScheme_name(self.h)
  var vx_ret = @(toOpenArrayByte(v_bytearray.data, 0, int(v_bytearray.len)-1))
  c_free(v_bytearray.data)
  vx_ret

proc setName*(self: QWebEngineUrlScheme, newValue: seq[byte]): void =

  fcQWebEngineUrlScheme_setName(self.h, struct_miqt_string(data: cast[cstring](if len(newValue) == 0: nil else: unsafeAddr newValue[0]), len: csize_t(len(newValue))))

proc syntax*(self: QWebEngineUrlScheme, ): QWebEngineUrlSchemeSyntax =

  QWebEngineUrlSchemeSyntax(fcQWebEngineUrlScheme_syntax(self.h))

proc setSyntax*(self: QWebEngineUrlScheme, newValue: QWebEngineUrlSchemeSyntax): void =

  fcQWebEngineUrlScheme_setSyntax(self.h, cint(newValue))

proc defaultPort*(self: QWebEngineUrlScheme, ): cint =

  fcQWebEngineUrlScheme_defaultPort(self.h)

proc setDefaultPort*(self: QWebEngineUrlScheme, newValue: cint): void =

  fcQWebEngineUrlScheme_setDefaultPort(self.h, newValue)

proc flags*(self: QWebEngineUrlScheme, ): QWebEngineUrlSchemeFlag =

  QWebEngineUrlSchemeFlag(fcQWebEngineUrlScheme_flags(self.h))

proc setFlags*(self: QWebEngineUrlScheme, newValue: QWebEngineUrlSchemeFlag): void =

  fcQWebEngineUrlScheme_setFlags(self.h, cint(newValue))

proc registerScheme*(_: type QWebEngineUrlScheme, scheme: QWebEngineUrlScheme): void =

  fcQWebEngineUrlScheme_registerScheme(scheme.h)

proc schemeByName*(_: type QWebEngineUrlScheme, name: seq[byte]): QWebEngineUrlScheme =

  QWebEngineUrlScheme(h: fcQWebEngineUrlScheme_schemeByName(struct_miqt_string(data: cast[cstring](if len(name) == 0: nil else: unsafeAddr name[0]), len: csize_t(len(name)))))

proc staticMetaObject*(_: type QWebEngineUrlScheme): gen_qobjectdefs.QMetaObject =
  gen_qobjectdefs.QMetaObject(h: fcQWebEngineUrlScheme_staticMetaObject())
proc delete*(self: QWebEngineUrlScheme) =
  fcQWebEngineUrlScheme_delete(self.h)
