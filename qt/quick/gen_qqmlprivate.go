package quick

/*

#include "gen_qqmlprivate.h"
#include <stdlib.h>

*/
import "C"

type QQmlPrivate__AutoParentResult int

const (
	QQmlPrivate__Parented           QQmlPrivate__AutoParentResult = 0
	QQmlPrivate__IncompatibleObject QQmlPrivate__AutoParentResult = 1
	QQmlPrivate__IncompatibleParent QQmlPrivate__AutoParentResult = 2
)

type QQmlPrivate__RegistrationType int

const (
	QQmlPrivate__TypeRegistration                  QQmlPrivate__RegistrationType = 0
	QQmlPrivate__InterfaceRegistration             QQmlPrivate__RegistrationType = 1
	QQmlPrivate__AutoParentRegistration            QQmlPrivate__RegistrationType = 2
	QQmlPrivate__SingletonRegistration             QQmlPrivate__RegistrationType = 3
	QQmlPrivate__CompositeRegistration             QQmlPrivate__RegistrationType = 4
	QQmlPrivate__CompositeSingletonRegistration    QQmlPrivate__RegistrationType = 5
	QQmlPrivate__QmlUnitCacheHookRegistration      QQmlPrivate__RegistrationType = 6
	QQmlPrivate__TypeAndRevisionsRegistration      QQmlPrivate__RegistrationType = 7
	QQmlPrivate__SingletonAndRevisionsRegistration QQmlPrivate__RegistrationType = 8
)
