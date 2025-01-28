#include <QAbstractTextDocumentLayout>
#define WORKAROUND_INNER_CLASS_DEFINITION_QAbstractTextDocumentLayout__PaintContext
#define WORKAROUND_INNER_CLASS_DEFINITION_QAbstractTextDocumentLayout__Selection
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPaintDevice>
#include <QPainter>
#include <QPointF>
#include <QRectF>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextBlock>
#include <QTextDocument>
#include <QTextFormat>
#include <QTextFrame>
#include <QTextInlineObject>
#include <QTextObjectInterface>
#include <QTimerEvent>
#include <qabstracttextdocumentlayout.h>
#include "gen_qabstracttextdocumentlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAbstractTextDocumentLayout_update(intptr_t);
void miqt_exec_callback_QAbstractTextDocumentLayout_updateBlock(intptr_t, QTextBlock*);
void miqt_exec_callback_QAbstractTextDocumentLayout_documentSizeChanged(intptr_t, QSizeF*);
void miqt_exec_callback_QAbstractTextDocumentLayout_pageCountChanged(intptr_t, int);
void miqt_exec_callback_QAbstractTextDocumentLayout_update1(intptr_t, QRectF*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractTextDocumentLayout final : public QAbstractTextDocumentLayout {
	struct QAbstractTextDocumentLayout_VTable* vtbl;
public:

	MiqtVirtualQAbstractTextDocumentLayout(struct QAbstractTextDocumentLayout_VTable* vtbl, QTextDocument* doc): QAbstractTextDocumentLayout(doc), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractTextDocumentLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractTextDocumentLayout::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAbstractTextDocumentLayout::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractTextDocumentLayout::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAbstractTextDocumentLayout::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractTextDocumentLayout::qt_metacall(param1, param2, param3);
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

		return QAbstractTextDocumentLayout::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter, const QAbstractTextDocumentLayout::PaintContext& context) override {
		if (vtbl->draw == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		const QAbstractTextDocumentLayout::PaintContext& context_ret = context;
		// Cast returned reference into pointer
		QAbstractTextDocumentLayout__PaintContext* sigval2 = const_cast<QAbstractTextDocumentLayout::PaintContext*>(&context_ret);

		vtbl->draw(vtbl, this, sigval1, sigval2);

	}

	// Subclass to allow providing a Go implementation
	virtual int hitTest(const QPointF& point, Qt::HitTestAccuracy accuracy) const override {
		if (vtbl->hitTest == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);
		Qt::HitTestAccuracy accuracy_ret = accuracy;
		int sigval2 = static_cast<int>(accuracy_ret);

		int callback_return_value = vtbl->hitTest(vtbl, this, sigval1, sigval2);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual int pageCount() const override {
		if (vtbl->pageCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->pageCount(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QSizeF documentSize() const override {
		if (vtbl->documentSize == 0) {
			return QSizeF(); // Pure virtual, there is no base we can call
		}


		QSizeF* callback_return_value = vtbl->documentSize(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QRectF frameBoundingRect(QTextFrame* frame) const override {
		if (vtbl->frameBoundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}

		QTextFrame* sigval1 = frame;

		QRectF* callback_return_value = vtbl->frameBoundingRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QRectF blockBoundingRect(const QTextBlock& block) const override {
		if (vtbl->blockBoundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}

		const QTextBlock& block_ret = block;
		// Cast returned reference into pointer
		QTextBlock* sigval1 = const_cast<QTextBlock*>(&block_ret);

		QRectF* callback_return_value = vtbl->blockBoundingRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual void documentChanged(int from, int charsRemoved, int charsAdded) override {
		if (vtbl->documentChanged == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = from;
		int sigval2 = charsRemoved;
		int sigval3 = charsAdded;

		vtbl->documentChanged(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeInlineObject(QTextInlineObject item, int posInDocument, const QTextFormat& format) override {
		if (vtbl->resizeInlineObject == 0) {
			QAbstractTextDocumentLayout::resizeInlineObject(item, posInDocument, format);
			return;
		}

		QTextInlineObject* sigval1 = new QTextInlineObject(item);
		int sigval2 = posInDocument;
		const QTextFormat& format_ret = format;
		// Cast returned reference into pointer
		QTextFormat* sigval3 = const_cast<QTextFormat*>(&format_ret);

		vtbl->resizeInlineObject(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeInlineObject(QTextInlineObject* item, int posInDocument, QTextFormat* format) {

		QAbstractTextDocumentLayout::resizeInlineObject(*item, static_cast<int>(posInDocument), *format);

	}

	// Subclass to allow providing a Go implementation
	virtual void positionInlineObject(QTextInlineObject item, int posInDocument, const QTextFormat& format) override {
		if (vtbl->positionInlineObject == 0) {
			QAbstractTextDocumentLayout::positionInlineObject(item, posInDocument, format);
			return;
		}

		QTextInlineObject* sigval1 = new QTextInlineObject(item);
		int sigval2 = posInDocument;
		const QTextFormat& format_ret = format;
		// Cast returned reference into pointer
		QTextFormat* sigval3 = const_cast<QTextFormat*>(&format_ret);

		vtbl->positionInlineObject(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_positionInlineObject(QTextInlineObject* item, int posInDocument, QTextFormat* format) {

		QAbstractTextDocumentLayout::positionInlineObject(*item, static_cast<int>(posInDocument), *format);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawInlineObject(QPainter* painter, const QRectF& rect, QTextInlineObject object, int posInDocument, const QTextFormat& format) override {
		if (vtbl->drawInlineObject == 0) {
			QAbstractTextDocumentLayout::drawInlineObject(painter, rect, object, posInDocument, format);
			return;
		}

		QPainter* sigval1 = painter;
		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&rect_ret);
		QTextInlineObject* sigval3 = new QTextInlineObject(object);
		int sigval4 = posInDocument;
		const QTextFormat& format_ret = format;
		// Cast returned reference into pointer
		QTextFormat* sigval5 = const_cast<QTextFormat*>(&format_ret);

		vtbl->drawInlineObject(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawInlineObject(QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format) {

		QAbstractTextDocumentLayout::drawInlineObject(painter, *rect, *object, static_cast<int>(posInDocument), *format);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractTextDocumentLayout::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAbstractTextDocumentLayout::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractTextDocumentLayout::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAbstractTextDocumentLayout::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractTextDocumentLayout::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAbstractTextDocumentLayout::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractTextDocumentLayout::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAbstractTextDocumentLayout::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractTextDocumentLayout::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAbstractTextDocumentLayout::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractTextDocumentLayout::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAbstractTextDocumentLayout::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractTextDocumentLayout::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAbstractTextDocumentLayout::disconnectNotify(*signal);

	}

};

QAbstractTextDocumentLayout* QAbstractTextDocumentLayout_new(struct QAbstractTextDocumentLayout_VTable* vtbl, QTextDocument* doc) {
	return new MiqtVirtualQAbstractTextDocumentLayout(vtbl, doc);
}

void QAbstractTextDocumentLayout_virtbase(QAbstractTextDocumentLayout* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractTextDocumentLayout_metaObject(const QAbstractTextDocumentLayout* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractTextDocumentLayout_metacast(QAbstractTextDocumentLayout* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractTextDocumentLayout_metacall(QAbstractTextDocumentLayout* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractTextDocumentLayout_tr(const char* s) {
	QString _ret = QAbstractTextDocumentLayout::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTextDocumentLayout_trUtf8(const char* s) {
	QString _ret = QAbstractTextDocumentLayout::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractTextDocumentLayout_draw(QAbstractTextDocumentLayout* self, QPainter* painter, QAbstractTextDocumentLayout__PaintContext* context) {
	self->draw(painter, *context);
}

int QAbstractTextDocumentLayout_hitTest(const QAbstractTextDocumentLayout* self, QPointF* point, int accuracy) {
	return self->hitTest(*point, static_cast<Qt::HitTestAccuracy>(accuracy));
}

struct miqt_string QAbstractTextDocumentLayout_anchorAt(const QAbstractTextDocumentLayout* self, QPointF* pos) {
	QString _ret = self->anchorAt(*pos);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTextDocumentLayout_imageAt(const QAbstractTextDocumentLayout* self, QPointF* pos) {
	QString _ret = self->imageAt(*pos);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QTextFormat* QAbstractTextDocumentLayout_formatAt(const QAbstractTextDocumentLayout* self, QPointF* pos) {
	return new QTextFormat(self->formatAt(*pos));
}

QTextBlock* QAbstractTextDocumentLayout_blockWithMarkerAt(const QAbstractTextDocumentLayout* self, QPointF* pos) {
	return new QTextBlock(self->blockWithMarkerAt(*pos));
}

int QAbstractTextDocumentLayout_pageCount(const QAbstractTextDocumentLayout* self) {
	return self->pageCount();
}

QSizeF* QAbstractTextDocumentLayout_documentSize(const QAbstractTextDocumentLayout* self) {
	return new QSizeF(self->documentSize());
}

QRectF* QAbstractTextDocumentLayout_frameBoundingRect(const QAbstractTextDocumentLayout* self, QTextFrame* frame) {
	return new QRectF(self->frameBoundingRect(frame));
}

QRectF* QAbstractTextDocumentLayout_blockBoundingRect(const QAbstractTextDocumentLayout* self, QTextBlock* block) {
	return new QRectF(self->blockBoundingRect(*block));
}

void QAbstractTextDocumentLayout_setPaintDevice(QAbstractTextDocumentLayout* self, QPaintDevice* device) {
	self->setPaintDevice(device);
}

QPaintDevice* QAbstractTextDocumentLayout_paintDevice(const QAbstractTextDocumentLayout* self) {
	return self->paintDevice();
}

QTextDocument* QAbstractTextDocumentLayout_document(const QAbstractTextDocumentLayout* self) {
	return self->document();
}

void QAbstractTextDocumentLayout_registerHandler(QAbstractTextDocumentLayout* self, int objectType, QObject* component) {
	self->registerHandler(static_cast<int>(objectType), component);
}

void QAbstractTextDocumentLayout_unregisterHandler(QAbstractTextDocumentLayout* self, int objectType) {
	self->unregisterHandler(static_cast<int>(objectType));
}

QTextObjectInterface* QAbstractTextDocumentLayout_handlerForObject(const QAbstractTextDocumentLayout* self, int objectType) {
	return self->handlerForObject(static_cast<int>(objectType));
}

void QAbstractTextDocumentLayout_update(QAbstractTextDocumentLayout* self) {
	self->update();
}

void QAbstractTextDocumentLayout_connect_update(QAbstractTextDocumentLayout* self, intptr_t slot) {
	MiqtVirtualQAbstractTextDocumentLayout::connect(self, static_cast<void (QAbstractTextDocumentLayout::*)(const QRectF&)>(&QAbstractTextDocumentLayout::update), self, [=]() {
		miqt_exec_callback_QAbstractTextDocumentLayout_update(slot);
	});
}

void QAbstractTextDocumentLayout_updateBlock(QAbstractTextDocumentLayout* self, QTextBlock* block) {
	self->updateBlock(*block);
}

void QAbstractTextDocumentLayout_connect_updateBlock(QAbstractTextDocumentLayout* self, intptr_t slot) {
	MiqtVirtualQAbstractTextDocumentLayout::connect(self, static_cast<void (QAbstractTextDocumentLayout::*)(const QTextBlock&)>(&QAbstractTextDocumentLayout::updateBlock), self, [=](const QTextBlock& block) {
		const QTextBlock& block_ret = block;
		// Cast returned reference into pointer
		QTextBlock* sigval1 = const_cast<QTextBlock*>(&block_ret);
		miqt_exec_callback_QAbstractTextDocumentLayout_updateBlock(slot, sigval1);
	});
}

void QAbstractTextDocumentLayout_documentSizeChanged(QAbstractTextDocumentLayout* self, QSizeF* newSize) {
	self->documentSizeChanged(*newSize);
}

void QAbstractTextDocumentLayout_connect_documentSizeChanged(QAbstractTextDocumentLayout* self, intptr_t slot) {
	MiqtVirtualQAbstractTextDocumentLayout::connect(self, static_cast<void (QAbstractTextDocumentLayout::*)(const QSizeF&)>(&QAbstractTextDocumentLayout::documentSizeChanged), self, [=](const QSizeF& newSize) {
		const QSizeF& newSize_ret = newSize;
		// Cast returned reference into pointer
		QSizeF* sigval1 = const_cast<QSizeF*>(&newSize_ret);
		miqt_exec_callback_QAbstractTextDocumentLayout_documentSizeChanged(slot, sigval1);
	});
}

void QAbstractTextDocumentLayout_pageCountChanged(QAbstractTextDocumentLayout* self, int newPages) {
	self->pageCountChanged(static_cast<int>(newPages));
}

void QAbstractTextDocumentLayout_connect_pageCountChanged(QAbstractTextDocumentLayout* self, intptr_t slot) {
	MiqtVirtualQAbstractTextDocumentLayout::connect(self, static_cast<void (QAbstractTextDocumentLayout::*)(int)>(&QAbstractTextDocumentLayout::pageCountChanged), self, [=](int newPages) {
		int sigval1 = newPages;
		miqt_exec_callback_QAbstractTextDocumentLayout_pageCountChanged(slot, sigval1);
	});
}

struct miqt_string QAbstractTextDocumentLayout_tr2(const char* s, const char* c) {
	QString _ret = QAbstractTextDocumentLayout::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTextDocumentLayout_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractTextDocumentLayout::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTextDocumentLayout_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractTextDocumentLayout::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractTextDocumentLayout_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractTextDocumentLayout::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractTextDocumentLayout_unregisterHandler2(QAbstractTextDocumentLayout* self, int objectType, QObject* component) {
	self->unregisterHandler(static_cast<int>(objectType), component);
}

void QAbstractTextDocumentLayout_update1(QAbstractTextDocumentLayout* self, QRectF* param1) {
	self->update(*param1);
}

void QAbstractTextDocumentLayout_connect_update1(QAbstractTextDocumentLayout* self, intptr_t slot) {
	MiqtVirtualQAbstractTextDocumentLayout::connect(self, static_cast<void (QAbstractTextDocumentLayout::*)(const QRectF&)>(&QAbstractTextDocumentLayout::update), self, [=](const QRectF& param1) {
		const QRectF& param1_ret = param1;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&param1_ret);
		miqt_exec_callback_QAbstractTextDocumentLayout_update1(slot, sigval1);
	});
}

QMetaObject* QAbstractTextDocumentLayout_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_metaObject();
}

void* QAbstractTextDocumentLayout_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_metacast(param1);
}

int QAbstractTextDocumentLayout_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QAbstractTextDocumentLayout_virtualbase_resizeInlineObject(void* self, QTextInlineObject* item, int posInDocument, QTextFormat* format) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_resizeInlineObject(item, posInDocument, format);
}

void QAbstractTextDocumentLayout_virtualbase_positionInlineObject(void* self, QTextInlineObject* item, int posInDocument, QTextFormat* format) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_positionInlineObject(item, posInDocument, format);
}

void QAbstractTextDocumentLayout_virtualbase_drawInlineObject(void* self, QPainter* painter, QRectF* rect, QTextInlineObject* object, int posInDocument, QTextFormat* format) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_drawInlineObject(painter, rect, object, posInDocument, format);
}

bool QAbstractTextDocumentLayout_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_event(event);
}

bool QAbstractTextDocumentLayout_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAbstractTextDocumentLayout_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_timerEvent(event);
}

void QAbstractTextDocumentLayout_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_childEvent(event);
}

void QAbstractTextDocumentLayout_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_customEvent(event);
}

void QAbstractTextDocumentLayout_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_connectNotify(signal);
}

void QAbstractTextDocumentLayout_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractTextDocumentLayout*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAbstractTextDocumentLayout_staticMetaObject() { return &QAbstractTextDocumentLayout::staticMetaObject; }
void QAbstractTextDocumentLayout_delete(QAbstractTextDocumentLayout* self) {
	delete self;
}

QSizeF* QTextObjectInterface_intrinsicSize(QTextObjectInterface* self, QTextDocument* doc, int posInDocument, QTextFormat* format) {
	return new QSizeF(self->intrinsicSize(doc, static_cast<int>(posInDocument), *format));
}

void QTextObjectInterface_drawObject(QTextObjectInterface* self, QPainter* painter, QRectF* rect, QTextDocument* doc, int posInDocument, QTextFormat* format) {
	self->drawObject(painter, *rect, doc, static_cast<int>(posInDocument), *format);
}

void QTextObjectInterface_operatorAssign(QTextObjectInterface* self, QTextObjectInterface* param1) {
	self->operator=(*param1);
}

void QTextObjectInterface_delete(QTextObjectInterface* self) {
	delete self;
}

QAbstractTextDocumentLayout__Selection* QAbstractTextDocumentLayout__Selection_new(QAbstractTextDocumentLayout__Selection* param1) {
	return new QAbstractTextDocumentLayout::Selection(*param1);
}

void QAbstractTextDocumentLayout__Selection_operatorAssign(QAbstractTextDocumentLayout__Selection* self, QAbstractTextDocumentLayout__Selection* param1) {
	self->operator=(*param1);
}

void QAbstractTextDocumentLayout__Selection_delete(QAbstractTextDocumentLayout__Selection* self) {
	delete self;
}

QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new() {
	return new QAbstractTextDocumentLayout::PaintContext();
}

QAbstractTextDocumentLayout__PaintContext* QAbstractTextDocumentLayout__PaintContext_new2(QAbstractTextDocumentLayout__PaintContext* param1) {
	return new QAbstractTextDocumentLayout::PaintContext(*param1);
}

void QAbstractTextDocumentLayout__PaintContext_operatorAssign(QAbstractTextDocumentLayout__PaintContext* self, QAbstractTextDocumentLayout__PaintContext* param1) {
	self->operator=(*param1);
}

void QAbstractTextDocumentLayout__PaintContext_delete(QAbstractTextDocumentLayout__PaintContext* self) {
	delete self;
}

