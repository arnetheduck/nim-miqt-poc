import gen_qobject_types
export gen_qobject_types

# TODO Multiple inheritance from QScriptExtensionInterface
type QScriptExtensionPlugin* = object of gen_qobject_types.QObject
