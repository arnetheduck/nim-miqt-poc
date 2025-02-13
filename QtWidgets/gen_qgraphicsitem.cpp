#include <QAbstractGraphicsShapeItem>
#include <QBrush>
#include <QChildEvent>
#include <QColor>
#include <QCursor>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QGraphicsEffect>
#include <QGraphicsEllipseItem>
#include <QGraphicsItem>
#include <QGraphicsItemGroup>
#include <QGraphicsLineItem>
#include <QGraphicsObject>
#include <QGraphicsPathItem>
#include <QGraphicsPixmapItem>
#include <QGraphicsPolygonItem>
#include <QGraphicsRectItem>
#include <QGraphicsScene>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneWheelEvent>
#include <QGraphicsSimpleTextItem>
#include <QGraphicsTextItem>
#include <QGraphicsTransform>
#include <QGraphicsWidget>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineF>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPen>
#include <QPixmap>
#include <QPointF>
#include <QRectF>
#include <QRegion>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionGraphicsItem>
#include <QTextCursor>
#include <QTextDocument>
#include <QTimerEvent>
#include <QTransform>
#include <QVariant>
#include <QWidget>
#include <qgraphicsitem.h>
#include "gen_qgraphicsitem.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QGraphicsObject_parentChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_parentChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_opacityChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_opacityChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_visibleChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_visibleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_enabledChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_enabledChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_xChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_xChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_yChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_yChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_zChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_zChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_rotationChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_rotationChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_scaleChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_scaleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_childrenChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_childrenChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_widthChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_widthChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsObject_heightChanged(intptr_t);
void miqt_exec_callback_QGraphicsObject_heightChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsTextItem_linkActivated(intptr_t, struct miqt_string);
void miqt_exec_callback_QGraphicsTextItem_linkActivated_release(intptr_t);
void miqt_exec_callback_QGraphicsTextItem_linkHovered(intptr_t, struct miqt_string);
void miqt_exec_callback_QGraphicsTextItem_linkHovered_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGraphicsItem final : public QGraphicsItem {
	struct QGraphicsItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsItem(struct QGraphicsItem_VTable* vtbl): QGraphicsItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsItem(struct QGraphicsItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsItem(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsItem::collidesWithPath(path, mode);
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

		return QGraphicsItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsItem::itemChange(change, value);
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

		return new QVariant(QGraphicsItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsItem::setExtension(extension, variant);
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

		QGraphicsItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsItem::extension(*variant));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsItem* QGraphicsItem_new(struct QGraphicsItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsItem(vtbl);
}

QGraphicsItem* QGraphicsItem_new2(struct QGraphicsItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsItem(vtbl, parent);
}

QGraphicsScene* QGraphicsItem_scene(const QGraphicsItem* self) {
	return self->scene();
}

QGraphicsItem* QGraphicsItem_parentItem(const QGraphicsItem* self) {
	return self->parentItem();
}

QGraphicsItem* QGraphicsItem_topLevelItem(const QGraphicsItem* self) {
	return self->topLevelItem();
}

QGraphicsObject* QGraphicsItem_parentObject(const QGraphicsItem* self) {
	return self->parentObject();
}

QGraphicsWidget* QGraphicsItem_parentWidget(const QGraphicsItem* self) {
	return self->parentWidget();
}

QGraphicsWidget* QGraphicsItem_topLevelWidget(const QGraphicsItem* self) {
	return self->topLevelWidget();
}

QGraphicsWidget* QGraphicsItem_window(const QGraphicsItem* self) {
	return self->window();
}

QGraphicsItem* QGraphicsItem_panel(const QGraphicsItem* self) {
	return self->panel();
}

void QGraphicsItem_setParentItem(QGraphicsItem* self, QGraphicsItem* parent) {
	self->setParentItem(parent);
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsItem_childItems(const QGraphicsItem* self) {
	QList<QGraphicsItem *> _ret = self->childItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QGraphicsItem_isWidget(const QGraphicsItem* self) {
	return self->isWidget();
}

bool QGraphicsItem_isWindow(const QGraphicsItem* self) {
	return self->isWindow();
}

bool QGraphicsItem_isPanel(const QGraphicsItem* self) {
	return self->isPanel();
}

QGraphicsObject* QGraphicsItem_toGraphicsObject(QGraphicsItem* self) {
	return self->toGraphicsObject();
}

QGraphicsObject* QGraphicsItem_toGraphicsObject2(const QGraphicsItem* self) {
	return (QGraphicsObject*) self->toGraphicsObject();
}

QGraphicsItemGroup* QGraphicsItem_group(const QGraphicsItem* self) {
	return self->group();
}

void QGraphicsItem_setGroup(QGraphicsItem* self, QGraphicsItemGroup* group) {
	self->setGroup(group);
}

int QGraphicsItem_flags(const QGraphicsItem* self) {
	QGraphicsItem::GraphicsItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setFlag(QGraphicsItem* self, int flag) {
	self->setFlag(static_cast<QGraphicsItem::GraphicsItemFlag>(flag));
}

void QGraphicsItem_setFlags(QGraphicsItem* self, int flags) {
	self->setFlags(static_cast<QGraphicsItem::GraphicsItemFlags>(flags));
}

int QGraphicsItem_cacheMode(const QGraphicsItem* self) {
	QGraphicsItem::CacheMode _ret = self->cacheMode();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setCacheMode(QGraphicsItem* self, int mode) {
	self->setCacheMode(static_cast<QGraphicsItem::CacheMode>(mode));
}

int QGraphicsItem_panelModality(const QGraphicsItem* self) {
	QGraphicsItem::PanelModality _ret = self->panelModality();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setPanelModality(QGraphicsItem* self, int panelModality) {
	self->setPanelModality(static_cast<QGraphicsItem::PanelModality>(panelModality));
}

bool QGraphicsItem_isBlockedByModalPanel(const QGraphicsItem* self) {
	return self->isBlockedByModalPanel();
}

struct miqt_string QGraphicsItem_toolTip(const QGraphicsItem* self) {
	QString _ret = self->toolTip();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsItem_setToolTip(QGraphicsItem* self, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(toolTip_QString);
}

QCursor* QGraphicsItem_cursor(const QGraphicsItem* self) {
	return new QCursor(self->cursor());
}

void QGraphicsItem_setCursor(QGraphicsItem* self, QCursor* cursor) {
	self->setCursor(*cursor);
}

bool QGraphicsItem_hasCursor(const QGraphicsItem* self) {
	return self->hasCursor();
}

void QGraphicsItem_unsetCursor(QGraphicsItem* self) {
	self->unsetCursor();
}

bool QGraphicsItem_isVisible(const QGraphicsItem* self) {
	return self->isVisible();
}

bool QGraphicsItem_isVisibleTo(const QGraphicsItem* self, QGraphicsItem* parent) {
	return self->isVisibleTo(parent);
}

void QGraphicsItem_setVisible(QGraphicsItem* self, bool visible) {
	self->setVisible(visible);
}

void QGraphicsItem_hide(QGraphicsItem* self) {
	self->hide();
}

void QGraphicsItem_show(QGraphicsItem* self) {
	self->show();
}

bool QGraphicsItem_isEnabled(const QGraphicsItem* self) {
	return self->isEnabled();
}

void QGraphicsItem_setEnabled(QGraphicsItem* self, bool enabled) {
	self->setEnabled(enabled);
}

bool QGraphicsItem_isSelected(const QGraphicsItem* self) {
	return self->isSelected();
}

void QGraphicsItem_setSelected(QGraphicsItem* self, bool selected) {
	self->setSelected(selected);
}

bool QGraphicsItem_acceptDrops(const QGraphicsItem* self) {
	return self->acceptDrops();
}

void QGraphicsItem_setAcceptDrops(QGraphicsItem* self, bool on) {
	self->setAcceptDrops(on);
}

double QGraphicsItem_opacity(const QGraphicsItem* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

double QGraphicsItem_effectiveOpacity(const QGraphicsItem* self) {
	qreal _ret = self->effectiveOpacity();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setOpacity(QGraphicsItem* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

QGraphicsEffect* QGraphicsItem_graphicsEffect(const QGraphicsItem* self) {
	return self->graphicsEffect();
}

void QGraphicsItem_setGraphicsEffect(QGraphicsItem* self, QGraphicsEffect* effect) {
	self->setGraphicsEffect(effect);
}

int QGraphicsItem_acceptedMouseButtons(const QGraphicsItem* self) {
	Qt::MouseButtons _ret = self->acceptedMouseButtons();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setAcceptedMouseButtons(QGraphicsItem* self, int buttons) {
	self->setAcceptedMouseButtons(static_cast<Qt::MouseButtons>(buttons));
}

bool QGraphicsItem_acceptHoverEvents(const QGraphicsItem* self) {
	return self->acceptHoverEvents();
}

void QGraphicsItem_setAcceptHoverEvents(QGraphicsItem* self, bool enabled) {
	self->setAcceptHoverEvents(enabled);
}

bool QGraphicsItem_acceptTouchEvents(const QGraphicsItem* self) {
	return self->acceptTouchEvents();
}

void QGraphicsItem_setAcceptTouchEvents(QGraphicsItem* self, bool enabled) {
	self->setAcceptTouchEvents(enabled);
}

bool QGraphicsItem_filtersChildEvents(const QGraphicsItem* self) {
	return self->filtersChildEvents();
}

void QGraphicsItem_setFiltersChildEvents(QGraphicsItem* self, bool enabled) {
	self->setFiltersChildEvents(enabled);
}

bool QGraphicsItem_handlesChildEvents(const QGraphicsItem* self) {
	return self->handlesChildEvents();
}

void QGraphicsItem_setHandlesChildEvents(QGraphicsItem* self, bool enabled) {
	self->setHandlesChildEvents(enabled);
}

bool QGraphicsItem_isActive(const QGraphicsItem* self) {
	return self->isActive();
}

void QGraphicsItem_setActive(QGraphicsItem* self, bool active) {
	self->setActive(active);
}

bool QGraphicsItem_hasFocus(const QGraphicsItem* self) {
	return self->hasFocus();
}

void QGraphicsItem_setFocus(QGraphicsItem* self) {
	self->setFocus();
}

void QGraphicsItem_clearFocus(QGraphicsItem* self) {
	self->clearFocus();
}

QGraphicsItem* QGraphicsItem_focusProxy(const QGraphicsItem* self) {
	return self->focusProxy();
}

void QGraphicsItem_setFocusProxy(QGraphicsItem* self, QGraphicsItem* item) {
	self->setFocusProxy(item);
}

QGraphicsItem* QGraphicsItem_focusItem(const QGraphicsItem* self) {
	return self->focusItem();
}

QGraphicsItem* QGraphicsItem_focusScopeItem(const QGraphicsItem* self) {
	return self->focusScopeItem();
}

void QGraphicsItem_grabMouse(QGraphicsItem* self) {
	self->grabMouse();
}

void QGraphicsItem_ungrabMouse(QGraphicsItem* self) {
	self->ungrabMouse();
}

void QGraphicsItem_grabKeyboard(QGraphicsItem* self) {
	self->grabKeyboard();
}

void QGraphicsItem_ungrabKeyboard(QGraphicsItem* self) {
	self->ungrabKeyboard();
}

QPointF* QGraphicsItem_pos(const QGraphicsItem* self) {
	return new QPointF(self->pos());
}

double QGraphicsItem_x(const QGraphicsItem* self) {
	qreal _ret = self->x();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setX(QGraphicsItem* self, double x) {
	self->setX(static_cast<qreal>(x));
}

double QGraphicsItem_y(const QGraphicsItem* self) {
	qreal _ret = self->y();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setY(QGraphicsItem* self, double y) {
	self->setY(static_cast<qreal>(y));
}

QPointF* QGraphicsItem_scenePos(const QGraphicsItem* self) {
	return new QPointF(self->scenePos());
}

void QGraphicsItem_setPos(QGraphicsItem* self, QPointF* pos) {
	self->setPos(*pos);
}

void QGraphicsItem_setPos2(QGraphicsItem* self, double x, double y) {
	self->setPos(static_cast<qreal>(x), static_cast<qreal>(y));
}

void QGraphicsItem_moveBy(QGraphicsItem* self, double dx, double dy) {
	self->moveBy(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

void QGraphicsItem_ensureVisible(QGraphicsItem* self) {
	self->ensureVisible();
}

void QGraphicsItem_ensureVisible2(QGraphicsItem* self, double x, double y, double w, double h) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QTransform* QGraphicsItem_transform(const QGraphicsItem* self) {
	return new QTransform(self->transform());
}

QTransform* QGraphicsItem_sceneTransform(const QGraphicsItem* self) {
	return new QTransform(self->sceneTransform());
}

QTransform* QGraphicsItem_deviceTransform(const QGraphicsItem* self, QTransform* viewportTransform) {
	return new QTransform(self->deviceTransform(*viewportTransform));
}

QTransform* QGraphicsItem_itemTransform(const QGraphicsItem* self, QGraphicsItem* other) {
	return new QTransform(self->itemTransform(other));
}

void QGraphicsItem_setTransform(QGraphicsItem* self, QTransform* matrix) {
	self->setTransform(*matrix);
}

void QGraphicsItem_resetTransform(QGraphicsItem* self) {
	self->resetTransform();
}

void QGraphicsItem_setRotation(QGraphicsItem* self, double angle) {
	self->setRotation(static_cast<qreal>(angle));
}

double QGraphicsItem_rotation(const QGraphicsItem* self) {
	qreal _ret = self->rotation();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setScale(QGraphicsItem* self, double scale) {
	self->setScale(static_cast<qreal>(scale));
}

double QGraphicsItem_scale(const QGraphicsItem* self) {
	qreal _ret = self->scale();
	return static_cast<double>(_ret);
}

struct miqt_array /* of QGraphicsTransform* */  QGraphicsItem_transformations(const QGraphicsItem* self) {
	QList<QGraphicsTransform *> _ret = self->transformations();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsTransform** _arr = static_cast<QGraphicsTransform**>(malloc(sizeof(QGraphicsTransform*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGraphicsItem_setTransformations(QGraphicsItem* self, struct miqt_array /* of QGraphicsTransform* */  transformations) {
	QList<QGraphicsTransform *> transformations_QList;
	transformations_QList.reserve(transformations.len);
	QGraphicsTransform** transformations_arr = static_cast<QGraphicsTransform**>(transformations.data);
	for(size_t i = 0; i < transformations.len; ++i) {
		transformations_QList.push_back(transformations_arr[i]);
	}
	self->setTransformations(transformations_QList);
}

QPointF* QGraphicsItem_transformOriginPoint(const QGraphicsItem* self) {
	return new QPointF(self->transformOriginPoint());
}

void QGraphicsItem_setTransformOriginPoint(QGraphicsItem* self, QPointF* origin) {
	self->setTransformOriginPoint(*origin);
}

void QGraphicsItem_setTransformOriginPoint2(QGraphicsItem* self, double ax, double ay) {
	self->setTransformOriginPoint(static_cast<qreal>(ax), static_cast<qreal>(ay));
}

void QGraphicsItem_advance(QGraphicsItem* self, int phase) {
	self->advance(static_cast<int>(phase));
}

double QGraphicsItem_zValue(const QGraphicsItem* self) {
	qreal _ret = self->zValue();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setZValue(QGraphicsItem* self, double z) {
	self->setZValue(static_cast<qreal>(z));
}

void QGraphicsItem_stackBefore(QGraphicsItem* self, QGraphicsItem* sibling) {
	self->stackBefore(sibling);
}

QRectF* QGraphicsItem_boundingRect(const QGraphicsItem* self) {
	return new QRectF(self->boundingRect());
}

QRectF* QGraphicsItem_childrenBoundingRect(const QGraphicsItem* self) {
	return new QRectF(self->childrenBoundingRect());
}

QRectF* QGraphicsItem_sceneBoundingRect(const QGraphicsItem* self) {
	return new QRectF(self->sceneBoundingRect());
}

QPainterPath* QGraphicsItem_shape(const QGraphicsItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsItem_isClipped(const QGraphicsItem* self) {
	return self->isClipped();
}

QPainterPath* QGraphicsItem_clipPath(const QGraphicsItem* self) {
	return new QPainterPath(self->clipPath());
}

bool QGraphicsItem_contains(const QGraphicsItem* self, QPointF* point) {
	return self->contains(*point);
}

bool QGraphicsItem_collidesWithItem(const QGraphicsItem* self, QGraphicsItem* other, int mode) {
	return self->collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));
}

bool QGraphicsItem_collidesWithPath(const QGraphicsItem* self, QPainterPath* path, int mode) {
	return self->collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsItem_collidingItems(const QGraphicsItem* self) {
	QList<QGraphicsItem *> _ret = self->collidingItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QGraphicsItem_isObscured(const QGraphicsItem* self) {
	return self->isObscured();
}

bool QGraphicsItem_isObscured2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return self->isObscured(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

bool QGraphicsItem_isObscuredBy(const QGraphicsItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsItem_opaqueArea(const QGraphicsItem* self) {
	return new QPainterPath(self->opaqueArea());
}

QRegion* QGraphicsItem_boundingRegion(const QGraphicsItem* self, QTransform* itemToDeviceTransform) {
	return new QRegion(self->boundingRegion(*itemToDeviceTransform));
}

double QGraphicsItem_boundingRegionGranularity(const QGraphicsItem* self) {
	qreal _ret = self->boundingRegionGranularity();
	return static_cast<double>(_ret);
}

void QGraphicsItem_setBoundingRegionGranularity(QGraphicsItem* self, double granularity) {
	self->setBoundingRegionGranularity(static_cast<qreal>(granularity));
}

void QGraphicsItem_paint(QGraphicsItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

void QGraphicsItem_update(QGraphicsItem* self) {
	self->update();
}

void QGraphicsItem_update2(QGraphicsItem* self, double x, double y, double width, double height) {
	self->update(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(width), static_cast<qreal>(height));
}

void QGraphicsItem_scroll(QGraphicsItem* self, double dx, double dy) {
	self->scroll(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

QPointF* QGraphicsItem_mapToItem(const QGraphicsItem* self, QGraphicsItem* item, QPointF* point) {
	return new QPointF(self->mapToItem(item, *point));
}

QPointF* QGraphicsItem_mapToParent(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapToParent(*point));
}

QPointF* QGraphicsItem_mapToScene(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapToScene(*point));
}

QRectF* QGraphicsItem_mapRectToItem(const QGraphicsItem* self, QGraphicsItem* item, QRectF* rect) {
	return new QRectF(self->mapRectToItem(item, *rect));
}

QRectF* QGraphicsItem_mapRectToParent(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectToParent(*rect));
}

QRectF* QGraphicsItem_mapRectToScene(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectToScene(*rect));
}

QPainterPath* QGraphicsItem_mapToItem4(const QGraphicsItem* self, QGraphicsItem* item, QPainterPath* path) {
	return new QPainterPath(self->mapToItem(item, *path));
}

QPainterPath* QGraphicsItem_mapToParentWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapToParent(*path));
}

QPainterPath* QGraphicsItem_mapToSceneWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapToScene(*path));
}

QPointF* QGraphicsItem_mapFromItem(const QGraphicsItem* self, QGraphicsItem* item, QPointF* point) {
	return new QPointF(self->mapFromItem(item, *point));
}

QPointF* QGraphicsItem_mapFromParent(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapFromParent(*point));
}

QPointF* QGraphicsItem_mapFromScene(const QGraphicsItem* self, QPointF* point) {
	return new QPointF(self->mapFromScene(*point));
}

QRectF* QGraphicsItem_mapRectFromItem(const QGraphicsItem* self, QGraphicsItem* item, QRectF* rect) {
	return new QRectF(self->mapRectFromItem(item, *rect));
}

QRectF* QGraphicsItem_mapRectFromParent(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectFromParent(*rect));
}

QRectF* QGraphicsItem_mapRectFromScene(const QGraphicsItem* self, QRectF* rect) {
	return new QRectF(self->mapRectFromScene(*rect));
}

QPainterPath* QGraphicsItem_mapFromItem4(const QGraphicsItem* self, QGraphicsItem* item, QPainterPath* path) {
	return new QPainterPath(self->mapFromItem(item, *path));
}

QPainterPath* QGraphicsItem_mapFromParentWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapFromParent(*path));
}

QPainterPath* QGraphicsItem_mapFromSceneWithPath(const QGraphicsItem* self, QPainterPath* path) {
	return new QPainterPath(self->mapFromScene(*path));
}

QPointF* QGraphicsItem_mapToItem5(const QGraphicsItem* self, QGraphicsItem* item, double x, double y) {
	return new QPointF(self->mapToItem(item, static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapToParent2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapToParent(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapToScene2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapToScene(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QRectF* QGraphicsItem_mapRectToItem2(const QGraphicsItem* self, QGraphicsItem* item, double x, double y, double w, double h) {
	return new QRectF(self->mapRectToItem(item, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectToParent2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectToParent(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectToScene2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectToScene(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QPointF* QGraphicsItem_mapFromItem5(const QGraphicsItem* self, QGraphicsItem* item, double x, double y) {
	return new QPointF(self->mapFromItem(item, static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapFromParent2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapFromParent(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QPointF* QGraphicsItem_mapFromScene2(const QGraphicsItem* self, double x, double y) {
	return new QPointF(self->mapFromScene(static_cast<qreal>(x), static_cast<qreal>(y)));
}

QRectF* QGraphicsItem_mapRectFromItem2(const QGraphicsItem* self, QGraphicsItem* item, double x, double y, double w, double h) {
	return new QRectF(self->mapRectFromItem(item, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectFromParent2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectFromParent(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

QRectF* QGraphicsItem_mapRectFromScene2(const QGraphicsItem* self, double x, double y, double w, double h) {
	return new QRectF(self->mapRectFromScene(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h)));
}

bool QGraphicsItem_isAncestorOf(const QGraphicsItem* self, QGraphicsItem* child) {
	return self->isAncestorOf(child);
}

QGraphicsItem* QGraphicsItem_commonAncestorItem(const QGraphicsItem* self, QGraphicsItem* other) {
	return self->commonAncestorItem(other);
}

bool QGraphicsItem_isUnderMouse(const QGraphicsItem* self) {
	return self->isUnderMouse();
}

QVariant* QGraphicsItem_data(const QGraphicsItem* self, int key) {
	return new QVariant(self->data(static_cast<int>(key)));
}

void QGraphicsItem_setData(QGraphicsItem* self, int key, QVariant* value) {
	self->setData(static_cast<int>(key), *value);
}

int QGraphicsItem_inputMethodHints(const QGraphicsItem* self) {
	Qt::InputMethodHints _ret = self->inputMethodHints();
	return static_cast<int>(_ret);
}

void QGraphicsItem_setInputMethodHints(QGraphicsItem* self, int hints) {
	self->setInputMethodHints(static_cast<Qt::InputMethodHints>(hints));
}

int QGraphicsItem_type(const QGraphicsItem* self) {
	return self->type();
}

void QGraphicsItem_installSceneEventFilter(QGraphicsItem* self, QGraphicsItem* filterItem) {
	self->installSceneEventFilter(filterItem);
}

void QGraphicsItem_removeSceneEventFilter(QGraphicsItem* self, QGraphicsItem* filterItem) {
	self->removeSceneEventFilter(filterItem);
}

void QGraphicsItem_setFlag2(QGraphicsItem* self, int flag, bool enabled) {
	self->setFlag(static_cast<QGraphicsItem::GraphicsItemFlag>(flag), enabled);
}

void QGraphicsItem_setCacheMode2(QGraphicsItem* self, int mode, QSize* cacheSize) {
	self->setCacheMode(static_cast<QGraphicsItem::CacheMode>(mode), *cacheSize);
}

void QGraphicsItem_setFocus1(QGraphicsItem* self, int focusReason) {
	self->setFocus(static_cast<Qt::FocusReason>(focusReason));
}

void QGraphicsItem_ensureVisible1(QGraphicsItem* self, QRectF* rect) {
	self->ensureVisible(*rect);
}

void QGraphicsItem_ensureVisible22(QGraphicsItem* self, QRectF* rect, int xmargin) {
	self->ensureVisible(*rect, static_cast<int>(xmargin));
}

void QGraphicsItem_ensureVisible3(QGraphicsItem* self, QRectF* rect, int xmargin, int ymargin) {
	self->ensureVisible(*rect, static_cast<int>(xmargin), static_cast<int>(ymargin));
}

void QGraphicsItem_ensureVisible5(QGraphicsItem* self, double x, double y, double w, double h, int xmargin) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), static_cast<int>(xmargin));
}

void QGraphicsItem_ensureVisible6(QGraphicsItem* self, double x, double y, double w, double h, int xmargin, int ymargin) {
	self->ensureVisible(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), static_cast<int>(xmargin), static_cast<int>(ymargin));
}

QTransform* QGraphicsItem_itemTransform2(const QGraphicsItem* self, QGraphicsItem* other, bool* ok) {
	return new QTransform(self->itemTransform(other, ok));
}

void QGraphicsItem_setTransform2(QGraphicsItem* self, QTransform* matrix, bool combine) {
	self->setTransform(*matrix, combine);
}

struct miqt_array /* of QGraphicsItem* */  QGraphicsItem_collidingItems1(const QGraphicsItem* self, int mode) {
	QList<QGraphicsItem *> _ret = self->collidingItems(static_cast<Qt::ItemSelectionMode>(mode));
	// Convert QList<> from C++ memory to manually-managed C memory
	QGraphicsItem** _arr = static_cast<QGraphicsItem**>(malloc(sizeof(QGraphicsItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QGraphicsItem_isObscured1(const QGraphicsItem* self, QRectF* rect) {
	return self->isObscured(*rect);
}

void QGraphicsItem_update1(QGraphicsItem* self, QRectF* rect) {
	self->update(*rect);
}

void QGraphicsItem_scroll3(QGraphicsItem* self, double dx, double dy, QRectF* rect) {
	self->scroll(static_cast<qreal>(dx), static_cast<qreal>(dy), *rect);
}

void QGraphicsItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_advance(phase);
}

QPainterPath* QGraphicsItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_shape();
}

bool QGraphicsItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_contains(point);
}

bool QGraphicsItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_type();
}

bool QGraphicsItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_itemChange(change, value);
}

bool QGraphicsItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsItem*>( (QGraphicsItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsItem*>( (QGraphicsItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsItem*>( (QGraphicsItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsItem*>( (QGraphicsItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsItem_delete(QGraphicsItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsObject final : public QGraphicsObject {
	struct QGraphicsObject_VTable* vtbl;
public:

	MiqtVirtualQGraphicsObject(struct QGraphicsObject_VTable* vtbl): QGraphicsObject(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsObject(struct QGraphicsObject_VTable* vtbl, QGraphicsItem* parent): QGraphicsObject(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsObject() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsObject::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsObject::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsObject::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsObject::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsObject::qt_metacall(param1, param2, param3);
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

		return QGraphicsObject::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* ev) override {
		if (vtbl->event == 0) {
			return QGraphicsObject::event(ev);
		}

		QEvent* sigval1 = ev;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* ev) {

		return QGraphicsObject::event(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsObject::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsObject::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsObject::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsObject::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsObject::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsObject::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsObject::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsObject::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsObject::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsObject::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsObject::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsObject::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsObject::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsObject::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsObject::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsObject::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsObject::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsObject::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsObject::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsObject::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsObject::collidesWithPath(path, mode);
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

		return QGraphicsObject::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsObject::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsObject::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsObject::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsObject::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsObject::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsObject::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsObject::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsObject::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsObject::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsObject::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsObject::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsObject::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsObject::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsObject::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsObject::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsObject::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsObject::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsObject::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsObject::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsObject::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsObject::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsObject::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsObject::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsObject::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsObject::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsObject::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsObject::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsObject::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsObject::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsObject::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsObject::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsObject::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsObject::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsObject::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsObject::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsObject::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsObject::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsObject::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsObject::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsObject::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsObject::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsObject::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsObject::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsObject::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsObject::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsObject::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsObject::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsObject::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsObject::itemChange(change, value);
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

		return new QVariant(QGraphicsObject::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsObject::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsObject::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsObject::setExtension(extension, variant);
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

		QGraphicsObject::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsObject::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsObject::extension(*variant));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsObject_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend QObject* QGraphicsObject_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsObject_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsObject_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsObject_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
	friend void QGraphicsObject_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsObject_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsObject_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsObject* QGraphicsObject_new(struct QGraphicsObject_VTable* vtbl) {
	return new MiqtVirtualQGraphicsObject(vtbl);
}

QGraphicsObject* QGraphicsObject_new2(struct QGraphicsObject_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsObject(vtbl, parent);
}

void QGraphicsObject_virtbase(QGraphicsObject* src, QObject** outptr_QObject, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QMetaObject* QGraphicsObject_metaObject(const QGraphicsObject* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsObject_metacast(QGraphicsObject* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsObject_metacall(QGraphicsObject* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsObject_tr(const char* s) {
	QString _ret = QGraphicsObject::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsObject_grabGesture(QGraphicsObject* self, int type) {
	self->grabGesture(static_cast<Qt::GestureType>(type));
}

void QGraphicsObject_ungrabGesture(QGraphicsObject* self, int type) {
	self->ungrabGesture(static_cast<Qt::GestureType>(type));
}

void QGraphicsObject_parentChanged(QGraphicsObject* self) {
	self->parentChanged();
}

void QGraphicsObject_connect_parentChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_parentChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_parentChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::parentChanged), self, caller{slot});
}

void QGraphicsObject_opacityChanged(QGraphicsObject* self) {
	self->opacityChanged();
}

void QGraphicsObject_connect_opacityChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_opacityChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_opacityChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::opacityChanged), self, caller{slot});
}

void QGraphicsObject_visibleChanged(QGraphicsObject* self) {
	self->visibleChanged();
}

void QGraphicsObject_connect_visibleChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_visibleChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_visibleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::visibleChanged), self, caller{slot});
}

void QGraphicsObject_enabledChanged(QGraphicsObject* self) {
	self->enabledChanged();
}

void QGraphicsObject_connect_enabledChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_enabledChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_enabledChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::enabledChanged), self, caller{slot});
}

void QGraphicsObject_xChanged(QGraphicsObject* self) {
	self->xChanged();
}

void QGraphicsObject_connect_xChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_xChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_xChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::xChanged), self, caller{slot});
}

void QGraphicsObject_yChanged(QGraphicsObject* self) {
	self->yChanged();
}

void QGraphicsObject_connect_yChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_yChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_yChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::yChanged), self, caller{slot});
}

void QGraphicsObject_zChanged(QGraphicsObject* self) {
	self->zChanged();
}

void QGraphicsObject_connect_zChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_zChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_zChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::zChanged), self, caller{slot});
}

void QGraphicsObject_rotationChanged(QGraphicsObject* self) {
	self->rotationChanged();
}

void QGraphicsObject_connect_rotationChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_rotationChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_rotationChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::rotationChanged), self, caller{slot});
}

void QGraphicsObject_scaleChanged(QGraphicsObject* self) {
	self->scaleChanged();
}

void QGraphicsObject_connect_scaleChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_scaleChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_scaleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::scaleChanged), self, caller{slot});
}

void QGraphicsObject_childrenChanged(QGraphicsObject* self) {
	self->childrenChanged();
}

void QGraphicsObject_connect_childrenChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_childrenChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_childrenChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::childrenChanged), self, caller{slot});
}

void QGraphicsObject_widthChanged(QGraphicsObject* self) {
	self->widthChanged();
}

void QGraphicsObject_connect_widthChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_widthChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_widthChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::widthChanged), self, caller{slot});
}

void QGraphicsObject_heightChanged(QGraphicsObject* self) {
	self->heightChanged();
}

void QGraphicsObject_connect_heightChanged(QGraphicsObject* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsObject_heightChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsObject_heightChanged_release(slot); }
	};
	MiqtVirtualQGraphicsObject::connect(self, static_cast<void (QGraphicsObject::*)()>(&QGraphicsObject::heightChanged), self, caller{slot});
}

struct miqt_string QGraphicsObject_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsObject::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsObject_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsObject::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsObject_grabGesture2(QGraphicsObject* self, int type, int flags) {
	self->grabGesture(static_cast<Qt::GestureType>(type), static_cast<Qt::GestureFlags>(flags));
}

QMetaObject* QGraphicsObject_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_metaObject();
}

void* QGraphicsObject_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsObject_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QGraphicsObject_virtualbase_event(void* self, QEvent* ev) {
	return ( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_event(ev);
}

bool QGraphicsObject_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsObject_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsObject_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsObject_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsObject_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsObject_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_disconnectNotify(signal);
}

void QGraphicsObject_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_advance(phase);
}

QPainterPath* QGraphicsObject_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_shape();
}

bool QGraphicsObject_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_contains(point);
}

bool QGraphicsObject_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsObject_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsObject_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsObject_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsObject_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_type();
}

bool QGraphicsObject_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsObject_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsObject_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsObject_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsObject_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsObject_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsObject_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsObject_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsObject_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsObject_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsObject_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsObject_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsObject_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsObject_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsObject_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsObject_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsObject_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsObject_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsObject_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsObject_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsObject_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsObject_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_itemChange(change, value);
}

bool QGraphicsObject_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsObject_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsObject*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsObject_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsObject*)(self) )->virtualbase_extension(variant);
}

const QMetaObject* QGraphicsObject_staticMetaObject() { return &QGraphicsObject::staticMetaObject; }
void QGraphicsObject_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

QObject* QGraphicsObject_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsObject_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsObject_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsObject_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsObject_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsObject_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsObject_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsObject* self_cast = dynamic_cast<MiqtVirtualQGraphicsObject*>( (QGraphicsObject*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsObject_delete(QGraphicsObject* self) {
	delete self;
}

class MiqtVirtualQAbstractGraphicsShapeItem final : public QAbstractGraphicsShapeItem {
	struct QAbstractGraphicsShapeItem_VTable* vtbl;
public:

	MiqtVirtualQAbstractGraphicsShapeItem(struct QAbstractGraphicsShapeItem_VTable* vtbl): QAbstractGraphicsShapeItem(), vtbl(vtbl) {};
	MiqtVirtualQAbstractGraphicsShapeItem(struct QAbstractGraphicsShapeItem_VTable* vtbl, QGraphicsItem* parent): QAbstractGraphicsShapeItem(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractGraphicsShapeItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QAbstractGraphicsShapeItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QAbstractGraphicsShapeItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QAbstractGraphicsShapeItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QAbstractGraphicsShapeItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QAbstractGraphicsShapeItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QAbstractGraphicsShapeItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QRectF(); // Pure virtual, there is no base we can call
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QAbstractGraphicsShapeItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QAbstractGraphicsShapeItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QAbstractGraphicsShapeItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QAbstractGraphicsShapeItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QAbstractGraphicsShapeItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QAbstractGraphicsShapeItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QAbstractGraphicsShapeItem::collidesWithPath(path, mode);
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

		return QAbstractGraphicsShapeItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QAbstractGraphicsShapeItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QAbstractGraphicsShapeItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QAbstractGraphicsShapeItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QAbstractGraphicsShapeItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QAbstractGraphicsShapeItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QAbstractGraphicsShapeItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractGraphicsShapeItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QAbstractGraphicsShapeItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractGraphicsShapeItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QAbstractGraphicsShapeItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractGraphicsShapeItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QAbstractGraphicsShapeItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractGraphicsShapeItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QAbstractGraphicsShapeItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractGraphicsShapeItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QAbstractGraphicsShapeItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractGraphicsShapeItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QAbstractGraphicsShapeItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractGraphicsShapeItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QAbstractGraphicsShapeItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QAbstractGraphicsShapeItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QAbstractGraphicsShapeItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QAbstractGraphicsShapeItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QAbstractGraphicsShapeItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QAbstractGraphicsShapeItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QAbstractGraphicsShapeItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractGraphicsShapeItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QAbstractGraphicsShapeItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractGraphicsShapeItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QAbstractGraphicsShapeItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractGraphicsShapeItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QAbstractGraphicsShapeItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractGraphicsShapeItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QAbstractGraphicsShapeItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractGraphicsShapeItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QAbstractGraphicsShapeItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractGraphicsShapeItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QAbstractGraphicsShapeItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractGraphicsShapeItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QAbstractGraphicsShapeItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractGraphicsShapeItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QAbstractGraphicsShapeItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractGraphicsShapeItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QAbstractGraphicsShapeItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QAbstractGraphicsShapeItem::itemChange(change, value);
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

		return new QVariant(QAbstractGraphicsShapeItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QAbstractGraphicsShapeItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QAbstractGraphicsShapeItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QAbstractGraphicsShapeItem::setExtension(extension, variant);
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

		QAbstractGraphicsShapeItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QAbstractGraphicsShapeItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QAbstractGraphicsShapeItem::extension(*variant));

	}

	// Wrappers to allow calling protected methods:
	friend void QAbstractGraphicsShapeItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractGraphicsShapeItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractGraphicsShapeItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractGraphicsShapeItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QAbstractGraphicsShapeItem* QAbstractGraphicsShapeItem_new(struct QAbstractGraphicsShapeItem_VTable* vtbl) {
	return new MiqtVirtualQAbstractGraphicsShapeItem(vtbl);
}

QAbstractGraphicsShapeItem* QAbstractGraphicsShapeItem_new2(struct QAbstractGraphicsShapeItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQAbstractGraphicsShapeItem(vtbl, parent);
}

void QAbstractGraphicsShapeItem_virtbase(QAbstractGraphicsShapeItem* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QPen* QAbstractGraphicsShapeItem_pen(const QAbstractGraphicsShapeItem* self) {
	return new QPen(self->pen());
}

void QAbstractGraphicsShapeItem_setPen(QAbstractGraphicsShapeItem* self, QPen* pen) {
	self->setPen(*pen);
}

QBrush* QAbstractGraphicsShapeItem_brush(const QAbstractGraphicsShapeItem* self) {
	return new QBrush(self->brush());
}

void QAbstractGraphicsShapeItem_setBrush(QAbstractGraphicsShapeItem* self, QBrush* brush) {
	self->setBrush(*brush);
}

bool QAbstractGraphicsShapeItem_isObscuredBy(const QAbstractGraphicsShapeItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QAbstractGraphicsShapeItem_opaqueArea(const QAbstractGraphicsShapeItem* self) {
	return new QPainterPath(self->opaqueArea());
}

bool QAbstractGraphicsShapeItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QAbstractGraphicsShapeItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_opaqueArea();
}

void QAbstractGraphicsShapeItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_advance(phase);
}

QPainterPath* QAbstractGraphicsShapeItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_shape();
}

bool QAbstractGraphicsShapeItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_contains(point);
}

bool QAbstractGraphicsShapeItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QAbstractGraphicsShapeItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

int QAbstractGraphicsShapeItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_type();
}

bool QAbstractGraphicsShapeItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QAbstractGraphicsShapeItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_sceneEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_dropEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_focusInEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_wheelEvent(event);
}

void QAbstractGraphicsShapeItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QAbstractGraphicsShapeItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QAbstractGraphicsShapeItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_itemChange(change, value);
}

bool QAbstractGraphicsShapeItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QAbstractGraphicsShapeItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QAbstractGraphicsShapeItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQAbstractGraphicsShapeItem*)(self) )->virtualbase_extension(variant);
}

void QAbstractGraphicsShapeItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractGraphicsShapeItem* self_cast = dynamic_cast<MiqtVirtualQAbstractGraphicsShapeItem*>( (QAbstractGraphicsShapeItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QAbstractGraphicsShapeItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractGraphicsShapeItem* self_cast = dynamic_cast<MiqtVirtualQAbstractGraphicsShapeItem*>( (QAbstractGraphicsShapeItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QAbstractGraphicsShapeItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractGraphicsShapeItem* self_cast = dynamic_cast<MiqtVirtualQAbstractGraphicsShapeItem*>( (QAbstractGraphicsShapeItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QAbstractGraphicsShapeItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractGraphicsShapeItem* self_cast = dynamic_cast<MiqtVirtualQAbstractGraphicsShapeItem*>( (QAbstractGraphicsShapeItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QAbstractGraphicsShapeItem_delete(QAbstractGraphicsShapeItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsPathItem final : public QGraphicsPathItem {
	struct QGraphicsPathItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsPathItem(struct QGraphicsPathItem_VTable* vtbl): QGraphicsPathItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsPathItem(struct QGraphicsPathItem_VTable* vtbl, const QPainterPath& path): QGraphicsPathItem(path), vtbl(vtbl) {};
	MiqtVirtualQGraphicsPathItem(struct QGraphicsPathItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsPathItem(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsPathItem(struct QGraphicsPathItem_VTable* vtbl, const QPainterPath& path, QGraphicsItem* parent): QGraphicsPathItem(path, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsPathItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsPathItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsPathItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsPathItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsPathItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsPathItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsPathItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsPathItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsPathItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsPathItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsPathItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsPathItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsPathItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsPathItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsPathItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsPathItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsPathItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsPathItem::setExtension(extension, variant);
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

		QGraphicsPathItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsPathItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsPathItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsPathItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsPathItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsPathItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsPathItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsPathItem::collidesWithPath(path, mode);
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

		return QGraphicsPathItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsPathItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsPathItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsPathItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsPathItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsPathItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsPathItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsPathItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPathItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsPathItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPathItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsPathItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPathItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsPathItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPathItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsPathItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsPathItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsPathItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsPathItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsPathItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPathItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsPathItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPathItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsPathItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPathItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsPathItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsPathItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsPathItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsPathItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsPathItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPathItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsPathItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPathItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsPathItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPathItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsPathItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPathItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsPathItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsPathItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsPathItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsPathItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsPathItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsPathItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsPathItem::itemChange(change, value);
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

		return new QVariant(QGraphicsPathItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsPathItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPathItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPathItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPathItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsPathItem* QGraphicsPathItem_new(struct QGraphicsPathItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsPathItem(vtbl);
}

QGraphicsPathItem* QGraphicsPathItem_new2(struct QGraphicsPathItem_VTable* vtbl, QPainterPath* path) {
	return new MiqtVirtualQGraphicsPathItem(vtbl, *path);
}

QGraphicsPathItem* QGraphicsPathItem_new3(struct QGraphicsPathItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsPathItem(vtbl, parent);
}

QGraphicsPathItem* QGraphicsPathItem_new4(struct QGraphicsPathItem_VTable* vtbl, QPainterPath* path, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsPathItem(vtbl, *path, parent);
}

void QGraphicsPathItem_virtbase(QGraphicsPathItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

QPainterPath* QGraphicsPathItem_path(const QGraphicsPathItem* self) {
	return new QPainterPath(self->path());
}

void QGraphicsPathItem_setPath(QGraphicsPathItem* self, QPainterPath* path) {
	self->setPath(*path);
}

QRectF* QGraphicsPathItem_boundingRect(const QGraphicsPathItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsPathItem_shape(const QGraphicsPathItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsPathItem_contains(const QGraphicsPathItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsPathItem_paint(QGraphicsPathItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsPathItem_isObscuredBy(const QGraphicsPathItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsPathItem_opaqueArea(const QGraphicsPathItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsPathItem_type(const QGraphicsPathItem* self) {
	return self->type();
}

QRectF* QGraphicsPathItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsPathItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_shape();
}

bool QGraphicsPathItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsPathItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsPathItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsPathItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsPathItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_type();
}

bool QGraphicsPathItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsPathItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsPathItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsPathItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsPathItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsPathItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsPathItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsPathItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsPathItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsPathItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsPathItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsPathItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsPathItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsPathItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsPathItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsPathItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsPathItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsPathItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsPathItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsPathItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsPathItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsPathItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsPathItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsPathItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsPathItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsPathItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsPathItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsPathItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsPathItem*)(self) )->virtualbase_itemChange(change, value);
}

void QGraphicsPathItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPathItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPathItem*>( (QGraphicsPathItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsPathItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPathItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPathItem*>( (QGraphicsPathItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsPathItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPathItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPathItem*>( (QGraphicsPathItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsPathItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPathItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPathItem*>( (QGraphicsPathItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsPathItem_delete(QGraphicsPathItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsRectItem final : public QGraphicsRectItem {
	struct QGraphicsRectItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsRectItem(struct QGraphicsRectItem_VTable* vtbl): QGraphicsRectItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsRectItem(struct QGraphicsRectItem_VTable* vtbl, const QRectF& rect): QGraphicsRectItem(rect), vtbl(vtbl) {};
	MiqtVirtualQGraphicsRectItem(struct QGraphicsRectItem_VTable* vtbl, qreal x, qreal y, qreal w, qreal h): QGraphicsRectItem(x, y, w, h), vtbl(vtbl) {};
	MiqtVirtualQGraphicsRectItem(struct QGraphicsRectItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsRectItem(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsRectItem(struct QGraphicsRectItem_VTable* vtbl, const QRectF& rect, QGraphicsItem* parent): QGraphicsRectItem(rect, parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsRectItem(struct QGraphicsRectItem_VTable* vtbl, qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent): QGraphicsRectItem(x, y, w, h, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsRectItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsRectItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsRectItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsRectItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsRectItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsRectItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsRectItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsRectItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsRectItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsRectItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsRectItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsRectItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsRectItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsRectItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsRectItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsRectItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsRectItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsRectItem::setExtension(extension, variant);
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

		QGraphicsRectItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsRectItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsRectItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsRectItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsRectItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsRectItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsRectItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsRectItem::collidesWithPath(path, mode);
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

		return QGraphicsRectItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsRectItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsRectItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsRectItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsRectItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsRectItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsRectItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsRectItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsRectItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsRectItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsRectItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsRectItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsRectItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsRectItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsRectItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsRectItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsRectItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsRectItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsRectItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsRectItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsRectItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsRectItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsRectItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsRectItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsRectItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsRectItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsRectItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsRectItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsRectItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsRectItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsRectItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsRectItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsRectItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsRectItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsRectItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsRectItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsRectItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsRectItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsRectItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsRectItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsRectItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsRectItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsRectItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsRectItem::itemChange(change, value);
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

		return new QVariant(QGraphicsRectItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsRectItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsRectItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsRectItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsRectItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsRectItem* QGraphicsRectItem_new(struct QGraphicsRectItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsRectItem(vtbl);
}

QGraphicsRectItem* QGraphicsRectItem_new2(struct QGraphicsRectItem_VTable* vtbl, QRectF* rect) {
	return new MiqtVirtualQGraphicsRectItem(vtbl, *rect);
}

QGraphicsRectItem* QGraphicsRectItem_new3(struct QGraphicsRectItem_VTable* vtbl, double x, double y, double w, double h) {
	return new MiqtVirtualQGraphicsRectItem(vtbl, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QGraphicsRectItem* QGraphicsRectItem_new4(struct QGraphicsRectItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsRectItem(vtbl, parent);
}

QGraphicsRectItem* QGraphicsRectItem_new5(struct QGraphicsRectItem_VTable* vtbl, QRectF* rect, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsRectItem(vtbl, *rect, parent);
}

QGraphicsRectItem* QGraphicsRectItem_new6(struct QGraphicsRectItem_VTable* vtbl, double x, double y, double w, double h, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsRectItem(vtbl, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), parent);
}

void QGraphicsRectItem_virtbase(QGraphicsRectItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

QRectF* QGraphicsRectItem_rect(const QGraphicsRectItem* self) {
	return new QRectF(self->rect());
}

void QGraphicsRectItem_setRect(QGraphicsRectItem* self, QRectF* rect) {
	self->setRect(*rect);
}

void QGraphicsRectItem_setRect2(QGraphicsRectItem* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QGraphicsRectItem_boundingRect(const QGraphicsRectItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsRectItem_shape(const QGraphicsRectItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsRectItem_contains(const QGraphicsRectItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsRectItem_paint(QGraphicsRectItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsRectItem_isObscuredBy(const QGraphicsRectItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsRectItem_opaqueArea(const QGraphicsRectItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsRectItem_type(const QGraphicsRectItem* self) {
	return self->type();
}

QRectF* QGraphicsRectItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsRectItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_shape();
}

bool QGraphicsRectItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsRectItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsRectItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsRectItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsRectItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_type();
}

bool QGraphicsRectItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsRectItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsRectItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsRectItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsRectItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsRectItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsRectItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsRectItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsRectItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsRectItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsRectItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsRectItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsRectItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsRectItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsRectItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsRectItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsRectItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsRectItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsRectItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsRectItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsRectItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsRectItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsRectItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsRectItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsRectItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsRectItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsRectItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsRectItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsRectItem*)(self) )->virtualbase_itemChange(change, value);
}

void QGraphicsRectItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsRectItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsRectItem*>( (QGraphicsRectItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsRectItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsRectItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsRectItem*>( (QGraphicsRectItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsRectItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsRectItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsRectItem*>( (QGraphicsRectItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsRectItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsRectItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsRectItem*>( (QGraphicsRectItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsRectItem_delete(QGraphicsRectItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsEllipseItem final : public QGraphicsEllipseItem {
	struct QGraphicsEllipseItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsEllipseItem(struct QGraphicsEllipseItem_VTable* vtbl): QGraphicsEllipseItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsEllipseItem(struct QGraphicsEllipseItem_VTable* vtbl, const QRectF& rect): QGraphicsEllipseItem(rect), vtbl(vtbl) {};
	MiqtVirtualQGraphicsEllipseItem(struct QGraphicsEllipseItem_VTable* vtbl, qreal x, qreal y, qreal w, qreal h): QGraphicsEllipseItem(x, y, w, h), vtbl(vtbl) {};
	MiqtVirtualQGraphicsEllipseItem(struct QGraphicsEllipseItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsEllipseItem(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsEllipseItem(struct QGraphicsEllipseItem_VTable* vtbl, const QRectF& rect, QGraphicsItem* parent): QGraphicsEllipseItem(rect, parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsEllipseItem(struct QGraphicsEllipseItem_VTable* vtbl, qreal x, qreal y, qreal w, qreal h, QGraphicsItem* parent): QGraphicsEllipseItem(x, y, w, h, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsEllipseItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsEllipseItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsEllipseItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsEllipseItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsEllipseItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsEllipseItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsEllipseItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsEllipseItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsEllipseItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsEllipseItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsEllipseItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsEllipseItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsEllipseItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsEllipseItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsEllipseItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsEllipseItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsEllipseItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsEllipseItem::setExtension(extension, variant);
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

		QGraphicsEllipseItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsEllipseItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsEllipseItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsEllipseItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsEllipseItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsEllipseItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsEllipseItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsEllipseItem::collidesWithPath(path, mode);
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

		return QGraphicsEllipseItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsEllipseItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsEllipseItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsEllipseItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsEllipseItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsEllipseItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsEllipseItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsEllipseItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsEllipseItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsEllipseItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsEllipseItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsEllipseItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsEllipseItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsEllipseItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsEllipseItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsEllipseItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsEllipseItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsEllipseItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsEllipseItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsEllipseItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsEllipseItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsEllipseItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsEllipseItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsEllipseItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsEllipseItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsEllipseItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsEllipseItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsEllipseItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsEllipseItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsEllipseItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsEllipseItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsEllipseItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsEllipseItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsEllipseItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsEllipseItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsEllipseItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsEllipseItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsEllipseItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsEllipseItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsEllipseItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsEllipseItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsEllipseItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsEllipseItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsEllipseItem::itemChange(change, value);
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

		return new QVariant(QGraphicsEllipseItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsEllipseItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsEllipseItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsEllipseItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsEllipseItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsEllipseItem* QGraphicsEllipseItem_new(struct QGraphicsEllipseItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsEllipseItem(vtbl);
}

QGraphicsEllipseItem* QGraphicsEllipseItem_new2(struct QGraphicsEllipseItem_VTable* vtbl, QRectF* rect) {
	return new MiqtVirtualQGraphicsEllipseItem(vtbl, *rect);
}

QGraphicsEllipseItem* QGraphicsEllipseItem_new3(struct QGraphicsEllipseItem_VTable* vtbl, double x, double y, double w, double h) {
	return new MiqtVirtualQGraphicsEllipseItem(vtbl, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QGraphicsEllipseItem* QGraphicsEllipseItem_new4(struct QGraphicsEllipseItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsEllipseItem(vtbl, parent);
}

QGraphicsEllipseItem* QGraphicsEllipseItem_new5(struct QGraphicsEllipseItem_VTable* vtbl, QRectF* rect, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsEllipseItem(vtbl, *rect, parent);
}

QGraphicsEllipseItem* QGraphicsEllipseItem_new6(struct QGraphicsEllipseItem_VTable* vtbl, double x, double y, double w, double h, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsEllipseItem(vtbl, static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h), parent);
}

void QGraphicsEllipseItem_virtbase(QGraphicsEllipseItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

QRectF* QGraphicsEllipseItem_rect(const QGraphicsEllipseItem* self) {
	return new QRectF(self->rect());
}

void QGraphicsEllipseItem_setRect(QGraphicsEllipseItem* self, QRectF* rect) {
	self->setRect(*rect);
}

void QGraphicsEllipseItem_setRect2(QGraphicsEllipseItem* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

int QGraphicsEllipseItem_startAngle(const QGraphicsEllipseItem* self) {
	return self->startAngle();
}

void QGraphicsEllipseItem_setStartAngle(QGraphicsEllipseItem* self, int angle) {
	self->setStartAngle(static_cast<int>(angle));
}

int QGraphicsEllipseItem_spanAngle(const QGraphicsEllipseItem* self) {
	return self->spanAngle();
}

void QGraphicsEllipseItem_setSpanAngle(QGraphicsEllipseItem* self, int angle) {
	self->setSpanAngle(static_cast<int>(angle));
}

QRectF* QGraphicsEllipseItem_boundingRect(const QGraphicsEllipseItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsEllipseItem_shape(const QGraphicsEllipseItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsEllipseItem_contains(const QGraphicsEllipseItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsEllipseItem_paint(QGraphicsEllipseItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsEllipseItem_isObscuredBy(const QGraphicsEllipseItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsEllipseItem_opaqueArea(const QGraphicsEllipseItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsEllipseItem_type(const QGraphicsEllipseItem* self) {
	return self->type();
}

QRectF* QGraphicsEllipseItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsEllipseItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_shape();
}

bool QGraphicsEllipseItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsEllipseItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsEllipseItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsEllipseItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsEllipseItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_type();
}

bool QGraphicsEllipseItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsEllipseItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsEllipseItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsEllipseItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsEllipseItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsEllipseItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsEllipseItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsEllipseItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsEllipseItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsEllipseItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsEllipseItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsEllipseItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsEllipseItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsEllipseItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsEllipseItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsEllipseItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsEllipseItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsEllipseItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsEllipseItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsEllipseItem*)(self) )->virtualbase_itemChange(change, value);
}

void QGraphicsEllipseItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsEllipseItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsEllipseItem*>( (QGraphicsEllipseItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsEllipseItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsEllipseItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsEllipseItem*>( (QGraphicsEllipseItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsEllipseItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsEllipseItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsEllipseItem*>( (QGraphicsEllipseItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsEllipseItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsEllipseItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsEllipseItem*>( (QGraphicsEllipseItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsEllipseItem_delete(QGraphicsEllipseItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsPolygonItem final : public QGraphicsPolygonItem {
	struct QGraphicsPolygonItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsPolygonItem(struct QGraphicsPolygonItem_VTable* vtbl): QGraphicsPolygonItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsPolygonItem(struct QGraphicsPolygonItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsPolygonItem(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsPolygonItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsPolygonItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsPolygonItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsPolygonItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsPolygonItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsPolygonItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsPolygonItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsPolygonItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsPolygonItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsPolygonItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsPolygonItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsPolygonItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsPolygonItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsPolygonItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsPolygonItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsPolygonItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsPolygonItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsPolygonItem::setExtension(extension, variant);
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

		QGraphicsPolygonItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsPolygonItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsPolygonItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsPolygonItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsPolygonItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsPolygonItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsPolygonItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsPolygonItem::collidesWithPath(path, mode);
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

		return QGraphicsPolygonItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsPolygonItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsPolygonItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsPolygonItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsPolygonItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsPolygonItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsPolygonItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsPolygonItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPolygonItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsPolygonItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPolygonItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsPolygonItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPolygonItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsPolygonItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPolygonItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsPolygonItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsPolygonItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsPolygonItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsPolygonItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsPolygonItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPolygonItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsPolygonItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPolygonItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsPolygonItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPolygonItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsPolygonItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsPolygonItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsPolygonItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsPolygonItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsPolygonItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPolygonItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsPolygonItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPolygonItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsPolygonItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPolygonItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsPolygonItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPolygonItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsPolygonItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsPolygonItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsPolygonItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsPolygonItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsPolygonItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsPolygonItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsPolygonItem::itemChange(change, value);
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

		return new QVariant(QGraphicsPolygonItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsPolygonItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPolygonItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPolygonItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPolygonItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsPolygonItem* QGraphicsPolygonItem_new(struct QGraphicsPolygonItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsPolygonItem(vtbl);
}

QGraphicsPolygonItem* QGraphicsPolygonItem_new2(struct QGraphicsPolygonItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsPolygonItem(vtbl, parent);
}

void QGraphicsPolygonItem_virtbase(QGraphicsPolygonItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

int QGraphicsPolygonItem_fillRule(const QGraphicsPolygonItem* self) {
	Qt::FillRule _ret = self->fillRule();
	return static_cast<int>(_ret);
}

void QGraphicsPolygonItem_setFillRule(QGraphicsPolygonItem* self, int rule) {
	self->setFillRule(static_cast<Qt::FillRule>(rule));
}

QRectF* QGraphicsPolygonItem_boundingRect(const QGraphicsPolygonItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsPolygonItem_shape(const QGraphicsPolygonItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsPolygonItem_contains(const QGraphicsPolygonItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsPolygonItem_paint(QGraphicsPolygonItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsPolygonItem_isObscuredBy(const QGraphicsPolygonItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsPolygonItem_opaqueArea(const QGraphicsPolygonItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsPolygonItem_type(const QGraphicsPolygonItem* self) {
	return self->type();
}

QRectF* QGraphicsPolygonItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsPolygonItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_shape();
}

bool QGraphicsPolygonItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsPolygonItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsPolygonItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsPolygonItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsPolygonItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_type();
}

bool QGraphicsPolygonItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsPolygonItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsPolygonItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsPolygonItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsPolygonItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsPolygonItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsPolygonItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsPolygonItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsPolygonItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsPolygonItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsPolygonItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsPolygonItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsPolygonItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsPolygonItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsPolygonItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsPolygonItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsPolygonItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsPolygonItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsPolygonItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsPolygonItem*)(self) )->virtualbase_itemChange(change, value);
}

void QGraphicsPolygonItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPolygonItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPolygonItem*>( (QGraphicsPolygonItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsPolygonItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPolygonItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPolygonItem*>( (QGraphicsPolygonItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsPolygonItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPolygonItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPolygonItem*>( (QGraphicsPolygonItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsPolygonItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPolygonItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPolygonItem*>( (QGraphicsPolygonItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsPolygonItem_delete(QGraphicsPolygonItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsLineItem final : public QGraphicsLineItem {
	struct QGraphicsLineItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsLineItem(struct QGraphicsLineItem_VTable* vtbl): QGraphicsLineItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLineItem(struct QGraphicsLineItem_VTable* vtbl, const QLineF& line): QGraphicsLineItem(line), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLineItem(struct QGraphicsLineItem_VTable* vtbl, qreal x1, qreal y1, qreal x2, qreal y2): QGraphicsLineItem(x1, y1, x2, y2), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLineItem(struct QGraphicsLineItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsLineItem(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLineItem(struct QGraphicsLineItem_VTable* vtbl, const QLineF& line, QGraphicsItem* parent): QGraphicsLineItem(line, parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLineItem(struct QGraphicsLineItem_VTable* vtbl, qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem* parent): QGraphicsLineItem(x1, y1, x2, y2, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsLineItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsLineItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsLineItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsLineItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsLineItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsLineItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsLineItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsLineItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsLineItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsLineItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsLineItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsLineItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsLineItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsLineItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsLineItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsLineItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsLineItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsLineItem::setExtension(extension, variant);
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

		QGraphicsLineItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsLineItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsLineItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsLineItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsLineItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsLineItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsLineItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsLineItem::collidesWithPath(path, mode);
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

		return QGraphicsLineItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsLineItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsLineItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsLineItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsLineItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsLineItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsLineItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsLineItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsLineItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsLineItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsLineItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsLineItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsLineItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsLineItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsLineItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsLineItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsLineItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsLineItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsLineItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsLineItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsLineItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsLineItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsLineItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsLineItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsLineItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsLineItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsLineItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsLineItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsLineItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsLineItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsLineItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsLineItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsLineItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsLineItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsLineItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsLineItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsLineItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsLineItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsLineItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsLineItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsLineItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsLineItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsLineItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsLineItem::itemChange(change, value);
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

		return new QVariant(QGraphicsLineItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsLineItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsLineItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsLineItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsLineItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsLineItem* QGraphicsLineItem_new(struct QGraphicsLineItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsLineItem(vtbl);
}

QGraphicsLineItem* QGraphicsLineItem_new2(struct QGraphicsLineItem_VTable* vtbl, QLineF* line) {
	return new MiqtVirtualQGraphicsLineItem(vtbl, *line);
}

QGraphicsLineItem* QGraphicsLineItem_new3(struct QGraphicsLineItem_VTable* vtbl, double x1, double y1, double x2, double y2) {
	return new MiqtVirtualQGraphicsLineItem(vtbl, static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2));
}

QGraphicsLineItem* QGraphicsLineItem_new4(struct QGraphicsLineItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsLineItem(vtbl, parent);
}

QGraphicsLineItem* QGraphicsLineItem_new5(struct QGraphicsLineItem_VTable* vtbl, QLineF* line, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsLineItem(vtbl, *line, parent);
}

QGraphicsLineItem* QGraphicsLineItem_new6(struct QGraphicsLineItem_VTable* vtbl, double x1, double y1, double x2, double y2, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsLineItem(vtbl, static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2), parent);
}

void QGraphicsLineItem_virtbase(QGraphicsLineItem* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QPen* QGraphicsLineItem_pen(const QGraphicsLineItem* self) {
	return new QPen(self->pen());
}

void QGraphicsLineItem_setPen(QGraphicsLineItem* self, QPen* pen) {
	self->setPen(*pen);
}

QLineF* QGraphicsLineItem_line(const QGraphicsLineItem* self) {
	return new QLineF(self->line());
}

void QGraphicsLineItem_setLine(QGraphicsLineItem* self, QLineF* line) {
	self->setLine(*line);
}

void QGraphicsLineItem_setLine2(QGraphicsLineItem* self, double x1, double y1, double x2, double y2) {
	self->setLine(static_cast<qreal>(x1), static_cast<qreal>(y1), static_cast<qreal>(x2), static_cast<qreal>(y2));
}

QRectF* QGraphicsLineItem_boundingRect(const QGraphicsLineItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsLineItem_shape(const QGraphicsLineItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsLineItem_contains(const QGraphicsLineItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsLineItem_paint(QGraphicsLineItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsLineItem_isObscuredBy(const QGraphicsLineItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsLineItem_opaqueArea(const QGraphicsLineItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsLineItem_type(const QGraphicsLineItem* self) {
	return self->type();
}

QRectF* QGraphicsLineItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsLineItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_shape();
}

bool QGraphicsLineItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsLineItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsLineItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsLineItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsLineItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_type();
}

bool QGraphicsLineItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsLineItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsLineItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsLineItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsLineItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsLineItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsLineItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsLineItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsLineItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsLineItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsLineItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsLineItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsLineItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsLineItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsLineItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsLineItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsLineItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsLineItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsLineItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsLineItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsLineItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsLineItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsLineItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsLineItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsLineItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsLineItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsLineItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsLineItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsLineItem*)(self) )->virtualbase_itemChange(change, value);
}

void QGraphicsLineItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsLineItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsLineItem*>( (QGraphicsLineItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsLineItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsLineItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsLineItem*>( (QGraphicsLineItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsLineItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsLineItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsLineItem*>( (QGraphicsLineItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsLineItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsLineItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsLineItem*>( (QGraphicsLineItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsLineItem_delete(QGraphicsLineItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsPixmapItem final : public QGraphicsPixmapItem {
	struct QGraphicsPixmapItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsPixmapItem(struct QGraphicsPixmapItem_VTable* vtbl): QGraphicsPixmapItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsPixmapItem(struct QGraphicsPixmapItem_VTable* vtbl, const QPixmap& pixmap): QGraphicsPixmapItem(pixmap), vtbl(vtbl) {};
	MiqtVirtualQGraphicsPixmapItem(struct QGraphicsPixmapItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsPixmapItem(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsPixmapItem(struct QGraphicsPixmapItem_VTable* vtbl, const QPixmap& pixmap, QGraphicsItem* parent): QGraphicsPixmapItem(pixmap, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsPixmapItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsPixmapItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsPixmapItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsPixmapItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsPixmapItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsPixmapItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsPixmapItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsPixmapItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsPixmapItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsPixmapItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsPixmapItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsPixmapItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsPixmapItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsPixmapItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsPixmapItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsPixmapItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsPixmapItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsPixmapItem::setExtension(extension, variant);
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

		QGraphicsPixmapItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsPixmapItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsPixmapItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsPixmapItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsPixmapItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsPixmapItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsPixmapItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsPixmapItem::collidesWithPath(path, mode);
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

		return QGraphicsPixmapItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsPixmapItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsPixmapItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsPixmapItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsPixmapItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsPixmapItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsPixmapItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsPixmapItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPixmapItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsPixmapItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPixmapItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsPixmapItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPixmapItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsPixmapItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsPixmapItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsPixmapItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsPixmapItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsPixmapItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsPixmapItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsPixmapItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPixmapItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsPixmapItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPixmapItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsPixmapItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsPixmapItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsPixmapItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsPixmapItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsPixmapItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsPixmapItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsPixmapItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPixmapItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsPixmapItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPixmapItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsPixmapItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPixmapItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsPixmapItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsPixmapItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsPixmapItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsPixmapItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsPixmapItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsPixmapItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsPixmapItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsPixmapItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsPixmapItem::itemChange(change, value);
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

		return new QVariant(QGraphicsPixmapItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsPixmapItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPixmapItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPixmapItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsPixmapItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsPixmapItem* QGraphicsPixmapItem_new(struct QGraphicsPixmapItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsPixmapItem(vtbl);
}

QGraphicsPixmapItem* QGraphicsPixmapItem_new2(struct QGraphicsPixmapItem_VTable* vtbl, QPixmap* pixmap) {
	return new MiqtVirtualQGraphicsPixmapItem(vtbl, *pixmap);
}

QGraphicsPixmapItem* QGraphicsPixmapItem_new3(struct QGraphicsPixmapItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsPixmapItem(vtbl, parent);
}

QGraphicsPixmapItem* QGraphicsPixmapItem_new4(struct QGraphicsPixmapItem_VTable* vtbl, QPixmap* pixmap, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsPixmapItem(vtbl, *pixmap, parent);
}

void QGraphicsPixmapItem_virtbase(QGraphicsPixmapItem* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

QPixmap* QGraphicsPixmapItem_pixmap(const QGraphicsPixmapItem* self) {
	return new QPixmap(self->pixmap());
}

void QGraphicsPixmapItem_setPixmap(QGraphicsPixmapItem* self, QPixmap* pixmap) {
	self->setPixmap(*pixmap);
}

int QGraphicsPixmapItem_transformationMode(const QGraphicsPixmapItem* self) {
	Qt::TransformationMode _ret = self->transformationMode();
	return static_cast<int>(_ret);
}

void QGraphicsPixmapItem_setTransformationMode(QGraphicsPixmapItem* self, int mode) {
	self->setTransformationMode(static_cast<Qt::TransformationMode>(mode));
}

QPointF* QGraphicsPixmapItem_offset(const QGraphicsPixmapItem* self) {
	return new QPointF(self->offset());
}

void QGraphicsPixmapItem_setOffset(QGraphicsPixmapItem* self, QPointF* offset) {
	self->setOffset(*offset);
}

void QGraphicsPixmapItem_setOffset2(QGraphicsPixmapItem* self, double x, double y) {
	self->setOffset(static_cast<qreal>(x), static_cast<qreal>(y));
}

QRectF* QGraphicsPixmapItem_boundingRect(const QGraphicsPixmapItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsPixmapItem_shape(const QGraphicsPixmapItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsPixmapItem_contains(const QGraphicsPixmapItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsPixmapItem_paint(QGraphicsPixmapItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsPixmapItem_isObscuredBy(const QGraphicsPixmapItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsPixmapItem_opaqueArea(const QGraphicsPixmapItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsPixmapItem_type(const QGraphicsPixmapItem* self) {
	return self->type();
}

int QGraphicsPixmapItem_shapeMode(const QGraphicsPixmapItem* self) {
	QGraphicsPixmapItem::ShapeMode _ret = self->shapeMode();
	return static_cast<int>(_ret);
}

void QGraphicsPixmapItem_setShapeMode(QGraphicsPixmapItem* self, int mode) {
	self->setShapeMode(static_cast<QGraphicsPixmapItem::ShapeMode>(mode));
}

QRectF* QGraphicsPixmapItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsPixmapItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_shape();
}

bool QGraphicsPixmapItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsPixmapItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsPixmapItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsPixmapItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsPixmapItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_type();
}

bool QGraphicsPixmapItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsPixmapItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsPixmapItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsPixmapItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsPixmapItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsPixmapItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsPixmapItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsPixmapItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsPixmapItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsPixmapItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsPixmapItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsPixmapItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsPixmapItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsPixmapItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsPixmapItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsPixmapItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsPixmapItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsPixmapItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsPixmapItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsPixmapItem*)(self) )->virtualbase_itemChange(change, value);
}

void QGraphicsPixmapItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPixmapItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPixmapItem*>( (QGraphicsPixmapItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsPixmapItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPixmapItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPixmapItem*>( (QGraphicsPixmapItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsPixmapItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPixmapItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPixmapItem*>( (QGraphicsPixmapItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsPixmapItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsPixmapItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsPixmapItem*>( (QGraphicsPixmapItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsPixmapItem_delete(QGraphicsPixmapItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsTextItem final : public QGraphicsTextItem {
	struct QGraphicsTextItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsTextItem(struct QGraphicsTextItem_VTable* vtbl): QGraphicsTextItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsTextItem(struct QGraphicsTextItem_VTable* vtbl, const QString& text): QGraphicsTextItem(text), vtbl(vtbl) {};
	MiqtVirtualQGraphicsTextItem(struct QGraphicsTextItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsTextItem(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsTextItem(struct QGraphicsTextItem_VTable* vtbl, const QString& text, QGraphicsItem* parent): QGraphicsTextItem(text, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsTextItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsTextItem::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsTextItem::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsTextItem::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsTextItem::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsTextItem::qt_metacall(param1, param2, param3);
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

		return QGraphicsTextItem::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsTextItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsTextItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsTextItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsTextItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsTextItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsTextItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsTextItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsTextItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsTextItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsTextItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsTextItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsTextItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsTextItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsTextItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsTextItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsTextItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsTextItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsTextItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsTextItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsTextItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsTextItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsTextItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsTextItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsTextItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsTextItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsTextItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsTextItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsTextItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsTextItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsTextItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsTextItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsTextItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsTextItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsTextItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsTextItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsTextItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsTextItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsTextItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsTextItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsTextItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsTextItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsTextItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsTextItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsTextItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsTextItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsTextItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsTextItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsTextItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsTextItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsTextItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsTextItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsTextItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsTextItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsTextItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsTextItem::setExtension(extension, variant);
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

		QGraphicsTextItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsTextItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsTextItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* ev) override {
		if (vtbl->event == 0) {
			return QGraphicsTextItem::event(ev);
		}

		QEvent* sigval1 = ev;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* ev) {

		return QGraphicsTextItem::event(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsTextItem::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsTextItem::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsTextItem::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsTextItem::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsTextItem::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsTextItem::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsTextItem::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsTextItem::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsTextItem::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsTextItem::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsTextItem::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsTextItem::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsTextItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsTextItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsTextItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsTextItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsTextItem::collidesWithPath(path, mode);
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

		return QGraphicsTextItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsTextItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsTextItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsTextItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsTextItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsTextItem::itemChange(change, value);
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

		return new QVariant(QGraphicsTextItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsTextItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend QObject* QGraphicsTextItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsTextItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsTextItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsTextItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
	friend void QGraphicsTextItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsTextItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsTextItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsTextItem* QGraphicsTextItem_new(struct QGraphicsTextItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsTextItem(vtbl);
}

QGraphicsTextItem* QGraphicsTextItem_new2(struct QGraphicsTextItem_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQGraphicsTextItem(vtbl, text_QString);
}

QGraphicsTextItem* QGraphicsTextItem_new3(struct QGraphicsTextItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsTextItem(vtbl, parent);
}

QGraphicsTextItem* QGraphicsTextItem_new4(struct QGraphicsTextItem_VTable* vtbl, struct miqt_string text, QGraphicsItem* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQGraphicsTextItem(vtbl, text_QString, parent);
}

void QGraphicsTextItem_virtbase(QGraphicsTextItem* src, QGraphicsObject** outptr_QGraphicsObject) {
	*outptr_QGraphicsObject = static_cast<QGraphicsObject*>(src);
}

QMetaObject* QGraphicsTextItem_metaObject(const QGraphicsTextItem* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsTextItem_metacast(QGraphicsTextItem* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsTextItem_metacall(QGraphicsTextItem* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsTextItem_tr(const char* s) {
	QString _ret = QGraphicsTextItem::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTextItem_toHtml(const QGraphicsTextItem* self) {
	QString _ret = self->toHtml();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsTextItem_setHtml(QGraphicsTextItem* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

struct miqt_string QGraphicsTextItem_toPlainText(const QGraphicsTextItem* self) {
	QString _ret = self->toPlainText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsTextItem_setPlainText(QGraphicsTextItem* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setPlainText(text_QString);
}

QFont* QGraphicsTextItem_font(const QGraphicsTextItem* self) {
	return new QFont(self->font());
}

void QGraphicsTextItem_setFont(QGraphicsTextItem* self, QFont* font) {
	self->setFont(*font);
}

void QGraphicsTextItem_setDefaultTextColor(QGraphicsTextItem* self, QColor* c) {
	self->setDefaultTextColor(*c);
}

QColor* QGraphicsTextItem_defaultTextColor(const QGraphicsTextItem* self) {
	return new QColor(self->defaultTextColor());
}

QRectF* QGraphicsTextItem_boundingRect(const QGraphicsTextItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsTextItem_shape(const QGraphicsTextItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsTextItem_contains(const QGraphicsTextItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsTextItem_paint(QGraphicsTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsTextItem_isObscuredBy(const QGraphicsTextItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsTextItem_opaqueArea(const QGraphicsTextItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsTextItem_type(const QGraphicsTextItem* self) {
	return self->type();
}

void QGraphicsTextItem_setTextWidth(QGraphicsTextItem* self, double width) {
	self->setTextWidth(static_cast<qreal>(width));
}

double QGraphicsTextItem_textWidth(const QGraphicsTextItem* self) {
	qreal _ret = self->textWidth();
	return static_cast<double>(_ret);
}

void QGraphicsTextItem_adjustSize(QGraphicsTextItem* self) {
	self->adjustSize();
}

void QGraphicsTextItem_setDocument(QGraphicsTextItem* self, QTextDocument* document) {
	self->setDocument(document);
}

QTextDocument* QGraphicsTextItem_document(const QGraphicsTextItem* self) {
	return self->document();
}

void QGraphicsTextItem_setTextInteractionFlags(QGraphicsTextItem* self, int flags) {
	self->setTextInteractionFlags(static_cast<Qt::TextInteractionFlags>(flags));
}

int QGraphicsTextItem_textInteractionFlags(const QGraphicsTextItem* self) {
	Qt::TextInteractionFlags _ret = self->textInteractionFlags();
	return static_cast<int>(_ret);
}

void QGraphicsTextItem_setTabChangesFocus(QGraphicsTextItem* self, bool b) {
	self->setTabChangesFocus(b);
}

bool QGraphicsTextItem_tabChangesFocus(const QGraphicsTextItem* self) {
	return self->tabChangesFocus();
}

void QGraphicsTextItem_setOpenExternalLinks(QGraphicsTextItem* self, bool open) {
	self->setOpenExternalLinks(open);
}

bool QGraphicsTextItem_openExternalLinks(const QGraphicsTextItem* self) {
	return self->openExternalLinks();
}

void QGraphicsTextItem_setTextCursor(QGraphicsTextItem* self, QTextCursor* cursor) {
	self->setTextCursor(*cursor);
}

QTextCursor* QGraphicsTextItem_textCursor(const QGraphicsTextItem* self) {
	return new QTextCursor(self->textCursor());
}

void QGraphicsTextItem_linkActivated(QGraphicsTextItem* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->linkActivated(param1_QString);
}

void QGraphicsTextItem_connect_linkActivated(QGraphicsTextItem* self, intptr_t slot) {
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
			miqt_exec_callback_QGraphicsTextItem_linkActivated(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsTextItem_linkActivated_release(slot); }
	};
	MiqtVirtualQGraphicsTextItem::connect(self, static_cast<void (QGraphicsTextItem::*)(const QString&)>(&QGraphicsTextItem::linkActivated), self, caller{slot});
}

void QGraphicsTextItem_linkHovered(QGraphicsTextItem* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->linkHovered(param1_QString);
}

void QGraphicsTextItem_connect_linkHovered(QGraphicsTextItem* self, intptr_t slot) {
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
			miqt_exec_callback_QGraphicsTextItem_linkHovered(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsTextItem_linkHovered_release(slot); }
	};
	MiqtVirtualQGraphicsTextItem::connect(self, static_cast<void (QGraphicsTextItem::*)(const QString&)>(&QGraphicsTextItem::linkHovered), self, caller{slot});
}

struct miqt_string QGraphicsTextItem_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsTextItem::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTextItem_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsTextItem::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsTextItem_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_metaObject();
}

void* QGraphicsTextItem_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsTextItem_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRectF* QGraphicsTextItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsTextItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_shape();
}

bool QGraphicsTextItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsTextItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsTextItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsTextItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsTextItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_type();
}

bool QGraphicsTextItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsTextItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsTextItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsTextItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsTextItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsTextItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsTextItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsTextItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsTextItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsTextItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsTextItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsTextItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsTextItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsTextItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsTextItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_inputMethodEvent(event);
}

void QGraphicsTextItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsTextItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsTextItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

QVariant* QGraphicsTextItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_inputMethodQuery(query);
}

bool QGraphicsTextItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsTextItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsTextItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_extension(variant);
}

bool QGraphicsTextItem_virtualbase_event(void* self, QEvent* ev) {
	return ( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_event(ev);
}

bool QGraphicsTextItem_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsTextItem_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsTextItem_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsTextItem_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsTextItem_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsTextItem_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_disconnectNotify(signal);
}

void QGraphicsTextItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsTextItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsTextItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsTextItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

void QGraphicsTextItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_wheelEvent(event);
}

QVariant* QGraphicsTextItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsTextItem*)(self) )->virtualbase_itemChange(change, value);
}

const QMetaObject* QGraphicsTextItem_staticMetaObject() { return &QGraphicsTextItem::staticMetaObject; }
void QGraphicsTextItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

QObject* QGraphicsTextItem_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsTextItem_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsTextItem_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsTextItem_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsTextItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsTextItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsTextItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsTextItem*>( (QGraphicsTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsTextItem_delete(QGraphicsTextItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsSimpleTextItem final : public QGraphicsSimpleTextItem {
	struct QGraphicsSimpleTextItem_VTable* vtbl;
public:

	MiqtVirtualQGraphicsSimpleTextItem(struct QGraphicsSimpleTextItem_VTable* vtbl): QGraphicsSimpleTextItem(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsSimpleTextItem(struct QGraphicsSimpleTextItem_VTable* vtbl, const QString& text): QGraphicsSimpleTextItem(text), vtbl(vtbl) {};
	MiqtVirtualQGraphicsSimpleTextItem(struct QGraphicsSimpleTextItem_VTable* vtbl, QGraphicsItem* parent): QGraphicsSimpleTextItem(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsSimpleTextItem(struct QGraphicsSimpleTextItem_VTable* vtbl, const QString& text, QGraphicsItem* parent): QGraphicsSimpleTextItem(text, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsSimpleTextItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsSimpleTextItem::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsSimpleTextItem::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsSimpleTextItem::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsSimpleTextItem::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsSimpleTextItem::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsSimpleTextItem::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsSimpleTextItem::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsSimpleTextItem::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsSimpleTextItem::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsSimpleTextItem::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsSimpleTextItem::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsSimpleTextItem::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsSimpleTextItem::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsSimpleTextItem::type();

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsSimpleTextItem::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsSimpleTextItem::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsSimpleTextItem::setExtension(extension, variant);
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

		QGraphicsSimpleTextItem::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsSimpleTextItem::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsSimpleTextItem::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsSimpleTextItem::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsSimpleTextItem::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsSimpleTextItem::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsSimpleTextItem::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsSimpleTextItem::collidesWithPath(path, mode);
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

		return QGraphicsSimpleTextItem::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsSimpleTextItem::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsSimpleTextItem::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsSimpleTextItem::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsSimpleTextItem::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsSimpleTextItem::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsSimpleTextItem::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsSimpleTextItem::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsSimpleTextItem::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsSimpleTextItem::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsSimpleTextItem::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsSimpleTextItem::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsSimpleTextItem::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsSimpleTextItem::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsSimpleTextItem::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsSimpleTextItem::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsSimpleTextItem::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsSimpleTextItem::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsSimpleTextItem::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsSimpleTextItem::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsSimpleTextItem::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsSimpleTextItem::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsSimpleTextItem::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsSimpleTextItem::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsSimpleTextItem::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsSimpleTextItem::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsSimpleTextItem::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsSimpleTextItem::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsSimpleTextItem::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsSimpleTextItem::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsSimpleTextItem::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsSimpleTextItem::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsSimpleTextItem::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsSimpleTextItem::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsSimpleTextItem::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsSimpleTextItem::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsSimpleTextItem::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsSimpleTextItem::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsSimpleTextItem::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsSimpleTextItem::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsSimpleTextItem::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsSimpleTextItem::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsSimpleTextItem::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsSimpleTextItem::itemChange(change, value);
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

		return new QVariant(QGraphicsSimpleTextItem::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsSimpleTextItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsSimpleTextItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsSimpleTextItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsSimpleTextItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new(struct QGraphicsSimpleTextItem_VTable* vtbl) {
	return new MiqtVirtualQGraphicsSimpleTextItem(vtbl);
}

QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new2(struct QGraphicsSimpleTextItem_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQGraphicsSimpleTextItem(vtbl, text_QString);
}

QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new3(struct QGraphicsSimpleTextItem_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsSimpleTextItem(vtbl, parent);
}

QGraphicsSimpleTextItem* QGraphicsSimpleTextItem_new4(struct QGraphicsSimpleTextItem_VTable* vtbl, struct miqt_string text, QGraphicsItem* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQGraphicsSimpleTextItem(vtbl, text_QString, parent);
}

void QGraphicsSimpleTextItem_virtbase(QGraphicsSimpleTextItem* src, QAbstractGraphicsShapeItem** outptr_QAbstractGraphicsShapeItem) {
	*outptr_QAbstractGraphicsShapeItem = static_cast<QAbstractGraphicsShapeItem*>(src);
}

void QGraphicsSimpleTextItem_setText(QGraphicsSimpleTextItem* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

struct miqt_string QGraphicsSimpleTextItem_text(const QGraphicsSimpleTextItem* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsSimpleTextItem_setFont(QGraphicsSimpleTextItem* self, QFont* font) {
	self->setFont(*font);
}

QFont* QGraphicsSimpleTextItem_font(const QGraphicsSimpleTextItem* self) {
	return new QFont(self->font());
}

QRectF* QGraphicsSimpleTextItem_boundingRect(const QGraphicsSimpleTextItem* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsSimpleTextItem_shape(const QGraphicsSimpleTextItem* self) {
	return new QPainterPath(self->shape());
}

bool QGraphicsSimpleTextItem_contains(const QGraphicsSimpleTextItem* self, QPointF* point) {
	return self->contains(*point);
}

void QGraphicsSimpleTextItem_paint(QGraphicsSimpleTextItem* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsSimpleTextItem_isObscuredBy(const QGraphicsSimpleTextItem* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsSimpleTextItem_opaqueArea(const QGraphicsSimpleTextItem* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsSimpleTextItem_type(const QGraphicsSimpleTextItem* self) {
	return self->type();
}

QRectF* QGraphicsSimpleTextItem_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsSimpleTextItem_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_shape();
}

bool QGraphicsSimpleTextItem_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_contains(point);
}

void QGraphicsSimpleTextItem_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsSimpleTextItem_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsSimpleTextItem_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsSimpleTextItem_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_type();
}

bool QGraphicsSimpleTextItem_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsSimpleTextItem_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsSimpleTextItem_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_extension(variant);
}

void QGraphicsSimpleTextItem_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsSimpleTextItem_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsSimpleTextItem_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsSimpleTextItem_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsSimpleTextItem_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsSimpleTextItem_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsSimpleTextItem_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsSimpleTextItem_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsSimpleTextItem*)(self) )->virtualbase_itemChange(change, value);
}

void QGraphicsSimpleTextItem_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsSimpleTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsSimpleTextItem*>( (QGraphicsSimpleTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsSimpleTextItem_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsSimpleTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsSimpleTextItem*>( (QGraphicsSimpleTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsSimpleTextItem_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsSimpleTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsSimpleTextItem*>( (QGraphicsSimpleTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsSimpleTextItem_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsSimpleTextItem* self_cast = dynamic_cast<MiqtVirtualQGraphicsSimpleTextItem*>( (QGraphicsSimpleTextItem*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsSimpleTextItem_delete(QGraphicsSimpleTextItem* self) {
	delete self;
}

class MiqtVirtualQGraphicsItemGroup final : public QGraphicsItemGroup {
	struct QGraphicsItemGroup_VTable* vtbl;
public:

	MiqtVirtualQGraphicsItemGroup(struct QGraphicsItemGroup_VTable* vtbl): QGraphicsItemGroup(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsItemGroup(struct QGraphicsItemGroup_VTable* vtbl, QGraphicsItem* parent): QGraphicsItemGroup(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsItemGroup() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsItemGroup::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsItemGroup::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsItemGroup::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsItemGroup::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsItemGroup::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsItemGroup::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsItemGroup::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsItemGroup::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsItemGroup::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsItemGroup::type();

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsItemGroup::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsItemGroup::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsItemGroup::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsItemGroup::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsItemGroup::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsItemGroup::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsItemGroup::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsItemGroup::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsItemGroup::collidesWithPath(path, mode);
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

		return QGraphicsItemGroup::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsItemGroup::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsItemGroup::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsItemGroup::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsItemGroup::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsItemGroup::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsItemGroup::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsItemGroup::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItemGroup::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsItemGroup::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItemGroup::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsItemGroup::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItemGroup::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsItemGroup::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsItemGroup::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsItemGroup::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsItemGroup::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsItemGroup::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsItemGroup::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsItemGroup::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsItemGroup::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsItemGroup::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsItemGroup::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsItemGroup::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsItemGroup::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsItemGroup::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsItemGroup::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsItemGroup::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsItemGroup::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsItemGroup::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItemGroup::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsItemGroup::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItemGroup::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsItemGroup::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItemGroup::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsItemGroup::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsItemGroup::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsItemGroup::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsItemGroup::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsItemGroup::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsItemGroup::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsItemGroup::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsItemGroup::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsItemGroup::itemChange(change, value);
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

		return new QVariant(QGraphicsItemGroup::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsItemGroup::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsItemGroup::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsItemGroup::setExtension(extension, variant);
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

		QGraphicsItemGroup::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsItemGroup::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsItemGroup::extension(*variant));

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsItemGroup_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsItemGroup_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsItemGroup_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsItemGroup_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
};

QGraphicsItemGroup* QGraphicsItemGroup_new(struct QGraphicsItemGroup_VTable* vtbl) {
	return new MiqtVirtualQGraphicsItemGroup(vtbl);
}

QGraphicsItemGroup* QGraphicsItemGroup_new2(struct QGraphicsItemGroup_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsItemGroup(vtbl, parent);
}

void QGraphicsItemGroup_virtbase(QGraphicsItemGroup* src, QGraphicsItem** outptr_QGraphicsItem) {
	*outptr_QGraphicsItem = static_cast<QGraphicsItem*>(src);
}

void QGraphicsItemGroup_addToGroup(QGraphicsItemGroup* self, QGraphicsItem* item) {
	self->addToGroup(item);
}

void QGraphicsItemGroup_removeFromGroup(QGraphicsItemGroup* self, QGraphicsItem* item) {
	self->removeFromGroup(item);
}

QRectF* QGraphicsItemGroup_boundingRect(const QGraphicsItemGroup* self) {
	return new QRectF(self->boundingRect());
}

void QGraphicsItemGroup_paint(QGraphicsItemGroup* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

bool QGraphicsItemGroup_isObscuredBy(const QGraphicsItemGroup* self, QGraphicsItem* item) {
	return self->isObscuredBy(item);
}

QPainterPath* QGraphicsItemGroup_opaqueArea(const QGraphicsItemGroup* self) {
	return new QPainterPath(self->opaqueArea());
}

int QGraphicsItemGroup_type(const QGraphicsItemGroup* self) {
	return self->type();
}

QRectF* QGraphicsItemGroup_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_boundingRect();
}

void QGraphicsItemGroup_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_paint(painter, option, widget);
}

bool QGraphicsItemGroup_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsItemGroup_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_opaqueArea();
}

int QGraphicsItemGroup_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_type();
}

void QGraphicsItemGroup_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_advance(phase);
}

QPainterPath* QGraphicsItemGroup_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_shape();
}

bool QGraphicsItemGroup_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_contains(point);
}

bool QGraphicsItemGroup_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsItemGroup_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsItemGroup_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

bool QGraphicsItemGroup_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_sceneEvent(event);
}

void QGraphicsItemGroup_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsItemGroup_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsItemGroup_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsItemGroup_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsItemGroup_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsItemGroup_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_focusInEvent(event);
}

void QGraphicsItemGroup_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsItemGroup_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsItemGroup_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsItemGroup_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsItemGroup_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsItemGroup_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsItemGroup_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsItemGroup_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsItemGroup_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsItemGroup_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsItemGroup_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsItemGroup_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsItemGroup_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_inputMethodQuery(query);
}

QVariant* QGraphicsItemGroup_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_itemChange(change, value);
}

bool QGraphicsItemGroup_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsItemGroup_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsItemGroup_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsItemGroup*)(self) )->virtualbase_extension(variant);
}

void QGraphicsItemGroup_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItemGroup* self_cast = dynamic_cast<MiqtVirtualQGraphicsItemGroup*>( (QGraphicsItemGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGraphicsItemGroup_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItemGroup* self_cast = dynamic_cast<MiqtVirtualQGraphicsItemGroup*>( (QGraphicsItemGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsItemGroup_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItemGroup* self_cast = dynamic_cast<MiqtVirtualQGraphicsItemGroup*>( (QGraphicsItemGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsItemGroup_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsItemGroup* self_cast = dynamic_cast<MiqtVirtualQGraphicsItemGroup*>( (QGraphicsItemGroup*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsItemGroup_delete(QGraphicsItemGroup* self) {
	delete self;
}

