#include <QChildEvent>
#include <QEvent>
#include <QLayout>
#include <QLayoutItem>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QSpacerItem>
#include <QStackedLayout>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qstackedlayout.h>
#include "gen_qstackedlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QStackedLayout_widgetRemoved(intptr_t, int);
void miqt_exec_callback_QStackedLayout_currentChanged(intptr_t, int);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQStackedLayout final : public QStackedLayout {
	struct QStackedLayout_VTable* vtbl;
public:

	MiqtVirtualQStackedLayout(struct QStackedLayout_VTable* vtbl, QWidget* parent): QStackedLayout(parent), vtbl(vtbl) {};
	MiqtVirtualQStackedLayout(struct QStackedLayout_VTable* vtbl): QStackedLayout(), vtbl(vtbl) {};
	MiqtVirtualQStackedLayout(struct QStackedLayout_VTable* vtbl, QLayout* parentLayout): QStackedLayout(parentLayout), vtbl(vtbl) {};

	virtual ~MiqtVirtualQStackedLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStackedLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QStackedLayout::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStackedLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QStackedLayout::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStackedLayout::qt_metacall(param1, param2, param3);
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

		return QStackedLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QStackedLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_count() const {

		return QStackedLayout::count();

	}

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* item) override {
		if (vtbl->addItem == 0) {
			QStackedLayout::addItem(item);
			return;
		}

		QLayoutItem* sigval1 = item;

		vtbl->addItem(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_addItem(QLayoutItem* item) {

		QStackedLayout::addItem(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QStackedLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QStackedLayout::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QStackedLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QStackedLayout::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QStackedLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_itemAt(int param1) const {

		return QStackedLayout::itemAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QStackedLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_takeAt(int param1) {

		return QStackedLayout::takeAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& rect) override {
		if (vtbl->setGeometry == 0) {
			QStackedLayout::setGeometry(rect);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* rect) {

		QStackedLayout::setGeometry(*rect);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QStackedLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QStackedLayout::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QStackedLayout::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int width) const {

		return QStackedLayout::heightForWidth(static_cast<int>(width));

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QStackedLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QStackedLayout::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QStackedLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QStackedLayout::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QStackedLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QStackedLayout::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QStackedLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QStackedLayout::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual int indexOf(QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QStackedLayout::indexOf(param1);
		}

		QWidget* sigval1 = param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indexOf(QWidget* param1) const {

		return QStackedLayout::indexOf(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QStackedLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QStackedLayout::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QStackedLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QStackedLayout::controlTypes();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QStackedLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QStackedLayout::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QStackedLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* e) {

		QStackedLayout::childEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStackedLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QStackedLayout::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStackedLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QStackedLayout::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStackedLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QStackedLayout::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStackedLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QStackedLayout::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStackedLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QStackedLayout::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStackedLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QStackedLayout::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QStackedLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QStackedLayout::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QStackedLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() {

		return QStackedLayout::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QStackedLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QStackedLayout::spacerItem();

	}

	// Wrappers to allow calling protected methods:
	friend void QStackedLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1);
	friend void QStackedLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l);
	friend void QStackedLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w);
	friend bool QStackedLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout);
	friend QRect* QStackedLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1);
	friend QObject* QStackedLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QStackedLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QStackedLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QStackedLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QStackedLayout* QStackedLayout_new(struct QStackedLayout_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQStackedLayout(vtbl, parent);
}

QStackedLayout* QStackedLayout_new2(struct QStackedLayout_VTable* vtbl) {
	return new MiqtVirtualQStackedLayout(vtbl);
}

QStackedLayout* QStackedLayout_new3(struct QStackedLayout_VTable* vtbl, QLayout* parentLayout) {
	return new MiqtVirtualQStackedLayout(vtbl, parentLayout);
}

void QStackedLayout_virtbase(QStackedLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QStackedLayout_metaObject(const QStackedLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStackedLayout_metacast(QStackedLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStackedLayout_metacall(QStackedLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStackedLayout_tr(const char* s) {
	QString _ret = QStackedLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf8(const char* s) {
	QString _ret = QStackedLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QStackedLayout_addWidget(QStackedLayout* self, QWidget* w) {
	return self->addWidget(w);
}

int QStackedLayout_insertWidget(QStackedLayout* self, int index, QWidget* w) {
	return self->insertWidget(static_cast<int>(index), w);
}

QWidget* QStackedLayout_currentWidget(const QStackedLayout* self) {
	return self->currentWidget();
}

int QStackedLayout_currentIndex(const QStackedLayout* self) {
	return self->currentIndex();
}

QWidget* QStackedLayout_widget(const QStackedLayout* self, int param1) {
	return self->widget(static_cast<int>(param1));
}

int QStackedLayout_count(const QStackedLayout* self) {
	return self->count();
}

int QStackedLayout_stackingMode(const QStackedLayout* self) {
	QStackedLayout::StackingMode _ret = self->stackingMode();
	return static_cast<int>(_ret);
}

void QStackedLayout_setStackingMode(QStackedLayout* self, int stackingMode) {
	self->setStackingMode(static_cast<QStackedLayout::StackingMode>(stackingMode));
}

void QStackedLayout_addItem(QStackedLayout* self, QLayoutItem* item) {
	self->addItem(item);
}

QSize* QStackedLayout_sizeHint(const QStackedLayout* self) {
	return new QSize(self->sizeHint());
}

QSize* QStackedLayout_minimumSize(const QStackedLayout* self) {
	return new QSize(self->minimumSize());
}

QLayoutItem* QStackedLayout_itemAt(const QStackedLayout* self, int param1) {
	return self->itemAt(static_cast<int>(param1));
}

QLayoutItem* QStackedLayout_takeAt(QStackedLayout* self, int param1) {
	return self->takeAt(static_cast<int>(param1));
}

void QStackedLayout_setGeometry(QStackedLayout* self, QRect* rect) {
	self->setGeometry(*rect);
}

bool QStackedLayout_hasHeightForWidth(const QStackedLayout* self) {
	return self->hasHeightForWidth();
}

int QStackedLayout_heightForWidth(const QStackedLayout* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

void QStackedLayout_widgetRemoved(QStackedLayout* self, int index) {
	self->widgetRemoved(static_cast<int>(index));
}

void QStackedLayout_connect_widgetRemoved(QStackedLayout* self, intptr_t slot) {
	MiqtVirtualQStackedLayout::connect(self, static_cast<void (QStackedLayout::*)(int)>(&QStackedLayout::widgetRemoved), self, [=](int index) {
		int sigval1 = index;
		miqt_exec_callback_QStackedLayout_widgetRemoved(slot, sigval1);
	});
}

void QStackedLayout_currentChanged(QStackedLayout* self, int index) {
	self->currentChanged(static_cast<int>(index));
}

void QStackedLayout_connect_currentChanged(QStackedLayout* self, intptr_t slot) {
	MiqtVirtualQStackedLayout::connect(self, static_cast<void (QStackedLayout::*)(int)>(&QStackedLayout::currentChanged), self, [=](int index) {
		int sigval1 = index;
		miqt_exec_callback_QStackedLayout_currentChanged(slot, sigval1);
	});
}

void QStackedLayout_setCurrentIndex(QStackedLayout* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QStackedLayout_setCurrentWidget(QStackedLayout* self, QWidget* w) {
	self->setCurrentWidget(w);
}

struct miqt_string QStackedLayout_tr2(const char* s, const char* c) {
	QString _ret = QStackedLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QStackedLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QStackedLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStackedLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QStackedLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStackedLayout_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_metaObject();
}

void* QStackedLayout_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_metacast(param1);
}

int QStackedLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QStackedLayout_virtualbase_count(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_count();
}

void QStackedLayout_virtualbase_addItem(void* self, QLayoutItem* item) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_addItem(item);
}

QSize* QStackedLayout_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_sizeHint();
}

QSize* QStackedLayout_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_minimumSize();
}

QLayoutItem* QStackedLayout_virtualbase_itemAt(const void* self, int param1) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_itemAt(param1);
}

QLayoutItem* QStackedLayout_virtualbase_takeAt(void* self, int param1) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_takeAt(param1);
}

void QStackedLayout_virtualbase_setGeometry(void* self, QRect* rect) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_setGeometry(rect);
}

bool QStackedLayout_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_hasHeightForWidth();
}

int QStackedLayout_virtualbase_heightForWidth(const void* self, int width) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_heightForWidth(width);
}

void QStackedLayout_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_invalidate();
}

QRect* QStackedLayout_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_geometry();
}

int QStackedLayout_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_expandingDirections();
}

QSize* QStackedLayout_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_maximumSize();
}

int QStackedLayout_virtualbase_indexOf(const void* self, QWidget* param1) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_indexOf(param1);
}

bool QStackedLayout_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_isEmpty();
}

int QStackedLayout_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_controlTypes();
}

QLayout* QStackedLayout_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_layout();
}

void QStackedLayout_virtualbase_childEvent(void* self, QChildEvent* e) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_childEvent(e);
}

bool QStackedLayout_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_event(event);
}

bool QStackedLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_eventFilter(watched, event);
}

void QStackedLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_timerEvent(event);
}

void QStackedLayout_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_customEvent(event);
}

void QStackedLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_connectNotify(signal);
}

void QStackedLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_disconnectNotify(signal);
}

int QStackedLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQStackedLayout*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

QWidget* QStackedLayout_virtualbase_widget(void* self) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_widget();
}

QSpacerItem* QStackedLayout_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQStackedLayout*)(self) )->virtualbase_spacerItem();
}

const QMetaObject* QStackedLayout_staticMetaObject() { return &QStackedLayout::staticMetaObject; }
void QStackedLayout_protectedbase_widgetEvent(bool* _dynamic_cast_ok, void* self, QEvent* param1) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->widgetEvent(param1);

}

void QStackedLayout_protectedbase_addChildLayout(bool* _dynamic_cast_ok, void* self, QLayout* l) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildLayout(l);

}

void QStackedLayout_protectedbase_addChildWidget(bool* _dynamic_cast_ok, void* self, QWidget* w) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addChildWidget(w);

}

bool QStackedLayout_protectedbase_adoptLayout(bool* _dynamic_cast_ok, void* self, QLayout* layout) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->adoptLayout(layout);

}

QRect* QStackedLayout_protectedbase_alignmentRect(bool* _dynamic_cast_ok, const void* self, QRect* param1) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QStackedLayout_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QStackedLayout_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QStackedLayout_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QStackedLayout_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQStackedLayout* self_cast = dynamic_cast<MiqtVirtualQStackedLayout*>( (QStackedLayout*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QStackedLayout_delete(QStackedLayout* self) {
	delete self;
}

