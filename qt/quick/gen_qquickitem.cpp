#include <QChildEvent>
#include <QCursor>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHoverEvent>
#include <QInputMethodEvent>
#include <QJSValue>
#include <QKeyEvent>
#include <QList>
#include <QMatrix4x4>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QObject>
#include <QPointF>
#include <QQmlParserStatus>
#include <QQuickItem>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData
#include <QQuickTransform>
#include <QQuickWindow>
#include <QRectF>
#include <QSGNode>
#include <QSGTextureProvider>
#include <QSize>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QTransform>
#include <QVariant>
#include <QWheelEvent>
#include <qquickitem.h>
#include "gen_qquickitem.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickItem_childrenRectChanged(intptr_t, QRectF*);
void miqt_exec_callback_QQuickItem_baselineOffsetChanged(intptr_t, double);
void miqt_exec_callback_QQuickItem_stateChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QQuickItem_focusChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_activeFocusChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_activeFocusOnTabChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_parentChanged(intptr_t, QQuickItem*);
void miqt_exec_callback_QQuickItem_transformOriginChanged(intptr_t, int);
void miqt_exec_callback_QQuickItem_smoothChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_antialiasingChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_clipChanged(intptr_t, bool);
void miqt_exec_callback_QQuickItem_windowChanged(intptr_t, QQuickWindow*);
void miqt_exec_callback_QQuickItem_childrenChanged(intptr_t);
void miqt_exec_callback_QQuickItem_opacityChanged(intptr_t);
void miqt_exec_callback_QQuickItem_enabledChanged(intptr_t);
void miqt_exec_callback_QQuickItem_visibleChanged(intptr_t);
void miqt_exec_callback_QQuickItem_visibleChildrenChanged(intptr_t);
void miqt_exec_callback_QQuickItem_rotationChanged(intptr_t);
void miqt_exec_callback_QQuickItem_scaleChanged(intptr_t);
void miqt_exec_callback_QQuickItem_xChanged(intptr_t);
void miqt_exec_callback_QQuickItem_yChanged(intptr_t);
void miqt_exec_callback_QQuickItem_widthChanged(intptr_t);
void miqt_exec_callback_QQuickItem_heightChanged(intptr_t);
void miqt_exec_callback_QQuickItem_zChanged(intptr_t);
void miqt_exec_callback_QQuickItem_implicitWidthChanged(intptr_t);
void miqt_exec_callback_QQuickItem_implicitHeightChanged(intptr_t);
void miqt_exec_callback_QQuickItem_containmentMaskChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickTransform final : public QQuickTransform {
	struct QQuickTransform_VTable* vtbl;
public:

	MiqtVirtualQQuickTransform(struct QQuickTransform_VTable* vtbl): QQuickTransform(), vtbl(vtbl) {};
	MiqtVirtualQQuickTransform(struct QQuickTransform_VTable* vtbl, QObject* parent): QQuickTransform(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickTransform() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickTransform::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickTransform::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickTransform::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickTransform::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickTransform::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QQuickTransform::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickTransform::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQuickTransform::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickTransform::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickTransform::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickTransform::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickTransform::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickTransform::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickTransform::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickTransform::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickTransform::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickTransform::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickTransform::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickTransform::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickTransform::disconnectNotify(*signal);

	}

};

QQuickTransform* QQuickTransform_new(struct QQuickTransform_VTable* vtbl) {
	return new MiqtVirtualQQuickTransform(vtbl);
}

QQuickTransform* QQuickTransform_new2(struct QQuickTransform_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQQuickTransform(vtbl, parent);
}

void QQuickTransform_virtbase(QQuickTransform* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickTransform_metaObject(const QQuickTransform* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickTransform_metacast(QQuickTransform* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickTransform_metacall(QQuickTransform* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickTransform_tr(const char* s) {
	QString _ret = QQuickTransform::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTransform_trUtf8(const char* s) {
	QString _ret = QQuickTransform::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickTransform_appendToItem(QQuickTransform* self, QQuickItem* param1) {
	self->appendToItem(param1);
}

void QQuickTransform_prependToItem(QQuickTransform* self, QQuickItem* param1) {
	self->prependToItem(param1);
}

void QQuickTransform_applyTo(const QQuickTransform* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

struct miqt_string QQuickTransform_tr2(const char* s, const char* c) {
	QString _ret = QQuickTransform::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTransform_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickTransform::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTransform_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickTransform::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTransform_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickTransform::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickTransform_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickTransform*)(self) )->virtualbase_metaObject();
}

void* QQuickTransform_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_metacast(param1);
}

int QQuickTransform_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickTransform_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_event(event);
}

bool QQuickTransform_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickTransform_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_timerEvent(event);
}

void QQuickTransform_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_childEvent(event);
}

void QQuickTransform_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_customEvent(event);
}

void QQuickTransform_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickTransform_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickTransform*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickTransform_staticMetaObject() { return &QQuickTransform::staticMetaObject; }
void QQuickTransform_delete(QQuickTransform* self) {
	delete self;
}

class MiqtVirtualQQuickItem final : public QQuickItem {
	struct QQuickItem_VTable* vtbl;
public:

	MiqtVirtualQQuickItem(struct QQuickItem_VTable* vtbl): QQuickItem(), vtbl(vtbl) {};
	MiqtVirtualQQuickItem(struct QQuickItem_VTable* vtbl, QQuickItem* parent): QQuickItem(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickItem::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickItem::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickItem::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QQuickItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QQuickItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QQuickItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF clipRect() const override {
		if (vtbl->clipRect == 0) {
			return QQuickItem::clipRect();
		}


		QRectF* callback_return_value = vtbl->clipRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_clipRect() const {

		return new QRectF(QQuickItem::clipRect());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QQuickItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QQuickItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QQuickItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QQuickItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isTextureProvider() const override {
		if (vtbl->isTextureProvider == 0) {
			return QQuickItem::isTextureProvider();
		}


		bool callback_return_value = vtbl->isTextureProvider(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isTextureProvider() const {

		return QQuickItem::isTextureProvider();

	}

	// Subclass to allow providing a Go implementation
	virtual QSGTextureProvider* textureProvider() const override {
		if (vtbl->textureProvider == 0) {
			return QQuickItem::textureProvider();
		}


		QSGTextureProvider* callback_return_value = vtbl->textureProvider(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGTextureProvider* virtualbase_textureProvider() const {

		return QQuickItem::textureProvider();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickItem::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQuickItem::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (vtbl->itemChange == 0) {
			QQuickItem::itemChange(param1, param2);
			return;
		}

		QQuickItem::ItemChange param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		const QQuickItem::ItemChangeData& param2_ret = param2;
		// Cast returned reference into pointer
		QQuickItem__ItemChangeData* sigval2 = const_cast<QQuickItem::ItemChangeData*>(&param2_ret);

		vtbl->itemChange(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_itemChange(int param1, QQuickItem__ItemChangeData* param2) {

		QQuickItem::itemChange(static_cast<QQuickItem::ItemChange>(param1), *param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			QQuickItem::classBegin();
			return;
		}


		vtbl->classBegin(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_classBegin() {

		QQuickItem::classBegin();

	}

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			QQuickItem::componentComplete();
			return;
		}


		vtbl->componentComplete(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_componentComplete() {

		QQuickItem::componentComplete();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QQuickItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QQuickItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QQuickItem::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QQuickItem::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickItem::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QQuickItem::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickItem::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QQuickItem::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickItem::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QQuickItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickItem::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QQuickItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickItem::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QQuickItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickItem::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QQuickItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseUngrabEvent() override {
		if (vtbl->mouseUngrabEvent == 0) {
			QQuickItem::mouseUngrabEvent();
			return;
		}


		vtbl->mouseUngrabEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseUngrabEvent() {

		QQuickItem::mouseUngrabEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void touchUngrabEvent() override {
		if (vtbl->touchUngrabEvent == 0) {
			QQuickItem::touchUngrabEvent();
			return;
		}


		vtbl->touchUngrabEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchUngrabEvent() {

		QQuickItem::touchUngrabEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QQuickItem::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QQuickItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* event) override {
		if (vtbl->touchEvent == 0) {
			QQuickItem::touchEvent(event);
			return;
		}

		QTouchEvent* sigval1 = event;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchEvent(QTouchEvent* event) {

		QQuickItem::touchEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QQuickItem::hoverEnterEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QHoverEvent* event) {

		QQuickItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QQuickItem::hoverMoveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QHoverEvent* event) {

		QQuickItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QQuickItem::hoverLeaveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QHoverEvent* event) {

		QQuickItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QQuickItem::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* param1) {

		QQuickItem::dragEnterEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QQuickItem::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* param1) {

		QQuickItem::dragMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QQuickItem::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* param1) {

		QQuickItem::dragLeaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QQuickItem::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* param1) {

		QQuickItem::dropEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (vtbl->childMouseEventFilter == 0) {
			return QQuickItem::childMouseEventFilter(param1, param2);
		}

		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->childMouseEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_childMouseEventFilter(QQuickItem* param1, QEvent* param2) {

		return QQuickItem::childMouseEventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void windowDeactivateEvent() override {
		if (vtbl->windowDeactivateEvent == 0) {
			QQuickItem::windowDeactivateEvent();
			return;
		}


		vtbl->windowDeactivateEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_windowDeactivateEvent() {

		QQuickItem::windowDeactivateEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (vtbl->geometryChanged == 0) {
			QQuickItem::geometryChanged(newGeometry, oldGeometry);
			return;
		}

		const QRectF& newGeometry_ret = newGeometry;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&newGeometry_ret);
		const QRectF& oldGeometry_ret = oldGeometry;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&oldGeometry_ret);

		vtbl->geometryChanged(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_geometryChanged(QRectF* newGeometry, QRectF* oldGeometry) {

		QQuickItem::geometryChanged(*newGeometry, *oldGeometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (vtbl->updatePaintNode == 0) {
			return QQuickItem::updatePaintNode(param1, param2);
		}

		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = vtbl->updatePaintNode(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGNode* virtualbase_updatePaintNode(QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

		return QQuickItem::updatePaintNode(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QQuickItem::releaseResources();
			return;
		}


		vtbl->releaseResources(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_releaseResources() {

		QQuickItem::releaseResources();

	}

	// Subclass to allow providing a Go implementation
	virtual void updatePolish() override {
		if (vtbl->updatePolish == 0) {
			QQuickItem::updatePolish();
			return;
		}


		vtbl->updatePolish(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updatePolish() {

		QQuickItem::updatePolish();

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickItem::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickItem::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickItem::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickItem::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickItem::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickItem::disconnectNotify(*signal);

	}

};

QQuickItem* QQuickItem_new(struct QQuickItem_VTable* vtbl) {
	return new MiqtVirtualQQuickItem(vtbl);
}

QQuickItem* QQuickItem_new2(struct QQuickItem_VTable* vtbl, QQuickItem* parent) {
	return new MiqtVirtualQQuickItem(vtbl, parent);
}

void QQuickItem_virtbase(QQuickItem* src, QObject** outptr_QObject, QQmlParserStatus** outptr_QQmlParserStatus) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QQmlParserStatus = static_cast<QQmlParserStatus*>(src);
}

QMetaObject* QQuickItem_metaObject(const QQuickItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickItem_metacast(QQuickItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickItem_metacall(QQuickItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickItem_tr(const char* s) {
	QString _ret = QQuickItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItem_trUtf8(const char* s) {
	QString _ret = QQuickItem::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQuickWindow* QQuickItem_window(const QQuickItem* self) {
	return self->window();
}

QQuickItem* QQuickItem_parentItem(const QQuickItem* self) {
	return self->parentItem();
}

void QQuickItem_setParentItem(QQuickItem* self, QQuickItem* parent) {
	self->setParentItem(parent);
}

void QQuickItem_stackBefore(QQuickItem* self, QQuickItem* param1) {
	self->stackBefore(param1);
}

void QQuickItem_stackAfter(QQuickItem* self, QQuickItem* param1) {
	self->stackAfter(param1);
}

QRectF* QQuickItem_childrenRect(QQuickItem* self) {
	return new QRectF(self->childrenRect());
}

struct miqt_array /* of QQuickItem* */  QQuickItem_childItems(const QQuickItem* self) {
	QList<QQuickItem *> _ret = self->childItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QQuickItem** _arr = static_cast<QQuickItem**>(malloc(sizeof(QQuickItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QQuickItem_clip(const QQuickItem* self) {
	return self->clip();
}

void QQuickItem_setClip(QQuickItem* self, bool clip) {
	self->setClip(clip);
}

struct miqt_string QQuickItem_state(const QQuickItem* self) {
	QString _ret = self->state();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickItem_setState(QQuickItem* self, struct miqt_string state) {
	QString state_QString = QString::fromUtf8(state.data, state.len);
	self->setState(state_QString);
}

double QQuickItem_baselineOffset(const QQuickItem* self) {
	qreal _ret = self->baselineOffset();
	return static_cast<double>(_ret);
}

void QQuickItem_setBaselineOffset(QQuickItem* self, double baselineOffset) {
	self->setBaselineOffset(static_cast<qreal>(baselineOffset));
}

double QQuickItem_x(const QQuickItem* self) {
	qreal _ret = self->x();
	return static_cast<double>(_ret);
}

double QQuickItem_y(const QQuickItem* self) {
	qreal _ret = self->y();
	return static_cast<double>(_ret);
}

QPointF* QQuickItem_position(const QQuickItem* self) {
	return new QPointF(self->position());
}

void QQuickItem_setX(QQuickItem* self, double x) {
	self->setX(static_cast<qreal>(x));
}

void QQuickItem_setY(QQuickItem* self, double y) {
	self->setY(static_cast<qreal>(y));
}

void QQuickItem_setPosition(QQuickItem* self, QPointF* position) {
	self->setPosition(*position);
}

double QQuickItem_width(const QQuickItem* self) {
	qreal _ret = self->width();
	return static_cast<double>(_ret);
}

void QQuickItem_setWidth(QQuickItem* self, double width) {
	self->setWidth(static_cast<qreal>(width));
}

void QQuickItem_resetWidth(QQuickItem* self) {
	self->resetWidth();
}

void QQuickItem_setImplicitWidth(QQuickItem* self, double implicitWidth) {
	self->setImplicitWidth(static_cast<qreal>(implicitWidth));
}

double QQuickItem_implicitWidth(const QQuickItem* self) {
	qreal _ret = self->implicitWidth();
	return static_cast<double>(_ret);
}

double QQuickItem_height(const QQuickItem* self) {
	qreal _ret = self->height();
	return static_cast<double>(_ret);
}

void QQuickItem_setHeight(QQuickItem* self, double height) {
	self->setHeight(static_cast<qreal>(height));
}

void QQuickItem_resetHeight(QQuickItem* self) {
	self->resetHeight();
}

void QQuickItem_setImplicitHeight(QQuickItem* self, double implicitHeight) {
	self->setImplicitHeight(static_cast<qreal>(implicitHeight));
}

double QQuickItem_implicitHeight(const QQuickItem* self) {
	qreal _ret = self->implicitHeight();
	return static_cast<double>(_ret);
}

QSizeF* QQuickItem_size(const QQuickItem* self) {
	return new QSizeF(self->size());
}

void QQuickItem_setSize(QQuickItem* self, QSizeF* size) {
	self->setSize(*size);
}

int QQuickItem_transformOrigin(const QQuickItem* self) {
	QQuickItem::TransformOrigin _ret = self->transformOrigin();
	return static_cast<int>(_ret);
}

void QQuickItem_setTransformOrigin(QQuickItem* self, int transformOrigin) {
	self->setTransformOrigin(static_cast<QQuickItem::TransformOrigin>(transformOrigin));
}

QPointF* QQuickItem_transformOriginPoint(const QQuickItem* self) {
	return new QPointF(self->transformOriginPoint());
}

void QQuickItem_setTransformOriginPoint(QQuickItem* self, QPointF* transformOriginPoint) {
	self->setTransformOriginPoint(*transformOriginPoint);
}

double QQuickItem_z(const QQuickItem* self) {
	qreal _ret = self->z();
	return static_cast<double>(_ret);
}

void QQuickItem_setZ(QQuickItem* self, double z) {
	self->setZ(static_cast<qreal>(z));
}

double QQuickItem_rotation(const QQuickItem* self) {
	qreal _ret = self->rotation();
	return static_cast<double>(_ret);
}

void QQuickItem_setRotation(QQuickItem* self, double rotation) {
	self->setRotation(static_cast<qreal>(rotation));
}

double QQuickItem_scale(const QQuickItem* self) {
	qreal _ret = self->scale();
	return static_cast<double>(_ret);
}

void QQuickItem_setScale(QQuickItem* self, double scale) {
	self->setScale(static_cast<qreal>(scale));
}

double QQuickItem_opacity(const QQuickItem* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

void QQuickItem_setOpacity(QQuickItem* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

bool QQuickItem_isVisible(const QQuickItem* self) {
	return self->isVisible();
}

void QQuickItem_setVisible(QQuickItem* self, bool visible) {
	self->setVisible(visible);
}

bool QQuickItem_isEnabled(const QQuickItem* self) {
	return self->isEnabled();
}

void QQuickItem_setEnabled(QQuickItem* self, bool enabled) {
	self->setEnabled(enabled);
}

bool QQuickItem_smooth(const QQuickItem* self) {
	return self->smooth();
}

void QQuickItem_setSmooth(QQuickItem* self, bool smooth) {
	self->setSmooth(smooth);
}

bool QQuickItem_activeFocusOnTab(const QQuickItem* self) {
	return self->activeFocusOnTab();
}

void QQuickItem_setActiveFocusOnTab(QQuickItem* self, bool activeFocusOnTab) {
	self->setActiveFocusOnTab(activeFocusOnTab);
}

bool QQuickItem_antialiasing(const QQuickItem* self) {
	return self->antialiasing();
}

void QQuickItem_setAntialiasing(QQuickItem* self, bool antialiasing) {
	self->setAntialiasing(antialiasing);
}

void QQuickItem_resetAntialiasing(QQuickItem* self) {
	self->resetAntialiasing();
}

int QQuickItem_flags(const QQuickItem* self) {
	QQuickItem::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QQuickItem_setFlag(QQuickItem* self, int flag) {
	self->setFlag(static_cast<QQuickItem::Flag>(flag));
}

void QQuickItem_setFlags(QQuickItem* self, int flags) {
	self->setFlags(static_cast<QQuickItem::Flags>(flags));
}

QRectF* QQuickItem_boundingRect(const QQuickItem* self) {
	return new QRectF(self->boundingRect());
}

QRectF* QQuickItem_clipRect(const QQuickItem* self) {
	return new QRectF(self->clipRect());
}

bool QQuickItem_hasActiveFocus(const QQuickItem* self) {
	return self->hasActiveFocus();
}

bool QQuickItem_hasFocus(const QQuickItem* self) {
	return self->hasFocus();
}

void QQuickItem_setFocus(QQuickItem* self, bool focus) {
	self->setFocus(focus);
}

void QQuickItem_setFocus2(QQuickItem* self, bool focus, int reason) {
	self->setFocus(focus, static_cast<Qt::FocusReason>(reason));
}

bool QQuickItem_isFocusScope(const QQuickItem* self) {
	return self->isFocusScope();
}

QQuickItem* QQuickItem_scopedFocusItem(const QQuickItem* self) {
	return self->scopedFocusItem();
}

bool QQuickItem_isAncestorOf(const QQuickItem* self, QQuickItem* child) {
	return self->isAncestorOf(child);
}

int QQuickItem_acceptedMouseButtons(const QQuickItem* self) {
	Qt::MouseButtons _ret = self->acceptedMouseButtons();
	return static_cast<int>(_ret);
}

void QQuickItem_setAcceptedMouseButtons(QQuickItem* self, int buttons) {
	self->setAcceptedMouseButtons(static_cast<Qt::MouseButtons>(buttons));
}

bool QQuickItem_acceptHoverEvents(const QQuickItem* self) {
	return self->acceptHoverEvents();
}

void QQuickItem_setAcceptHoverEvents(QQuickItem* self, bool enabled) {
	self->setAcceptHoverEvents(enabled);
}

bool QQuickItem_acceptTouchEvents(const QQuickItem* self) {
	return self->acceptTouchEvents();
}

void QQuickItem_setAcceptTouchEvents(QQuickItem* self, bool accept) {
	self->setAcceptTouchEvents(accept);
}

QCursor* QQuickItem_cursor(const QQuickItem* self) {
	return new QCursor(self->cursor());
}

void QQuickItem_setCursor(QQuickItem* self, QCursor* cursor) {
	self->setCursor(*cursor);
}

void QQuickItem_unsetCursor(QQuickItem* self) {
	self->unsetCursor();
}

bool QQuickItem_isUnderMouse(const QQuickItem* self) {
	return self->isUnderMouse();
}

void QQuickItem_grabMouse(QQuickItem* self) {
	self->grabMouse();
}

void QQuickItem_ungrabMouse(QQuickItem* self) {
	self->ungrabMouse();
}

bool QQuickItem_keepMouseGrab(const QQuickItem* self) {
	return self->keepMouseGrab();
}

void QQuickItem_setKeepMouseGrab(QQuickItem* self, bool keepMouseGrab) {
	self->setKeepMouseGrab(keepMouseGrab);
}

bool QQuickItem_filtersChildMouseEvents(const QQuickItem* self) {
	return self->filtersChildMouseEvents();
}

void QQuickItem_setFiltersChildMouseEvents(QQuickItem* self, bool filter) {
	self->setFiltersChildMouseEvents(filter);
}

void QQuickItem_grabTouchPoints(QQuickItem* self, struct miqt_array /* of int */  ids) {
	QVector<int> ids_QList;
	ids_QList.reserve(ids.len);
	int* ids_arr = static_cast<int*>(ids.data);
	for(size_t i = 0; i < ids.len; ++i) {
		ids_QList.push_back(static_cast<int>(ids_arr[i]));
	}
	self->grabTouchPoints(ids_QList);
}

void QQuickItem_ungrabTouchPoints(QQuickItem* self) {
	self->ungrabTouchPoints();
}

bool QQuickItem_keepTouchGrab(const QQuickItem* self) {
	return self->keepTouchGrab();
}

void QQuickItem_setKeepTouchGrab(QQuickItem* self, bool keepTouchGrab) {
	self->setKeepTouchGrab(keepTouchGrab);
}

bool QQuickItem_grabToImage(QQuickItem* self, QJSValue* callback) {
	return self->grabToImage(*callback);
}

bool QQuickItem_contains(const QQuickItem* self, QPointF* point) {
	return self->contains(*point);
}

QObject* QQuickItem_containmentMask(const QQuickItem* self) {
	return self->containmentMask();
}

void QQuickItem_setContainmentMask(QQuickItem* self, QObject* mask) {
	self->setContainmentMask(mask);
}

QTransform* QQuickItem_itemTransform(const QQuickItem* self, QQuickItem* param1, bool* param2) {
	return new QTransform(self->itemTransform(param1, param2));
}

QPointF* QQuickItem_mapToItem(const QQuickItem* self, QQuickItem* item, QPointF* point) {
	return new QPointF(self->mapToItem(item, *point));
}

QPointF* QQuickItem_mapToScene(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapToScene(*point));
}

QPointF* QQuickItem_mapToGlobal(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapToGlobal(*point));
}

QRectF* QQuickItem_mapRectToItem(const QQuickItem* self, QQuickItem* item, QRectF* rect) {
	return new QRectF(self->mapRectToItem(item, *rect));
}

QRectF* QQuickItem_mapRectToScene(const QQuickItem* self, QRectF* rect) {
	return new QRectF(self->mapRectToScene(*rect));
}

QPointF* QQuickItem_mapFromItem(const QQuickItem* self, QQuickItem* item, QPointF* point) {
	return new QPointF(self->mapFromItem(item, *point));
}

QPointF* QQuickItem_mapFromScene(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapFromScene(*point));
}

QPointF* QQuickItem_mapFromGlobal(const QQuickItem* self, QPointF* point) {
	return new QPointF(self->mapFromGlobal(*point));
}

QRectF* QQuickItem_mapRectFromItem(const QQuickItem* self, QQuickItem* item, QRectF* rect) {
	return new QRectF(self->mapRectFromItem(item, *rect));
}

QRectF* QQuickItem_mapRectFromScene(const QQuickItem* self, QRectF* rect) {
	return new QRectF(self->mapRectFromScene(*rect));
}

void QQuickItem_polish(QQuickItem* self) {
	self->polish();
}

void QQuickItem_forceActiveFocus(QQuickItem* self) {
	self->forceActiveFocus();
}

void QQuickItem_forceActiveFocusWithReason(QQuickItem* self, int reason) {
	self->forceActiveFocus(static_cast<Qt::FocusReason>(reason));
}

QQuickItem* QQuickItem_nextItemInFocusChain(QQuickItem* self) {
	return self->nextItemInFocusChain();
}

QQuickItem* QQuickItem_childAt(const QQuickItem* self, double x, double y) {
	return self->childAt(static_cast<qreal>(x), static_cast<qreal>(y));
}

QVariant* QQuickItem_inputMethodQuery(const QQuickItem* self, int query) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

bool QQuickItem_isTextureProvider(const QQuickItem* self) {
	return self->isTextureProvider();
}

QSGTextureProvider* QQuickItem_textureProvider(const QQuickItem* self) {
	return self->textureProvider();
}

void QQuickItem_update(QQuickItem* self) {
	self->update();
}

void QQuickItem_childrenRectChanged(QQuickItem* self, QRectF* param1) {
	self->childrenRectChanged(*param1);
}

void QQuickItem_connect_childrenRectChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(const QRectF&)>(&QQuickItem::childrenRectChanged), self, [=](const QRectF& param1) {
		const QRectF& param1_ret = param1;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&param1_ret);
		miqt_exec_callback_QQuickItem_childrenRectChanged(slot, sigval1);
	});
}

void QQuickItem_baselineOffsetChanged(QQuickItem* self, double param1) {
	self->baselineOffsetChanged(static_cast<qreal>(param1));
}

void QQuickItem_connect_baselineOffsetChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(qreal)>(&QQuickItem::baselineOffsetChanged), self, [=](qreal param1) {
		qreal param1_ret = param1;
		double sigval1 = static_cast<double>(param1_ret);
		miqt_exec_callback_QQuickItem_baselineOffsetChanged(slot, sigval1);
	});
}

void QQuickItem_stateChanged(QQuickItem* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->stateChanged(param1_QString);
}

void QQuickItem_connect_stateChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(const QString&)>(&QQuickItem::stateChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QQuickItem_stateChanged(slot, sigval1);
	});
}

void QQuickItem_focusChanged(QQuickItem* self, bool param1) {
	self->focusChanged(param1);
}

void QQuickItem_connect_focusChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::focusChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_focusChanged(slot, sigval1);
	});
}

void QQuickItem_activeFocusChanged(QQuickItem* self, bool param1) {
	self->activeFocusChanged(param1);
}

void QQuickItem_connect_activeFocusChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::activeFocusChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_activeFocusChanged(slot, sigval1);
	});
}

void QQuickItem_activeFocusOnTabChanged(QQuickItem* self, bool param1) {
	self->activeFocusOnTabChanged(param1);
}

void QQuickItem_connect_activeFocusOnTabChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::activeFocusOnTabChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_activeFocusOnTabChanged(slot, sigval1);
	});
}

void QQuickItem_parentChanged(QQuickItem* self, QQuickItem* param1) {
	self->parentChanged(param1);
}

void QQuickItem_connect_parentChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickItem*)>(&QQuickItem::parentChanged), self, [=](QQuickItem* param1) {
		QQuickItem* sigval1 = param1;
		miqt_exec_callback_QQuickItem_parentChanged(slot, sigval1);
	});
}

void QQuickItem_transformOriginChanged(QQuickItem* self, int param1) {
	self->transformOriginChanged(static_cast<QQuickItem::TransformOrigin>(param1));
}

void QQuickItem_connect_transformOriginChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickItem::TransformOrigin)>(&QQuickItem::transformOriginChanged), self, [=](QQuickItem::TransformOrigin param1) {
		QQuickItem::TransformOrigin param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		miqt_exec_callback_QQuickItem_transformOriginChanged(slot, sigval1);
	});
}

void QQuickItem_smoothChanged(QQuickItem* self, bool param1) {
	self->smoothChanged(param1);
}

void QQuickItem_connect_smoothChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::smoothChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_smoothChanged(slot, sigval1);
	});
}

void QQuickItem_antialiasingChanged(QQuickItem* self, bool param1) {
	self->antialiasingChanged(param1);
}

void QQuickItem_connect_antialiasingChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::antialiasingChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_antialiasingChanged(slot, sigval1);
	});
}

void QQuickItem_clipChanged(QQuickItem* self, bool param1) {
	self->clipChanged(param1);
}

void QQuickItem_connect_clipChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(bool)>(&QQuickItem::clipChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickItem_clipChanged(slot, sigval1);
	});
}

void QQuickItem_windowChanged(QQuickItem* self, QQuickWindow* window) {
	self->windowChanged(window);
}

void QQuickItem_connect_windowChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)(QQuickWindow*)>(&QQuickItem::windowChanged), self, [=](QQuickWindow* window) {
		QQuickWindow* sigval1 = window;
		miqt_exec_callback_QQuickItem_windowChanged(slot, sigval1);
	});
}

void QQuickItem_childrenChanged(QQuickItem* self) {
	self->childrenChanged();
}

void QQuickItem_connect_childrenChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::childrenChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_childrenChanged(slot);
	});
}

void QQuickItem_opacityChanged(QQuickItem* self) {
	self->opacityChanged();
}

void QQuickItem_connect_opacityChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::opacityChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_opacityChanged(slot);
	});
}

void QQuickItem_enabledChanged(QQuickItem* self) {
	self->enabledChanged();
}

void QQuickItem_connect_enabledChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::enabledChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_enabledChanged(slot);
	});
}

void QQuickItem_visibleChanged(QQuickItem* self) {
	self->visibleChanged();
}

void QQuickItem_connect_visibleChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::visibleChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_visibleChanged(slot);
	});
}

void QQuickItem_visibleChildrenChanged(QQuickItem* self) {
	self->visibleChildrenChanged();
}

void QQuickItem_connect_visibleChildrenChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::visibleChildrenChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_visibleChildrenChanged(slot);
	});
}

void QQuickItem_rotationChanged(QQuickItem* self) {
	self->rotationChanged();
}

void QQuickItem_connect_rotationChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::rotationChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_rotationChanged(slot);
	});
}

void QQuickItem_scaleChanged(QQuickItem* self) {
	self->scaleChanged();
}

void QQuickItem_connect_scaleChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::scaleChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_scaleChanged(slot);
	});
}

void QQuickItem_xChanged(QQuickItem* self) {
	self->xChanged();
}

void QQuickItem_connect_xChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::xChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_xChanged(slot);
	});
}

void QQuickItem_yChanged(QQuickItem* self) {
	self->yChanged();
}

void QQuickItem_connect_yChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::yChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_yChanged(slot);
	});
}

void QQuickItem_widthChanged(QQuickItem* self) {
	self->widthChanged();
}

void QQuickItem_connect_widthChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::widthChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_widthChanged(slot);
	});
}

void QQuickItem_heightChanged(QQuickItem* self) {
	self->heightChanged();
}

void QQuickItem_connect_heightChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::heightChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_heightChanged(slot);
	});
}

void QQuickItem_zChanged(QQuickItem* self) {
	self->zChanged();
}

void QQuickItem_connect_zChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::zChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_zChanged(slot);
	});
}

void QQuickItem_implicitWidthChanged(QQuickItem* self) {
	self->implicitWidthChanged();
}

void QQuickItem_connect_implicitWidthChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::implicitWidthChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_implicitWidthChanged(slot);
	});
}

void QQuickItem_implicitHeightChanged(QQuickItem* self) {
	self->implicitHeightChanged();
}

void QQuickItem_connect_implicitHeightChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::implicitHeightChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_implicitHeightChanged(slot);
	});
}

void QQuickItem_containmentMaskChanged(QQuickItem* self) {
	self->containmentMaskChanged();
}

void QQuickItem_connect_containmentMaskChanged(QQuickItem* self, intptr_t slot) {
	MiqtVirtualQQuickItem::connect(self, static_cast<void (QQuickItem::*)()>(&QQuickItem::containmentMaskChanged), self, [=]() {
		miqt_exec_callback_QQuickItem_containmentMaskChanged(slot);
	});
}

struct miqt_string QQuickItem_tr2(const char* s, const char* c) {
	QString _ret = QQuickItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItem_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickItem::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickItem_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickItem::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickItem_setFlag2(QQuickItem* self, int flag, bool enabled) {
	self->setFlag(static_cast<QQuickItem::Flag>(flag), enabled);
}

bool QQuickItem_grabToImage22(QQuickItem* self, QJSValue* callback, QSize* targetSize) {
	return self->grabToImage(*callback, *targetSize);
}

QQuickItem* QQuickItem_nextItemInFocusChain1(QQuickItem* self, bool forward) {
	return self->nextItemInFocusChain(forward);
}

QMetaObject* QQuickItem_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickItem*)(self) )->virtualbase_metaObject();
}

void* QQuickItem_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickItem*)(self) )->virtualbase_metacast(param1);
}

int QQuickItem_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickItem*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRectF* QQuickItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQQuickItem*)(self) )->virtualbase_boundingRect();
}

QRectF* QQuickItem_virtualbase_clipRect(const void* self) {
	return ( (const MiqtVirtualQQuickItem*)(self) )->virtualbase_clipRect();
}

bool QQuickItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQQuickItem*)(self) )->virtualbase_contains(point);
}

QVariant* QQuickItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQQuickItem*)(self) )->virtualbase_inputMethodQuery(query);
}

bool QQuickItem_virtualbase_isTextureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickItem*)(self) )->virtualbase_isTextureProvider();
}

QSGTextureProvider* QQuickItem_virtualbase_textureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickItem*)(self) )->virtualbase_textureProvider();
}

bool QQuickItem_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQuickItem*)(self) )->virtualbase_event(param1);
}

void QQuickItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_itemChange(param1, param2);
}

void QQuickItem_virtualbase_classBegin(void* self) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_classBegin();
}

void QQuickItem_virtualbase_componentComplete(void* self) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_componentComplete();
}

void QQuickItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QQuickItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QQuickItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_inputMethodEvent(param1);
}

void QQuickItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_focusInEvent(param1);
}

void QQuickItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_focusOutEvent(param1);
}

void QQuickItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QQuickItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QQuickItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QQuickItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QQuickItem_virtualbase_mouseUngrabEvent(void* self) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_mouseUngrabEvent();
}

void QQuickItem_virtualbase_touchUngrabEvent(void* self) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_touchUngrabEvent();
}

void QQuickItem_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_wheelEvent(event);
}

void QQuickItem_virtualbase_touchEvent(void* self, QTouchEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_touchEvent(event);
}

void QQuickItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QQuickItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QQuickItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QQuickItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_dragEnterEvent(param1);
}

void QQuickItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_dragMoveEvent(param1);
}

void QQuickItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_dragLeaveEvent(param1);
}

void QQuickItem_virtualbase_dropEvent(void* self, QDropEvent* param1) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_dropEvent(param1);
}

bool QQuickItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2) {
	return ( (MiqtVirtualQQuickItem*)(self) )->virtualbase_childMouseEventFilter(param1, param2);
}

void QQuickItem_virtualbase_windowDeactivateEvent(void* self) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_windowDeactivateEvent();
}

void QQuickItem_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_geometryChanged(newGeometry, oldGeometry);
}

QSGNode* QQuickItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {
	return ( (MiqtVirtualQQuickItem*)(self) )->virtualbase_updatePaintNode(param1, param2);
}

void QQuickItem_virtualbase_releaseResources(void* self) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_releaseResources();
}

void QQuickItem_virtualbase_updatePolish(void* self) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_updatePolish();
}

bool QQuickItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickItem*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickItem_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_timerEvent(event);
}

void QQuickItem_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_childEvent(event);
}

void QQuickItem_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_customEvent(event);
}

void QQuickItem_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickItem*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickItem_staticMetaObject() { return &QQuickItem::staticMetaObject; }
void QQuickItem_delete(QQuickItem* self) {
	delete self;
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new(QQuickItem* v) {
	return new QQuickItem::ItemChangeData(v);
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new2(QQuickWindow* v) {
	return new QQuickItem::ItemChangeData(v);
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new3(double v) {
	return new QQuickItem::ItemChangeData(static_cast<qreal>(v));
}

QQuickItem__ItemChangeData* QQuickItem__ItemChangeData_new4(bool v) {
	return new QQuickItem::ItemChangeData(v);
}

void QQuickItem__ItemChangeData_delete(QQuickItem__ItemChangeData* self) {
	delete self;
}

void QQuickItem__UpdatePaintNodeData_delete(QQuickItem__UpdatePaintNodeData* self) {
	delete self;
}

