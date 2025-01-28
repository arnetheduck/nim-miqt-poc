#include <QChildEvent>
#include <QColor>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHoverEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QObject>
#include <QPainter>
#include <QPointF>
#include <QQmlParserStatus>
#include <QQuickItem>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData
#include <QQuickPaintedItem>
#include <QRect>
#include <QRectF>
#include <QSGNode>
#include <QSGTextureProvider>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QVariant>
#include <QWheelEvent>
#include <qquickpainteditem.h>
#include "gen_qquickpainteditem.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickPaintedItem_fillColorChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_renderTargetChanged(intptr_t);
void miqt_exec_callback_QQuickPaintedItem_textureSizeChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickPaintedItem final : public QQuickPaintedItem {
	struct QQuickPaintedItem_VTable* vtbl;
public:

	MiqtVirtualQQuickPaintedItem(struct QQuickPaintedItem_VTable* vtbl): QQuickPaintedItem(), vtbl(vtbl) {};
	MiqtVirtualQQuickPaintedItem(struct QQuickPaintedItem_VTable* vtbl, QQuickItem* parent): QQuickPaintedItem(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickPaintedItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickPaintedItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickPaintedItem::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickPaintedItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickPaintedItem::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickPaintedItem::qt_metacall(param1, param2, param3);
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

		return QQuickPaintedItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;

		vtbl->paint(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isTextureProvider() const override {
		if (vtbl->isTextureProvider == 0) {
			return QQuickPaintedItem::isTextureProvider();
		}


		bool callback_return_value = vtbl->isTextureProvider(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isTextureProvider() const {

		return QQuickPaintedItem::isTextureProvider();

	}

	// Subclass to allow providing a Go implementation
	virtual QSGTextureProvider* textureProvider() const override {
		if (vtbl->textureProvider == 0) {
			return QQuickPaintedItem::textureProvider();
		}


		QSGTextureProvider* callback_return_value = vtbl->textureProvider(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGTextureProvider* virtualbase_textureProvider() const {

		return QQuickPaintedItem::textureProvider();

	}

	// Subclass to allow providing a Go implementation
	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (vtbl->updatePaintNode == 0) {
			return QQuickPaintedItem::updatePaintNode(param1, param2);
		}

		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = vtbl->updatePaintNode(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGNode* virtualbase_updatePaintNode(QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

		return QQuickPaintedItem::updatePaintNode(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QQuickPaintedItem::releaseResources();
			return;
		}


		vtbl->releaseResources(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_releaseResources() {

		QQuickPaintedItem::releaseResources();

	}

	// Subclass to allow providing a Go implementation
	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (vtbl->itemChange == 0) {
			QQuickPaintedItem::itemChange(param1, param2);
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

		QQuickPaintedItem::itemChange(static_cast<QQuickItem::ItemChange>(param1), *param2);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QQuickPaintedItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QQuickPaintedItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF clipRect() const override {
		if (vtbl->clipRect == 0) {
			return QQuickPaintedItem::clipRect();
		}


		QRectF* callback_return_value = vtbl->clipRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_clipRect() const {

		return new QRectF(QQuickPaintedItem::clipRect());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QQuickPaintedItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QQuickPaintedItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QQuickPaintedItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QQuickPaintedItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickPaintedItem::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQuickPaintedItem::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			QQuickPaintedItem::classBegin();
			return;
		}


		vtbl->classBegin(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_classBegin() {

		QQuickPaintedItem::classBegin();

	}

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			QQuickPaintedItem::componentComplete();
			return;
		}


		vtbl->componentComplete(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_componentComplete() {

		QQuickPaintedItem::componentComplete();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickPaintedItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QQuickPaintedItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickPaintedItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QQuickPaintedItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QQuickPaintedItem::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QQuickPaintedItem::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickPaintedItem::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QQuickPaintedItem::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickPaintedItem::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QQuickPaintedItem::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickPaintedItem::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QQuickPaintedItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickPaintedItem::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QQuickPaintedItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickPaintedItem::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QQuickPaintedItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickPaintedItem::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QQuickPaintedItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseUngrabEvent() override {
		if (vtbl->mouseUngrabEvent == 0) {
			QQuickPaintedItem::mouseUngrabEvent();
			return;
		}


		vtbl->mouseUngrabEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseUngrabEvent() {

		QQuickPaintedItem::mouseUngrabEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void touchUngrabEvent() override {
		if (vtbl->touchUngrabEvent == 0) {
			QQuickPaintedItem::touchUngrabEvent();
			return;
		}


		vtbl->touchUngrabEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchUngrabEvent() {

		QQuickPaintedItem::touchUngrabEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QQuickPaintedItem::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QQuickPaintedItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* event) override {
		if (vtbl->touchEvent == 0) {
			QQuickPaintedItem::touchEvent(event);
			return;
		}

		QTouchEvent* sigval1 = event;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchEvent(QTouchEvent* event) {

		QQuickPaintedItem::touchEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QQuickPaintedItem::hoverEnterEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QHoverEvent* event) {

		QQuickPaintedItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QQuickPaintedItem::hoverMoveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QHoverEvent* event) {

		QQuickPaintedItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QQuickPaintedItem::hoverLeaveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QHoverEvent* event) {

		QQuickPaintedItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QQuickPaintedItem::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* param1) {

		QQuickPaintedItem::dragEnterEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QQuickPaintedItem::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* param1) {

		QQuickPaintedItem::dragMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QQuickPaintedItem::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* param1) {

		QQuickPaintedItem::dragLeaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QQuickPaintedItem::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* param1) {

		QQuickPaintedItem::dropEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (vtbl->childMouseEventFilter == 0) {
			return QQuickPaintedItem::childMouseEventFilter(param1, param2);
		}

		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->childMouseEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_childMouseEventFilter(QQuickItem* param1, QEvent* param2) {

		return QQuickPaintedItem::childMouseEventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void windowDeactivateEvent() override {
		if (vtbl->windowDeactivateEvent == 0) {
			QQuickPaintedItem::windowDeactivateEvent();
			return;
		}


		vtbl->windowDeactivateEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_windowDeactivateEvent() {

		QQuickPaintedItem::windowDeactivateEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (vtbl->geometryChanged == 0) {
			QQuickPaintedItem::geometryChanged(newGeometry, oldGeometry);
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

		QQuickPaintedItem::geometryChanged(*newGeometry, *oldGeometry);

	}

	// Subclass to allow providing a Go implementation
	virtual void updatePolish() override {
		if (vtbl->updatePolish == 0) {
			QQuickPaintedItem::updatePolish();
			return;
		}


		vtbl->updatePolish(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updatePolish() {

		QQuickPaintedItem::updatePolish();

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickPaintedItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickPaintedItem::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickPaintedItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickPaintedItem::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickPaintedItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickPaintedItem::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickPaintedItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickPaintedItem::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickPaintedItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickPaintedItem::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickPaintedItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickPaintedItem::disconnectNotify(*signal);

	}

};

QQuickPaintedItem* QQuickPaintedItem_new(struct QQuickPaintedItem_VTable* vtbl) {
	return new MiqtVirtualQQuickPaintedItem(vtbl);
}

QQuickPaintedItem* QQuickPaintedItem_new2(struct QQuickPaintedItem_VTable* vtbl, QQuickItem* parent) {
	return new MiqtVirtualQQuickPaintedItem(vtbl, parent);
}

void QQuickPaintedItem_virtbase(QQuickPaintedItem* src, QQuickItem** outptr_QQuickItem) {
	*outptr_QQuickItem = static_cast<QQuickItem*>(src);
}

QMetaObject* QQuickPaintedItem_metaObject(const QQuickPaintedItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickPaintedItem_metacast(QQuickPaintedItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickPaintedItem_metacall(QQuickPaintedItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickPaintedItem_tr(const char* s) {
	QString _ret = QQuickPaintedItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickPaintedItem_trUtf8(const char* s) {
	QString _ret = QQuickPaintedItem::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickPaintedItem_update(QQuickPaintedItem* self) {
	self->update();
}

bool QQuickPaintedItem_opaquePainting(const QQuickPaintedItem* self) {
	return self->opaquePainting();
}

void QQuickPaintedItem_setOpaquePainting(QQuickPaintedItem* self, bool opaque) {
	self->setOpaquePainting(opaque);
}

bool QQuickPaintedItem_antialiasing(const QQuickPaintedItem* self) {
	return self->antialiasing();
}

void QQuickPaintedItem_setAntialiasing(QQuickPaintedItem* self, bool enable) {
	self->setAntialiasing(enable);
}

bool QQuickPaintedItem_mipmap(const QQuickPaintedItem* self) {
	return self->mipmap();
}

void QQuickPaintedItem_setMipmap(QQuickPaintedItem* self, bool enable) {
	self->setMipmap(enable);
}

int QQuickPaintedItem_performanceHints(const QQuickPaintedItem* self) {
	QQuickPaintedItem::PerformanceHints _ret = self->performanceHints();
	return static_cast<int>(_ret);
}

void QQuickPaintedItem_setPerformanceHint(QQuickPaintedItem* self, int hint) {
	self->setPerformanceHint(static_cast<QQuickPaintedItem::PerformanceHint>(hint));
}

void QQuickPaintedItem_setPerformanceHints(QQuickPaintedItem* self, int hints) {
	self->setPerformanceHints(static_cast<QQuickPaintedItem::PerformanceHints>(hints));
}

QRectF* QQuickPaintedItem_contentsBoundingRect(const QQuickPaintedItem* self) {
	return new QRectF(self->contentsBoundingRect());
}

QSize* QQuickPaintedItem_contentsSize(const QQuickPaintedItem* self) {
	return new QSize(self->contentsSize());
}

void QQuickPaintedItem_setContentsSize(QQuickPaintedItem* self, QSize* contentsSize) {
	self->setContentsSize(*contentsSize);
}

void QQuickPaintedItem_resetContentsSize(QQuickPaintedItem* self) {
	self->resetContentsSize();
}

double QQuickPaintedItem_contentsScale(const QQuickPaintedItem* self) {
	qreal _ret = self->contentsScale();
	return static_cast<double>(_ret);
}

void QQuickPaintedItem_setContentsScale(QQuickPaintedItem* self, double contentsScale) {
	self->setContentsScale(static_cast<qreal>(contentsScale));
}

QSize* QQuickPaintedItem_textureSize(const QQuickPaintedItem* self) {
	return new QSize(self->textureSize());
}

void QQuickPaintedItem_setTextureSize(QQuickPaintedItem* self, QSize* size) {
	self->setTextureSize(*size);
}

QColor* QQuickPaintedItem_fillColor(const QQuickPaintedItem* self) {
	return new QColor(self->fillColor());
}

void QQuickPaintedItem_setFillColor(QQuickPaintedItem* self, QColor* fillColor) {
	self->setFillColor(*fillColor);
}

int QQuickPaintedItem_renderTarget(const QQuickPaintedItem* self) {
	QQuickPaintedItem::RenderTarget _ret = self->renderTarget();
	return static_cast<int>(_ret);
}

void QQuickPaintedItem_setRenderTarget(QQuickPaintedItem* self, int target) {
	self->setRenderTarget(static_cast<QQuickPaintedItem::RenderTarget>(target));
}

void QQuickPaintedItem_paint(QQuickPaintedItem* self, QPainter* painter) {
	self->paint(painter);
}

bool QQuickPaintedItem_isTextureProvider(const QQuickPaintedItem* self) {
	return self->isTextureProvider();
}

QSGTextureProvider* QQuickPaintedItem_textureProvider(const QQuickPaintedItem* self) {
	return self->textureProvider();
}

void QQuickPaintedItem_fillColorChanged(QQuickPaintedItem* self) {
	self->fillColorChanged();
}

void QQuickPaintedItem_connect_fillColorChanged(QQuickPaintedItem* self, intptr_t slot) {
	MiqtVirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::fillColorChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_fillColorChanged(slot);
	});
}

void QQuickPaintedItem_contentsSizeChanged(QQuickPaintedItem* self) {
	self->contentsSizeChanged();
}

void QQuickPaintedItem_connect_contentsSizeChanged(QQuickPaintedItem* self, intptr_t slot) {
	MiqtVirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::contentsSizeChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_contentsSizeChanged(slot);
	});
}

void QQuickPaintedItem_contentsScaleChanged(QQuickPaintedItem* self) {
	self->contentsScaleChanged();
}

void QQuickPaintedItem_connect_contentsScaleChanged(QQuickPaintedItem* self, intptr_t slot) {
	MiqtVirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::contentsScaleChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_contentsScaleChanged(slot);
	});
}

void QQuickPaintedItem_renderTargetChanged(QQuickPaintedItem* self) {
	self->renderTargetChanged();
}

void QQuickPaintedItem_connect_renderTargetChanged(QQuickPaintedItem* self, intptr_t slot) {
	MiqtVirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::renderTargetChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_renderTargetChanged(slot);
	});
}

void QQuickPaintedItem_textureSizeChanged(QQuickPaintedItem* self) {
	self->textureSizeChanged();
}

void QQuickPaintedItem_connect_textureSizeChanged(QQuickPaintedItem* self, intptr_t slot) {
	MiqtVirtualQQuickPaintedItem::connect(self, static_cast<void (QQuickPaintedItem::*)()>(&QQuickPaintedItem::textureSizeChanged), self, [=]() {
		miqt_exec_callback_QQuickPaintedItem_textureSizeChanged(slot);
	});
}

struct miqt_string QQuickPaintedItem_tr2(const char* s, const char* c) {
	QString _ret = QQuickPaintedItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickPaintedItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickPaintedItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickPaintedItem_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickPaintedItem::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickPaintedItem_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickPaintedItem::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickPaintedItem_update1(QQuickPaintedItem* self, QRect* rect) {
	self->update(*rect);
}

void QQuickPaintedItem_setPerformanceHint2(QQuickPaintedItem* self, int hint, bool enabled) {
	self->setPerformanceHint(static_cast<QQuickPaintedItem::PerformanceHint>(hint), enabled);
}

QMetaObject* QQuickPaintedItem_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_metaObject();
}

void* QQuickPaintedItem_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_metacast(param1);
}

int QQuickPaintedItem_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickPaintedItem_virtualbase_isTextureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_isTextureProvider();
}

QSGTextureProvider* QQuickPaintedItem_virtualbase_textureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_textureProvider();
}

QSGNode* QQuickPaintedItem_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {
	return ( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_updatePaintNode(param1, param2);
}

void QQuickPaintedItem_virtualbase_releaseResources(void* self) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_releaseResources();
}

void QQuickPaintedItem_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_itemChange(param1, param2);
}

QRectF* QQuickPaintedItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_boundingRect();
}

QRectF* QQuickPaintedItem_virtualbase_clipRect(const void* self) {
	return ( (const MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_clipRect();
}

bool QQuickPaintedItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_contains(point);
}

QVariant* QQuickPaintedItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_inputMethodQuery(query);
}

bool QQuickPaintedItem_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_event(param1);
}

void QQuickPaintedItem_virtualbase_classBegin(void* self) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_classBegin();
}

void QQuickPaintedItem_virtualbase_componentComplete(void* self) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_componentComplete();
}

void QQuickPaintedItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QQuickPaintedItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QQuickPaintedItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_inputMethodEvent(param1);
}

void QQuickPaintedItem_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_focusInEvent(param1);
}

void QQuickPaintedItem_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_focusOutEvent(param1);
}

void QQuickPaintedItem_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QQuickPaintedItem_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QQuickPaintedItem_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QQuickPaintedItem_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QQuickPaintedItem_virtualbase_mouseUngrabEvent(void* self) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_mouseUngrabEvent();
}

void QQuickPaintedItem_virtualbase_touchUngrabEvent(void* self) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_touchUngrabEvent();
}

void QQuickPaintedItem_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_wheelEvent(event);
}

void QQuickPaintedItem_virtualbase_touchEvent(void* self, QTouchEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_touchEvent(event);
}

void QQuickPaintedItem_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QQuickPaintedItem_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QQuickPaintedItem_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QQuickPaintedItem_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_dragEnterEvent(param1);
}

void QQuickPaintedItem_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_dragMoveEvent(param1);
}

void QQuickPaintedItem_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_dragLeaveEvent(param1);
}

void QQuickPaintedItem_virtualbase_dropEvent(void* self, QDropEvent* param1) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_dropEvent(param1);
}

bool QQuickPaintedItem_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2) {
	return ( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_childMouseEventFilter(param1, param2);
}

void QQuickPaintedItem_virtualbase_windowDeactivateEvent(void* self) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_windowDeactivateEvent();
}

void QQuickPaintedItem_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_geometryChanged(newGeometry, oldGeometry);
}

void QQuickPaintedItem_virtualbase_updatePolish(void* self) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_updatePolish();
}

bool QQuickPaintedItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickPaintedItem_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_timerEvent(event);
}

void QQuickPaintedItem_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_childEvent(event);
}

void QQuickPaintedItem_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_customEvent(event);
}

void QQuickPaintedItem_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickPaintedItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickPaintedItem*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickPaintedItem_staticMetaObject() { return &QQuickPaintedItem::staticMetaObject; }
void QQuickPaintedItem_delete(QQuickPaintedItem* self) {
	delete self;
}

