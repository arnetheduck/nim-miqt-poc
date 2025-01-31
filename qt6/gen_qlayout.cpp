#include <QChildEvent>
#include <QEvent>
#include <QLayout>
#include <QLayoutItem>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QSpacerItem>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <qlayout.h>
#include "gen_qlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQLayout final : public QLayout {
	struct QLayout_VTable* vtbl;
public:

	MiqtVirtualQLayout(struct QLayout_VTable* vtbl, QWidget* parent): QLayout(parent), vtbl(vtbl) {};
	MiqtVirtualQLayout(struct QLayout_VTable* vtbl): QLayout(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QLayout::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QLayout::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLayout::qt_metacall(param1, param2, param3);
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

		return QLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual int spacing() const override {
		if (vtbl->spacing == 0) {
			return QLayout::spacing();
		}


		int callback_return_value = vtbl->spacing(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_spacing() const {

		return QLayout::spacing();

	}

	// Subclass to allow providing a Go implementation
	virtual void setSpacing(int spacing) override {
		if (vtbl->setSpacing == 0) {
			QLayout::setSpacing(spacing);
			return;
		}

		int sigval1 = spacing;

		vtbl->setSpacing(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSpacing(int spacing) {

		QLayout::setSpacing(static_cast<int>(spacing));

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QLayout::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QLayout::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QLayout::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QLayout::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QLayout::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* geometry) {

		QLayout::setGeometry(*geometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int index) override {
		if (vtbl->takeAt == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		int sigval1 = index;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int indexOf(const QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QLayout::indexOf(param1);
		}

		QWidget* sigval1 = (QWidget*) param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indexOf(QWidget* param1) const {

		return QLayout::indexOf(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int indexOf(const QLayoutItem* param1) const override {
		if (vtbl->indexOfWithQLayoutItem == 0) {
			return QLayout::indexOf(param1);
		}

		QLayoutItem* sigval1 = (QLayoutItem*) param1;

		int callback_return_value = vtbl->indexOfWithQLayoutItem(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indexOfWithQLayoutItem(QLayoutItem* param1) const {

		return QLayout::indexOf(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QLayout::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QLayout::controlTypes();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* replaceWidget(QWidget* from, QWidget* to, Qt::FindChildOptions options) override {
		if (vtbl->replaceWidget == 0) {
			return QLayout::replaceWidget(from, to, options);
		}

		QWidget* sigval1 = from;
		QWidget* sigval2 = to;
		Qt::FindChildOptions options_ret = options;
		int sigval3 = static_cast<int>(options_ret);

		QLayoutItem* callback_return_value = vtbl->replaceWidget(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_replaceWidget(QWidget* from, QWidget* to, int options) {

		return QLayout::replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QLayout::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* e) {

		QLayout::childEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QLayout::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QLayout::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QLayout::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QLayout::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QLayout::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QLayout::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QLayout::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QLayout::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QLayout::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() const {

		return QLayout::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QLayout::spacerItem();

	}

	// Wrapper to allow calling protected method
	void protectedbase_widgetEvent(QEvent* param1) {

		QLayout::widgetEvent(param1);

	}

	// Wrapper to allow calling protected method
	void protectedbase_addChildLayout(QLayout* l) {

		QLayout::addChildLayout(l);

	}

	// Wrapper to allow calling protected method
	void protectedbase_addChildWidget(QWidget* w) {

		QLayout::addChildWidget(w);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_adoptLayout(QLayout* layout) {

		return QLayout::adoptLayout(layout);

	}

	// Wrapper to allow calling protected method
	QRect* protectedbase_alignmentRect(QRect* param1) const {

		return new QRect(QLayout::alignmentRect(*param1));

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QLayout::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QLayout::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QLayout::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QLayout::isSignalConnected(*signal);

	}

};

QLayout* QLayout_new(struct QLayout_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQLayout(vtbl, parent);
}

QLayout* QLayout_new2(struct QLayout_VTable* vtbl) {
	return new MiqtVirtualQLayout(vtbl);
}

void QLayout_virtbase(QLayout* src, QObject** outptr_QObject, QLayoutItem** outptr_QLayoutItem) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QLayoutItem = static_cast<QLayoutItem*>(src);
}

QMetaObject* QLayout_metaObject(const QLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLayout_metacast(QLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLayout_metacall(QLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLayout_tr(const char* s) {
	QString _ret = QLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QLayout_spacing(const QLayout* self) {
	return self->spacing();
}

void QLayout_setSpacing(QLayout* self, int spacing) {
	self->setSpacing(static_cast<int>(spacing));
}

void QLayout_setContentsMargins(QLayout* self, int left, int top, int right, int bottom) {
	self->setContentsMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));
}

void QLayout_setContentsMarginsWithMargins(QLayout* self, QMargins* margins) {
	self->setContentsMargins(*margins);
}

void QLayout_unsetContentsMargins(QLayout* self) {
	self->unsetContentsMargins();
}

void QLayout_getContentsMargins(const QLayout* self, int* left, int* top, int* right, int* bottom) {
	self->getContentsMargins(static_cast<int*>(left), static_cast<int*>(top), static_cast<int*>(right), static_cast<int*>(bottom));
}

QMargins* QLayout_contentsMargins(const QLayout* self) {
	return new QMargins(self->contentsMargins());
}

QRect* QLayout_contentsRect(const QLayout* self) {
	return new QRect(self->contentsRect());
}

bool QLayout_setAlignment(QLayout* self, QWidget* w, int alignment) {
	return self->setAlignment(w, static_cast<Qt::Alignment>(alignment));
}

bool QLayout_setAlignment2(QLayout* self, QLayout* l, int alignment) {
	return self->setAlignment(l, static_cast<Qt::Alignment>(alignment));
}

void QLayout_setSizeConstraint(QLayout* self, int sizeConstraint) {
	self->setSizeConstraint(static_cast<QLayout::SizeConstraint>(sizeConstraint));
}

int QLayout_sizeConstraint(const QLayout* self) {
	QLayout::SizeConstraint _ret = self->sizeConstraint();
	return static_cast<int>(_ret);
}

void QLayout_setMenuBar(QLayout* self, QWidget* w) {
	self->setMenuBar(w);
}

QWidget* QLayout_menuBar(const QLayout* self) {
	return self->menuBar();
}

QWidget* QLayout_parentWidget(const QLayout* self) {
	return self->parentWidget();
}

void QLayout_invalidate(QLayout* self) {
	self->invalidate();
}

QRect* QLayout_geometry(const QLayout* self) {
	return new QRect(self->geometry());
}

bool QLayout_activate(QLayout* self) {
	return self->activate();
}

void QLayout_update(QLayout* self) {
	self->update();
}

void QLayout_addWidget(QLayout* self, QWidget* w) {
	self->addWidget(w);
}

void QLayout_addItem(QLayout* self, QLayoutItem* param1) {
	self->addItem(param1);
}

void QLayout_removeWidget(QLayout* self, QWidget* w) {
	self->removeWidget(w);
}

void QLayout_removeItem(QLayout* self, QLayoutItem* param1) {
	self->removeItem(param1);
}

int QLayout_expandingDirections(const QLayout* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

QSize* QLayout_minimumSize(const QLayout* self) {
	return new QSize(self->minimumSize());
}

QSize* QLayout_maximumSize(const QLayout* self) {
	return new QSize(self->maximumSize());
}

void QLayout_setGeometry(QLayout* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QLayoutItem* QLayout_itemAt(const QLayout* self, int index) {
	return self->itemAt(static_cast<int>(index));
}

QLayoutItem* QLayout_takeAt(QLayout* self, int index) {
	return self->takeAt(static_cast<int>(index));
}

int QLayout_indexOf(const QLayout* self, QWidget* param1) {
	return self->indexOf(param1);
}

int QLayout_indexOfWithQLayoutItem(const QLayout* self, QLayoutItem* param1) {
	return self->indexOf(param1);
}

int QLayout_count(const QLayout* self) {
	return self->count();
}

bool QLayout_isEmpty(const QLayout* self) {
	return self->isEmpty();
}

int QLayout_controlTypes(const QLayout* self) {
	QSizePolicy::ControlTypes _ret = self->controlTypes();
	return static_cast<int>(_ret);
}

QLayoutItem* QLayout_replaceWidget(QLayout* self, QWidget* from, QWidget* to, int options) {
	return self->replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));
}

int QLayout_totalMinimumHeightForWidth(const QLayout* self, int w) {
	return self->totalMinimumHeightForWidth(static_cast<int>(w));
}

int QLayout_totalHeightForWidth(const QLayout* self, int w) {
	return self->totalHeightForWidth(static_cast<int>(w));
}

QSize* QLayout_totalMinimumSize(const QLayout* self) {
	return new QSize(self->totalMinimumSize());
}

QSize* QLayout_totalMaximumSize(const QLayout* self) {
	return new QSize(self->totalMaximumSize());
}

QSize* QLayout_totalSizeHint(const QLayout* self) {
	return new QSize(self->totalSizeHint());
}

QLayout* QLayout_layout(QLayout* self) {
	return self->layout();
}

void QLayout_setEnabled(QLayout* self, bool enabled) {
	self->setEnabled(enabled);
}

bool QLayout_isEnabled(const QLayout* self) {
	return self->isEnabled();
}

QSize* QLayout_closestAcceptableSize(QWidget* w, QSize* s) {
	return new QSize(QLayout::closestAcceptableSize(w, *s));
}

struct miqt_string QLayout_tr2(const char* s, const char* c) {
	QString _ret = QLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QLayout_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_metaObject();
}

void* QLayout_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQLayout*)(self) )->virtualbase_metacast(param1);
}

int QLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQLayout*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QLayout_virtualbase_spacing(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_spacing();
}

void QLayout_virtualbase_setSpacing(void* self, int spacing) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_setSpacing(spacing);
}

void QLayout_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_invalidate();
}

QRect* QLayout_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_geometry();
}

int QLayout_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_expandingDirections();
}

QSize* QLayout_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_minimumSize();
}

QSize* QLayout_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_maximumSize();
}

void QLayout_virtualbase_setGeometry(void* self, QRect* geometry) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_setGeometry(geometry);
}

int QLayout_virtualbase_indexOf(const void* self, QWidget* param1) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_indexOf(param1);
}

int QLayout_virtualbase_indexOfWithQLayoutItem(const void* self, QLayoutItem* param1) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_indexOfWithQLayoutItem(param1);
}

bool QLayout_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_isEmpty();
}

int QLayout_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_controlTypes();
}

QLayoutItem* QLayout_virtualbase_replaceWidget(void* self, QWidget* from, QWidget* to, int options) {
	return ( (MiqtVirtualQLayout*)(self) )->virtualbase_replaceWidget(from, to, options);
}

QLayout* QLayout_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQLayout*)(self) )->virtualbase_layout();
}

void QLayout_virtualbase_childEvent(void* self, QChildEvent* e) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_childEvent(e);
}

bool QLayout_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQLayout*)(self) )->virtualbase_event(event);
}

bool QLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQLayout*)(self) )->virtualbase_eventFilter(watched, event);
}

void QLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_timerEvent(event);
}

void QLayout_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_customEvent(event);
}

void QLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_connectNotify(signal);
}

void QLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLayout*)(self) )->virtualbase_disconnectNotify(signal);
}

bool QLayout_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_hasHeightForWidth();
}

int QLayout_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_heightForWidth(param1);
}

int QLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

QWidget* QLayout_virtualbase_widget(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->virtualbase_widget();
}

QSpacerItem* QLayout_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQLayout*)(self) )->virtualbase_spacerItem();
}

void QLayout_protectedbase_widgetEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQLayout*)(self) )->protectedbase_widgetEvent(param1);
}

void QLayout_protectedbase_addChildLayout(void* self, QLayout* l) {
	( (MiqtVirtualQLayout*)(self) )->protectedbase_addChildLayout(l);
}

void QLayout_protectedbase_addChildWidget(void* self, QWidget* w) {
	( (MiqtVirtualQLayout*)(self) )->protectedbase_addChildWidget(w);
}

bool QLayout_protectedbase_adoptLayout(void* self, QLayout* layout) {
	return ( (MiqtVirtualQLayout*)(self) )->protectedbase_adoptLayout(layout);
}

QRect* QLayout_protectedbase_alignmentRect(const void* self, QRect* param1) {
	return ( (const MiqtVirtualQLayout*)(self) )->protectedbase_alignmentRect(param1);
}

QObject* QLayout_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->protectedbase_sender();
}

int QLayout_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQLayout*)(self) )->protectedbase_senderSignalIndex();
}

int QLayout_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQLayout*)(self) )->protectedbase_receivers(signal);
}

bool QLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQLayout*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QLayout_staticMetaObject() { return &QLayout::staticMetaObject; }
void QLayout_delete(QLayout* self) {
	delete self;
}

