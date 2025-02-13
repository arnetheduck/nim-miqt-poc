#include <QChildEvent>
#include <QCloseEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QGraphicsItem>
#include <QGraphicsLayout>
#include <QGraphicsLayoutItem>
#include <QGraphicsObject>
#include <QGraphicsSceneContextMenuEvent>
#include <QGraphicsSceneDragDropEvent>
#include <QGraphicsSceneHoverEvent>
#include <QGraphicsSceneMouseEvent>
#include <QGraphicsSceneMoveEvent>
#include <QGraphicsSceneResizeEvent>
#include <QGraphicsSceneWheelEvent>
#include <QGraphicsWidget>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QKeySequence>
#include <QMarginsF>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPainterPath>
#include <QPalette>
#include <QPointF>
#include <QRectF>
#include <QShowEvent>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QStyleOption>
#include <QStyleOptionGraphicsItem>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qgraphicswidget.h>
#include "gen_qgraphicswidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QGraphicsWidget_geometryChanged(intptr_t);
void miqt_exec_callback_QGraphicsWidget_geometryChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsWidget_layoutChanged(intptr_t);
void miqt_exec_callback_QGraphicsWidget_layoutChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGraphicsWidget final : public QGraphicsWidget {
	struct QGraphicsWidget_VTable* vtbl;
public:

	MiqtVirtualQGraphicsWidget(struct QGraphicsWidget_VTable* vtbl): QGraphicsWidget(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsWidget(struct QGraphicsWidget_VTable* vtbl, QGraphicsItem* parent): QGraphicsWidget(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsWidget(struct QGraphicsWidget_VTable* vtbl, QGraphicsItem* parent, Qt::WindowFlags wFlags): QGraphicsWidget(parent, wFlags), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsWidget::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsWidget::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsWidget::qt_metacall(param1, param2, param3);
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

		return QGraphicsWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsWidget::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRectF* rect) {

		QGraphicsWidget::setGeometry(*rect);

	}

	// Subclass to allow providing a Go implementation
	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsWidget::getContentsMargins(left, top, right, bottom);
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

		QGraphicsWidget::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));

	}

	// Subclass to allow providing a Go implementation
	virtual int type() const override {
		if (vtbl->type == 0) {
			return QGraphicsWidget::type();
		}


		int callback_return_value = vtbl->type(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_type() const {

		return QGraphicsWidget::type();

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paint == 0) {
			QGraphicsWidget::paint(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsWidget::paint(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintWindowFrame(QPainter* painter, const QStyleOptionGraphicsItem* option, QWidget* widget) override {
		if (vtbl->paintWindowFrame == 0) {
			QGraphicsWidget::paintWindowFrame(painter, option, widget);
			return;
		}

		QPainter* sigval1 = painter;
		QStyleOptionGraphicsItem* sigval2 = (QStyleOptionGraphicsItem*) option;
		QWidget* sigval3 = widget;

		vtbl->paintWindowFrame(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintWindowFrame(QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {

		QGraphicsWidget::paintWindowFrame(painter, option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRect() const override {
		if (vtbl->boundingRect == 0) {
			return QGraphicsWidget::boundingRect();
		}


		QRectF* callback_return_value = vtbl->boundingRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRect() const {

		return new QRectF(QGraphicsWidget::boundingRect());

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath shape() const override {
		if (vtbl->shape == 0) {
			return QGraphicsWidget::shape();
		}


		QPainterPath* callback_return_value = vtbl->shape(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_shape() const {

		return new QPainterPath(QGraphicsWidget::shape());

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOption* option) const override {
		if (vtbl->initStyleOption == 0) {
			QGraphicsWidget::initStyleOption(option);
			return;
		}

		QStyleOption* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOption* option) const {

		QGraphicsWidget::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsWidget::sizeHint(which, constraint);
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

		return new QSizeF(QGraphicsWidget::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsWidget::updateGeometry();
			return;
		}


		vtbl->updateGeometry(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateGeometry() {

		QGraphicsWidget::updateGeometry();

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant itemChange(QGraphicsItem::GraphicsItemChange change, const QVariant& value) override {
		if (vtbl->itemChange == 0) {
			return QGraphicsWidget::itemChange(change, value);
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

		return new QVariant(QGraphicsWidget::itemChange(static_cast<QGraphicsItem::GraphicsItemChange>(change), *value));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant propertyChange(const QString& propertyName, const QVariant& value) override {
		if (vtbl->propertyChange == 0) {
			return QGraphicsWidget::propertyChange(propertyName, value);
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

		return new QVariant(QGraphicsWidget::propertyChange(propertyName_QString, *value));

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEvent(QEvent* event) override {
		if (vtbl->sceneEvent == 0) {
			return QGraphicsWidget::sceneEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->sceneEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEvent(QEvent* event) {

		return QGraphicsWidget::sceneEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool windowFrameEvent(QEvent* e) override {
		if (vtbl->windowFrameEvent == 0) {
			return QGraphicsWidget::windowFrameEvent(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->windowFrameEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_windowFrameEvent(QEvent* e) {

		return QGraphicsWidget::windowFrameEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::WindowFrameSection windowFrameSectionAt(const QPointF& pos) const override {
		if (vtbl->windowFrameSectionAt == 0) {
			return QGraphicsWidget::windowFrameSectionAt(pos);
		}

		const QPointF& pos_ret = pos;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&pos_ret);

		int callback_return_value = vtbl->windowFrameSectionAt(vtbl, this, sigval1);

		return static_cast<Qt::WindowFrameSection>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_windowFrameSectionAt(QPointF* pos) const {

		Qt::WindowFrameSection _ret = QGraphicsWidget::windowFrameSectionAt(*pos);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsWidget::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGraphicsWidget::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* event) {

		QGraphicsWidget::changeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGraphicsWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QGraphicsWidget::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGraphicsWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGraphicsWidget::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGraphicsWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QGraphicsWidget::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGraphicsWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGraphicsWidget::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGraphicsWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QGraphicsWidget::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QGraphicsSceneMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGraphicsWidget::moveEvent(event);
			return;
		}

		QGraphicsSceneMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QGraphicsSceneMoveEvent* event) {

		QGraphicsWidget::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void polishEvent() override {
		if (vtbl->polishEvent == 0) {
			QGraphicsWidget::polishEvent();
			return;
		}


		vtbl->polishEvent(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_polishEvent() {

		QGraphicsWidget::polishEvent();

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QGraphicsSceneResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGraphicsWidget::resizeEvent(event);
			return;
		}

		QGraphicsSceneResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QGraphicsSceneResizeEvent* event) {

		QGraphicsWidget::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGraphicsWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QGraphicsWidget::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverMoveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverMoveEvent == 0) {
			QGraphicsWidget::hoverMoveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverMoveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsWidget::hoverMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverLeaveEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverLeaveEvent == 0) {
			QGraphicsWidget::hoverLeaveEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverLeaveEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsWidget::hoverLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void grabMouseEvent(QEvent* event) override {
		if (vtbl->grabMouseEvent == 0) {
			QGraphicsWidget::grabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabMouseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_grabMouseEvent(QEvent* event) {

		QGraphicsWidget::grabMouseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void ungrabMouseEvent(QEvent* event) override {
		if (vtbl->ungrabMouseEvent == 0) {
			QGraphicsWidget::ungrabMouseEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabMouseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_ungrabMouseEvent(QEvent* event) {

		QGraphicsWidget::ungrabMouseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void grabKeyboardEvent(QEvent* event) override {
		if (vtbl->grabKeyboardEvent == 0) {
			QGraphicsWidget::grabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->grabKeyboardEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_grabKeyboardEvent(QEvent* event) {

		QGraphicsWidget::grabKeyboardEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void ungrabKeyboardEvent(QEvent* event) override {
		if (vtbl->ungrabKeyboardEvent == 0) {
			QGraphicsWidget::ungrabKeyboardEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->ungrabKeyboardEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_ungrabKeyboardEvent(QEvent* event) {

		QGraphicsWidget::ungrabKeyboardEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsWidget::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsWidget::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsWidget::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsWidget::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsWidget::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsWidget::disconnectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void advance(int phase) override {
		if (vtbl->advance == 0) {
			QGraphicsWidget::advance(phase);
			return;
		}

		int sigval1 = phase;

		vtbl->advance(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance(int phase) {

		QGraphicsWidget::advance(static_cast<int>(phase));

	}

	// Subclass to allow providing a Go implementation
	virtual bool contains(const QPointF& point) const override {
		if (vtbl->contains == 0) {
			return QGraphicsWidget::contains(point);
		}

		const QPointF& point_ret = point;
		// Cast returned reference into pointer
		QPointF* sigval1 = const_cast<QPointF*>(&point_ret);

		bool callback_return_value = vtbl->contains(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_contains(QPointF* point) const {

		return QGraphicsWidget::contains(*point);

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithItem(const QGraphicsItem* other, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithItem == 0) {
			return QGraphicsWidget::collidesWithItem(other, mode);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) other;
		Qt::ItemSelectionMode mode_ret = mode;
		int sigval2 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->collidesWithItem(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_collidesWithItem(QGraphicsItem* other, int mode) const {

		return QGraphicsWidget::collidesWithItem(other, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool collidesWithPath(const QPainterPath& path, Qt::ItemSelectionMode mode) const override {
		if (vtbl->collidesWithPath == 0) {
			return QGraphicsWidget::collidesWithPath(path, mode);
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

		return QGraphicsWidget::collidesWithPath(*path, static_cast<Qt::ItemSelectionMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isObscuredBy(const QGraphicsItem* item) const override {
		if (vtbl->isObscuredBy == 0) {
			return QGraphicsWidget::isObscuredBy(item);
		}

		QGraphicsItem* sigval1 = (QGraphicsItem*) item;

		bool callback_return_value = vtbl->isObscuredBy(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isObscuredBy(QGraphicsItem* item) const {

		return QGraphicsWidget::isObscuredBy(item);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainterPath opaqueArea() const override {
		if (vtbl->opaqueArea == 0) {
			return QGraphicsWidget::opaqueArea();
		}


		QPainterPath* callback_return_value = vtbl->opaqueArea(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainterPath* virtualbase_opaqueArea() const {

		return new QPainterPath(QGraphicsWidget::opaqueArea());

	}

	// Subclass to allow providing a Go implementation
	virtual bool sceneEventFilter(QGraphicsItem* watched, QEvent* event) override {
		if (vtbl->sceneEventFilter == 0) {
			return QGraphicsWidget::sceneEventFilter(watched, event);
		}

		QGraphicsItem* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->sceneEventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_sceneEventFilter(QGraphicsItem* watched, QEvent* event) {

		return QGraphicsWidget::sceneEventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QGraphicsSceneContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGraphicsWidget::contextMenuEvent(event);
			return;
		}

		QGraphicsSceneContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QGraphicsSceneContextMenuEvent* event) {

		QGraphicsWidget::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGraphicsWidget::dragEnterEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsWidget::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGraphicsWidget::dragLeaveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsWidget::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGraphicsWidget::dragMoveEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsWidget::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QGraphicsSceneDragDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGraphicsWidget::dropEvent(event);
			return;
		}

		QGraphicsSceneDragDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QGraphicsSceneDragDropEvent* event) {

		QGraphicsWidget::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hoverEnterEvent(QGraphicsSceneHoverEvent* event) override {
		if (vtbl->hoverEnterEvent == 0) {
			QGraphicsWidget::hoverEnterEvent(event);
			return;
		}

		QGraphicsSceneHoverEvent* sigval1 = event;

		vtbl->hoverEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hoverEnterEvent(QGraphicsSceneHoverEvent* event) {

		QGraphicsWidget::hoverEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGraphicsWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGraphicsWidget::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGraphicsWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGraphicsWidget::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGraphicsWidget::mousePressEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsWidget::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGraphicsWidget::mouseMoveEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsWidget::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGraphicsWidget::mouseReleaseEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsWidget::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGraphicsWidget::mouseDoubleClickEvent(event);
			return;
		}

		QGraphicsSceneMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QGraphicsSceneMouseEvent* event) {

		QGraphicsWidget::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QGraphicsSceneWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGraphicsWidget::wheelEvent(event);
			return;
		}

		QGraphicsSceneWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QGraphicsSceneWheelEvent* event) {

		QGraphicsWidget::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QGraphicsWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QGraphicsWidget::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGraphicsWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QGraphicsWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QGraphicsItem::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QGraphicsWidget::supportsExtension(extension);
		}

		QGraphicsItem::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QGraphicsWidget::supportsExtension(static_cast<QGraphicsItem::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual void setExtension(QGraphicsItem::Extension extension, const QVariant& variant) override {
		if (vtbl->setExtension == 0) {
			QGraphicsWidget::setExtension(extension, variant);
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

		QGraphicsWidget::setExtension(static_cast<QGraphicsItem::Extension>(extension), *variant);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(const QVariant& variant) const override {
		if (vtbl->extension == 0) {
			return QGraphicsWidget::extension(variant);
		}

		const QVariant& variant_ret = variant;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&variant_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(QVariant* variant) const {

		return new QVariant(QGraphicsWidget::extension(*variant));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QGraphicsWidget::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QGraphicsWidget::isEmpty();

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend QObject* QGraphicsWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGraphicsWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGraphicsWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
	friend void QGraphicsWidget_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsWidget_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsWidget_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
	friend void QGraphicsWidget_protectedbase_setGraphicsItem(bool* _dynamic_cast_ok, void* self, QGraphicsItem* item);
	friend void QGraphicsWidget_protectedbase_setOwnedByLayout(bool* _dynamic_cast_ok, void* self, bool ownedByLayout);
};

QGraphicsWidget* QGraphicsWidget_new(struct QGraphicsWidget_VTable* vtbl) {
	return new MiqtVirtualQGraphicsWidget(vtbl);
}

QGraphicsWidget* QGraphicsWidget_new2(struct QGraphicsWidget_VTable* vtbl, QGraphicsItem* parent) {
	return new MiqtVirtualQGraphicsWidget(vtbl, parent);
}

QGraphicsWidget* QGraphicsWidget_new3(struct QGraphicsWidget_VTable* vtbl, QGraphicsItem* parent, int wFlags) {
	return new MiqtVirtualQGraphicsWidget(vtbl, parent, static_cast<Qt::WindowFlags>(wFlags));
}

void QGraphicsWidget_virtbase(QGraphicsWidget* src, QGraphicsObject** outptr_QGraphicsObject, QGraphicsLayoutItem** outptr_QGraphicsLayoutItem) {
	*outptr_QGraphicsObject = static_cast<QGraphicsObject*>(src);
	*outptr_QGraphicsLayoutItem = static_cast<QGraphicsLayoutItem*>(src);
}

QMetaObject* QGraphicsWidget_metaObject(const QGraphicsWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsWidget_metacast(QGraphicsWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsWidget_metacall(QGraphicsWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsWidget_tr(const char* s) {
	QString _ret = QGraphicsWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QGraphicsLayout* QGraphicsWidget_layout(const QGraphicsWidget* self) {
	return self->layout();
}

void QGraphicsWidget_setLayout(QGraphicsWidget* self, QGraphicsLayout* layout) {
	self->setLayout(layout);
}

void QGraphicsWidget_adjustSize(QGraphicsWidget* self) {
	self->adjustSize();
}

int QGraphicsWidget_layoutDirection(const QGraphicsWidget* self) {
	Qt::LayoutDirection _ret = self->layoutDirection();
	return static_cast<int>(_ret);
}

void QGraphicsWidget_setLayoutDirection(QGraphicsWidget* self, int direction) {
	self->setLayoutDirection(static_cast<Qt::LayoutDirection>(direction));
}

void QGraphicsWidget_unsetLayoutDirection(QGraphicsWidget* self) {
	self->unsetLayoutDirection();
}

QStyle* QGraphicsWidget_style(const QGraphicsWidget* self) {
	return self->style();
}

void QGraphicsWidget_setStyle(QGraphicsWidget* self, QStyle* style) {
	self->setStyle(style);
}

QFont* QGraphicsWidget_font(const QGraphicsWidget* self) {
	return new QFont(self->font());
}

void QGraphicsWidget_setFont(QGraphicsWidget* self, QFont* font) {
	self->setFont(*font);
}

QPalette* QGraphicsWidget_palette(const QGraphicsWidget* self) {
	return new QPalette(self->palette());
}

void QGraphicsWidget_setPalette(QGraphicsWidget* self, QPalette* palette) {
	self->setPalette(*palette);
}

bool QGraphicsWidget_autoFillBackground(const QGraphicsWidget* self) {
	return self->autoFillBackground();
}

void QGraphicsWidget_setAutoFillBackground(QGraphicsWidget* self, bool enabled) {
	self->setAutoFillBackground(enabled);
}

void QGraphicsWidget_resize(QGraphicsWidget* self, QSizeF* size) {
	self->resize(*size);
}

void QGraphicsWidget_resize2(QGraphicsWidget* self, double w, double h) {
	self->resize(static_cast<qreal>(w), static_cast<qreal>(h));
}

QSizeF* QGraphicsWidget_size(const QGraphicsWidget* self) {
	return new QSizeF(self->size());
}

void QGraphicsWidget_setGeometry(QGraphicsWidget* self, QRectF* rect) {
	self->setGeometry(*rect);
}

void QGraphicsWidget_setGeometry2(QGraphicsWidget* self, double x, double y, double w, double h) {
	self->setGeometry(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QGraphicsWidget_rect(const QGraphicsWidget* self) {
	return new QRectF(self->rect());
}

void QGraphicsWidget_setContentsMargins(QGraphicsWidget* self, double left, double top, double right, double bottom) {
	self->setContentsMargins(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom));
}

void QGraphicsWidget_setContentsMarginsWithMargins(QGraphicsWidget* self, QMarginsF* margins) {
	self->setContentsMargins(*margins);
}

void QGraphicsWidget_getContentsMargins(const QGraphicsWidget* self, double* left, double* top, double* right, double* bottom) {
	self->getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsWidget_setWindowFrameMargins(QGraphicsWidget* self, double left, double top, double right, double bottom) {
	self->setWindowFrameMargins(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom));
}

void QGraphicsWidget_setWindowFrameMarginsWithMargins(QGraphicsWidget* self, QMarginsF* margins) {
	self->setWindowFrameMargins(*margins);
}

void QGraphicsWidget_getWindowFrameMargins(const QGraphicsWidget* self, double* left, double* top, double* right, double* bottom) {
	self->getWindowFrameMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));
}

void QGraphicsWidget_unsetWindowFrameMargins(QGraphicsWidget* self) {
	self->unsetWindowFrameMargins();
}

QRectF* QGraphicsWidget_windowFrameGeometry(const QGraphicsWidget* self) {
	return new QRectF(self->windowFrameGeometry());
}

QRectF* QGraphicsWidget_windowFrameRect(const QGraphicsWidget* self) {
	return new QRectF(self->windowFrameRect());
}

int QGraphicsWidget_windowFlags(const QGraphicsWidget* self) {
	Qt::WindowFlags _ret = self->windowFlags();
	return static_cast<int>(_ret);
}

int QGraphicsWidget_windowType(const QGraphicsWidget* self) {
	Qt::WindowType _ret = self->windowType();
	return static_cast<int>(_ret);
}

void QGraphicsWidget_setWindowFlags(QGraphicsWidget* self, int wFlags) {
	self->setWindowFlags(static_cast<Qt::WindowFlags>(wFlags));
}

bool QGraphicsWidget_isActiveWindow(const QGraphicsWidget* self) {
	return self->isActiveWindow();
}

void QGraphicsWidget_setWindowTitle(QGraphicsWidget* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setWindowTitle(title_QString);
}

struct miqt_string QGraphicsWidget_windowTitle(const QGraphicsWidget* self) {
	QString _ret = self->windowTitle();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QGraphicsWidget_focusPolicy(const QGraphicsWidget* self) {
	Qt::FocusPolicy _ret = self->focusPolicy();
	return static_cast<int>(_ret);
}

void QGraphicsWidget_setFocusPolicy(QGraphicsWidget* self, int policy) {
	self->setFocusPolicy(static_cast<Qt::FocusPolicy>(policy));
}

void QGraphicsWidget_setTabOrder(QGraphicsWidget* first, QGraphicsWidget* second) {
	QGraphicsWidget::setTabOrder(first, second);
}

QGraphicsWidget* QGraphicsWidget_focusWidget(const QGraphicsWidget* self) {
	return self->focusWidget();
}

int QGraphicsWidget_grabShortcut(QGraphicsWidget* self, QKeySequence* sequence) {
	return self->grabShortcut(*sequence);
}

void QGraphicsWidget_releaseShortcut(QGraphicsWidget* self, int id) {
	self->releaseShortcut(static_cast<int>(id));
}

void QGraphicsWidget_setShortcutEnabled(QGraphicsWidget* self, int id) {
	self->setShortcutEnabled(static_cast<int>(id));
}

void QGraphicsWidget_setShortcutAutoRepeat(QGraphicsWidget* self, int id) {
	self->setShortcutAutoRepeat(static_cast<int>(id));
}

void QGraphicsWidget_setAttribute(QGraphicsWidget* self, int attribute) {
	self->setAttribute(static_cast<Qt::WidgetAttribute>(attribute));
}

bool QGraphicsWidget_testAttribute(const QGraphicsWidget* self, int attribute) {
	return self->testAttribute(static_cast<Qt::WidgetAttribute>(attribute));
}

int QGraphicsWidget_type(const QGraphicsWidget* self) {
	return self->type();
}

void QGraphicsWidget_paint(QGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paint(painter, option, widget);
}

void QGraphicsWidget_paintWindowFrame(QGraphicsWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	self->paintWindowFrame(painter, option, widget);
}

QRectF* QGraphicsWidget_boundingRect(const QGraphicsWidget* self) {
	return new QRectF(self->boundingRect());
}

QPainterPath* QGraphicsWidget_shape(const QGraphicsWidget* self) {
	return new QPainterPath(self->shape());
}

void QGraphicsWidget_geometryChanged(QGraphicsWidget* self) {
	self->geometryChanged();
}

void QGraphicsWidget_connect_geometryChanged(QGraphicsWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsWidget_geometryChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWidget_geometryChanged_release(slot); }
	};
	MiqtVirtualQGraphicsWidget::connect(self, static_cast<void (QGraphicsWidget::*)()>(&QGraphicsWidget::geometryChanged), self, caller{slot});
}

void QGraphicsWidget_layoutChanged(QGraphicsWidget* self) {
	self->layoutChanged();
}

void QGraphicsWidget_connect_layoutChanged(QGraphicsWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsWidget_layoutChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsWidget_layoutChanged_release(slot); }
	};
	MiqtVirtualQGraphicsWidget::connect(self, static_cast<void (QGraphicsWidget::*)()>(&QGraphicsWidget::layoutChanged), self, caller{slot});
}

bool QGraphicsWidget_close(QGraphicsWidget* self) {
	return self->close();
}

struct miqt_string QGraphicsWidget_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QGraphicsWidget_grabShortcut2(QGraphicsWidget* self, QKeySequence* sequence, int context) {
	return self->grabShortcut(*sequence, static_cast<Qt::ShortcutContext>(context));
}

void QGraphicsWidget_setShortcutEnabled2(QGraphicsWidget* self, int id, bool enabled) {
	self->setShortcutEnabled(static_cast<int>(id), enabled);
}

void QGraphicsWidget_setShortcutAutoRepeat2(QGraphicsWidget* self, int id, bool enabled) {
	self->setShortcutAutoRepeat(static_cast<int>(id), enabled);
}

void QGraphicsWidget_setAttribute2(QGraphicsWidget* self, int attribute, bool on) {
	self->setAttribute(static_cast<Qt::WidgetAttribute>(attribute), on);
}

QMetaObject* QGraphicsWidget_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_metaObject();
}

void* QGraphicsWidget_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QGraphicsWidget_virtualbase_setGeometry(void* self, QRectF* rect) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_setGeometry(rect);
}

void QGraphicsWidget_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom) {
	( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_getContentsMargins(left, top, right, bottom);
}

int QGraphicsWidget_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_type();
}

void QGraphicsWidget_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_paint(painter, option, widget);
}

void QGraphicsWidget_virtualbase_paintWindowFrame(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_paintWindowFrame(painter, option, widget);
}

QRectF* QGraphicsWidget_virtualbase_boundingRect(const void* self) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_boundingRect();
}

QPainterPath* QGraphicsWidget_virtualbase_shape(const void* self) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_shape();
}

void QGraphicsWidget_virtualbase_initStyleOption(const void* self, QStyleOption* option) {
	( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_initStyleOption(option);
}

QSizeF* QGraphicsWidget_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_sizeHint(which, constraint);
}

void QGraphicsWidget_virtualbase_updateGeometry(void* self) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_updateGeometry();
}

QVariant* QGraphicsWidget_virtualbase_itemChange(void* self, int change, QVariant* value) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_itemChange(change, value);
}

QVariant* QGraphicsWidget_virtualbase_propertyChange(void* self, struct miqt_string propertyName, QVariant* value) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_propertyChange(propertyName, value);
}

bool QGraphicsWidget_virtualbase_sceneEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_sceneEvent(event);
}

bool QGraphicsWidget_virtualbase_windowFrameEvent(void* self, QEvent* e) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_windowFrameEvent(e);
}

int QGraphicsWidget_virtualbase_windowFrameSectionAt(const void* self, QPointF* pos) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_windowFrameSectionAt(pos);
}

bool QGraphicsWidget_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_event(event);
}

void QGraphicsWidget_virtualbase_changeEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_changeEvent(event);
}

void QGraphicsWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_closeEvent(event);
}

void QGraphicsWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_focusInEvent(event);
}

bool QGraphicsWidget_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QGraphicsWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_focusOutEvent(event);
}

void QGraphicsWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_hideEvent(event);
}

void QGraphicsWidget_virtualbase_moveEvent(void* self, QGraphicsSceneMoveEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_moveEvent(event);
}

void QGraphicsWidget_virtualbase_polishEvent(void* self) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_polishEvent();
}

void QGraphicsWidget_virtualbase_resizeEvent(void* self, QGraphicsSceneResizeEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_resizeEvent(event);
}

void QGraphicsWidget_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_showEvent(event);
}

void QGraphicsWidget_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_hoverMoveEvent(event);
}

void QGraphicsWidget_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_hoverLeaveEvent(event);
}

void QGraphicsWidget_virtualbase_grabMouseEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_grabMouseEvent(event);
}

void QGraphicsWidget_virtualbase_ungrabMouseEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_ungrabMouseEvent(event);
}

void QGraphicsWidget_virtualbase_grabKeyboardEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_grabKeyboardEvent(event);
}

void QGraphicsWidget_virtualbase_ungrabKeyboardEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_ungrabKeyboardEvent(event);
}

bool QGraphicsWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsWidget_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsWidget_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_disconnectNotify(signal);
}

void QGraphicsWidget_virtualbase_advance(void* self, int phase) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_advance(phase);
}

bool QGraphicsWidget_virtualbase_contains(const void* self, QPointF* point) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_contains(point);
}

bool QGraphicsWidget_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_collidesWithItem(other, mode);
}

bool QGraphicsWidget_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_collidesWithPath(path, mode);
}

bool QGraphicsWidget_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_isObscuredBy(item);
}

QPainterPath* QGraphicsWidget_virtualbase_opaqueArea(const void* self) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_opaqueArea();
}

bool QGraphicsWidget_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_sceneEventFilter(watched, event);
}

void QGraphicsWidget_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGraphicsWidget_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGraphicsWidget_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGraphicsWidget_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGraphicsWidget_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_dropEvent(event);
}

void QGraphicsWidget_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_hoverEnterEvent(event);
}

void QGraphicsWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_keyPressEvent(event);
}

void QGraphicsWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGraphicsWidget_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_mousePressEvent(event);
}

void QGraphicsWidget_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGraphicsWidget_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGraphicsWidget_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGraphicsWidget_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_wheelEvent(event);
}

void QGraphicsWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QGraphicsWidget_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_inputMethodQuery(query);
}

bool QGraphicsWidget_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_supportsExtension(extension);
}

void QGraphicsWidget_virtualbase_setExtension(void* self, int extension, QVariant* variant) {
	( (MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_setExtension(extension, variant);
}

QVariant* QGraphicsWidget_virtualbase_extension(const void* self, QVariant* variant) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_extension(variant);
}

bool QGraphicsWidget_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQGraphicsWidget*)(self) )->virtualbase_isEmpty();
}

const QMetaObject* QGraphicsWidget_staticMetaObject() { return &QGraphicsWidget::staticMetaObject; }
void QGraphicsWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

QObject* QGraphicsWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGraphicsWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGraphicsWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGraphicsWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGraphicsWidget_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->addToIndex();

}

void QGraphicsWidget_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->removeFromIndex();

}

void QGraphicsWidget_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->prepareGeometryChange();

}

void QGraphicsWidget_protectedbase_setGraphicsItem(bool* _dynamic_cast_ok, void* self, QGraphicsItem* item) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setGraphicsItem(item);

}

void QGraphicsWidget_protectedbase_setOwnedByLayout(bool* _dynamic_cast_ok, void* self, bool ownedByLayout) {
	MiqtVirtualQGraphicsWidget* self_cast = dynamic_cast<MiqtVirtualQGraphicsWidget*>( (QGraphicsWidget*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setOwnedByLayout(ownedByLayout);

}

void QGraphicsWidget_delete(QGraphicsWidget* self) {
	delete self;
}

