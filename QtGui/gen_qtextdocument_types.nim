type QAbstractUndoItem* {.inheritable, pure.} = object
  h*: pointer
import gen_qobject_types
export gen_qobject_types
type QTextDocument*  = object of gen_qobject_types.QObject

