type QStandardItem* {.inheritable, pure.} = object
  h*: pointer
import gen_qabstractitemmodel_types
export gen_qabstractitemmodel_types

type QStandardItemModel* = object of gen_qabstractitemmodel_types.QAbstractItemModel
