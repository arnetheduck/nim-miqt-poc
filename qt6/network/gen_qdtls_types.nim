import gen_qobject_types
export gen_qobject_types
type QDtlsClientVerifier*  = object of gen_qobject_types.QObject
import gen_qobject_types
export gen_qobject_types
type QDtls*  = object of gen_qobject_types.QObject
type QDtlsClientVerifierGeneratorParameters* {.inheritable, pure.} = object
  h*: pointer

