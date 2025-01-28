type QHttpPart* {.inheritable, pure.} = object
  h*: pointer
import gen_qobject_types
export gen_qobject_types

type QHttpMultiPart* = object of gen_qobject_types.QObject
