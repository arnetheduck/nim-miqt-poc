type QCameraFocusZone* {.inheritable, pure.} = object
  h*: pointer
import gen_qobject_types
export gen_qobject_types

type QCameraFocus* = object of gen_qobject_types.QObject
