type QWebEngineHistoryItem* {.inheritable, pure.} = object
  h*: pointer
import gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types
type QWebEngineHistoryModel*  = object of gen_qabstractitemmodel_types.QAbstractListModel
import gen_qobject_types
export gen_qobject_types
type QWebEngineHistory*  = object of gen_qobject_types.QObject

