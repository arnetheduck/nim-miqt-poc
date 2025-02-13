#include <QBoxLayout>
#include <QChildEvent>
#include <QEvent>
#include <QHBoxLayout>
#include <QLayout>
#include <QLayoutItem>
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
#include <QVBoxLayout>
#include <QWidget>
#include <qboxlayout.h>
#include "gen_qboxlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQBoxLayout final : public QBoxLayout {
	struct QBoxLayout_VTable* vtbl;
public:

	MiqtVirtualQBoxLayout(struct QBoxLayout_VTable* vtbl, QBoxLayout::Direction param1): QBoxLayout(param1), vtbl(vtbl) {};
	MiqtVirtualQBoxLayout(struct QBoxLayout_VTable* vtbl, QBoxLayout::Direction param1, QWidget* parent): QBoxLayout(param1, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQBoxLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QBoxLayout::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QBoxLayout::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QBoxLayout::qt_metacall(param1, param2, param3);
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

		return QBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_addItem(QLayoutItem* param1) {

		QBoxLayout::addItem(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int spacing() const override {
		if (vtbl->spacing == 0) {
			return QBoxLayout::spacing();
		}


		int callback_return_value = vtbl->spacing(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_spacing() const {

		return QBoxLayout::spacing();

	}

	// Subclass to allow providing a Go implementation
	virtual void setSpacing(int spacing) override {
		if (vtbl->setSpacing == 0) {
			QBoxLayout::setSpacing(spacing);
			return;
		}

		int sigval1 = spacing;

		vtbl->setSpacing(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSpacing(int spacing) {

		QBoxLayout::setSpacing(static_cast<int>(spacing));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QBoxLayout::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QBoxLayout::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QBoxLayout::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QBoxLayout::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QBoxLayout::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QBoxLayout::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QBoxLayout::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QBoxLayout::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_itemAt(int param1) const {

		return QBoxLayout::itemAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_takeAt(int param1) {

		return QBoxLayout::takeAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QBoxLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_count() const {

		return QBoxLayout::count();

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* geometry) {

		QBoxLayout::setGeometry(*geometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QBoxLayout::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual int indexOf(const QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = (QWidget*) param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indexOf(QWidget* param1) const {

		return QBoxLayout::indexOf(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QBoxLayout::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QBoxLayout::controlTypes();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* replaceWidget(QWidget* from, QWidget* to, Qt::FindChildOptions options) override {
		if (vtbl->replaceWidget == 0) {
			return QBoxLayout::replaceWidget(from, to, options);
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

		return QBoxLayout::replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QBoxLayout::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* e) {

		QBoxLayout::childEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QBoxLayout::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QBoxLayout::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QBoxLayout::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QBoxLayout::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QBoxLayout::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QBoxLayout::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() const {

		return QBoxLayout::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QBoxLayout::spacerItem();

	}

	// Wrappers to allow calling protected methods:
	friend void QBoxLayout_protectedbase_widgetEvent(void* self, QEvent* param1);
	friend void QBoxLayout_protectedbase_addChildLayout(void* self, QLayout* l);
	friend void QBoxLayout_protectedbase_addChildWidget(void* self, QWidget* w);
	friend bool QBoxLayout_protectedbase_adoptLayout(void* self, QLayout* layout);
	friend QRect* QBoxLayout_protectedbase_alignmentRect(const void* self, QRect* param1);
	friend QObject* QBoxLayout_protectedbase_sender(const void* self);
	friend int QBoxLayout_protectedbase_senderSignalIndex(const void* self);
	friend int QBoxLayout_protectedbase_receivers(const void* self, const char* signal);
	friend bool QBoxLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QBoxLayout* QBoxLayout_new(struct QBoxLayout_VTable* vtbl, int param1) {
	return new MiqtVirtualQBoxLayout(vtbl, static_cast<QBoxLayout::Direction>(param1));
}

QBoxLayout* QBoxLayout_new2(struct QBoxLayout_VTable* vtbl, int param1, QWidget* parent) {
	return new MiqtVirtualQBoxLayout(vtbl, static_cast<QBoxLayout::Direction>(param1), parent);
}

void QBoxLayout_virtbase(QBoxLayout* src, QLayout** outptr_QLayout) {
	*outptr_QLayout = static_cast<QLayout*>(src);
}

QMetaObject* QBoxLayout_metaObject(const QBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QBoxLayout_metacast(QBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QBoxLayout_metacall(QBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QBoxLayout_tr(const char* s) {
	QString _ret = QBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QBoxLayout_direction(const QBoxLayout* self) {
	QBoxLayout::Direction _ret = self->direction();
	return static_cast<int>(_ret);
}

void QBoxLayout_setDirection(QBoxLayout* self, int direction) {
	self->setDirection(static_cast<QBoxLayout::Direction>(direction));
}

void QBoxLayout_addSpacing(QBoxLayout* self, int size) {
	self->addSpacing(static_cast<int>(size));
}

void QBoxLayout_addStretch(QBoxLayout* self) {
	self->addStretch();
}

void QBoxLayout_addSpacerItem(QBoxLayout* self, QSpacerItem* spacerItem) {
	self->addSpacerItem(spacerItem);
}

void QBoxLayout_addWidget(QBoxLayout* self, QWidget* param1) {
	self->addWidget(param1);
}

void QBoxLayout_addLayout(QBoxLayout* self, QLayout* layout) {
	self->addLayout(layout);
}

void QBoxLayout_addStrut(QBoxLayout* self, int param1) {
	self->addStrut(static_cast<int>(param1));
}

void QBoxLayout_addItem(QBoxLayout* self, QLayoutItem* param1) {
	self->addItem(param1);
}

void QBoxLayout_insertSpacing(QBoxLayout* self, int index, int size) {
	self->insertSpacing(static_cast<int>(index), static_cast<int>(size));
}

void QBoxLayout_insertStretch(QBoxLayout* self, int index) {
	self->insertStretch(static_cast<int>(index));
}

void QBoxLayout_insertSpacerItem(QBoxLayout* self, int index, QSpacerItem* spacerItem) {
	self->insertSpacerItem(static_cast<int>(index), spacerItem);
}

void QBoxLayout_insertWidget(QBoxLayout* self, int index, QWidget* widget) {
	self->insertWidget(static_cast<int>(index), widget);
}

void QBoxLayout_insertLayout(QBoxLayout* self, int index, QLayout* layout) {
	self->insertLayout(static_cast<int>(index), layout);
}

void QBoxLayout_insertItem(QBoxLayout* self, int index, QLayoutItem* param2) {
	self->insertItem(static_cast<int>(index), param2);
}

int QBoxLayout_spacing(const QBoxLayout* self) {
	return self->spacing();
}

void QBoxLayout_setSpacing(QBoxLayout* self, int spacing) {
	self->setSpacing(static_cast<int>(spacing));
}

bool QBoxLayout_setStretchFactor(QBoxLayout* self, QWidget* w, int stretch) {
	return self->setStretchFactor(w, static_cast<int>(stretch));
}

bool QBoxLayout_setStretchFactor2(QBoxLayout* self, QLayout* l, int stretch) {
	return self->setStretchFactor(l, static_cast<int>(stretch));
}

void QBoxLayout_setStretch(QBoxLayout* self, int index, int stretch) {
	self->setStretch(static_cast<int>(index), static_cast<int>(stretch));
}

int QBoxLayout_stretch(const QBoxLayout* self, int index) {
	return self->stretch(static_cast<int>(index));
}

QSize* QBoxLayout_sizeHint(const QBoxLayout* self) {
	return new QSize(self->sizeHint());
}

QSize* QBoxLayout_minimumSize(const QBoxLayout* self) {
	return new QSize(self->minimumSize());
}

QSize* QBoxLayout_maximumSize(const QBoxLayout* self) {
	return new QSize(self->maximumSize());
}

bool QBoxLayout_hasHeightForWidth(const QBoxLayout* self) {
	return self->hasHeightForWidth();
}

int QBoxLayout_heightForWidth(const QBoxLayout* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QBoxLayout_minimumHeightForWidth(const QBoxLayout* self, int param1) {
	return self->minimumHeightForWidth(static_cast<int>(param1));
}

int QBoxLayout_expandingDirections(const QBoxLayout* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

void QBoxLayout_invalidate(QBoxLayout* self) {
	self->invalidate();
}

QLayoutItem* QBoxLayout_itemAt(const QBoxLayout* self, int param1) {
	return self->itemAt(static_cast<int>(param1));
}

QLayoutItem* QBoxLayout_takeAt(QBoxLayout* self, int param1) {
	return self->takeAt(static_cast<int>(param1));
}

int QBoxLayout_count(const QBoxLayout* self) {
	return self->count();
}

void QBoxLayout_setGeometry(QBoxLayout* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

struct miqt_string QBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QBoxLayout_addStretch1(QBoxLayout* self, int stretch) {
	self->addStretch(static_cast<int>(stretch));
}

void QBoxLayout_addWidget2(QBoxLayout* self, QWidget* param1, int stretch) {
	self->addWidget(param1, static_cast<int>(stretch));
}

void QBoxLayout_addWidget3(QBoxLayout* self, QWidget* param1, int stretch, int alignment) {
	self->addWidget(param1, static_cast<int>(stretch), static_cast<Qt::Alignment>(alignment));
}

void QBoxLayout_addLayout2(QBoxLayout* self, QLayout* layout, int stretch) {
	self->addLayout(layout, static_cast<int>(stretch));
}

void QBoxLayout_insertStretch2(QBoxLayout* self, int index, int stretch) {
	self->insertStretch(static_cast<int>(index), static_cast<int>(stretch));
}

void QBoxLayout_insertWidget3(QBoxLayout* self, int index, QWidget* widget, int stretch) {
	self->insertWidget(static_cast<int>(index), widget, static_cast<int>(stretch));
}

void QBoxLayout_insertWidget4(QBoxLayout* self, int index, QWidget* widget, int stretch, int alignment) {
	self->insertWidget(static_cast<int>(index), widget, static_cast<int>(stretch), static_cast<Qt::Alignment>(alignment));
}

void QBoxLayout_insertLayout3(QBoxLayout* self, int index, QLayout* layout, int stretch) {
	self->insertLayout(static_cast<int>(index), layout, static_cast<int>(stretch));
}

QMetaObject* QBoxLayout_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_metaObject();
}

void* QBoxLayout_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_metacast(param1);
}

int QBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_addItem(param1);
}

int QBoxLayout_virtualbase_spacing(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_spacing();
}

void QBoxLayout_virtualbase_setSpacing(void* self, int spacing) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_setSpacing(spacing);
}

QSize* QBoxLayout_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_sizeHint();
}

QSize* QBoxLayout_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_minimumSize();
}

QSize* QBoxLayout_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_maximumSize();
}

bool QBoxLayout_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_hasHeightForWidth();
}

int QBoxLayout_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_heightForWidth(param1);
}

int QBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

int QBoxLayout_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_expandingDirections();
}

void QBoxLayout_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_invalidate();
}

QLayoutItem* QBoxLayout_virtualbase_itemAt(const void* self, int param1) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_itemAt(param1);
}

QLayoutItem* QBoxLayout_virtualbase_takeAt(void* self, int param1) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_takeAt(param1);
}

int QBoxLayout_virtualbase_count(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_count();
}

void QBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_setGeometry(geometry);
}

QRect* QBoxLayout_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_geometry();
}

int QBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_indexOf(param1);
}

bool QBoxLayout_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_isEmpty();
}

int QBoxLayout_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_controlTypes();
}

QLayoutItem* QBoxLayout_virtualbase_replaceWidget(void* self, QWidget* from, QWidget* to, int options) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_replaceWidget(from, to, options);
}

QLayout* QBoxLayout_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_layout();
}

void QBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_childEvent(e);
}

bool QBoxLayout_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_event(event);
}

bool QBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_eventFilter(watched, event);
}

void QBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_timerEvent(event);
}

void QBoxLayout_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_customEvent(event);
}

void QBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_connectNotify(signal);
}

void QBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_disconnectNotify(signal);
}

QWidget* QBoxLayout_virtualbase_widget(const void* self) {
	return ( (const MiqtVirtualQBoxLayout*)(self) )->virtualbase_widget();
}

QSpacerItem* QBoxLayout_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQBoxLayout*)(self) )->virtualbase_spacerItem();
}

const QMetaObject* QBoxLayout_staticMetaObject() { return &QBoxLayout::staticMetaObject; }
void QBoxLayout_protectedbase_widgetEvent(void* self, QEvent* param1) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	self_cast->widgetEvent(param1);

}

void QBoxLayout_protectedbase_addChildLayout(void* self, QLayout* l) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	self_cast->addChildLayout(l);

}

void QBoxLayout_protectedbase_addChildWidget(void* self, QWidget* w) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	self_cast->addChildWidget(w);

}

bool QBoxLayout_protectedbase_adoptLayout(void* self, QLayout* layout) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	return self_cast->adoptLayout(layout);

}

QRect* QBoxLayout_protectedbase_alignmentRect(const void* self, QRect* param1) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QBoxLayout_protectedbase_sender(const void* self) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	return self_cast->sender();

}

int QBoxLayout_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QBoxLayout_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	return self_cast->receivers(signal);

}

bool QBoxLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQBoxLayout* self_cast = static_cast<MiqtVirtualQBoxLayout*>( (QBoxLayout*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QBoxLayout_delete(QBoxLayout* self) {
	delete self;
}

class MiqtVirtualQHBoxLayout final : public QHBoxLayout {
	struct QHBoxLayout_VTable* vtbl;
public:

	MiqtVirtualQHBoxLayout(struct QHBoxLayout_VTable* vtbl, QWidget* parent): QHBoxLayout(parent), vtbl(vtbl) {};
	MiqtVirtualQHBoxLayout(struct QHBoxLayout_VTable* vtbl): QHBoxLayout(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQHBoxLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QHBoxLayout::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QHBoxLayout::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHBoxLayout::qt_metacall(param1, param2, param3);
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

		return QHBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QHBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_addItem(QLayoutItem* param1) {

		QHBoxLayout::addItem(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int spacing() const override {
		if (vtbl->spacing == 0) {
			return QHBoxLayout::spacing();
		}


		int callback_return_value = vtbl->spacing(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_spacing() const {

		return QHBoxLayout::spacing();

	}

	// Subclass to allow providing a Go implementation
	virtual void setSpacing(int spacing) override {
		if (vtbl->setSpacing == 0) {
			QHBoxLayout::setSpacing(spacing);
			return;
		}

		int sigval1 = spacing;

		vtbl->setSpacing(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSpacing(int spacing) {

		QHBoxLayout::setSpacing(static_cast<int>(spacing));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QHBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QHBoxLayout::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QHBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QHBoxLayout::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QHBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QHBoxLayout::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QHBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QHBoxLayout::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QHBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QHBoxLayout::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QHBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QHBoxLayout::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QHBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QHBoxLayout::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QHBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QHBoxLayout::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QHBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_itemAt(int param1) const {

		return QHBoxLayout::itemAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QHBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_takeAt(int param1) {

		return QHBoxLayout::takeAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QHBoxLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_count() const {

		return QHBoxLayout::count();

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QHBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* geometry) {

		QHBoxLayout::setGeometry(*geometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QHBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QHBoxLayout::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual int indexOf(const QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QHBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = (QWidget*) param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indexOf(QWidget* param1) const {

		return QHBoxLayout::indexOf(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QHBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QHBoxLayout::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QHBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QHBoxLayout::controlTypes();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* replaceWidget(QWidget* from, QWidget* to, Qt::FindChildOptions options) override {
		if (vtbl->replaceWidget == 0) {
			return QHBoxLayout::replaceWidget(from, to, options);
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

		return QHBoxLayout::replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QHBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QHBoxLayout::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QHBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* e) {

		QHBoxLayout::childEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QHBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QHBoxLayout::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QHBoxLayout::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QHBoxLayout::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QHBoxLayout::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QHBoxLayout::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QHBoxLayout::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QHBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() const {

		return QHBoxLayout::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QHBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QHBoxLayout::spacerItem();

	}

	// Wrappers to allow calling protected methods:
	friend void QHBoxLayout_protectedbase_widgetEvent(void* self, QEvent* param1);
	friend void QHBoxLayout_protectedbase_addChildLayout(void* self, QLayout* l);
	friend void QHBoxLayout_protectedbase_addChildWidget(void* self, QWidget* w);
	friend bool QHBoxLayout_protectedbase_adoptLayout(void* self, QLayout* layout);
	friend QRect* QHBoxLayout_protectedbase_alignmentRect(const void* self, QRect* param1);
	friend QObject* QHBoxLayout_protectedbase_sender(const void* self);
	friend int QHBoxLayout_protectedbase_senderSignalIndex(const void* self);
	friend int QHBoxLayout_protectedbase_receivers(const void* self, const char* signal);
	friend bool QHBoxLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QHBoxLayout* QHBoxLayout_new(struct QHBoxLayout_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQHBoxLayout(vtbl, parent);
}

QHBoxLayout* QHBoxLayout_new2(struct QHBoxLayout_VTable* vtbl) {
	return new MiqtVirtualQHBoxLayout(vtbl);
}

void QHBoxLayout_virtbase(QHBoxLayout* src, QBoxLayout** outptr_QBoxLayout) {
	*outptr_QBoxLayout = static_cast<QBoxLayout*>(src);
}

QMetaObject* QHBoxLayout_metaObject(const QHBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QHBoxLayout_metacast(QHBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QHBoxLayout_metacall(QHBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QHBoxLayout_tr(const char* s) {
	QString _ret = QHBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QHBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QHBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QHBoxLayout_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_metaObject();
}

void* QHBoxLayout_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_metacast(param1);
}

int QHBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QHBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_addItem(param1);
}

int QHBoxLayout_virtualbase_spacing(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_spacing();
}

void QHBoxLayout_virtualbase_setSpacing(void* self, int spacing) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_setSpacing(spacing);
}

QSize* QHBoxLayout_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_sizeHint();
}

QSize* QHBoxLayout_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_minimumSize();
}

QSize* QHBoxLayout_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_maximumSize();
}

bool QHBoxLayout_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_hasHeightForWidth();
}

int QHBoxLayout_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_heightForWidth(param1);
}

int QHBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

int QHBoxLayout_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_expandingDirections();
}

void QHBoxLayout_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_invalidate();
}

QLayoutItem* QHBoxLayout_virtualbase_itemAt(const void* self, int param1) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_itemAt(param1);
}

QLayoutItem* QHBoxLayout_virtualbase_takeAt(void* self, int param1) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_takeAt(param1);
}

int QHBoxLayout_virtualbase_count(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_count();
}

void QHBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_setGeometry(geometry);
}

QRect* QHBoxLayout_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_geometry();
}

int QHBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_indexOf(param1);
}

bool QHBoxLayout_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_isEmpty();
}

int QHBoxLayout_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_controlTypes();
}

QLayoutItem* QHBoxLayout_virtualbase_replaceWidget(void* self, QWidget* from, QWidget* to, int options) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_replaceWidget(from, to, options);
}

QLayout* QHBoxLayout_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_layout();
}

void QHBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_childEvent(e);
}

bool QHBoxLayout_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_event(event);
}

bool QHBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_eventFilter(watched, event);
}

void QHBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_timerEvent(event);
}

void QHBoxLayout_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_customEvent(event);
}

void QHBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_connectNotify(signal);
}

void QHBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_disconnectNotify(signal);
}

QWidget* QHBoxLayout_virtualbase_widget(const void* self) {
	return ( (const MiqtVirtualQHBoxLayout*)(self) )->virtualbase_widget();
}

QSpacerItem* QHBoxLayout_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQHBoxLayout*)(self) )->virtualbase_spacerItem();
}

const QMetaObject* QHBoxLayout_staticMetaObject() { return &QHBoxLayout::staticMetaObject; }
void QHBoxLayout_protectedbase_widgetEvent(void* self, QEvent* param1) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	self_cast->widgetEvent(param1);

}

void QHBoxLayout_protectedbase_addChildLayout(void* self, QLayout* l) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	self_cast->addChildLayout(l);

}

void QHBoxLayout_protectedbase_addChildWidget(void* self, QWidget* w) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	self_cast->addChildWidget(w);

}

bool QHBoxLayout_protectedbase_adoptLayout(void* self, QLayout* layout) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	return self_cast->adoptLayout(layout);

}

QRect* QHBoxLayout_protectedbase_alignmentRect(const void* self, QRect* param1) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QHBoxLayout_protectedbase_sender(const void* self) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	return self_cast->sender();

}

int QHBoxLayout_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QHBoxLayout_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	return self_cast->receivers(signal);

}

bool QHBoxLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQHBoxLayout* self_cast = static_cast<MiqtVirtualQHBoxLayout*>( (QHBoxLayout*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QHBoxLayout_delete(QHBoxLayout* self) {
	delete self;
}

class MiqtVirtualQVBoxLayout final : public QVBoxLayout {
	struct QVBoxLayout_VTable* vtbl;
public:

	MiqtVirtualQVBoxLayout(struct QVBoxLayout_VTable* vtbl, QWidget* parent): QVBoxLayout(parent), vtbl(vtbl) {};
	MiqtVirtualQVBoxLayout(struct QVBoxLayout_VTable* vtbl): QVBoxLayout(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQVBoxLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVBoxLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QVBoxLayout::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVBoxLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QVBoxLayout::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVBoxLayout::qt_metacall(param1, param2, param3);
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

		return QVBoxLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void addItem(QLayoutItem* param1) override {
		if (vtbl->addItem == 0) {
			QVBoxLayout::addItem(param1);
			return;
		}

		QLayoutItem* sigval1 = param1;

		vtbl->addItem(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_addItem(QLayoutItem* param1) {

		QVBoxLayout::addItem(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int spacing() const override {
		if (vtbl->spacing == 0) {
			return QVBoxLayout::spacing();
		}


		int callback_return_value = vtbl->spacing(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_spacing() const {

		return QVBoxLayout::spacing();

	}

	// Subclass to allow providing a Go implementation
	virtual void setSpacing(int spacing) override {
		if (vtbl->setSpacing == 0) {
			QVBoxLayout::setSpacing(spacing);
			return;
		}

		int sigval1 = spacing;

		vtbl->setSpacing(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSpacing(int spacing) {

		QVBoxLayout::setSpacing(static_cast<int>(spacing));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QVBoxLayout::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QVBoxLayout::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QVBoxLayout::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QVBoxLayout::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QVBoxLayout::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QVBoxLayout::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QVBoxLayout::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QVBoxLayout::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QVBoxLayout::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QVBoxLayout::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QVBoxLayout::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QVBoxLayout::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QVBoxLayout::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QVBoxLayout::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QVBoxLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QVBoxLayout::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* itemAt(int param1) const override {
		if (vtbl->itemAt == 0) {
			return QVBoxLayout::itemAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_itemAt(int param1) const {

		return QVBoxLayout::itemAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* takeAt(int param1) override {
		if (vtbl->takeAt == 0) {
			return QVBoxLayout::takeAt(param1);
		}

		int sigval1 = param1;

		QLayoutItem* callback_return_value = vtbl->takeAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayoutItem* virtualbase_takeAt(int param1) {

		return QVBoxLayout::takeAt(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QVBoxLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_count() const {

		return QVBoxLayout::count();

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QVBoxLayout::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* geometry) {

		QVBoxLayout::setGeometry(*geometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QVBoxLayout::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QVBoxLayout::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual int indexOf(const QWidget* param1) const override {
		if (vtbl->indexOf == 0) {
			return QVBoxLayout::indexOf(param1);
		}

		QWidget* sigval1 = (QWidget*) param1;

		int callback_return_value = vtbl->indexOf(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indexOf(QWidget* param1) const {

		return QVBoxLayout::indexOf(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QVBoxLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QVBoxLayout::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QVBoxLayout::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QVBoxLayout::controlTypes();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QLayoutItem* replaceWidget(QWidget* from, QWidget* to, Qt::FindChildOptions options) override {
		if (vtbl->replaceWidget == 0) {
			return QVBoxLayout::replaceWidget(from, to, options);
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

		return QVBoxLayout::replaceWidget(from, to, static_cast<Qt::FindChildOptions>(options));

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QVBoxLayout::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QVBoxLayout::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* e) override {
		if (vtbl->childEvent == 0) {
			QVBoxLayout::childEvent(e);
			return;
		}

		QChildEvent* sigval1 = e;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* e) {

		QVBoxLayout::childEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVBoxLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QVBoxLayout::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVBoxLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QVBoxLayout::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVBoxLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QVBoxLayout::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVBoxLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QVBoxLayout::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVBoxLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QVBoxLayout::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVBoxLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QVBoxLayout::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() const override {
		if (vtbl->widget == 0) {
			return QVBoxLayout::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() const {

		return QVBoxLayout::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QVBoxLayout::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QVBoxLayout::spacerItem();

	}

	// Wrappers to allow calling protected methods:
	friend void QVBoxLayout_protectedbase_widgetEvent(void* self, QEvent* param1);
	friend void QVBoxLayout_protectedbase_addChildLayout(void* self, QLayout* l);
	friend void QVBoxLayout_protectedbase_addChildWidget(void* self, QWidget* w);
	friend bool QVBoxLayout_protectedbase_adoptLayout(void* self, QLayout* layout);
	friend QRect* QVBoxLayout_protectedbase_alignmentRect(const void* self, QRect* param1);
	friend QObject* QVBoxLayout_protectedbase_sender(const void* self);
	friend int QVBoxLayout_protectedbase_senderSignalIndex(const void* self);
	friend int QVBoxLayout_protectedbase_receivers(const void* self, const char* signal);
	friend bool QVBoxLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QVBoxLayout* QVBoxLayout_new(struct QVBoxLayout_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQVBoxLayout(vtbl, parent);
}

QVBoxLayout* QVBoxLayout_new2(struct QVBoxLayout_VTable* vtbl) {
	return new MiqtVirtualQVBoxLayout(vtbl);
}

void QVBoxLayout_virtbase(QVBoxLayout* src, QBoxLayout** outptr_QBoxLayout) {
	*outptr_QBoxLayout = static_cast<QBoxLayout*>(src);
}

QMetaObject* QVBoxLayout_metaObject(const QVBoxLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVBoxLayout_metacast(QVBoxLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVBoxLayout_metacall(QVBoxLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVBoxLayout_tr(const char* s) {
	QString _ret = QVBoxLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_tr2(const char* s, const char* c) {
	QString _ret = QVBoxLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVBoxLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QVBoxLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVBoxLayout_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_metaObject();
}

void* QVBoxLayout_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_metacast(param1);
}

int QVBoxLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QVBoxLayout_virtualbase_addItem(void* self, QLayoutItem* param1) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_addItem(param1);
}

int QVBoxLayout_virtualbase_spacing(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_spacing();
}

void QVBoxLayout_virtualbase_setSpacing(void* self, int spacing) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_setSpacing(spacing);
}

QSize* QVBoxLayout_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_sizeHint();
}

QSize* QVBoxLayout_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_minimumSize();
}

QSize* QVBoxLayout_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_maximumSize();
}

bool QVBoxLayout_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_hasHeightForWidth();
}

int QVBoxLayout_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_heightForWidth(param1);
}

int QVBoxLayout_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

int QVBoxLayout_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_expandingDirections();
}

void QVBoxLayout_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_invalidate();
}

QLayoutItem* QVBoxLayout_virtualbase_itemAt(const void* self, int param1) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_itemAt(param1);
}

QLayoutItem* QVBoxLayout_virtualbase_takeAt(void* self, int param1) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_takeAt(param1);
}

int QVBoxLayout_virtualbase_count(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_count();
}

void QVBoxLayout_virtualbase_setGeometry(void* self, QRect* geometry) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_setGeometry(geometry);
}

QRect* QVBoxLayout_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_geometry();
}

int QVBoxLayout_virtualbase_indexOf(const void* self, QWidget* param1) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_indexOf(param1);
}

bool QVBoxLayout_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_isEmpty();
}

int QVBoxLayout_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_controlTypes();
}

QLayoutItem* QVBoxLayout_virtualbase_replaceWidget(void* self, QWidget* from, QWidget* to, int options) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_replaceWidget(from, to, options);
}

QLayout* QVBoxLayout_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_layout();
}

void QVBoxLayout_virtualbase_childEvent(void* self, QChildEvent* e) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_childEvent(e);
}

bool QVBoxLayout_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_event(event);
}

bool QVBoxLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_eventFilter(watched, event);
}

void QVBoxLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_timerEvent(event);
}

void QVBoxLayout_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_customEvent(event);
}

void QVBoxLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_connectNotify(signal);
}

void QVBoxLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_disconnectNotify(signal);
}

QWidget* QVBoxLayout_virtualbase_widget(const void* self) {
	return ( (const MiqtVirtualQVBoxLayout*)(self) )->virtualbase_widget();
}

QSpacerItem* QVBoxLayout_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQVBoxLayout*)(self) )->virtualbase_spacerItem();
}

const QMetaObject* QVBoxLayout_staticMetaObject() { return &QVBoxLayout::staticMetaObject; }
void QVBoxLayout_protectedbase_widgetEvent(void* self, QEvent* param1) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	self_cast->widgetEvent(param1);

}

void QVBoxLayout_protectedbase_addChildLayout(void* self, QLayout* l) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	self_cast->addChildLayout(l);

}

void QVBoxLayout_protectedbase_addChildWidget(void* self, QWidget* w) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	self_cast->addChildWidget(w);

}

bool QVBoxLayout_protectedbase_adoptLayout(void* self, QLayout* layout) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	return self_cast->adoptLayout(layout);

}

QRect* QVBoxLayout_protectedbase_alignmentRect(const void* self, QRect* param1) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	return new QRect(self_cast->alignmentRect(*param1));

}

QObject* QVBoxLayout_protectedbase_sender(const void* self) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	return self_cast->sender();

}

int QVBoxLayout_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QVBoxLayout_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	return self_cast->receivers(signal);

}

bool QVBoxLayout_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQVBoxLayout* self_cast = static_cast<MiqtVirtualQVBoxLayout*>( (QVBoxLayout*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QVBoxLayout_delete(QVBoxLayout* self) {
	delete self;
}

