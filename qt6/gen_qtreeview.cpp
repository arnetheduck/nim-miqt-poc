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
#include <QHeaderView>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QItemSelection>
#include <QItemSelectionModel>
#include <QKeyEvent>
#include <QList>
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
#include <QTreeView>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtreeview.h>
#include "gen_qtreeview.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QTreeView_expanded(intptr_t, QModelIndex*);
void miqt_exec_callback_QTreeView_expanded_release(intptr_t);
void miqt_exec_callback_QTreeView_collapsed(intptr_t, QModelIndex*);
void miqt_exec_callback_QTreeView_collapsed_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTreeView final : public QTreeView {
	struct QTreeView_VTable* vtbl;
public:

	MiqtVirtualQTreeView(struct QTreeView_VTable* vtbl, QWidget* parent): QTreeView(parent), vtbl(vtbl) {};
	MiqtVirtualQTreeView(struct QTreeView_VTable* vtbl): QTreeView(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTreeView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTreeView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTreeView::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTreeView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTreeView::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTreeView::qt_metacall(param1, param2, param3);
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

		return QTreeView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QTreeView::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setModel(QAbstractItemModel* model) {

		QTreeView::setModel(model);

	}

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QTreeView::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setRootIndex(QModelIndex* index) {

		QTreeView::setRootIndex(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QTreeView::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelectionModel(QItemSelectionModel* selectionModel) {

		QTreeView::setSelectionModel(selectionModel);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QTreeView::keyboardSearch(search);
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

		QTreeView::keyboardSearch(search_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QTreeView::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_visualRect(QModelIndex* index) const {

		return new QRect(QTreeView::visualRect(*index));

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QTreeView::scrollTo(index, hint);
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

		QTreeView::scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QTreeView::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_indexAt(QPoint* p) const {

		return new QModelIndex(QTreeView::indexAt(*p));

	}

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QTreeView::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_doItemsLayout() {

		QTreeView::doItemsLayout();

	}

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QTreeView::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reset() {

		QTreeView::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QList<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QTreeView::dataChanged(topLeft, bottomRight, roles);
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

		QTreeView::dataChanged(*topLeft, *bottomRight, roles_QList);

	}

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QTreeView::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_selectAll() {

		QTreeView::selectAll();

	}

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QTreeView::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_verticalScrollbarValueChanged(int value) {

		QTreeView::verticalScrollbarValueChanged(static_cast<int>(value));

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTreeView::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollContentsBy(int dx, int dy) {

		QTreeView::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QTreeView::rowsInserted(parent, start, end);
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

		QTreeView::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

	}

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QTreeView::rowsAboutToBeRemoved(parent, start, end);
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

		QTreeView::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QTreeView::moveCursor(cursorAction, modifiers);
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

		return new QModelIndex(QTreeView::moveCursor(static_cast<QAbstractItemView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

	}

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QTreeView::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_horizontalOffset() const {

		return QTreeView::horizontalOffset();

	}

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QTreeView::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_verticalOffset() const {

		return QTreeView::verticalOffset();

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QTreeView::setSelection(rect, command);
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

		QTreeView::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

	}

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QTreeView::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRegion* virtualbase_visualRegionForSelection(QItemSelection* selection) const {

		return new QRegion(QTreeView::visualRegionForSelection(*selection));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QTreeView::selectedIndexes();
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

		QModelIndexList _ret = QTreeView::selectedIndexes();
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
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QTreeView::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* event) {

		QTreeView::changeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTreeView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTreeView::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QTreeView::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QTreeView::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawRow(QPainter* painter, const QStyleOptionViewItem& options, const QModelIndex& index) const override {
		if (vtbl->drawRow == 0) {
			QTreeView::drawRow(painter, options, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& options_ret = options;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&options_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawRow(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawRow(QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index) const {

		QTreeView::drawRow(painter, *options, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawBranches(QPainter* painter, const QRect& rect, const QModelIndex& index) const override {
		if (vtbl->drawBranches == 0) {
			QTreeView::drawBranches(painter, rect, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawBranches(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawBranches(QPainter* painter, QRect* rect, QModelIndex* index) const {

		QTreeView::drawBranches(painter, *rect, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTreeView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QTreeView::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTreeView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QTreeView::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTreeView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QTreeView::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTreeView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QTreeView::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTreeView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QTreeView::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTreeView::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QTreeView::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QTreeView::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_viewportEvent(QEvent* event) {

		return QTreeView::viewportEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QTreeView::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateGeometries() {

		QTreeView::updateGeometries();

	}

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTreeView::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_viewportSizeHint() const {

		return new QSize(QTreeView::viewportSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QTreeView::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_sizeHintForColumn(int column) const {

		return QTreeView::sizeHintForColumn(static_cast<int>(column));

	}

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QTreeView::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_horizontalScrollbarAction(int action) {

		QTreeView::horizontalScrollbarAction(static_cast<int>(action));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QTreeView::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isIndexHidden(QModelIndex* index) const {

		return QTreeView::isIndexHidden(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QTreeView::selectionChanged(selected, deselected);
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

		QTreeView::selectionChanged(*selected, *deselected);

	}

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QTreeView::currentChanged(current, previous);
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

		QTreeView::currentChanged(*current, *previous);

	}

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QTreeView::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_sizeHintForRow(int row) const {

		return QTreeView::sizeHintForRow(static_cast<int>(row));

	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractItemDelegate* itemDelegateForIndex(const QModelIndex& index) const override {
		if (vtbl->itemDelegateForIndex == 0) {
			return QTreeView::itemDelegateForIndex(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QAbstractItemDelegate* callback_return_value = vtbl->itemDelegateForIndex(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QAbstractItemDelegate* virtualbase_itemDelegateForIndex(QModelIndex* index) const {

		return QTreeView::itemDelegateForIndex(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTreeView::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QTreeView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QTreeView::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateEditorData() {

		QTreeView::updateEditorData();

	}

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QTreeView::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateEditorGeometries() {

		QTreeView::updateEditorGeometries();

	}

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QTreeView::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_verticalScrollbarAction(int action) {

		QTreeView::verticalScrollbarAction(static_cast<int>(action));

	}

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QTreeView::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_horizontalScrollbarValueChanged(int value) {

		QTreeView::horizontalScrollbarValueChanged(static_cast<int>(value));

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QTreeView::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEditor(QWidget* editor, int hint) {

		QTreeView::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

	}

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QTreeView::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_commitData(QWidget* editor) {

		QTreeView::commitData(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QTreeView::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_editorDestroyed(QObject* editor) {

		QTreeView::editorDestroyed(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QTreeView::edit(index, trigger, event);
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

		return QTreeView::edit(*index, static_cast<QAbstractItemView::EditTrigger>(trigger), event);

	}

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QTreeView::selectionCommand(index, event);
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

		QItemSelectionModel::SelectionFlags _ret = QTreeView::selectionCommand(*index, event);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QTreeView::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_startDrag(int supportedActions) {

		QTreeView::startDrag(static_cast<Qt::DropActions>(supportedActions));

	}

	// Subclass to allow providing a Go implementation
	virtual void initViewItemOption(QStyleOptionViewItem* option) const override {
		if (vtbl->initViewItemOption == 0) {
			QTreeView::initViewItemOption(option);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;

		vtbl->initViewItemOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initViewItemOption(QStyleOptionViewItem* option) const {

		QTreeView::initViewItemOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTreeView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QTreeView::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTreeView::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTreeView::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTreeView::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QTreeView::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTreeView::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QTreeView::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTreeView::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QTreeView::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTreeView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QTreeView::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTreeView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QTreeView::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTreeView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QTreeView::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QTreeView::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QTreeView::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTreeView::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* object, QEvent* event) {

		return QTreeView::eventFilter(object, event);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTreeView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QTreeView::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTreeView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QTreeView::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTreeView::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupViewport(QWidget* viewport) {

		QTreeView::setupViewport(viewport);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QTreeView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QTreeView::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QTreeView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QTreeView::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTreeView::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionFrame* option) const {

		QTreeView::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTreeView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QTreeView::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTreeView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QTreeView::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTreeView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QTreeView::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTreeView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QTreeView::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTreeView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QTreeView::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTreeView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QTreeView::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTreeView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QTreeView::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTreeView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QTreeView::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTreeView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QTreeView::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTreeView::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QTreeView::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTreeView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QTreeView::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTreeView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QTreeView::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTreeView::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QTreeView::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTreeView::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QTreeView::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTreeView::nativeEvent(eventType, message, result);
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

		return QTreeView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTreeView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QTreeView::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTreeView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QTreeView::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTreeView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QTreeView::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTreeView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QTreeView::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTreeView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTreeView::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTreeView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTreeView::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTreeView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTreeView::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTreeView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTreeView::disconnectNotify(*signal);

	}

};

QTreeView* QTreeView_new(struct QTreeView_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQTreeView(vtbl, parent);
}

QTreeView* QTreeView_new2(struct QTreeView_VTable* vtbl) {
	return new MiqtVirtualQTreeView(vtbl);
}

void QTreeView_virtbase(QTreeView* src, QAbstractItemView** outptr_QAbstractItemView) {
	*outptr_QAbstractItemView = static_cast<QAbstractItemView*>(src);
}

QMetaObject* QTreeView_metaObject(const QTreeView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTreeView_metacast(QTreeView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTreeView_metacall(QTreeView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTreeView_tr(const char* s) {
	QString _ret = QTreeView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeView_setModel(QTreeView* self, QAbstractItemModel* model) {
	self->setModel(model);
}

void QTreeView_setRootIndex(QTreeView* self, QModelIndex* index) {
	self->setRootIndex(*index);
}

void QTreeView_setSelectionModel(QTreeView* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

QHeaderView* QTreeView_header(const QTreeView* self) {
	return self->header();
}

void QTreeView_setHeader(QTreeView* self, QHeaderView* header) {
	self->setHeader(header);
}

int QTreeView_autoExpandDelay(const QTreeView* self) {
	return self->autoExpandDelay();
}

void QTreeView_setAutoExpandDelay(QTreeView* self, int delay) {
	self->setAutoExpandDelay(static_cast<int>(delay));
}

int QTreeView_indentation(const QTreeView* self) {
	return self->indentation();
}

void QTreeView_setIndentation(QTreeView* self, int i) {
	self->setIndentation(static_cast<int>(i));
}

void QTreeView_resetIndentation(QTreeView* self) {
	self->resetIndentation();
}

bool QTreeView_rootIsDecorated(const QTreeView* self) {
	return self->rootIsDecorated();
}

void QTreeView_setRootIsDecorated(QTreeView* self, bool show) {
	self->setRootIsDecorated(show);
}

bool QTreeView_uniformRowHeights(const QTreeView* self) {
	return self->uniformRowHeights();
}

void QTreeView_setUniformRowHeights(QTreeView* self, bool uniform) {
	self->setUniformRowHeights(uniform);
}

bool QTreeView_itemsExpandable(const QTreeView* self) {
	return self->itemsExpandable();
}

void QTreeView_setItemsExpandable(QTreeView* self, bool enable) {
	self->setItemsExpandable(enable);
}

bool QTreeView_expandsOnDoubleClick(const QTreeView* self) {
	return self->expandsOnDoubleClick();
}

void QTreeView_setExpandsOnDoubleClick(QTreeView* self, bool enable) {
	self->setExpandsOnDoubleClick(enable);
}

int QTreeView_columnViewportPosition(const QTreeView* self, int column) {
	return self->columnViewportPosition(static_cast<int>(column));
}

int QTreeView_columnWidth(const QTreeView* self, int column) {
	return self->columnWidth(static_cast<int>(column));
}

void QTreeView_setColumnWidth(QTreeView* self, int column, int width) {
	self->setColumnWidth(static_cast<int>(column), static_cast<int>(width));
}

int QTreeView_columnAt(const QTreeView* self, int x) {
	return self->columnAt(static_cast<int>(x));
}

bool QTreeView_isColumnHidden(const QTreeView* self, int column) {
	return self->isColumnHidden(static_cast<int>(column));
}

void QTreeView_setColumnHidden(QTreeView* self, int column, bool hide) {
	self->setColumnHidden(static_cast<int>(column), hide);
}

bool QTreeView_isHeaderHidden(const QTreeView* self) {
	return self->isHeaderHidden();
}

void QTreeView_setHeaderHidden(QTreeView* self, bool hide) {
	self->setHeaderHidden(hide);
}

bool QTreeView_isRowHidden(const QTreeView* self, int row, QModelIndex* parent) {
	return self->isRowHidden(static_cast<int>(row), *parent);
}

void QTreeView_setRowHidden(QTreeView* self, int row, QModelIndex* parent, bool hide) {
	self->setRowHidden(static_cast<int>(row), *parent, hide);
}

bool QTreeView_isFirstColumnSpanned(const QTreeView* self, int row, QModelIndex* parent) {
	return self->isFirstColumnSpanned(static_cast<int>(row), *parent);
}

void QTreeView_setFirstColumnSpanned(QTreeView* self, int row, QModelIndex* parent, bool span) {
	self->setFirstColumnSpanned(static_cast<int>(row), *parent, span);
}

bool QTreeView_isExpanded(const QTreeView* self, QModelIndex* index) {
	return self->isExpanded(*index);
}

void QTreeView_setExpanded(QTreeView* self, QModelIndex* index, bool expand) {
	self->setExpanded(*index, expand);
}

void QTreeView_setSortingEnabled(QTreeView* self, bool enable) {
	self->setSortingEnabled(enable);
}

bool QTreeView_isSortingEnabled(const QTreeView* self) {
	return self->isSortingEnabled();
}

void QTreeView_setAnimated(QTreeView* self, bool enable) {
	self->setAnimated(enable);
}

bool QTreeView_isAnimated(const QTreeView* self) {
	return self->isAnimated();
}

void QTreeView_setAllColumnsShowFocus(QTreeView* self, bool enable) {
	self->setAllColumnsShowFocus(enable);
}

bool QTreeView_allColumnsShowFocus(const QTreeView* self) {
	return self->allColumnsShowFocus();
}

void QTreeView_setWordWrap(QTreeView* self, bool on) {
	self->setWordWrap(on);
}

bool QTreeView_wordWrap(const QTreeView* self) {
	return self->wordWrap();
}

void QTreeView_setTreePosition(QTreeView* self, int logicalIndex) {
	self->setTreePosition(static_cast<int>(logicalIndex));
}

int QTreeView_treePosition(const QTreeView* self) {
	return self->treePosition();
}

void QTreeView_keyboardSearch(QTreeView* self, struct miqt_string search) {
	QString search_QString = QString::fromUtf8(search.data, search.len);
	self->keyboardSearch(search_QString);
}

QRect* QTreeView_visualRect(const QTreeView* self, QModelIndex* index) {
	return new QRect(self->visualRect(*index));
}

void QTreeView_scrollTo(QTreeView* self, QModelIndex* index, int hint) {
	self->scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QModelIndex* QTreeView_indexAt(const QTreeView* self, QPoint* p) {
	return new QModelIndex(self->indexAt(*p));
}

QModelIndex* QTreeView_indexAbove(const QTreeView* self, QModelIndex* index) {
	return new QModelIndex(self->indexAbove(*index));
}

QModelIndex* QTreeView_indexBelow(const QTreeView* self, QModelIndex* index) {
	return new QModelIndex(self->indexBelow(*index));
}

void QTreeView_doItemsLayout(QTreeView* self) {
	self->doItemsLayout();
}

void QTreeView_reset(QTreeView* self) {
	self->reset();
}

void QTreeView_dataChanged(QTreeView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	QList<int> roles_QList;
	roles_QList.reserve(roles.len);
	int* roles_arr = static_cast<int*>(roles.data);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QList.push_back(static_cast<int>(roles_arr[i]));
	}
	self->dataChanged(*topLeft, *bottomRight, roles_QList);
}

void QTreeView_selectAll(QTreeView* self) {
	self->selectAll();
}

void QTreeView_expanded(QTreeView* self, QModelIndex* index) {
	self->expanded(*index);
}

void QTreeView_connect_expanded(QTreeView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			miqt_exec_callback_QTreeView_expanded(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeView_expanded_release(slot); }
	};
	MiqtVirtualQTreeView::connect(self, static_cast<void (QTreeView::*)(const QModelIndex&)>(&QTreeView::expanded), self, caller{slot});
}

void QTreeView_collapsed(QTreeView* self, QModelIndex* index) {
	self->collapsed(*index);
}

void QTreeView_connect_collapsed(QTreeView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QModelIndex& index) {
			const QModelIndex& index_ret = index;
			// Cast returned reference into pointer
			QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
			miqt_exec_callback_QTreeView_collapsed(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeView_collapsed_release(slot); }
	};
	MiqtVirtualQTreeView::connect(self, static_cast<void (QTreeView::*)(const QModelIndex&)>(&QTreeView::collapsed), self, caller{slot});
}

void QTreeView_hideColumn(QTreeView* self, int column) {
	self->hideColumn(static_cast<int>(column));
}

void QTreeView_showColumn(QTreeView* self, int column) {
	self->showColumn(static_cast<int>(column));
}

void QTreeView_expand(QTreeView* self, QModelIndex* index) {
	self->expand(*index);
}

void QTreeView_collapse(QTreeView* self, QModelIndex* index) {
	self->collapse(*index);
}

void QTreeView_resizeColumnToContents(QTreeView* self, int column) {
	self->resizeColumnToContents(static_cast<int>(column));
}

void QTreeView_sortByColumn(QTreeView* self, int column, int order) {
	self->sortByColumn(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QTreeView_expandAll(QTreeView* self) {
	self->expandAll();
}

void QTreeView_expandRecursively(QTreeView* self, QModelIndex* index) {
	self->expandRecursively(*index);
}

void QTreeView_collapseAll(QTreeView* self) {
	self->collapseAll();
}

void QTreeView_expandToDepth(QTreeView* self, int depth) {
	self->expandToDepth(static_cast<int>(depth));
}

struct miqt_string QTreeView_tr2(const char* s, const char* c) {
	QString _ret = QTreeView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeView_tr3(const char* s, const char* c, int n) {
	QString _ret = QTreeView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeView_expandRecursively2(QTreeView* self, QModelIndex* index, int depth) {
	self->expandRecursively(*index, static_cast<int>(depth));
}

QMetaObject* QTreeView_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_metaObject();
}

void* QTreeView_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_metacast(param1);
}

int QTreeView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QTreeView_virtualbase_setModel(void* self, QAbstractItemModel* model) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_setModel(model);
}

void QTreeView_virtualbase_setRootIndex(void* self, QModelIndex* index) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_setRootIndex(index);
}

void QTreeView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_setSelectionModel(selectionModel);
}

void QTreeView_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_keyboardSearch(search);
}

QRect* QTreeView_virtualbase_visualRect(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_visualRect(index);
}

void QTreeView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_scrollTo(index, hint);
}

QModelIndex* QTreeView_virtualbase_indexAt(const void* self, QPoint* p) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_indexAt(p);
}

void QTreeView_virtualbase_doItemsLayout(void* self) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_doItemsLayout();
}

void QTreeView_virtualbase_reset(void* self) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_reset();
}

void QTreeView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_dataChanged(topLeft, bottomRight, roles);
}

void QTreeView_virtualbase_selectAll(void* self) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_selectAll();
}

void QTreeView_virtualbase_verticalScrollbarValueChanged(void* self, int value) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_verticalScrollbarValueChanged(value);
}

void QTreeView_virtualbase_scrollContentsBy(void* self, int dx, int dy) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_scrollContentsBy(dx, dy);
}

void QTreeView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_rowsInserted(parent, start, end);
}

void QTreeView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_rowsAboutToBeRemoved(parent, start, end);
}

QModelIndex* QTreeView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_moveCursor(cursorAction, modifiers);
}

int QTreeView_virtualbase_horizontalOffset(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_horizontalOffset();
}

int QTreeView_virtualbase_verticalOffset(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_verticalOffset();
}

void QTreeView_virtualbase_setSelection(void* self, QRect* rect, int command) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_setSelection(rect, command);
}

QRegion* QTreeView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_visualRegionForSelection(selection);
}

struct miqt_array /* of QModelIndex* */  QTreeView_virtualbase_selectedIndexes(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_selectedIndexes();
}

void QTreeView_virtualbase_changeEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_changeEvent(event);
}

void QTreeView_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_timerEvent(event);
}

void QTreeView_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_paintEvent(event);
}

void QTreeView_virtualbase_drawRow(const void* self, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index) {
	( (const MiqtVirtualQTreeView*)(self) )->virtualbase_drawRow(painter, options, index);
}

void QTreeView_virtualbase_drawBranches(const void* self, QPainter* painter, QRect* rect, QModelIndex* index) {
	( (const MiqtVirtualQTreeView*)(self) )->virtualbase_drawBranches(painter, rect, index);
}

void QTreeView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_mousePressEvent(event);
}

void QTreeView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QTreeView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QTreeView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QTreeView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_keyPressEvent(event);
}

void QTreeView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_dragMoveEvent(event);
}

bool QTreeView_virtualbase_viewportEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_viewportEvent(event);
}

void QTreeView_virtualbase_updateGeometries(void* self) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_updateGeometries();
}

QSize* QTreeView_virtualbase_viewportSizeHint(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_viewportSizeHint();
}

int QTreeView_virtualbase_sizeHintForColumn(const void* self, int column) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_sizeHintForColumn(column);
}

void QTreeView_virtualbase_horizontalScrollbarAction(void* self, int action) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_horizontalScrollbarAction(action);
}

bool QTreeView_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_isIndexHidden(index);
}

void QTreeView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_selectionChanged(selected, deselected);
}

void QTreeView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_currentChanged(current, previous);
}

int QTreeView_virtualbase_sizeHintForRow(const void* self, int row) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_sizeHintForRow(row);
}

QAbstractItemDelegate* QTreeView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_itemDelegateForIndex(index);
}

QVariant* QTreeView_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_inputMethodQuery(query);
}

void QTreeView_virtualbase_updateEditorData(void* self) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_updateEditorData();
}

void QTreeView_virtualbase_updateEditorGeometries(void* self) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_updateEditorGeometries();
}

void QTreeView_virtualbase_verticalScrollbarAction(void* self, int action) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_verticalScrollbarAction(action);
}

void QTreeView_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_horizontalScrollbarValueChanged(value);
}

void QTreeView_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_closeEditor(editor, hint);
}

void QTreeView_virtualbase_commitData(void* self, QWidget* editor) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_commitData(editor);
}

void QTreeView_virtualbase_editorDestroyed(void* self, QObject* editor) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_editorDestroyed(editor);
}

bool QTreeView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_edit2(index, trigger, event);
}

int QTreeView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_selectionCommand(index, event);
}

void QTreeView_virtualbase_startDrag(void* self, int supportedActions) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_startDrag(supportedActions);
}

void QTreeView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option) {
	( (const MiqtVirtualQTreeView*)(self) )->virtualbase_initViewItemOption(option);
}

bool QTreeView_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QTreeView_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_event(event);
}

void QTreeView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_dragEnterEvent(event);
}

void QTreeView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QTreeView_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_dropEvent(event);
}

void QTreeView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_focusInEvent(event);
}

void QTreeView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_focusOutEvent(event);
}

void QTreeView_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_resizeEvent(event);
}

void QTreeView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_inputMethodEvent(event);
}

bool QTreeView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_eventFilter(object, event);
}

QSize* QTreeView_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_minimumSizeHint();
}

QSize* QTreeView_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_sizeHint();
}

void QTreeView_virtualbase_setupViewport(void* self, QWidget* viewport) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_setupViewport(viewport);
}

void QTreeView_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_wheelEvent(param1);
}

void QTreeView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_contextMenuEvent(param1);
}

void QTreeView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	( (const MiqtVirtualQTreeView*)(self) )->virtualbase_initStyleOption(option);
}

int QTreeView_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_devType();
}

void QTreeView_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_setVisible(visible);
}

int QTreeView_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_heightForWidth(param1);
}

bool QTreeView_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QTreeView_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_paintEngine();
}

void QTreeView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QTreeView_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_enterEvent(event);
}

void QTreeView_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_leaveEvent(event);
}

void QTreeView_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_moveEvent(event);
}

void QTreeView_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_closeEvent(event);
}

void QTreeView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_tabletEvent(event);
}

void QTreeView_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_actionEvent(event);
}

void QTreeView_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_showEvent(event);
}

void QTreeView_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_hideEvent(event);
}

bool QTreeView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQTreeView*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QTreeView_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_metric(param1);
}

void QTreeView_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQTreeView*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QTreeView_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_redirected(offset);
}

QPainter* QTreeView_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQTreeView*)(self) )->virtualbase_sharedPainter();
}

void QTreeView_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_childEvent(event);
}

void QTreeView_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_customEvent(event);
}

void QTreeView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_connectNotify(signal);
}

void QTreeView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTreeView*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QTreeView_staticMetaObject() { return &QTreeView::staticMetaObject; }
void QTreeView_delete(QTreeView* self) {
	delete self;
}

