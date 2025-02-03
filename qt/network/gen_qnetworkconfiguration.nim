import Qt5Network_libs

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

const cflags = gorge("pkg-config -cflags Qt5Network")
{.compile("gen_qnetworkconfiguration.cpp", cflags).}


type QNetworkConfigurationType* = cint
const
  QNetworkConfigurationInternetAccessPoint* = 0
  QNetworkConfigurationServiceNetwork* = 1
  QNetworkConfigurationUserChoice* = 2
  QNetworkConfigurationInvalid* = 3



type QNetworkConfigurationPurpose* = cint
const
  QNetworkConfigurationUnknownPurpose* = 0
  QNetworkConfigurationPublicPurpose* = 1
  QNetworkConfigurationPrivatePurpose* = 2
  QNetworkConfigurationServiceSpecificPurpose* = 3



type QNetworkConfigurationStateFlag* = cint
const
  QNetworkConfigurationUndefined* = 1
  QNetworkConfigurationDefined* = 2
  QNetworkConfigurationDiscovered* = 6
  QNetworkConfigurationActive* = 14



type QNetworkConfigurationBearerType* = cint
const
  QNetworkConfigurationBearerUnknown* = 0
  QNetworkConfigurationBearerEthernet* = 1
  QNetworkConfigurationBearerWLAN* = 2
  QNetworkConfigurationBearer2G* = 3
  QNetworkConfigurationBearerCDMA2000* = 4
  QNetworkConfigurationBearerWCDMA* = 5
  QNetworkConfigurationBearerHSPA* = 6
  QNetworkConfigurationBearerBluetooth* = 7
  QNetworkConfigurationBearerWiMAX* = 8
  QNetworkConfigurationBearerEVDO* = 9
  QNetworkConfigurationBearerLTE* = 10
  QNetworkConfigurationBearer3G* = 11
  QNetworkConfigurationBearer4G* = 12



import gen_qnetworkconfiguration_types
export gen_qnetworkconfiguration_types


type cQNetworkConfiguration*{.exportc: "QNetworkConfiguration", incompleteStruct.} = object

proc fcQNetworkConfiguration_new(): ptr cQNetworkConfiguration {.importc: "QNetworkConfiguration_new".}
proc fcQNetworkConfiguration_new2(other: pointer): ptr cQNetworkConfiguration {.importc: "QNetworkConfiguration_new2".}
proc fcQNetworkConfiguration_operatorAssign(self: pointer, other: pointer): void {.importc: "QNetworkConfiguration_operatorAssign".}
proc fcQNetworkConfiguration_swap(self: pointer, other: pointer): void {.importc: "QNetworkConfiguration_swap".}
proc fcQNetworkConfiguration_operatorEqual(self: pointer, other: pointer): bool {.importc: "QNetworkConfiguration_operatorEqual".}
proc fcQNetworkConfiguration_operatorNotEqual(self: pointer, other: pointer): bool {.importc: "QNetworkConfiguration_operatorNotEqual".}
proc fcQNetworkConfiguration_state(self: pointer, ): cint {.importc: "QNetworkConfiguration_state".}
proc fcQNetworkConfiguration_typeX(self: pointer, ): cint {.importc: "QNetworkConfiguration_type".}
proc fcQNetworkConfiguration_purpose(self: pointer, ): cint {.importc: "QNetworkConfiguration_purpose".}
proc fcQNetworkConfiguration_bearerType(self: pointer, ): cint {.importc: "QNetworkConfiguration_bearerType".}
proc fcQNetworkConfiguration_bearerTypeFamily(self: pointer, ): cint {.importc: "QNetworkConfiguration_bearerTypeFamily".}
proc fcQNetworkConfiguration_bearerTypeName(self: pointer, ): struct_miqt_string {.importc: "QNetworkConfiguration_bearerTypeName".}
proc fcQNetworkConfiguration_identifier(self: pointer, ): struct_miqt_string {.importc: "QNetworkConfiguration_identifier".}
proc fcQNetworkConfiguration_isRoamingAvailable(self: pointer, ): bool {.importc: "QNetworkConfiguration_isRoamingAvailable".}
proc fcQNetworkConfiguration_children(self: pointer, ): struct_miqt_array {.importc: "QNetworkConfiguration_children".}
proc fcQNetworkConfiguration_name(self: pointer, ): struct_miqt_string {.importc: "QNetworkConfiguration_name".}
proc fcQNetworkConfiguration_isValid(self: pointer, ): bool {.importc: "QNetworkConfiguration_isValid".}
proc fcQNetworkConfiguration_connectTimeout(self: pointer, ): cint {.importc: "QNetworkConfiguration_connectTimeout".}
proc fcQNetworkConfiguration_setConnectTimeout(self: pointer, timeout: cint): bool {.importc: "QNetworkConfiguration_setConnectTimeout".}
proc fcQNetworkConfiguration_delete(self: pointer) {.importc: "QNetworkConfiguration_delete".}


func init*(T: type QNetworkConfiguration, h: ptr cQNetworkConfiguration): QNetworkConfiguration =
  T(h: h)
proc create*(T: type QNetworkConfiguration, ): QNetworkConfiguration =

  QNetworkConfiguration.init(fcQNetworkConfiguration_new())
proc create*(T: type QNetworkConfiguration, other: QNetworkConfiguration): QNetworkConfiguration =

  QNetworkConfiguration.init(fcQNetworkConfiguration_new2(other.h))
proc operatorAssign*(self: QNetworkConfiguration, other: QNetworkConfiguration): void =

  fcQNetworkConfiguration_operatorAssign(self.h, other.h)

proc swap*(self: QNetworkConfiguration, other: QNetworkConfiguration): void =

  fcQNetworkConfiguration_swap(self.h, other.h)

proc operatorEqual*(self: QNetworkConfiguration, other: QNetworkConfiguration): bool =

  fcQNetworkConfiguration_operatorEqual(self.h, other.h)

proc operatorNotEqual*(self: QNetworkConfiguration, other: QNetworkConfiguration): bool =

  fcQNetworkConfiguration_operatorNotEqual(self.h, other.h)

proc state*(self: QNetworkConfiguration, ): QNetworkConfigurationStateFlag =

  QNetworkConfigurationStateFlag(fcQNetworkConfiguration_state(self.h))

proc typeX*(self: QNetworkConfiguration, ): QNetworkConfigurationType =

  QNetworkConfigurationType(fcQNetworkConfiguration_typeX(self.h))

proc purpose*(self: QNetworkConfiguration, ): QNetworkConfigurationPurpose =

  QNetworkConfigurationPurpose(fcQNetworkConfiguration_purpose(self.h))

proc bearerType*(self: QNetworkConfiguration, ): QNetworkConfigurationBearerType =

  QNetworkConfigurationBearerType(fcQNetworkConfiguration_bearerType(self.h))

proc bearerTypeFamily*(self: QNetworkConfiguration, ): QNetworkConfigurationBearerType =

  QNetworkConfigurationBearerType(fcQNetworkConfiguration_bearerTypeFamily(self.h))

proc bearerTypeName*(self: QNetworkConfiguration, ): string =

  let v_ms = fcQNetworkConfiguration_bearerTypeName(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc identifier*(self: QNetworkConfiguration, ): string =

  let v_ms = fcQNetworkConfiguration_identifier(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isRoamingAvailable*(self: QNetworkConfiguration, ): bool =

  fcQNetworkConfiguration_isRoamingAvailable(self.h)

proc children*(self: QNetworkConfiguration, ): seq[QNetworkConfiguration] =

  var v_ma = fcQNetworkConfiguration_children(self.h)
  var vx_ret = newSeq[QNetworkConfiguration](int(v_ma.len))
  let v_outCast = cast[ptr UncheckedArray[pointer]](v_ma.data)
  for i in 0 ..< v_ma.len:
    vx_ret[i] = QNetworkConfiguration(h: v_outCast[i])
  vx_ret

proc name*(self: QNetworkConfiguration, ): string =

  let v_ms = fcQNetworkConfiguration_name(self.h)
  let vx_ret = string.fromBytes(toOpenArrayByte(v_ms.data, 0, int(v_ms.len)-1))
  c_free(v_ms.data)
  vx_ret

proc isValid*(self: QNetworkConfiguration, ): bool =

  fcQNetworkConfiguration_isValid(self.h)

proc connectTimeout*(self: QNetworkConfiguration, ): cint =

  fcQNetworkConfiguration_connectTimeout(self.h)

proc setConnectTimeout*(self: QNetworkConfiguration, timeout: cint): bool =

  fcQNetworkConfiguration_setConnectTimeout(self.h, timeout)

proc delete*(self: QNetworkConfiguration) =
  fcQNetworkConfiguration_delete(self.h)
