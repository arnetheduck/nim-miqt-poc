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
int miqt_exec_callback_QQuickFramebufferObject_metacall(QQuickFramebufferObject*, intptr_t, int, int, void**);
QQuickFramebufferObject__Renderer* miqt_exec_callback_QQuickFramebufferObject_createRenderer(const QQuickFramebufferObject*, intptr_t);
bool miqt_exec_callback_QQuickFramebufferObject_isTextureProvider(const QQuickFramebufferObject*, intptr_t);
QSGTextureProvider* miqt_exec_callback_QQuickFramebufferObject_textureProvider(const QQuickFramebufferObject*, intptr_t);
void miqt_exec_callback_QQuickFramebufferObject_releaseResources(QQuickFramebufferObject*, intptr_t);
void miqt_exec_callback_QQuickFramebufferObject_geometryChanged(QQuickFramebufferObject*, intptr_t, QRectF*, QRectF*);
QSGNode* miqt_exec_callback_QQuickFramebufferObject_updatePaintNode(QQuickFramebufferObject*, intptr_t, QSGNode*, QQuickItem__UpdatePaintNodeData*);
QRectF* miqt_exec_callback_QQuickFramebufferObject_boundingRect(const QQuickFramebufferObject*, intptr_t);
QRectF* miqt_exec_callback_QQuickFramebufferObject_clipRect(const QQuickFramebufferObject*, intptr_t);
bool miqt_exec_callback_QQuickFramebufferObject_contains(const QQuickFramebufferObject*, intptr_t, QPointF*);
QVariant* miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery(const QQuickFramebufferObject*, intptr_t, int);
bool miqt_exec_callback_QQuickFramebufferObject_event(QQuickFramebufferObject*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickFramebufferObject_itemChange(QQuickFramebufferObject*, intptr_t, int, QQuickItem__ItemChangeData*);
void miqt_exec_callback_QQuickFramebufferObject_classBegin(QQuickFramebufferObject*, intptr_t);
void miqt_exec_callback_QQuickFramebufferObject_componentComplete(QQuickFramebufferObject*, intptr_t);
void miqt_exec_callback_QQuickFramebufferObject_keyPressEvent(QQuickFramebufferObject*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent(QQuickFramebufferObject*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent(QQuickFramebufferObject*, intptr_t, QInputMethodEvent*);
void miqt_exec_callback_QQuickFramebufferObject_focusInEvent(QQuickFramebufferObject*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickFramebufferObject_focusOutEvent(QQuickFramebufferObject*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickFramebufferObject_mousePressEvent(QQuickFramebufferObject*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent(QQuickFramebufferObject*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent(QQuickFramebufferObject*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent(QQuickFramebufferObject*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent(QQuickFramebufferObject*, intptr_t);
void miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent(QQuickFramebufferObject*, intptr_t);
void miqt_exec_callback_QQuickFramebufferObject_wheelEvent(QQuickFramebufferObject*, intptr_t, QWheelEvent*);
void miqt_exec_callback_QQuickFramebufferObject_touchEvent(QQuickFramebufferObject*, intptr_t, QTouchEvent*);
void miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent(QQuickFramebufferObject*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent(QQuickFramebufferObject*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent(QQuickFramebufferObject*, intptr_t, QHoverEvent*);
void miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent(QQuickFramebufferObject*, intptr_t, QDragEnterEvent*);
void miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent(QQuickFramebufferObject*, intptr_t, QDragMoveEvent*);
void miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent(QQuickFramebufferObject*, intptr_t, QDragLeaveEvent*);
void miqt_exec_callback_QQuickFramebufferObject_dropEvent(QQuickFramebufferObject*, intptr_t, QDropEvent*);
bool miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter(QQuickFramebufferObject*, intptr_t, QQuickItem*, QEvent*);
void miqt_exec_callback_QQuickFramebufferObject_windowDeactivateEvent(QQuickFramebufferObject*, intptr_t);
void miqt_exec_callback_QQuickFramebufferObject_updatePolish(QQuickFramebufferObject*, intptr_t);
bool miqt_exec_callback_QQuickFramebufferObject_eventFilter(QQuickFramebufferObject*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickFramebufferObject_timerEvent(QQuickFramebufferObject*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickFramebufferObject_childEvent(QQuickFramebufferObject*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickFramebufferObject_customEvent(QQuickFramebufferObject*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickFramebufferObject_connectNotify(QQuickFramebufferObject*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickFramebufferObject_disconnectNotify(QQuickFramebufferObject*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickFramebufferObject final : public QQuickFramebufferObject {
public:

	MiqtVirtualQQuickFramebufferObject(): QQuickFramebufferObject() {};
	MiqtVirtualQQuickFramebufferObject(QQuickItem* parent): QQuickFramebufferObject(parent) {};

	virtual ~MiqtVirtualQQuickFramebufferObject() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQuickFramebufferObject::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQuickFramebufferObject_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QQuickFramebufferObject::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__createRenderer = 0;

	// Subclass to allow providing a Go implementation
	virtual QQuickFramebufferObject::Renderer* createRenderer() const override {
		if (handle__createRenderer == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		

		QQuickFramebufferObject__Renderer* callback_return_value = miqt_exec_callback_QQuickFramebufferObject_createRenderer(this, handle__createRenderer);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isTextureProvider = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isTextureProvider() const override {
		if (handle__isTextureProvider == 0) {
			return QQuickFramebufferObject::isTextureProvider();
		}
		

		bool callback_return_value = miqt_exec_callback_QQuickFramebufferObject_isTextureProvider(this, handle__isTextureProvider);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isTextureProvider() const {

		return QQuickFramebufferObject::isTextureProvider();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureProvider = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGTextureProvider* textureProvider() const override {
		if (handle__textureProvider == 0) {
			return QQuickFramebufferObject::textureProvider();
		}
		

		QSGTextureProvider* callback_return_value = miqt_exec_callback_QQuickFramebufferObject_textureProvider(this, handle__textureProvider);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGTextureProvider* virtualbase_textureProvider() const {

		return QQuickFramebufferObject::textureProvider();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__releaseResources = 0;

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (handle__releaseResources == 0) {
			QQuickFramebufferObject::releaseResources();
			return;
		}
		

		miqt_exec_callback_QQuickFramebufferObject_releaseResources(this, handle__releaseResources);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_releaseResources() {

		QQuickFramebufferObject::releaseResources();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__geometryChanged = 0;

	// Subclass to allow providing a Go implementation
	virtual void geometryChanged(const QRectF& newGeometry, const QRectF& oldGeometry) override {
		if (handle__geometryChanged == 0) {
			QQuickFramebufferObject::geometryChanged(newGeometry, oldGeometry);
			return;
		}
		
		const QRectF& newGeometry_ret = newGeometry;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&newGeometry_ret);
		const QRectF& oldGeometry_ret = oldGeometry;
		// Cast returned reference into pointer
		QRectF* sigval2 = const_cast<QRectF*>(&oldGeometry_ret);

		miqt_exec_callback_QQuickFramebufferObject_geometryChanged(this, handle__geometryChanged, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_geometryChanged(QRectF* newGeometry, QRectF* oldGeometry) {

		QQuickFramebufferObject::geometryChanged(*newGeometry, *oldGeometry);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updatePaintNode = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGNode* updatePaintNode(QSGNode* param1, QQuickItem::UpdatePaintNodeData* param2) override {
		if (handle__updatePaintNode == 0) {
			return QQuickFramebufferObject::updatePaintNode(param1, param2);
		}
		
		QSGNode* sigval1 = param1;
		QQuickItem__UpdatePaintNodeData* sigval2 = param2;

		QSGNode* callback_return_value = miqt_exec_callback_QQuickFramebufferObject_updatePaintNode(this, handle__updatePaintNode, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGNode* virtualbase_updatePaintNode(QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {

		return QQuickFramebufferObject::updatePaintNode(param1, param2);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__boundingRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (handle__boundingRect == 0) {
			return QQuickFramebufferObject::boundingRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QQuickFramebufferObject_boundingRect(this, handle__boundingRect);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QQuickFramebufferObject::boundingRect());

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__clipRect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF clipRect() const override {
		if (handle__clipRect == 0) {
			return QQuickFramebufferObject::clipRect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QQuickFramebufferObject_clipRect(this, handle__clipRect);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_clipRect() const {

		return new QRectF(QQuickFramebufferObject::clipRect());

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__contains = 0;

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (handle__contains == 0) {
			return QQuickFramebufferObject::contains(point);
		}
		
		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = miqt_exec_callback_QQuickFramebufferObject_contains(this, handle__contains, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QQuickFramebufferObject::contains(*point);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__inputMethodQuery = 0;

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (handle__inputMethodQuery == 0) {
			return QQuickFramebufferObject::inputMethodQuery(query);
		}
		
		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = miqt_exec_callback_QQuickFramebufferObject_inputMethodQuery(this, handle__inputMethodQuery, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QQuickFramebufferObject::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (handle__event == 0) {
			return QQuickFramebufferObject::event(param1);
		}
		
		QEvent* sigval1 = param1;

		bool callback_return_value = miqt_exec_callback_QQuickFramebufferObject_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQuickFramebufferObject::event(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__itemChange = 0;

	// Subclass to allow providing a Go implementation
	virtual void itemChange(QQuickItem::ItemChange param1, const QQuickItem::ItemChangeData& param2) override {
		if (handle__itemChange == 0) {
			QQuickFramebufferObject::itemChange(param1, param2);
			return;
		}
		
		QQuickItem::ItemChange param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		const QQuickItem::ItemChangeData& param2_ret = param2;
		// Cast returned reference into pointer
		QQuickItem__ItemChangeData* sigval2 = const_cast<QQuickItem::ItemChangeData*>(&param2_ret);

		miqt_exec_callback_QQuickFramebufferObject_itemChange(this, handle__itemChange, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_itemChange(int param1, QQuickItem__ItemChangeData* param2) {

		QQuickFramebufferObject::itemChange(static_cast<QQuickItem::ItemChange>(param1), *param2);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__classBegin = 0;

	// Subclass to allow providing a Go implementation
	virtual void classBegin() override {
		if (handle__classBegin == 0) {
			QQuickFramebufferObject::classBegin();
			return;
		}
		

		miqt_exec_callback_QQuickFramebufferObject_classBegin(this, handle__classBegin);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_classBegin() {

		QQuickFramebufferObject::classBegin();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__componentComplete = 0;

	// Subclass to allow providing a Go implementation
	virtual void componentComplete() override {
		if (handle__componentComplete == 0) {
			QQuickFramebufferObject::componentComplete();
			return;
		}
		

		miqt_exec_callback_QQuickFramebufferObject_componentComplete(this, handle__componentComplete);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_componentComplete() {

		QQuickFramebufferObject::componentComplete();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyPressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (handle__keyPressEvent == 0) {
			QQuickFramebufferObject::keyPressEvent(event);
			return;
		}
		
		QKeyEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_keyPressEvent(this, handle__keyPressEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QQuickFramebufferObject::keyPressEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (handle__keyReleaseEvent == 0) {
			QQuickFramebufferObject::keyReleaseEvent(event);
			return;
		}
		
		QKeyEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_keyReleaseEvent(this, handle__keyReleaseEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QQuickFramebufferObject::keyReleaseEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__inputMethodEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (handle__inputMethodEvent == 0) {
			QQuickFramebufferObject::inputMethodEvent(param1);
			return;
		}
		
		QInputMethodEvent* sigval1 = param1;

		miqt_exec_callback_QQuickFramebufferObject_inputMethodEvent(this, handle__inputMethodEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QQuickFramebufferObject::inputMethodEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusInEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (handle__focusInEvent == 0) {
			QQuickFramebufferObject::focusInEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickFramebufferObject_focusInEvent(this, handle__focusInEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QQuickFramebufferObject::focusInEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusOutEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (handle__focusOutEvent == 0) {
			QQuickFramebufferObject::focusOutEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickFramebufferObject_focusOutEvent(this, handle__focusOutEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QQuickFramebufferObject::focusOutEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mousePressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (handle__mousePressEvent == 0) {
			QQuickFramebufferObject::mousePressEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_mousePressEvent(this, handle__mousePressEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mousePressEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (handle__mouseMoveEvent == 0) {
			QQuickFramebufferObject::mouseMoveEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_mouseMoveEvent(this, handle__mouseMoveEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mouseMoveEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (handle__mouseReleaseEvent == 0) {
			QQuickFramebufferObject::mouseReleaseEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_mouseReleaseEvent(this, handle__mouseReleaseEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mouseReleaseEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseDoubleClickEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (handle__mouseDoubleClickEvent == 0) {
			QQuickFramebufferObject::mouseDoubleClickEvent(event);
			return;
		}
		
		QMouseEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_mouseDoubleClickEvent(this, handle__mouseDoubleClickEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QQuickFramebufferObject::mouseDoubleClickEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseUngrabEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseUngrabEvent() override {
		if (handle__mouseUngrabEvent == 0) {
			QQuickFramebufferObject::mouseUngrabEvent();
			return;
		}
		

		miqt_exec_callback_QQuickFramebufferObject_mouseUngrabEvent(this, handle__mouseUngrabEvent);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseUngrabEvent() {

		QQuickFramebufferObject::mouseUngrabEvent();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchUngrabEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchUngrabEvent() override {
		if (handle__touchUngrabEvent == 0) {
			QQuickFramebufferObject::touchUngrabEvent();
			return;
		}
		

		miqt_exec_callback_QQuickFramebufferObject_touchUngrabEvent(this, handle__touchUngrabEvent);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_touchUngrabEvent() {

		QQuickFramebufferObject::touchUngrabEvent();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__wheelEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (handle__wheelEvent == 0) {
			QQuickFramebufferObject::wheelEvent(event);
			return;
		}
		
		QWheelEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_wheelEvent(this, handle__wheelEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QQuickFramebufferObject::wheelEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* event) override {
		if (handle__touchEvent == 0) {
			QQuickFramebufferObject::touchEvent(event);
			return;
		}
		
		QTouchEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_touchEvent(this, handle__touchEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_touchEvent(QTouchEvent* event) {

		QQuickFramebufferObject::touchEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverEnterEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QHoverEvent* event) override {
		if (handle__hoverEnterEvent == 0) {
			QQuickFramebufferObject::hoverEnterEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_hoverEnterEvent(this, handle__hoverEnterEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QHoverEvent* event) {

		QQuickFramebufferObject::hoverEnterEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QHoverEvent* event) override {
		if (handle__hoverMoveEvent == 0) {
			QQuickFramebufferObject::hoverMoveEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_hoverMoveEvent(this, handle__hoverMoveEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QHoverEvent* event) {

		QQuickFramebufferObject::hoverMoveEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hoverLeaveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QHoverEvent* event) override {
		if (handle__hoverLeaveEvent == 0) {
			QQuickFramebufferObject::hoverLeaveEvent(event);
			return;
		}
		
		QHoverEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_hoverLeaveEvent(this, handle__hoverLeaveEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QHoverEvent* event) {

		QQuickFramebufferObject::hoverLeaveEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragEnterEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (handle__dragEnterEvent == 0) {
			QQuickFramebufferObject::dragEnterEvent(param1);
			return;
		}
		
		QDragEnterEvent* sigval1 = param1;

		miqt_exec_callback_QQuickFramebufferObject_dragEnterEvent(this, handle__dragEnterEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* param1) {

		QQuickFramebufferObject::dragEnterEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (handle__dragMoveEvent == 0) {
			QQuickFramebufferObject::dragMoveEvent(param1);
			return;
		}
		
		QDragMoveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickFramebufferObject_dragMoveEvent(this, handle__dragMoveEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* param1) {

		QQuickFramebufferObject::dragMoveEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dragLeaveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (handle__dragLeaveEvent == 0) {
			QQuickFramebufferObject::dragLeaveEvent(param1);
			return;
		}
		
		QDragLeaveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickFramebufferObject_dragLeaveEvent(this, handle__dragLeaveEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* param1) {

		QQuickFramebufferObject::dragLeaveEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__dropEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (handle__dropEvent == 0) {
			QQuickFramebufferObject::dropEvent(param1);
			return;
		}
		
		QDropEvent* sigval1 = param1;

		miqt_exec_callback_QQuickFramebufferObject_dropEvent(this, handle__dropEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* param1) {

		QQuickFramebufferObject::dropEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childMouseEventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool childMouseEventFilter(QQuickItem* param1, QEvent* param2) override {
		if (handle__childMouseEventFilter == 0) {
			return QQuickFramebufferObject::childMouseEventFilter(param1, param2);
		}
		
		QQuickItem* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = miqt_exec_callback_QQuickFramebufferObject_childMouseEventFilter(this, handle__childMouseEventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_childMouseEventFilter(QQuickItem* param1, QEvent* param2) {

		return QQuickFramebufferObject::childMouseEventFilter(param1, param2);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__windowDeactivateEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void windowDeactivateEvent() override {
		if (handle__windowDeactivateEvent == 0) {
			QQuickFramebufferObject::windowDeactivateEvent();
			return;
		}
		

		miqt_exec_callback_QQuickFramebufferObject_windowDeactivateEvent(this, handle__windowDeactivateEvent);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_windowDeactivateEvent() {

		QQuickFramebufferObject::windowDeactivateEvent();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updatePolish = 0;

	// Subclass to allow providing a Go implementation
	virtual void updatePolish() override {
		if (handle__updatePolish == 0) {
			QQuickFramebufferObject::updatePolish();
			return;
		}
		

		miqt_exec_callback_QQuickFramebufferObject_updatePolish(this, handle__updatePolish);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_updatePolish() {

		QQuickFramebufferObject::updatePolish();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickFramebufferObject::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickFramebufferObject_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickFramebufferObject::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickFramebufferObject::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickFramebufferObject::timerEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickFramebufferObject::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickFramebufferObject::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickFramebufferObject::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickFramebufferObject_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickFramebufferObject::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickFramebufferObject::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickFramebufferObject_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickFramebufferObject::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickFramebufferObject::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickFramebufferObject_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickFramebufferObject::disconnectNotify(*signal);

	}

};

QQuickFramebufferObject* QQuickFramebufferObject_new() {
	return new MiqtVirtualQQuickFramebufferObject();
}

QQuickFramebufferObject* QQuickFramebufferObject_new2(QQuickItem* parent) {
	return new MiqtVirtualQQuickFramebufferObject(parent);
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

bool QQuickFramebufferObject_override_virtual_metacall(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQuickFramebufferObject_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickFramebufferObject_override_virtual_createRenderer(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__createRenderer = slot;
	return true;
}

bool QQuickFramebufferObject_override_virtual_isTextureProvider(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isTextureProvider = slot;
	return true;
}

bool QQuickFramebufferObject_virtualbase_isTextureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_isTextureProvider();
}

bool QQuickFramebufferObject_override_virtual_textureProvider(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureProvider = slot;
	return true;
}

QSGTextureProvider* QQuickFramebufferObject_virtualbase_textureProvider(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_textureProvider();
}

bool QQuickFramebufferObject_override_virtual_releaseResources(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__releaseResources = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_releaseResources(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_releaseResources();
}

bool QQuickFramebufferObject_override_virtual_geometryChanged(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__geometryChanged = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_geometryChanged(void* self, QRectF* newGeometry, QRectF* oldGeometry) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_geometryChanged(newGeometry, oldGeometry);
}

bool QQuickFramebufferObject_override_virtual_updatePaintNode(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updatePaintNode = slot;
	return true;
}

QSGNode* QQuickFramebufferObject_virtualbase_updatePaintNode(void* self, QSGNode* param1, QQuickItem__UpdatePaintNodeData* param2) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_updatePaintNode(param1, param2);
}

bool QQuickFramebufferObject_override_virtual_boundingRect(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__boundingRect = slot;
	return true;
}

QRectF* QQuickFramebufferObject_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_boundingRect();
}

bool QQuickFramebufferObject_override_virtual_clipRect(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__clipRect = slot;
	return true;
}

QRectF* QQuickFramebufferObject_virtualbase_clipRect(const void* self) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_clipRect();
}

bool QQuickFramebufferObject_override_virtual_contains(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__contains = slot;
	return true;
}

bool QQuickFramebufferObject_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_contains(point);
}

bool QQuickFramebufferObject_override_virtual_inputMethodQuery(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__inputMethodQuery = slot;
	return true;
}

QVariant* QQuickFramebufferObject_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_inputMethodQuery(query);
}

bool QQuickFramebufferObject_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickFramebufferObject_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_event(param1);
}

bool QQuickFramebufferObject_override_virtual_itemChange(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__itemChange = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_itemChange(void* self, int param1, QQuickItem__ItemChangeData* param2) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_itemChange(param1, param2);
}

bool QQuickFramebufferObject_override_virtual_classBegin(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__classBegin = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_classBegin(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_classBegin();
}

bool QQuickFramebufferObject_override_virtual_componentComplete(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__componentComplete = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_componentComplete(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_componentComplete();
}

bool QQuickFramebufferObject_override_virtual_keyPressEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyPressEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_keyPressEvent(event);
}

bool QQuickFramebufferObject_override_virtual_keyReleaseEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyReleaseEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_keyReleaseEvent(event);
}

bool QQuickFramebufferObject_override_virtual_inputMethodEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__inputMethodEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_inputMethodEvent(param1);
}

bool QQuickFramebufferObject_override_virtual_focusInEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusInEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_focusInEvent(param1);
}

bool QQuickFramebufferObject_override_virtual_focusOutEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusOutEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_focusOutEvent(param1);
}

bool QQuickFramebufferObject_override_virtual_mousePressEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mousePressEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mousePressEvent(event);
}

bool QQuickFramebufferObject_override_virtual_mouseMoveEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseMoveEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseMoveEvent(event);
}

bool QQuickFramebufferObject_override_virtual_mouseReleaseEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseReleaseEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseReleaseEvent(event);
}

bool QQuickFramebufferObject_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseDoubleClickEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

bool QQuickFramebufferObject_override_virtual_mouseUngrabEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseUngrabEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_mouseUngrabEvent(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_mouseUngrabEvent();
}

bool QQuickFramebufferObject_override_virtual_touchUngrabEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchUngrabEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_touchUngrabEvent(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_touchUngrabEvent();
}

bool QQuickFramebufferObject_override_virtual_wheelEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__wheelEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_wheelEvent(event);
}

bool QQuickFramebufferObject_override_virtual_touchEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_touchEvent(void* self, QTouchEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_touchEvent(event);
}

bool QQuickFramebufferObject_override_virtual_hoverEnterEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverEnterEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_hoverEnterEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_hoverEnterEvent(event);
}

bool QQuickFramebufferObject_override_virtual_hoverMoveEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverMoveEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_hoverMoveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_hoverMoveEvent(event);
}

bool QQuickFramebufferObject_override_virtual_hoverLeaveEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hoverLeaveEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_hoverLeaveEvent(void* self, QHoverEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_hoverLeaveEvent(event);
}

bool QQuickFramebufferObject_override_virtual_dragEnterEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragEnterEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dragEnterEvent(param1);
}

bool QQuickFramebufferObject_override_virtual_dragMoveEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragMoveEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dragMoveEvent(param1);
}

bool QQuickFramebufferObject_override_virtual_dragLeaveEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dragLeaveEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dragLeaveEvent(param1);
}

bool QQuickFramebufferObject_override_virtual_dropEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__dropEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_dropEvent(void* self, QDropEvent* param1) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_dropEvent(param1);
}

bool QQuickFramebufferObject_override_virtual_childMouseEventFilter(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childMouseEventFilter = slot;
	return true;
}

bool QQuickFramebufferObject_virtualbase_childMouseEventFilter(void* self, QQuickItem* param1, QEvent* param2) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_childMouseEventFilter(param1, param2);
}

bool QQuickFramebufferObject_override_virtual_windowDeactivateEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__windowDeactivateEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_windowDeactivateEvent(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_windowDeactivateEvent();
}

bool QQuickFramebufferObject_override_virtual_updatePolish(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updatePolish = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_updatePolish(void* self) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_updatePolish();
}

bool QQuickFramebufferObject_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickFramebufferObject_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QQuickFramebufferObject_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_timerEvent(event);
}

bool QQuickFramebufferObject_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_childEvent(event);
}

bool QQuickFramebufferObject_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_customEvent(event);
}

bool QQuickFramebufferObject_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_connectNotify(signal);
}

bool QQuickFramebufferObject_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickFramebufferObject* self_cast = dynamic_cast<MiqtVirtualQQuickFramebufferObject*>( (QQuickFramebufferObject*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickFramebufferObject_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickFramebufferObject*)(self) )->virtualbase_disconnectNotify(signal);
}

void QQuickFramebufferObject_delete(QQuickFramebufferObject* self) {
	delete self;
}

