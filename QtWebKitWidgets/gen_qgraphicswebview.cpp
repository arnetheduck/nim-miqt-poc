#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QGraphicsItem>
#include <QGraphicsLayoutItem>
#include <QGraphicsObject>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneMoveEvent>
#include <QGraphicsSceneResizeEvent>
#include <QGraphicsSceneWheelEvent>
#include <QGraphicsWebView>
#include <QGraphicsWidget>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkRequest>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPointF>
#include <QRectF>
#include <QShowEvent>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOption>
#include <QStyleOptionGraphicsItem>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QWebHistory>
#include <QWebPage>
#include <QWebSettings>
#include <QWidget>
#include <qgraphicswebview.h>
#include "gen_qgraphicswebview.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QGraphicsWebView_loadStarted(intptr_t);
void miqt_exec_callback_QGraphicsWebView_loadStarted_release(intptr_t);
void miqt_exec_callback_QGraphicsWebView_loadFinished(intptr_t, bool);
void miqt_exec_callback_QGraphicsWebView_loadFinished_release(intptr_t);
void miqt_exec_callback_QGraphicsWebView_loadProgress(intptr_t, int);
void miqt_exec_callback_QGraphicsWebView_loadProgress_release(intptr_t);
void miqt_exec_callback_QGraphicsWebView_urlChanged(intptr_t, QUrl*);
void miqt_exec_callback_QGraphicsWebView_urlChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsWebView_titleChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QGraphicsWebView_titleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsWebView_iconChanged(intptr_t);
void miqt_exec_callback_QGraphicsWebView_iconChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsWebView_statusBarMessage(intptr_t, struct miqt_string);
void miqt_exec_callback_QGraphicsWebView_statusBarMessage_release(intptr_t);
void miqt_exec_callback_QGraphicsWebView_linkClicked(intptr_t, QUrl*);
void miqt_exec_callback_QGraphicsWebView_linkClicked_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGraphicsWebView final : public QGraphicsWebView {
	struct QGraphicsWebView_VTable* vtbl;
public:

	MiqtVirtualQGraphicsWebView(struct QGraphicsWebView_VTable* vtbl): QGraphicsWebView(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsWebView(struct QGraphicsWebView_VTable* vtbl, QGraphicsItem* parent): QGraphicsWebView(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsWebView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsWebView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsWebView::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsWebView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsWebView::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsWebView::qt_metacall(param1, param2, param3);
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

		return QGraphicsWebView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsWebView::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRectF* rect) {

		QGraphicsWebView::setGeometry(*rect);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsWebView::updateGeometry();
			return;
		}


		vtbl->updateGeometry(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateGeometry() {

		QGraphicsWebView::updateGeometry();

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* param1, const QStyleOptionGraphicsItem* options, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsWebView::paint(param1, options, widget);
			return;
		}

		QPainter* sigval1 = param1;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) options;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget) {

		QGraphicsWebView::paint(param1, options, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsWebView::itemChange(change, value);
		}

		QGraphicsItem::GraphicsItemChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		QVariant* callback_return_value = vtbl->itemChange(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_itemChange(int change, QVariant* value) {

		return new QVariant(QGraphicsWebView::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QGraphicsWebView::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QGraphicsWebView::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsWebView::sizeHint(which, constraint);
		}

		Qt::SizeHint which_ret = which;
		int sigval1 = static_cast<int>(which_ret);
		const QSizeF& constraint_ret = constraint;
		// Cast returned reference into pointer
		QSizeF* sigval2 = const_cast<QSizeF*>(&constraint_ret);

		QSizeF* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSizeF* virtualbase_sizeHint(int which, QSizeF* constraint) const {

		return new QSizeF(QGraphicsWebView::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsWebView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsWebView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsWebView::mousePressEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* param1) {

		QGraphicsWebView::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsWebView::mouseDoubleClickEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* param1) {

		QGraphicsWebView::mouseDoubleClickEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsWebView::mouseReleaseEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* param1) {

		QGraphicsWebView::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsWebView::mouseMoveEvent(param1);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* param1) {

		QGraphicsWebView::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* param1) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsWebView::hoverMoveEvent(param1);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = param1;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* param1) {

		QGraphicsWebView::hoverMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* param1) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsWebView::hoverLeaveEvent(param1);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = param1;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* param1) {

		QGraphicsWebView::hoverLeaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsWebView::wheelEvent(param1);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* param1) {

		QGraphicsWebView::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsWebView::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QGraphicsWebView::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsWebView::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* param1) {

		QGraphicsWebView::keyReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsWebView::contextMenuEvent(param1);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* param1) {

		QGraphicsWebView::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsWebView::dragEnterEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* param1) {

		QGraphicsWebView::dragEnterEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsWebView::dragLeaveEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* param1) {

		QGraphicsWebView::dragLeaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsWebView::dragMoveEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* param1) {

		QGraphicsWebView::dragMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsWebView::dropEvent(param1);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* param1) {

		QGraphicsWebView::dropEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsWebView::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QGraphicsWebView::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsWebView::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QGraphicsWebView::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsWebView::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QGraphicsWebView::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGraphicsWebView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QGraphicsWebView::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* param1) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsWebView::sceneEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* param1) {

		return QGraphicsWebView::sceneEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsWebView::getContentsMargins(left, top, right, bottom);
			return;
		}

		qreal* left_ret = left;
		double* sigval1 = static_cast<double*>(left_ret);
		qreal* top_ret = top;
		double* sigval2 = static_cast<double*>(top_ret);
		qreal* right_ret = right;
		double* sigval3 = static_cast<double*>(right_ret);
		qreal* bottom_ret = bottom;
		double* sigval4 = static_cast<double*>(bottom_ret);

		vtbl->getContentsMargins(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_getContentsMargins(double* left, double* top, double* right, double* bottom) const {

		QGraphicsWebView::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsWebView::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsWebView::type();

	}

	// Subclass to allow providing a Go implementation
	virtual void paintWindowFrame(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paintWindowFrame == 0) {
			QGraphicsWebView::paintWindowFrame(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paintWindowFrame(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintWindowFrame(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsWebView::paintWindowFrame(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsWebView::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsWebView::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsWebView::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsWebView::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOption* option) const override {
		if (vtbl->initStyleOption == 0) {
			QGraphicsWebView::initStyleOption(option);
			return;
		}

		QStyleOption* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOption* option) const {

		QGraphicsWebView::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant propertyChange(const QString& propertyName, const QVariant& value) override {
		if (vtbl->propertyChange == 0) {
			return QGraphicsWebView::propertyChange(propertyName, value);
		}

		const QString propertyName_ret = propertyName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray propertyName_b = propertyName_ret.toUtf8();
		struct miqt_string propertyName_ms;
		propertyName_ms.len = propertyName_b.length();
		propertyName_ms.data = static_cast<char*>(malloc(propertyName_ms.len));
		memcpy(propertyName_ms.data, propertyName_b.data(), propertyName_ms.len);
		struct miqt_string sigval1 = propertyName_ms;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		QVariant* callback_return_value = vtbl->propertyChange(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_propertyChange(struct miqt_string propertyName, QVariant* value) {
		QString propertyName_QString = QString::fromUtf8(propertyName.data, propertyName.len);

		return new QVariant(QGraphicsWebView::propertyChange(propertyName_QString, *value));

	}

	// Subclass to allow providing a Go implementation
	virtual bool windowFrameEvent(QEvent* e) override {
		if (vtbl->windowFrameEvent == 0) {
			return QGraphicsWebView::windowFrameEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->windowFrameEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_windowFrameEvent(QEvent* e) {

		return QGraphicsWebView::windowFrameEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF& pos) const override {
		if (vtbl->windowFrameSectionAt == 0) {
			return QGraphicsWebView::windowFrameSectionAt(pos);
		}

		const QPointF& pos_ret = pos;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&pos_ret);

		int callback_return_value = vtbl->windowFrameSectionAt(vtbl, this, sigval1);

		return static_cast<Qt::WindowFrameSection>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_windowFrameSectionAt(QPointF* pos) const {

		Qt::WindowFrameSection _ret = QGraphicsWebView::windowFrameSectionAt(*pos);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGraphicsWebView::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* event) {

		QGraphicsWebView::changeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGraphicsWebView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QGraphicsWebView::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGraphicsWebView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QGraphicsWebView::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QGraphicsSceneMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGraphicsWebView::moveEvent(event);
			return;
		}

		QGraphicsSceneMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QGraphicsSceneMoveEvent* event) {

		QGraphicsWebView::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void polishEvent() override {
		if (vtbl->polishEvent == 0) {
			QGraphicsWebView::polishEvent();
			return;
		}


		vtbl->polishEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_polishEvent() {

		QGraphicsWebView::polishEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QGraphicsSceneResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGraphicsWebView::resizeEvent(event);
			return;
		}

		QGraphicsSceneResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QGraphicsSceneResizeEvent* event) {

		QGraphicsWebView::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGraphicsWebView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QGraphicsWebView::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void grabMouseEvent(QEvent* event) override {
		if (vtbl->grabMouseEvent == 0) {
			QGraphicsWebView::grabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabMouseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_grabMouseEvent(QEvent* event) {

		QGraphicsWebView::grabMouseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void ungrabMouseEvent(QEvent* event) override {
		if (vtbl->ungrabMouseEvent == 0) {
			QGraphicsWebView::ungrabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabMouseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_ungrabMouseEvent(QEvent* event) {

		QGraphicsWebView::ungrabMouseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void grabKeyboardEvent(QEvent* event) override {
		if (vtbl->grabKeyboardEvent == 0) {
			QGraphicsWebView::grabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabKeyboardEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_grabKeyboardEvent(QEvent* event) {

		QGraphicsWebView::grabKeyboardEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void ungrabKeyboardEvent(QEvent* event) override {
		if (vtbl->ungrabKeyboardEvent == 0) {
			QGraphicsWebView::ungrabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabKeyboardEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_ungrabKeyboardEvent(QEvent* event) {

		QGraphicsWebView::ungrabKeyboardEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsWebView::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsWebView::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsWebView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsWebView::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsWebView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsWebView::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsWebView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsWebView::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsWebView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsWebView::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsWebView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsWebView::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsWebView::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsWebView::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsWebView::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsWebView::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsWebView::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsWebView::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsWebView::collidesWithPath(path, mode);
		}

		const QPainterPath& path_ret = path;
		// Cast returned reference into pointer
		QPainterPath* sigval1 = const_cast<QPainterPath*>(&path_ret);
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithPath(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithPath(QPainterPath* path, int mode) const {

		return QGraphicsWebView::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsWebView::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsWebView::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsWebView::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsWebView::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsWebView::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsWebView::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsWebView::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsWebView::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsWebView::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsWebView::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsWebView::setExtension(extension, variant);
			return;
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&variant_ret);

		vtbl->setExtension(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setExtension(int extension, QVariant* variant) {

		QGraphicsWebView::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsWebView::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsWebView::extension(*variant));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsWebView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend QObject* QGraphicsWebView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsWebView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsWebView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsWebView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
	friend void QGraphicsWebView_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsWebView_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsWebView_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsWebView_protectedbase_setGraphicsItem(bool* _dynamic_cast_ok, void* self, QGraphicsItem* item);
	friend void QGraphicsWebView_protectedbase_setOwnedByLayout(bool* _dynamic_cast_ok, void* self, bool ownedByLayout);
};

QGraphicsWebView* QGraphicsWebView_new(struct QGraphicsWebView_VTable* vtbl) {
	return new MiqtVirtualQGraphicsWebView(vtbl);
}

QGraphicsWebView* QGraphicsWebView_new2(struct QGraphicsWebView_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsWebView(vtbl, parent);
}

void QGraphicsWebView_virtbase(QGraphicsWebView* src, QGraphicsWidget** outptr_QGraphicsWidget) {
	*outptr_QGraphicsWidget = static_cast<QGraphicsWidget*>(src);
}

QMetaObject* QGraphicsWebView_metaObject(const QGraphicsWebView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsWebView_metacast(QGraphicsWebView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsWebView_metacall(QGraphicsWebView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsWebView_tr(const char* s) {
	QString _ret = QGraphicsWebView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_trUtf8(const char* s) {
	QString _ret = QGraphicsWebView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebPage* QGraphicsWebView_page(const QGraphicsWebView* self) {
	return self->page();
}

void QGraphicsWebView_setPage(QGraphicsWebView* self, QWebPage* page) {
	self->setPage(page);
}

QUrl* QGraphicsWebView_url(const QGraphicsWebView* self) {
	return new QUrl(self->url());
}

void QGraphicsWebView_setUrl(QGraphicsWebView* self, QUrl* url) {
	self->setUrl(*url);
}

struct miqt_string QGraphicsWebView_title(const QGraphicsWebView* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIcon* QGraphicsWebView_icon(const QGraphicsWebView* self) {
	return new QIcon(self->icon());
}

double QGraphicsWebView_zoomFactor(const QGraphicsWebView* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

void QGraphicsWebView_setZoomFactor(QGraphicsWebView* self, double zoomFactor) {
	self->setZoomFactor(static_cast<qreal>(zoomFactor));
}

bool QGraphicsWebView_isModified(const QGraphicsWebView* self) {
	return self->isModified();
}

void QGraphicsWebView_load(QGraphicsWebView* self, QUrl* url) {
	self->load(*url);
}

void QGraphicsWebView_loadWithRequest(QGraphicsWebView* self, QNetworkRequest* request) {
	self->load(*request);
}

void QGraphicsWebView_setHtml(QGraphicsWebView* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

void QGraphicsWebView_setContent(QGraphicsWebView* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->setContent(data_QByteArray);
}

QWebHistory* QGraphicsWebView_history(const QGraphicsWebView* self) {
	return self->history();
}

QWebSettings* QGraphicsWebView_settings(const QGraphicsWebView* self) {
	return self->settings();
}

void QGraphicsWebView_triggerPageAction(QGraphicsWebView* self, int action) {
	self->triggerPageAction(static_cast<QWebPage::WebAction>(action));
}

bool QGraphicsWebView_findText(QGraphicsWebView* self, struct miqt_string subString) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString);
}

bool QGraphicsWebView_resizesToContents(const QGraphicsWebView* self) {
	return self->resizesToContents();
}

void QGraphicsWebView_setResizesToContents(QGraphicsWebView* self, bool enabled) {
	self->setResizesToContents(enabled);
}

bool QGraphicsWebView_isTiledBackingStoreFrozen(const QGraphicsWebView* self) {
	return self->isTiledBackingStoreFrozen();
}

void QGraphicsWebView_setTiledBackingStoreFrozen(QGraphicsWebView* self, bool frozen) {
	self->setTiledBackingStoreFrozen(frozen);
}

void QGraphicsWebView_setGeometry(QGraphicsWebView* self, QRectF* rect) {
	self->setGeometry(*rect);
}

void QGraphicsWebView_updateGeometry(QGraphicsWebView* self) {
	self->updateGeometry();
}

void QGraphicsWebView_paint(QGraphicsWebView* self, QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget) {
	self->paint(param1, options, widget);
}

QVariant* QGraphicsWebView_itemChange(QGraphicsWebView* self, int change, QVariant* value) {
	return new QVariant(self->itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));
}

bool QGraphicsWebView_event(QGraphicsWebView* self, QEvent* param1) {
	return self->event(param1);
}

QSizeF* QGraphicsWebView_sizeHint(const QGraphicsWebView* self, int which, QSizeF* constraint) {
	return new QSizeF(self->sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

QVariant* QGraphicsWebView_inputMethodQuery(const QGraphicsWebView* self, int query) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));
}

int QGraphicsWebView_renderHints(const QGraphicsWebView* self) {
	QPainter::RenderHints _ret = self->renderHints();
	return static_cast<int>(_ret);
}

void QGraphicsWebView_setRenderHints(QGraphicsWebView* self, int renderHints) {
	self->setRenderHints(static_cast<QPainter::RenderHints>(renderHints));
}

void QGraphicsWebView_setRenderHint(QGraphicsWebView* self, int param1) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(param1));
}

void QGraphicsWebView_stop(QGraphicsWebView* self) {
	self->stop();
}

void QGraphicsWebView_back(QGraphicsWebView* self) {
	self->back();
}

void QGraphicsWebView_forward(QGraphicsWebView* self) {
	self->forward();
}

void QGraphicsWebView_reload(QGraphicsWebView* self) {
	self->reload();
}

void QGraphicsWebView_loadStarted(QGraphicsWebView* self) {
	self->loadStarted();
}

void QGraphicsWebView_connect_loadStarted(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsWebView_loadStarted(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_loadStarted_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)()>(&QGraphicsWebView::loadStarted), self, caller{slot});
}

void QGraphicsWebView_loadFinished(QGraphicsWebView* self, bool param1) {
	self->loadFinished(param1);
}

void QGraphicsWebView_connect_loadFinished(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool param1) {
			bool sigval1 = param1;
			miqt_exec_callback_QGraphicsWebView_loadFinished(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_loadFinished_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(bool)>(&QGraphicsWebView::loadFinished), self, caller{slot});
}

void QGraphicsWebView_loadProgress(QGraphicsWebView* self, int progress) {
	self->loadProgress(static_cast<int>(progress));
}

void QGraphicsWebView_connect_loadProgress(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int progress) {
			int sigval1 = progress;
			miqt_exec_callback_QGraphicsWebView_loadProgress(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_loadProgress_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(int)>(&QGraphicsWebView::loadProgress), self, caller{slot});
}

void QGraphicsWebView_urlChanged(QGraphicsWebView* self, QUrl* param1) {
	self->urlChanged(*param1);
}

void QGraphicsWebView_connect_urlChanged(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			miqt_exec_callback_QGraphicsWebView_urlChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_urlChanged_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QUrl&)>(&QGraphicsWebView::urlChanged), self, caller{slot});
}

void QGraphicsWebView_titleChanged(QGraphicsWebView* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->titleChanged(param1_QString);
}

void QGraphicsWebView_connect_titleChanged(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& param1) {
			const QString param1_ret = param1;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray param1_b = param1_ret.toUtf8();
			struct miqt_string param1_ms;
			param1_ms.len = param1_b.length();
			param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
			memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
			struct miqt_string sigval1 = param1_ms;
			miqt_exec_callback_QGraphicsWebView_titleChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_titleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QString&)>(&QGraphicsWebView::titleChanged), self, caller{slot});
}

void QGraphicsWebView_iconChanged(QGraphicsWebView* self) {
	self->iconChanged();
}

void QGraphicsWebView_connect_iconChanged(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsWebView_iconChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_iconChanged_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)()>(&QGraphicsWebView::iconChanged), self, caller{slot});
}

void QGraphicsWebView_statusBarMessage(QGraphicsWebView* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->statusBarMessage(message_QString);
}

void QGraphicsWebView_connect_statusBarMessage(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& message) {
			const QString message_ret = message;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray message_b = message_ret.toUtf8();
			struct miqt_string message_ms;
			message_ms.len = message_b.length();
			message_ms.data = static_cast<char*>(malloc(message_ms.len));
			memcpy(message_ms.data, message_b.data(), message_ms.len);
			struct miqt_string sigval1 = message_ms;
			miqt_exec_callback_QGraphicsWebView_statusBarMessage(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_statusBarMessage_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QString&)>(&QGraphicsWebView::statusBarMessage), self, caller{slot});
}

void QGraphicsWebView_linkClicked(QGraphicsWebView* self, QUrl* param1) {
	self->linkClicked(*param1);
}

void QGraphicsWebView_connect_linkClicked(QGraphicsWebView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			miqt_exec_callback_QGraphicsWebView_linkClicked(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWebView_linkClicked_release(slot); }
	};
	MiqtVirtualQGraphicsWebView::connect(self, static_cast<void (QGraphicsWebView::*)(const QUrl&)>(&QGraphicsWebView::linkClicked), self, caller{slot});
}

struct miqt_string QGraphicsWebView_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsWebView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsWebView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsWebView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWebView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsWebView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsWebView_load2(QGraphicsWebView* self, QNetworkRequest* request, int operation) {
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation));
}

void QGraphicsWebView_load3(QGraphicsWebView* self, QNetworkRequest* request, int operation, struct miqt_string body) {
	QByteArray body_QByteArray(body.data, body.len);
	self->load(*request, static_cast<QNetworkAccessManager::Operation>(operation), body_QByteArray);
}

void QGraphicsWebView_setHtml2(QGraphicsWebView* self, struct miqt_string html, QUrl* baseUrl) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString, *baseUrl);
}

void QGraphicsWebView_setContent2(QGraphicsWebView* self, struct miqt_string data, struct miqt_string mimeType) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString);
}

void QGraphicsWebView_setContent3(QGraphicsWebView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString, *baseUrl);
}

void QGraphicsWebView_triggerPageAction2(QGraphicsWebView* self, int action, bool checked) {
	self->triggerPageAction(static_cast<QWebPage::WebAction>(action), checked);
}

bool QGraphicsWebView_findText2(QGraphicsWebView* self, struct miqt_string subString, int options) {
	QString subString_QString = QString::fromUtf8(subString.data, subString.len);
	return self->findText(subString_QString, static_cast<QWebPage::FindFlags>(options));
}

void QGraphicsWebView_setRenderHint2(QGraphicsWebView* self, int param1, bool enabled) {
	self->setRenderHint(static_cast<QPainter::RenderHint>(param1), enabled);
}

QMetaObject* QGraphicsWebView_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_metaObject();
}

void* QGraphicsWebView_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsWebView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QGraphicsWebView_virtualbase_setGeometry(void* self, QRectF* rect) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_setGeometry(rect);
}

void QGraphicsWebView_virtualbase_updateGeometry(void* self) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_updateGeometry();
}

void QGraphicsWebView_virtualbase_paint(void* self, QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_paint(param1, options, widget);
}

QVariant* QGraphicsWebView_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_itemChange(change, value);
}

bool QGraphicsWebView_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_event(param1);
}

QSizeF* QGraphicsWebView_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_sizeHint(which, constraint);
}

QVariant* QGraphicsWebView_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_inputMethodQuery(query);
}

void QGraphicsWebView_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_mousePressEvent(param1);
}

void QGraphicsWebView_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_mouseDoubleClickEvent(param1);
}

void QGraphicsWebView_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QGraphicsWebView_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QGraphicsWebView_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_hoverMoveEvent(param1);
}

void QGraphicsWebView_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_hoverLeaveEvent(param1);
}

void QGraphicsWebView_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_wheelEvent(param1);
}

void QGraphicsWebView_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_keyPressEvent(param1);
}

void QGraphicsWebView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_keyReleaseEvent(param1);
}

void QGraphicsWebView_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_contextMenuEvent(param1);
}

void QGraphicsWebView_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_dragEnterEvent(param1);
}

void QGraphicsWebView_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_dragLeaveEvent(param1);
}

void QGraphicsWebView_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_dragMoveEvent(param1);
}

void QGraphicsWebView_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_dropEvent(param1);
}

void QGraphicsWebView_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_focusInEvent(param1);
}

void QGraphicsWebView_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_focusOutEvent(param1);
}

void QGraphicsWebView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_inputMethodEvent(param1);
}

bool QGraphicsWebView_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QGraphicsWebView_virtualbase_sceneEvent(void* self, QEvent* param1) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_sceneEvent(param1);
}

void QGraphicsWebView_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom) {
	( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_getContentsMargins(left, top, right, bottom);
}

int QGraphicsWebView_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_type();
}

void QGraphicsWebView_virtualbase_paintWindowFrame(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_paintWindowFrame(painter, option, widget);
}

QRectF* QGraphicsWebView_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsWebView_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_shape();
}

void QGraphicsWebView_virtualbase_initStyleOption(const void* self, QStyleOption* option) {
	( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_initStyleOption(option);
}

QVariant* QGraphicsWebView_virtualbase_propertyChange(void* self, struct miqt_string propertyName, QVariant* value) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_propertyChange(propertyName, value);
}

bool QGraphicsWebView_virtualbase_windowFrameEvent(void* self, QEvent* e) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_windowFrameEvent(e);
}

int QGraphicsWebView_virtualbase_windowFrameSectionAt(const void* self, QPointF* pos) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_windowFrameSectionAt(pos);
}

void QGraphicsWebView_virtualbase_changeEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_changeEvent(event);
}

void QGraphicsWebView_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_closeEvent(event);
}

void QGraphicsWebView_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_hideEvent(event);
}

void QGraphicsWebView_virtualbase_moveEvent(void* self, QGraphicsSceneMoveEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_moveEvent(event);
}

void QGraphicsWebView_virtualbase_polishEvent(void* self) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_polishEvent();
}

void QGraphicsWebView_virtualbase_resizeEvent(void* self, QGraphicsSceneResizeEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_resizeEvent(event);
}

void QGraphicsWebView_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_showEvent(event);
}

void QGraphicsWebView_virtualbase_grabMouseEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_grabMouseEvent(event);
}

void QGraphicsWebView_virtualbase_ungrabMouseEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_ungrabMouseEvent(event);
}

void QGraphicsWebView_virtualbase_grabKeyboardEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_grabKeyboardEvent(event);
}

void QGraphicsWebView_virtualbase_ungrabKeyboardEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_ungrabKeyboardEvent(event);
}

bool QGraphicsWebView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsWebView_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsWebView_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsWebView_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsWebView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsWebView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_disconnectNotify(signal);
}

void QGraphicsWebView_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsWebView_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_contains(point);
}

bool QGraphicsWebView_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsWebView_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsWebView_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsWebView_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_opaqueArea();
}

bool QGraphicsWebView_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

void QGraphicsWebView_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_hoverEnterEvent(event);
}

bool QGraphicsWebView_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsWebView_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsWebView_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsWebView*)(self) )->virtualbase_extension(variant);
}

const QMetaObject* QGraphicsWebView_staticMetaObject() { return &QGraphicsWebView::staticMetaObject; }
void QGraphicsWebView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

QObject* QGraphicsWebView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsWebView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsWebView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsWebView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsWebView_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsWebView_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsWebView_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsWebView_protectedbase_setGraphicsItem(bool* _dynamic_cast_ok, void* self, QGraphicsItem* item) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setGraphicsItem(item);

}

void QGraphicsWebView_protectedbase_setOwnedByLayout(bool* _dynamic_cast_ok, void* self, bool ownedByLayout) {
	MiqtVirtualQGraphicsWebView* self_cast = dynamic_cast<MiqtVirtualQGraphicsWebView*>( (QGraphicsWebView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOwnedByLayout(ownedByLayout);

}

void QGraphicsWebView_delete(QGraphicsWebView* self) {
	delete self;
}

