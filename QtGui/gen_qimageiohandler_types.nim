type QImageIOHandler* {.inheritable, pure.} = object
  h*: pointer
import gen_qobject_types
export gen_qobject_types

type QImageIOPlugin* = object of gen_qobject_types.QObject
