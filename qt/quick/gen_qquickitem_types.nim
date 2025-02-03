import gen_qobject_types
export gen_qobject_types
type QQuickTransform*  = object of gen_qobject_types.QObject
import gen_qobject_types
export gen_qobject_types
# TODO Multiple inheritance from QQmlParserStatus
type QQuickItem*  = object of gen_qobject_types.QObject
type QQuickItemItemChangeData* {.inheritable, pure.} = object
  h*: pointer
type QQuickItemUpdatePaintNodeData* {.inheritable, pure.} = object
  h*: pointer

