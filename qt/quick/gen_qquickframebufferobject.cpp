#include <QChildEvent>
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
#include <QPointF>
#include <QQmlParserStatus>
#include <QQuickFramebufferObject>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickFramebufferObject__Renderer
#include <QQuickItem>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__ItemChangeData
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickItem__UpdatePaintNodeData
#include <QRectF>
#include <QSGNode>
#include <QSGTextureProvider>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QVariant>
#include <QWheelEvent>
#include <qquickframebufferobject.h>
#include "gen_qquickframebufferobject.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickFramebufferObject_textureFollowsItemSizeChanged(intptr_t, bool);
void miqt_exec_callback_QQuickFramebufferObject_mirrorVerticallyChanged(intptr_t, bool);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickFramebufferObject final : public QQuickFramebufferObject {
	struct QQuickFramebufferObject_VTable* vtbl;
public:

	MiqtVirtualQQuickFramebufferObject(struct QQuickFramebufferObject_VTable* vtbl): QQuickFramebufferObject(), vtbl(vtbl) {};
	MiqtVirtualQQuickFramebufferObject(struct QQuickFramebufferObject_VTable* vtbl, QQuickItem* parent): QQuickFramebufferObject(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickFramebufferObject() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickFramebufferObject::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickFramebufferObject::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickFramebufferObject::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickFramebufferObject::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickFramebufferObject::qt_metacall(param1, param2, param3);
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

		return QQuickFramebufferObject::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QQuickFramebufferObject::Renderer* createRenderer() const override {
		if (vtbl->createRenderer == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		QQuickFramebufferObject__Renderer* callback_return_value = vtbl->createRenderer(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool isTextureProvider() const override {
		if (vtbl->isTextureProvider == 0) {
			return QQuickFramebufferObject::isTextureProvider();
		}


		bool callback_return_value = vtbl->isTextureProvider(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isTextureProvider() const {

		return QQuickFramebufferObject::isTextureProvider();

	}

	// Subclass to allow providing a Go implementation
	virtual QSGTextureProvider* textureProvider() const override {
		if (vtbl->textureProvider == 0) {
			return QQuickFramebufferObject::textureProvider();
		}


		QSGTextureProvider* callback_return_value = vtbl->textureProvider(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGTextureProvider* virtualbase_textureProvider() const {

		return QQuickFramebufferObject::textureProvider();

	}

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (vtbl->releaseResources == 0) {
			QQuickFramebufferObject::releaseResources();
			return;
		}


		vtbl->releaseResources(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_releaseResources() {

		QQuickFramebufferObject::releaseResources();

	}

	// Subclass to allow providing a Go implementation
	virtual void geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (vtbl->geometryChanged == 0) {
			QQuickFramebufferObject::geometryChanged(newGeometry, oldGeometry);
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

		QQuickFramebufferObject::geometryChanged(*newGeometry, *oldGeometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (vtbl->updatePaintNode == 0) {
			return QQuickFramebufferObject::updatePaintNode(param1, param2);
		}

		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = vtbl->updatePaintNode(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGNode* virtualbase_updatePaintNode(QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

		return QQuickFramebufferObject::updatePaintNode(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QQuickFramebufferObject::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QQuickFramebufferObject::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF clipRect() const override {
		if (vtbl->clipRect == 0) {
			return QQuickFramebufferObject::clipRect();
		}


		QRectF* callback_return_value = vtbl->clipRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_clipRect() const {

		return new QRectF(QQuickFramebufferObject::clipRect());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QQuickFramebufferObject::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QQuickFramebufferObject::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QQuickFramebufferObject::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QQuickFramebufferObject::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickFramebufferObject::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQuickFramebufferObject::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (vtbl->itemChange == 0) {
			QQuickFramebufferObject::itemChange(param1, param2);
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

		QQuickFramebufferObject::itemChange(static_cast<QQuickItem::ItemChange>(param1), *param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (vtbl->classBegin == 0) {
			QQuickFramebufferObject::classBegin();
			return;
		}


		vtbl->classBegin(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_classBegin() {

		QQuickFramebufferObject::classBegin();

	}

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (vtbl->componentComplete == 0) {
			QQuickFramebufferObject::componentComplete();
			return;
		}


		vtbl->componentComplete(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_componentComplete() {

		QQuickFramebufferObject::componentComplete();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickFramebufferObject::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QQuickFramebufferObject::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickFramebufferObject::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QQuickFramebufferObject::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QQuickFramebufferObject::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QQuickFramebufferObject::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickFramebufferObject::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QQuickFramebufferObject::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickFramebufferObject::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QQuickFramebufferObject::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickFramebufferObject::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickFramebufferObject::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickFramebufferObject::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickFramebufferObject::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseUngrabEvent() override {
		if (vtbl->mouseUngrabEvent == 0) {
			QQuickFramebufferObject::mouseUngrabEvent();
			return;
		}


		vtbl->mouseUngrabEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseUngrabEvent() {

		QQuickFramebufferObject::mouseUngrabEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void touchUngrabEvent() override {
		if (vtbl->touchUngrabEvent == 0) {
			QQuickFramebufferObject::touchUngrabEvent();
			return;
		}


		vtbl->touchUngrabEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchUngrabEvent() {

		QQuickFramebufferObject::touchUngrabEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QQuickFramebufferObject::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QQuickFramebufferObject::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* event) override {
		if (vtbl->touchEvent == 0) {
			QQuickFramebufferObject::touchEvent(event);
			return;
		}

		QTouchEvent* sigval1 = event;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchEvent(QTouchEvent* event) {

		QQuickFramebufferObject::touchEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QQuickFramebufferObject::hoverEnterEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QHoverEvent* event) {

		QQuickFramebufferObject::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QQuickFramebufferObject::hoverMoveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QHoverEvent* event) {

		QQuickFramebufferObject::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QQuickFramebufferObject::hoverLeaveEvent(event);
			return;
		}

		QHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QHoverEvent* event) {

		QQuickFramebufferObject::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QQuickFramebufferObject::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* param1) {

		QQuickFramebufferObject::dragEnterEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QQuickFramebufferObject::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* param1) {

		QQuickFramebufferObject::dragMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QQuickFramebufferObject::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* param1) {

		QQuickFramebufferObject::dragLeaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QQuickFramebufferObject::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* param1) {

		QQuickFramebufferObject::dropEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (vtbl->childMouseEventFilter == 0) {
			return QQuickFramebufferObject::childMouseEventFilter(param1, param2);
		}

		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->childMouseEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_childMouseEventFilter(QQuickItem* param1, QEvent* param2) {

		return QQuickFramebufferObject::childMouseEventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void windowDeactivateEvent() override {
		if (vtbl->windowDeactivateEvent == 0) {
			QQuickFramebufferObject::windowDeactivateEvent();
			return;
		}


		vtbl->windowDeactivateEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_windowDeactivateEvent() {

		QQuickFramebufferObject::windowDeactivateEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void updatePolish() override {
		if (vtbl->updatePolish == 0) {
			QQuickFramebufferObject::updatePolish();
			return;
		}


		vtbl->updatePolish(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updatePolish() {

		QQuickFramebufferObject::updatePolish();

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickFramebufferObject::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickFramebufferObject::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickFramebufferObject::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickFramebufferObject::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickFramebufferObject::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickFramebufferObject::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickFramebufferObject::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickFramebufferObject::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickFramebufferObject::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickFramebufferObject::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickFramebufferObject::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickFramebufferObject::disconnectNotify(*signal);

	}

};

QQuickFramebufferObject* QQuickFramebufferObject_new(struct QQuickFramebufferObject_VTable* vtbl) {
	return new MiqtVirtualQQuickFramebufferObject(vtbl);
}

QQuickFramebufferObject* QQuickFramebufferObject_new2(struct QQuickFramebufferObject_VTable* vtbl, QQuickItem* parent) {
	return new MiqtVirtualQQuickFramebufferObject(vtbl, parent);
}

void QQuickFramebufferObject_virtbase(QQuickFramebufferObject* src, QQuickItem** outptr_QQuickItem) {
	*outptr_QQuickItem = static_cast<QQuickItem*>(src);
}

QMetaObject* QQuickFramebufferObject_metaObject(const QQuickFramebufferObject* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickFramebufferObject_metacast(QQuickFramebufferObject* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickFramebufferObject_metacall(QQuickFramebufferObject* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickFramebufferObject_tr(const char* s) {
	QString _ret = QQuickFramebufferObject::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickFramebufferObject_trUtf8(const char* s) {
	QString _ret = QQuickFramebufferObject::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickFramebufferObject_textureFollowsItemSize(const QQuickFramebufferObject* self) {
	return self->textureFollowsItemSize();
}

void QQuickFramebufferObject_setTextureFollowsItemSize(QQuickFramebufferObject* self, bool follows) {
	self->setTextureFollowsItemSize(follows);
}

bool QQuickFramebufferObject_mirrorVertically(const QQuickFramebufferObject* self) {
	return self->mirrorVertically();
}

void QQuickFramebufferObject_setMirrorVertically(QQuickFramebufferObject* self, bool enable) {
	self->setMirrorVertically(enable);
}

QQuickFramebufferObject__Renderer* QQuickFramebufferObject_createRenderer(const QQuickFramebufferObject* self) {
	return self->createRenderer();
}

bool QQuickFramebufferObject_isTextureProvider(const QQuickFramebufferObject* self) {
	return self->isTextureProvider();
}

QSGTextureProvider* QQuickFramebufferObject_textureProvider(const QQuickFramebufferObject* self) {
	return self->textureProvider();
}

void QQuickFramebufferObject_releaseResources(QQuickFramebufferObject* self) {
	self->releaseResources();
}

void QQuickFramebufferObject_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, bool param1) {
	self->textureFollowsItemSizeChanged(param1);
}

void QQuickFramebufferObject_connect_textureFollowsItemSizeChanged(QQuickFramebufferObject* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject::connect(self, static_cast<void (QQuickFramebufferObject::*)(bool)>(&QQuickFramebufferObject::textureFollowsItemSizeChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickFramebufferObject_textureFollowsItemSizeChanged(slot, sigval1);
	});
}

void QQuickFramebufferObject_mirrorVerticallyChanged(QQuickFramebufferObject* self, bool param1) {
	self->mirrorVerticallyChanged(param1);
}

void QQuickFramebufferObject_connect_mirrorVerticallyChanged(QQuickFramebufferObject* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject::connect(self, static_cast<void (QQuickFramebufferObject::*)(bool)>(&QQuickFramebufferObject::mirrorVerticallyChanged), self, [=](bool param1) {
		bool sigval1 = param1;
		miqt_exec_callback_QQuickFramebufferObject_mirrorVerticallyChanged(slot, sigval1);
	});
}

struct miqt_string QQuickFramebufferObject_tr2(const char* s, const char* c) {
	QString _ret = QQuickFramebufferObject::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickFramebufferObject_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickFramebufferObject::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickFramebufferObject_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickFramebufferObject::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickFramebufferObject_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickFramebufferObject::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickFramebufferObject_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_metaObject();
}

void* QQuickFramebufferObject_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_metacast(param1);
}

int QQuickFramebufferObject_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickFramebufferObject_virtualbase_isTextureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_isTextureProvider();
}

QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_textureProvider();
}

void QQuickFramebufferObject_virtualbase_releaseResources(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_releaseResources();
}

void QQuickFramebufferObject_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_geometryChanged(newGeometry, oldGeometry);
}

QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_updatePaintNode(param1, param2);
}

QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_boundingRect();
}

QRectF* QQuickFramebufferObject_virtualbase_clipRect(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_clipRect();
}

bool QQuickFramebufferObject_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_contains(point);
}

QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_inputMethodQuery(query);
}

bool QQuickFramebufferObject_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_event(param1);
}

void QQuickFramebufferObject_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_itemChange(param1, param2);
}

void QQuickFramebufferObject_virtualbase_classBegin(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_classBegin();
}

void QQuickFramebufferObject_virtualbase_componentComplete(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_componentComplete();
}

void QQuickFramebufferObject_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_keyPressEvent(event);
}

void QQuickFramebufferObject_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QQuickFramebufferObject_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_inputMethodEvent(param1);
}

void QQuickFramebufferObject_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_focusInEvent(param1);
}

void QQuickFramebufferObject_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_focusOutEvent(param1);
}

void QQuickFramebufferObject_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mousePressEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseUngrabEvent();
}

void QQuickFramebufferObject_virtualbase_touchUngrabEvent(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_touchUngrabEvent();
}

void QQuickFramebufferObject_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_wheelEvent(event);
}

void QQuickFramebufferObject_virtualbase_touchEvent(void* self, QTouchEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_touchEvent(event);
}

void QQuickFramebufferObject_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QQuickFramebufferObject_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QQuickFramebufferObject_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dragEnterEvent(param1);
}

void QQuickFramebufferObject_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dragMoveEvent(param1);
}

void QQuickFramebufferObject_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dragLeaveEvent(param1);
}

void QQuickFramebufferObject_virtualbase_dropEvent(void* self, QDropEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dropEvent(param1);
}

bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_childMouseEventFilter(param1, param2);
}

void QQuickFramebufferObject_virtualbase_windowDeactivateEvent(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_windowDeactivateEvent();
}

void QQuickFramebufferObject_virtualbase_updatePolish(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_updatePolish();
}

bool QQuickFramebufferObject_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickFramebufferObject_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_timerEvent(event);
}

void QQuickFramebufferObject_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_childEvent(event);
}

void QQuickFramebufferObject_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_customEvent(event);
}

void QQuickFramebufferObject_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickFramebufferObject_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickFramebufferObject_staticMetaObject() { return &QQuickFramebufferObject::staticMetaObject; }
void QQuickFramebufferObject_delete(QQuickFramebufferObject* self) {
	delete self;
}

