#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QItemSelection>
#include <QItemSelectionModel>
#include <QKeyEvent>
#include <QList>
#include <QListView>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QStyleOptionViewItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QUndoGroup>
#include <QUndoStack>
#include <QUndoView>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qundoview.h>
#include "gen_qundoview.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQUndoView final : public QUndoView {
	struct QUndoView_VTable* vtbl;
public:

	MiqtVirtualQUndoView(struct QUndoView_VTable* vtbl, QWidget* parent): QUndoView(parent), vtbl(vtbl) {};
	MiqtVirtualQUndoView(struct QUndoView_VTable* vtbl): QUndoView(), vtbl(vtbl) {};
	MiqtVirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoStack* stack): QUndoView(stack), vtbl(vtbl) {};
	MiqtVirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoGroup* group): QUndoView(group), vtbl(vtbl) {};
	MiqtVirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoStack* stack, QWidget* parent): QUndoView(stack, parent), vtbl(vtbl) {};
	MiqtVirtualQUndoView(struct QUndoView_VTable* vtbl, QUndoGroup* group, QWidget* parent): QUndoView(group, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQUndoView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QUndoView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QUndoView::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QUndoView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QUndoView::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QUndoView::qt_metacall(param1, param2, param3);
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

		return QUndoView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QUndoView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_visualRect(QModelIndex* index) const {

		return new QRect(QUndoView::visualRect(*index));

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QUndoView::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollTo(QModelIndex* index, int hint) {

		QUndoView::scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QUndoView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_indexAt(QPoint* p) const {

		return new QModelIndex(QUndoView::indexAt(*p));

	}

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QUndoView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_doItemsLayout() {

		QUndoView::doItemsLayout();

	}

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QUndoView::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reset() {

		QUndoView::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QUndoView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setRootIndex(QModelIndex* index) {

		QUndoView::setRootIndex(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QUndoView::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QUndoView::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QUndoView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollContentsBy(int dx, int dy) {

		QUndoView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QList<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QUndoView::dataChanged(topLeft, bottomRight, roles);
			return;
		}

		const QModelIndex& topLeft_ret = topLeft;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
		const QModelIndex& bottomRight_ret = bottomRight;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
		const QList<int>& roles_ret = roles;
		// Convert QList<> from C++ memory to manually-managed C memory
		int* roles_arr = static_cast<int*>(malloc(sizeof(int) * roles_ret.length()));
		for (size_t i = 0, e = roles_ret.length(); i < e; ++i) {
			roles_arr[i] = roles_ret[i];
		}
		struct miqt_array roles_out;
		roles_out.len = roles_ret.length();
		roles_out.data = static_cast<void*>(roles_arr);
		struct miqt_array /* of int */  sigval3 = roles_out;

		vtbl->dataChanged(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dataChanged(QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
		QList<int> roles_QList;
		roles_QList.reserve(roles.len);
		int* roles_arr = static_cast<int*>(roles.data);
		for(size_t i = 0; i < roles.len; ++i) {
			roles_QList.push_back(static_cast<int>(roles_arr[i]));
		}

		QUndoView::dataChanged(*topLeft, *bottomRight, roles_QList);

	}

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QUndoView::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_rowsInserted(QModelIndex* parent, int start, int end) {

		QUndoView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

	}

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QUndoView::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_rowsAboutToBeRemoved(QModelIndex* parent, int start, int end) {

		QUndoView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QUndoView::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* e) {

		QUndoView::mouseMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QUndoView::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* e) {

		QUndoView::mouseReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QUndoView::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* e) {

		QUndoView::wheelEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QUndoView::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* e) {

		QUndoView::timerEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QUndoView::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* e) {

		QUndoView::resizeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QUndoView::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* e) {

		QUndoView::dragMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QUndoView::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* e) {

		QUndoView::dragLeaveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QUndoView::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* e) {

		QUndoView::dropEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QUndoView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_startDrag(int supportedActions) {

		QUndoView::startDrag(static_cast<Qt::DropActions>(supportedActions));

	}

	// Subclass to allow providing a Go implementation
	virtual void initViewItemOption(QStyleOptionViewItem* option) const override {
		if (vtbl->initViewItemOption == 0) {
			QUndoView::initViewItemOption(option);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;

		vtbl->initViewItemOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initViewItemOption(QStyleOptionViewItem* option) const {

		QUndoView::initViewItemOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QUndoView::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* e) {

		QUndoView::paintEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QUndoView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_horizontalOffset() const {

		return QUndoView::horizontalOffset();

	}

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QUndoView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_verticalOffset() const {

		return QUndoView::verticalOffset();

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QUndoView::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_moveCursor(int cursorAction, int modifiers) {

		return new QModelIndex(QUndoView::moveCursor(static_cast<QAbstractItemView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QUndoView::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelection(QRect* rect, int command) {

		QUndoView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

	}

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QUndoView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRegion* virtualbase_visualRegionForSelection(QItemSelection* selection) const {

		return new QRegion(QUndoView::visualRegionForSelection(*selection));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QUndoView::selectedIndexes();
		}


		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->selectedIndexes(vtbl, this);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of QModelIndex* */  virtualbase_selectedIndexes() const {

		QModelIndexList _ret = QUndoView::selectedIndexes();
		// Convert QList<> from C++ memory to manually-managed C memory
		QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
		for (size_t i = 0, e = _ret.length(); i < e; ++i) {
			_arr[i] = new QModelIndex(_ret[i]);
		}
		struct miqt_array _out;
		_out.len = _ret.length();
		_out.data = static_cast<void*>(_arr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QUndoView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateGeometries() {

		QUndoView::updateGeometries();

	}

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QUndoView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isIndexHidden(QModelIndex* index) const {

		return QUndoView::isIndexHidden(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QUndoView::selectionChanged(selected, deselected);
			return;
		}

		const QItemSelection& selected_ret = selected;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selected_ret);
		const QItemSelection& deselected_ret = deselected;
		// Cast returned reference into pointer
		QItemSelection* sigval2 = const_cast<QItemSelection*>(&deselected_ret);

		vtbl->selectionChanged(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_selectionChanged(QItemSelection* selected, QItemSelection* deselected) {

		QUndoView::selectionChanged(*selected, *deselected);

	}

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QUndoView::currentChanged(current, previous);
			return;
		}

		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);

		vtbl->currentChanged(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_currentChanged(QModelIndex* current, QModelIndex* previous) {

		QUndoView::currentChanged(*current, *previous);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QUndoView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_viewportSizeHint() const {

		return new QSize(QUndoView::viewportSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QUndoView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setModel(QAbstractItemModel* model) {

		QUndoView::setModel(model);

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QUndoView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelectionModel(QItemSelectionModel* selectionModel) {

		QUndoView::setSelectionModel(selectionModel);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QUndoView::keyboardSearch(search);
			return;
		}

		const QString search_ret = search;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray search_b = search_ret.toUtf8();
		struct miqt_string search_ms;
		search_ms.len = search_b.length();
		search_ms.data = static_cast<char*>(malloc(search_ms.len));
		memcpy(search_ms.data, search_b.data(), search_ms.len);
		struct miqt_string sigval1 = search_ms;

		vtbl->keyboardSearch(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyboardSearch(struct miqt_string search) {
		QString search_QString = QString::fromUtf8(search.data, search.len);

		QUndoView::keyboardSearch(search_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QUndoView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_sizeHintForRow(int row) const {

		return QUndoView::sizeHintForRow(static_cast<int>(row));

	}

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QUndoView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_sizeHintForColumn(int column) const {

		return QUndoView::sizeHintForColumn(static_cast<int>(column));

	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractItemDelegate* itemDelegateForIndex(const QModelIndex& index) const override {
		if (vtbl->itemDelegateForIndex == 0) {
			return QUndoView::itemDelegateForIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QAbstractItemDelegate* callback_return_value = vtbl->itemDelegateForIndex(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QAbstractItemDelegate* virtualbase_itemDelegateForIndex(QModelIndex* index) const {

		return QUndoView::itemDelegateForIndex(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QUndoView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QUndoView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QUndoView::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_selectAll() {

		QUndoView::selectAll();

	}

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QUndoView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateEditorData() {

		QUndoView::updateEditorData();

	}

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QUndoView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateEditorGeometries() {

		QUndoView::updateEditorGeometries();

	}

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QUndoView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_verticalScrollbarAction(int action) {

		QUndoView::verticalScrollbarAction(static_cast<int>(action));

	}

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QUndoView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_horizontalScrollbarAction(int action) {

		QUndoView::horizontalScrollbarAction(static_cast<int>(action));

	}

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QUndoView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_verticalScrollbarValueChanged(int value) {

		QUndoView::verticalScrollbarValueChanged(static_cast<int>(value));

	}

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QUndoView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_horizontalScrollbarValueChanged(int value) {

		QUndoView::horizontalScrollbarValueChanged(static_cast<int>(value));

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QUndoView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEditor(QWidget* editor, int hint) {

		QUndoView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

	}

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QUndoView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_commitData(QWidget* editor) {

		QUndoView::commitData(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QUndoView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_editorDestroyed(QObject* editor) {

		QUndoView::editorDestroyed(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QUndoView::edit(index, trigger, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::EditTrigger trigger_ret = trigger;
		int sigval2 = static_cast<int>(trigger_ret);
		QEvent* sigval3 = event;

		bool callback_return_value = vtbl->edit2(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_edit2(QModelIndex* index, int trigger, QEvent* event) {

		return QUndoView::edit(*index, static_cast<QAbstractItemView::EditTrigger>(trigger), event);

	}

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QUndoView::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_selectionCommand(QModelIndex* index, QEvent* event) const {

		QItemSelectionModel::SelectionFlags _ret = QUndoView::selectionCommand(*index, event);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QUndoView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QUndoView::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QUndoView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_viewportEvent(QEvent* event) {

		return QUndoView::viewportEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QUndoView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QUndoView::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QUndoView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QUndoView::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QUndoView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QUndoView::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QUndoView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QUndoView::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QUndoView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QUndoView::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QUndoView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QUndoView::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QUndoView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QUndoView::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QUndoView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* object, QEvent* event) {

		return QUndoView::eventFilter(object, event);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QUndoView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QUndoView::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QUndoView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QUndoView::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QUndoView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupViewport(QWidget* viewport) {

		QUndoView::setupViewport(viewport);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QUndoView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QUndoView::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QUndoView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QUndoView::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QUndoView::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionFrame* option) const {

		QUndoView::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QUndoView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QUndoView::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QUndoView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QUndoView::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QUndoView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QUndoView::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QUndoView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QUndoView::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QUndoView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QUndoView::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QUndoView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QUndoView::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QUndoView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QUndoView::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QUndoView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QUndoView::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QUndoView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QUndoView::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QUndoView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QUndoView::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QUndoView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QUndoView::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QUndoView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QUndoView::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QUndoView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QUndoView::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QUndoView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QUndoView::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QUndoView::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, intptr_t* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QUndoView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QUndoView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QUndoView::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QUndoView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QUndoView::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QUndoView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QUndoView::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QUndoView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QUndoView::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QUndoView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QUndoView::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QUndoView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QUndoView::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QUndoView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QUndoView::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QUndoView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QUndoView::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QUndoView_protectedbase_resizeContents(void* self, int width, int height);
	friend QSize* QUndoView_protectedbase_contentsSize(const void* self);
	friend QRect* QUndoView_protectedbase_rectForIndex(const void* self, QModelIndex* index);
	friend void QUndoView_protectedbase_setPositionForIndex(void* self, QPoint* position, QModelIndex* index);
	friend int QUndoView_protectedbase_state(const void* self);
	friend void QUndoView_protectedbase_setState(void* self, int state);
	friend void QUndoView_protectedbase_scheduleDelayedItemsLayout(void* self);
	friend void QUndoView_protectedbase_executeDelayedItemsLayout(void* self);
	friend void QUndoView_protectedbase_setDirtyRegion(void* self, QRegion* region);
	friend void QUndoView_protectedbase_scrollDirtyRegion(void* self, int dx, int dy);
	friend QPoint* QUndoView_protectedbase_dirtyRegionOffset(const void* self);
	friend void QUndoView_protectedbase_startAutoScroll(void* self);
	friend void QUndoView_protectedbase_stopAutoScroll(void* self);
	friend void QUndoView_protectedbase_doAutoScroll(void* self);
	friend int QUndoView_protectedbase_dropIndicatorPosition(const void* self);
	friend void QUndoView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom);
	friend QMargins* QUndoView_protectedbase_viewportMargins(const void* self);
	friend void QUndoView_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QUndoView_protectedbase_updateMicroFocus(void* self);
	friend void QUndoView_protectedbase_create(void* self);
	friend void QUndoView_protectedbase_destroy(void* self);
	friend bool QUndoView_protectedbase_focusNextChild(void* self);
	friend bool QUndoView_protectedbase_focusPreviousChild(void* self);
	friend QObject* QUndoView_protectedbase_sender(const void* self);
	friend int QUndoView_protectedbase_senderSignalIndex(const void* self);
	friend int QUndoView_protectedbase_receivers(const void* self, const char* signal);
	friend bool QUndoView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QUndoView* QUndoView_new(struct QUndoView_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQUndoView(vtbl, parent);
}

QUndoView* QUndoView_new2(struct QUndoView_VTable* vtbl) {
	return new MiqtVirtualQUndoView(vtbl);
}

QUndoView* QUndoView_new3(struct QUndoView_VTable* vtbl, QUndoStack* stack) {
	return new MiqtVirtualQUndoView(vtbl, stack);
}

QUndoView* QUndoView_new4(struct QUndoView_VTable* vtbl, QUndoGroup* group) {
	return new MiqtVirtualQUndoView(vtbl, group);
}

QUndoView* QUndoView_new5(struct QUndoView_VTable* vtbl, QUndoStack* stack, QWidget* parent) {
	return new MiqtVirtualQUndoView(vtbl, stack, parent);
}

QUndoView* QUndoView_new6(struct QUndoView_VTable* vtbl, QUndoGroup* group, QWidget* parent) {
	return new MiqtVirtualQUndoView(vtbl, group, parent);
}

void QUndoView_virtbase(QUndoView* src, QListView** outptr_QListView) {
	*outptr_QListView = static_cast<QListView*>(src);
}

QMetaObject* QUndoView_metaObject(const QUndoView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QUndoView_metacast(QUndoView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QUndoView_metacall(QUndoView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QUndoView_tr(const char* s) {
	QString _ret = QUndoView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUndoStack* QUndoView_stack(const QUndoView* self) {
	return self->stack();
}

QUndoGroup* QUndoView_group(const QUndoView* self) {
	return self->group();
}

void QUndoView_setEmptyLabel(QUndoView* self, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	self->setEmptyLabel(label_QString);
}

struct miqt_string QUndoView_emptyLabel(const QUndoView* self) {
	QString _ret = self->emptyLabel();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QUndoView_setCleanIcon(QUndoView* self, QIcon* icon) {
	self->setCleanIcon(*icon);
}

QIcon* QUndoView_cleanIcon(const QUndoView* self) {
	return new QIcon(self->cleanIcon());
}

void QUndoView_setStack(QUndoView* self, QUndoStack* stack) {
	self->setStack(stack);
}

void QUndoView_setGroup(QUndoView* self, QUndoGroup* group) {
	self->setGroup(group);
}

struct miqt_string QUndoView_tr2(const char* s, const char* c) {
	QString _ret = QUndoView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUndoView_tr3(const char* s, const char* c, int n) {
	QString _ret = QUndoView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QUndoView_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_metaObject();
}

void* QUndoView_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_metacast(param1);
}

int QUndoView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRect* QUndoView_virtualbase_visualRect(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_visualRect(index);
}

void QUndoView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_scrollTo(index, hint);
}

QModelIndex* QUndoView_virtualbase_indexAt(const void* self, QPoint* p) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_indexAt(p);
}

void QUndoView_virtualbase_doItemsLayout(void* self) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_doItemsLayout();
}

void QUndoView_virtualbase_reset(void* self) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_reset();
}

void QUndoView_virtualbase_setRootIndex(void* self, QModelIndex* index) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_setRootIndex(index);
}

bool QUndoView_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_event(e);
}

void QUndoView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_scrollContentsBy(dx, dy);
}

void QUndoView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_dataChanged(topLeft, bottomRight, roles);
}

void QUndoView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_rowsInserted(parent, start, end);
}

void QUndoView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_rowsAboutToBeRemoved(parent, start, end);
}

void QUndoView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_mouseMoveEvent(e);
}

void QUndoView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_mouseReleaseEvent(e);
}

void QUndoView_virtualbase_wheelEvent(void* self, QWheelEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_wheelEvent(e);
}

void QUndoView_virtualbase_timerEvent(void* self, QTimerEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_timerEvent(e);
}

void QUndoView_virtualbase_resizeEvent(void* self, QResizeEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_resizeEvent(e);
}

void QUndoView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_dragMoveEvent(e);
}

void QUndoView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_dragLeaveEvent(e);
}

void QUndoView_virtualbase_dropEvent(void* self, QDropEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_dropEvent(e);
}

void QUndoView_virtualbase_startDrag(void* self, int supportedActions) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_startDrag(supportedActions);
}

void QUndoView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option) {
	( (const MiqtVirtualQUndoView*)(self) )->virtualbase_initViewItemOption(option);
}

void QUndoView_virtualbase_paintEvent(void* self, QPaintEvent* e) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_paintEvent(e);
}

int QUndoView_virtualbase_horizontalOffset(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_horizontalOffset();
}

int QUndoView_virtualbase_verticalOffset(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_verticalOffset();
}

QModelIndex* QUndoView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_moveCursor(cursorAction, modifiers);
}

void QUndoView_virtualbase_setSelection(void* self, QRect* rect, int command) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_setSelection(rect, command);
}

QRegion* QUndoView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_visualRegionForSelection(selection);
}

struct miqt_array /* of QModelIndex* */  QUndoView_virtualbase_selectedIndexes(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_selectedIndexes();
}

void QUndoView_virtualbase_updateGeometries(void* self) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_updateGeometries();
}

bool QUndoView_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_isIndexHidden(index);
}

void QUndoView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_selectionChanged(selected, deselected);
}

void QUndoView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_currentChanged(current, previous);
}

QSize* QUndoView_virtualbase_viewportSizeHint(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_viewportSizeHint();
}

void QUndoView_virtualbase_setModel(void* self, QAbstractItemModel* model) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_setModel(model);
}

void QUndoView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_setSelectionModel(selectionModel);
}

void QUndoView_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_keyboardSearch(search);
}

int QUndoView_virtualbase_sizeHintForRow(const void* self, int row) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_sizeHintForRow(row);
}

int QUndoView_virtualbase_sizeHintForColumn(const void* self, int column) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_sizeHintForColumn(column);
}

QAbstractItemDelegate* QUndoView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_itemDelegateForIndex(index);
}

QVariant* QUndoView_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_inputMethodQuery(query);
}

void QUndoView_virtualbase_selectAll(void* self) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_selectAll();
}

void QUndoView_virtualbase_updateEditorData(void* self) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_updateEditorData();
}

void QUndoView_virtualbase_updateEditorGeometries(void* self) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_updateEditorGeometries();
}

void QUndoView_virtualbase_verticalScrollbarAction(void* self, int action) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_verticalScrollbarAction(action);
}

void QUndoView_virtualbase_horizontalScrollbarAction(void* self, int action) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_horizontalScrollbarAction(action);
}

void QUndoView_virtualbase_verticalScrollbarValueChanged(void* self, int value) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_verticalScrollbarValueChanged(value);
}

void QUndoView_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_horizontalScrollbarValueChanged(value);
}

void QUndoView_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_closeEditor(editor, hint);
}

void QUndoView_virtualbase_commitData(void* self, QWidget* editor) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_commitData(editor);
}

void QUndoView_virtualbase_editorDestroyed(void* self, QObject* editor) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_editorDestroyed(editor);
}

bool QUndoView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_edit2(index, trigger, event);
}

int QUndoView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_selectionCommand(index, event);
}

bool QUndoView_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QUndoView_virtualbase_viewportEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_viewportEvent(event);
}

void QUndoView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_mousePressEvent(event);
}

void QUndoView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QUndoView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_dragEnterEvent(event);
}

void QUndoView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_focusInEvent(event);
}

void QUndoView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_focusOutEvent(event);
}

void QUndoView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_keyPressEvent(event);
}

void QUndoView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_inputMethodEvent(event);
}

bool QUndoView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_eventFilter(object, event);
}

QSize* QUndoView_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_minimumSizeHint();
}

QSize* QUndoView_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_sizeHint();
}

void QUndoView_virtualbase_setupViewport(void* self, QWidget* viewport) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_setupViewport(viewport);
}

void QUndoView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_contextMenuEvent(param1);
}

void QUndoView_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_changeEvent(param1);
}

void QUndoView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	( (const MiqtVirtualQUndoView*)(self) )->virtualbase_initStyleOption(option);
}

int QUndoView_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_devType();
}

void QUndoView_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_setVisible(visible);
}

int QUndoView_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_heightForWidth(param1);
}

bool QUndoView_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QUndoView_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_paintEngine();
}

void QUndoView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QUndoView_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_enterEvent(event);
}

void QUndoView_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_leaveEvent(event);
}

void QUndoView_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_moveEvent(event);
}

void QUndoView_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_closeEvent(event);
}

void QUndoView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_tabletEvent(event);
}

void QUndoView_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_actionEvent(event);
}

void QUndoView_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_showEvent(event);
}

void QUndoView_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_hideEvent(event);
}

bool QUndoView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQUndoView*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QUndoView_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_metric(param1);
}

void QUndoView_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQUndoView*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QUndoView_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_redirected(offset);
}

QPainter* QUndoView_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQUndoView*)(self) )->virtualbase_sharedPainter();
}

void QUndoView_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_childEvent(event);
}

void QUndoView_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_customEvent(event);
}

void QUndoView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_connectNotify(signal);
}

void QUndoView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQUndoView*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QUndoView_staticMetaObject() { return &QUndoView::staticMetaObject; }
void QUndoView_protectedbase_resizeContents(void* self, int width, int height) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->resizeContents(static_cast<int>(width), static_cast<int>(height));

}

QSize* QUndoView_protectedbase_contentsSize(const void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return new QSize(self_cast->contentsSize());

}

QRect* QUndoView_protectedbase_rectForIndex(const void* self, QModelIndex* index) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return new QRect(self_cast->rectForIndex(*index));

}

void QUndoView_protectedbase_setPositionForIndex(void* self, QPoint* position, QModelIndex* index) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->setPositionForIndex(*position, *index);

}

int QUndoView_protectedbase_state(const void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	MiqtVirtualQUndoView::State _ret = self_cast->state();
	return static_cast<int>(_ret);

}

void QUndoView_protectedbase_setState(void* self, int state) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->setState(static_cast<MiqtVirtualQUndoView::State>(state));

}

void QUndoView_protectedbase_scheduleDelayedItemsLayout(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->scheduleDelayedItemsLayout();

}

void QUndoView_protectedbase_executeDelayedItemsLayout(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->executeDelayedItemsLayout();

}

void QUndoView_protectedbase_setDirtyRegion(void* self, QRegion* region) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->setDirtyRegion(*region);

}

void QUndoView_protectedbase_scrollDirtyRegion(void* self, int dx, int dy) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

}

QPoint* QUndoView_protectedbase_dirtyRegionOffset(const void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return new QPoint(self_cast->dirtyRegionOffset());

}

void QUndoView_protectedbase_startAutoScroll(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->startAutoScroll();

}

void QUndoView_protectedbase_stopAutoScroll(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->stopAutoScroll();

}

void QUndoView_protectedbase_doAutoScroll(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->doAutoScroll();

}

int QUndoView_protectedbase_dropIndicatorPosition(const void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	MiqtVirtualQUndoView::DropIndicatorPosition _ret = self_cast->dropIndicatorPosition();
	return static_cast<int>(_ret);

}

void QUndoView_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QUndoView_protectedbase_viewportMargins(const void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return new QMargins(self_cast->viewportMargins());

}

void QUndoView_protectedbase_drawFrame(void* self, QPainter* param1) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->drawFrame(param1);

}

void QUndoView_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->updateMicroFocus();

}

void QUndoView_protectedbase_create(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->create();

}

void QUndoView_protectedbase_destroy(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	self_cast->destroy();

}

bool QUndoView_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return self_cast->focusNextChild();

}

bool QUndoView_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QUndoView_protectedbase_sender(const void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return self_cast->sender();

}

int QUndoView_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QUndoView_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return self_cast->receivers(signal);

}

bool QUndoView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQUndoView* self_cast = static_cast<MiqtVirtualQUndoView*>( (QUndoView*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QUndoView_delete(QUndoView* self) {
	delete self;
}

