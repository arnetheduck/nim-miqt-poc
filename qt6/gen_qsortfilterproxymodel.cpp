#include <QAbstractItemModel>
#include <QAbstractProxyModel>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QItemSelection>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QModelIndex>
#include <QModelRoleDataSpan>
#include <QObject>
#include <QRegularExpression>
#include <QSize>
#include <QSortFilterProxyModel>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qsortfilterproxymodel.h>
#include "gen_qsortfilterproxymodel.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSortFilterProxyModel_dynamicSortFilterChanged(intptr_t, bool);
void miqt_exec_callback_QSortFilterProxyModel_filterCaseSensitivityChanged(intptr_t, int);
void miqt_exec_callback_QSortFilterProxyModel_sortCaseSensitivityChanged(intptr_t, int);
void miqt_exec_callback_QSortFilterProxyModel_sortLocaleAwareChanged(intptr_t, bool);
void miqt_exec_callback_QSortFilterProxyModel_sortRoleChanged(intptr_t, int);
void miqt_exec_callback_QSortFilterProxyModel_filterRoleChanged(intptr_t, int);
void miqt_exec_callback_QSortFilterProxyModel_recursiveFilteringEnabledChanged(intptr_t, bool);
void miqt_exec_callback_QSortFilterProxyModel_autoAcceptChildRowsChanged(intptr_t, bool);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSortFilterProxyModel final : public QSortFilterProxyModel {
	struct QSortFilterProxyModel_VTable* vtbl;
public:

	MiqtVirtualQSortFilterProxyModel(struct QSortFilterProxyModel_VTable* vtbl): QSortFilterProxyModel(), vtbl(vtbl) {};
	MiqtVirtualQSortFilterProxyModel(struct QSortFilterProxyModel_VTable* vtbl, QObject* parent): QSortFilterProxyModel(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSortFilterProxyModel() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSortFilterProxyModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSortFilterProxyModel::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSortFilterProxyModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSortFilterProxyModel::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSortFilterProxyModel::qt_metacall(param1, param2, param3);
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

		return QSortFilterProxyModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setSourceModel(QAbstractItemModel* sourceModel) override {
		if (vtbl->setSourceModel == 0) {
			QSortFilterProxyModel::setSourceModel(sourceModel);
			return;
		}

		QAbstractItemModel* sigval1 = sourceModel;

		vtbl->setSourceModel(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSourceModel(QAbstractItemModel* sourceModel) {

		QSortFilterProxyModel::setSourceModel(sourceModel);

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex mapToSource(const QModelIndex& proxyIndex) const override {
		if (vtbl->mapToSource == 0) {
			return QSortFilterProxyModel::mapToSource(proxyIndex);
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapToSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_mapToSource(QModelIndex* proxyIndex) const {

		return new QModelIndex(QSortFilterProxyModel::mapToSource(*proxyIndex));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex mapFromSource(const QModelIndex& sourceIndex) const override {
		if (vtbl->mapFromSource == 0) {
			return QSortFilterProxyModel::mapFromSource(sourceIndex);
		}

		const QModelIndex& sourceIndex_ret = sourceIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapFromSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_mapFromSource(QModelIndex* sourceIndex) const {

		return new QModelIndex(QSortFilterProxyModel::mapFromSource(*sourceIndex));

	}

	// Subclass to allow providing a Go implementation
	virtual QItemSelection mapSelectionToSource(const QItemSelection& proxySelection) const override {
		if (vtbl->mapSelectionToSource == 0) {
			return QSortFilterProxyModel::mapSelectionToSource(proxySelection);
		}

		const QItemSelection& proxySelection_ret = proxySelection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&proxySelection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionToSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QItemSelection* virtualbase_mapSelectionToSource(QItemSelection* proxySelection) const {

		return new QItemSelection(QSortFilterProxyModel::mapSelectionToSource(*proxySelection));

	}

	// Subclass to allow providing a Go implementation
	virtual QItemSelection mapSelectionFromSource(const QItemSelection& sourceSelection) const override {
		if (vtbl->mapSelectionFromSource == 0) {
			return QSortFilterProxyModel::mapSelectionFromSource(sourceSelection);
		}

		const QItemSelection& sourceSelection_ret = sourceSelection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&sourceSelection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionFromSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QItemSelection* virtualbase_mapSelectionFromSource(QItemSelection* sourceSelection) const {

		return new QItemSelection(QSortFilterProxyModel::mapSelectionFromSource(*sourceSelection));

	}

	// Subclass to allow providing a Go implementation
	virtual bool filterAcceptsRow(int source_row, const QModelIndex& source_parent) const override {
		if (vtbl->filterAcceptsRow == 0) {
			return QSortFilterProxyModel::filterAcceptsRow(source_row, source_parent);
		}

		int sigval1 = source_row;
		const QModelIndex& source_parent_ret = source_parent;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&source_parent_ret);

		bool callback_return_value = vtbl->filterAcceptsRow(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_filterAcceptsRow(int source_row, QModelIndex* source_parent) const {

		return QSortFilterProxyModel::filterAcceptsRow(static_cast<int>(source_row), *source_parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool filterAcceptsColumn(int source_column, const QModelIndex& source_parent) const override {
		if (vtbl->filterAcceptsColumn == 0) {
			return QSortFilterProxyModel::filterAcceptsColumn(source_column, source_parent);
		}

		int sigval1 = source_column;
		const QModelIndex& source_parent_ret = source_parent;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&source_parent_ret);

		bool callback_return_value = vtbl->filterAcceptsColumn(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_filterAcceptsColumn(int source_column, QModelIndex* source_parent) const {

		return QSortFilterProxyModel::filterAcceptsColumn(static_cast<int>(source_column), *source_parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool lessThan(const QModelIndex& source_left, const QModelIndex& source_right) const override {
		if (vtbl->lessThan == 0) {
			return QSortFilterProxyModel::lessThan(source_left, source_right);
		}

		const QModelIndex& source_left_ret = source_left;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&source_left_ret);
		const QModelIndex& source_right_ret = source_right;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&source_right_ret);

		bool callback_return_value = vtbl->lessThan(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_lessThan(QModelIndex* source_left, QModelIndex* source_right) const {

		return QSortFilterProxyModel::lessThan(*source_left, *source_right);

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QSortFilterProxyModel::index(row, column, parent);
		}

		int sigval1 = row;
		int sigval2 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		QModelIndex* callback_return_value = vtbl->index(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_index(int row, int column, QModelIndex* parent) const {

		return new QModelIndex(QSortFilterProxyModel::index(static_cast<int>(row), static_cast<int>(column), *parent));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex parent(const QModelIndex& child) const override {
		if (vtbl->parent == 0) {
			return QSortFilterProxyModel::parent(child);
		}

		const QModelIndex& child_ret = child;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&child_ret);

		QModelIndex* callback_return_value = vtbl->parent(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_parent(QModelIndex* child) const {

		return new QModelIndex(QSortFilterProxyModel::parent(*child));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QSortFilterProxyModel::sibling(row, column, idx);
		}

		int sigval1 = row;
		int sigval2 = column;
		const QModelIndex& idx_ret = idx;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&idx_ret);

		QModelIndex* callback_return_value = vtbl->sibling(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_sibling(int row, int column, QModelIndex* idx) const {

		return new QModelIndex(QSortFilterProxyModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));

	}

	// Subclass to allow providing a Go implementation
	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return QSortFilterProxyModel::rowCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_rowCount(QModelIndex* parent) const {

		return QSortFilterProxyModel::rowCount(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return QSortFilterProxyModel::columnCount(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_columnCount(QModelIndex* parent) const {

		return QSortFilterProxyModel::columnCount(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QSortFilterProxyModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasChildren(QModelIndex* parent) const {

		return QSortFilterProxyModel::hasChildren(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant data(const QModelIndex& index, int role) const override {
		if (vtbl->data == 0) {
			return QSortFilterProxyModel::data(index, role);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		int sigval2 = role;

		QVariant* callback_return_value = vtbl->data(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_data(QModelIndex* index, int role) const {

		return new QVariant(QSortFilterProxyModel::data(*index, static_cast<int>(role)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QSortFilterProxyModel::setData(index, value, role);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);
		int sigval3 = role;

		bool callback_return_value = vtbl->setData(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setData(QModelIndex* index, QVariant* value, int role) {

		return QSortFilterProxyModel::setData(*index, *value, static_cast<int>(role));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QSortFilterProxyModel::headerData(section, orientation, role);
		}

		int sigval1 = section;
		Qt::Orientation orientation_ret = orientation;
		int sigval2 = static_cast<int>(orientation_ret);
		int sigval3 = role;

		QVariant* callback_return_value = vtbl->headerData(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_headerData(int section, int orientation, int role) const {

		return new QVariant(QSortFilterProxyModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QSortFilterProxyModel::setHeaderData(section, orientation, value, role);
		}

		int sigval1 = section;
		Qt::Orientation orientation_ret = orientation;
		int sigval2 = static_cast<int>(orientation_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		int sigval4 = role;

		bool callback_return_value = vtbl->setHeaderData(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setHeaderData(int section, int orientation, QVariant* value, int role) {

		return QSortFilterProxyModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));

	}

	// Subclass to allow providing a Go implementation
	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QSortFilterProxyModel::mimeData(indexes);
		}

		const QModelIndexList& indexes_ret = indexes;
		// Convert QList<> from C++ memory to manually-managed C memory
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * indexes_ret.length()));
		for (size_t i = 0, e = indexes_ret.length(); i < e; ++i) {
			indexes_arr[i] = new QModelIndex(indexes_ret[i]);
		}
		struct miqt_array indexes_out;
		indexes_out.len = indexes_ret.length();
		indexes_out.data = static_cast<void*>(indexes_arr);
		struct miqt_array /* of QModelIndex* */  sigval1 = indexes_out;

		QMimeData* callback_return_value = vtbl->mimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMimeData* virtualbase_mimeData(struct miqt_array /* of QModelIndex* */  indexes) const {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}

		return QSortFilterProxyModel::mimeData(indexes_QList);

	}

	// Subclass to allow providing a Go implementation
	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QSortFilterProxyModel::dropMimeData(data, action, row, column, parent);
		}

		QMimeData* sigval1 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval2 = static_cast<int>(action_ret);
		int sigval3 = row;
		int sigval4 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval5 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->dropMimeData(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_dropMimeData(QMimeData* data, int action, int row, int column, QModelIndex* parent) {

		return QSortFilterProxyModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QSortFilterProxyModel::insertRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertRows(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_insertRows(int row, int count, QModelIndex* parent) {

		return QSortFilterProxyModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QSortFilterProxyModel::insertColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->insertColumns(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_insertColumns(int column, int count, QModelIndex* parent) {

		return QSortFilterProxyModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QSortFilterProxyModel::removeRows(row, count, parent);
		}

		int sigval1 = row;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeRows(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_removeRows(int row, int count, QModelIndex* parent) {

		return QSortFilterProxyModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QSortFilterProxyModel::removeColumns(column, count, parent);
		}

		int sigval1 = column;
		int sigval2 = count;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->removeColumns(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_removeColumns(int column, int count, QModelIndex* parent) {

		return QSortFilterProxyModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QSortFilterProxyModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_fetchMore(QModelIndex* parent) {

		QSortFilterProxyModel::fetchMore(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QSortFilterProxyModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canFetchMore(QModelIndex* parent) const {

		return QSortFilterProxyModel::canFetchMore(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QSortFilterProxyModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(vtbl, this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_flags(QModelIndex* index) const {

		Qt::ItemFlags _ret = QSortFilterProxyModel::flags(*index);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QSortFilterProxyModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_buddy(QModelIndex* index) const {

		return new QModelIndex(QSortFilterProxyModel::buddy(*index));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QSortFilterProxyModel::match(start, role, value, hits, flags);
		}

		const QModelIndex& start_ret = start;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&start_ret);
		int sigval2 = role;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);
		int sigval4 = hits;
		Qt::MatchFlags flags_ret = flags;
		int sigval5 = static_cast<int>(flags_ret);

		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->match(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of QModelIndex* */  virtualbase_match(QModelIndex* start, int role, QVariant* value, int hits, int flags) const {

		QModelIndexList _ret = QSortFilterProxyModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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
	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QSortFilterProxyModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_span(QModelIndex* index) const {

		return new QSize(QSortFilterProxyModel::span(*index));

	}

	// Subclass to allow providing a Go implementation
	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QSortFilterProxyModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sort(int column, int order) {

		QSortFilterProxyModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QSortFilterProxyModel::mimeTypes();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->mimeTypes(vtbl, this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of struct miqt_string */  virtualbase_mimeTypes() const {

		QStringList _ret = QSortFilterProxyModel::mimeTypes();
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
		for (size_t i = 0, e = _ret.length(); i < e; ++i) {
			QString _lv_ret = _ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray _lv_b = _lv_ret.toUtf8();
			struct miqt_string _lv_ms;
			_lv_ms.len = _lv_b.length();
			_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
			memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
			_arr[i] = _lv_ms;
		}
		struct miqt_array _out;
		_out.len = _ret.length();
		_out.data = static_cast<void*>(_arr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QSortFilterProxyModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_supportedDropActions() const {

		Qt::DropActions _ret = QSortFilterProxyModel::supportedDropActions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QSortFilterProxyModel::submit();
		}


		bool callback_return_value = vtbl->submit(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_submit() {

		return QSortFilterProxyModel::submit();

	}

	// Subclass to allow providing a Go implementation
	virtual void revert() override {
		if (vtbl->revert == 0) {
			QSortFilterProxyModel::revert();
			return;
		}


		vtbl->revert(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_revert() {

		QSortFilterProxyModel::revert();

	}

	// Subclass to allow providing a Go implementation
	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QSortFilterProxyModel::itemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		struct miqt_map /* of int to QVariant* */  callback_return_value = vtbl->itemData(vtbl, this, sigval1);
		QMap<int, QVariant> callback_return_value_QMap;
		int* callback_return_value_karr = static_cast<int*>(callback_return_value.keys);
		QVariant** callback_return_value_varr = static_cast<QVariant**>(callback_return_value.values);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QMap[static_cast<int>(callback_return_value_karr[i])] = *(callback_return_value_varr[i]);
		}

		return callback_return_value_QMap;
	}

	// Wrapper to allow calling protected method
	struct miqt_map /* of int to QVariant* */  virtualbase_itemData(QModelIndex* index) const {

		QMap<int, QVariant> _ret = QSortFilterProxyModel::itemData(*index);
		// Convert QMap<> from C++ memory to manually-managed C memory
		int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
		QVariant** _varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * _ret.size()));
		int _ctr = 0;
		for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
			_karr[_ctr] = _itr->first;
			_varr[_ctr] = new QVariant(_itr->second);
			_ctr++;
		}
		struct miqt_map _out;
		_out.len = _ret.size();
		_out.keys = static_cast<void*>(_karr);
		_out.values = static_cast<void*>(_varr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QSortFilterProxyModel::setItemData(index, roles);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		const QMap<int, QVariant>& roles_ret = roles;
		// Convert QMap<> from C++ memory to manually-managed C memory
		int* roles_karr = static_cast<int*>(malloc(sizeof(int) * roles_ret.size()));
		QVariant** roles_varr = static_cast<QVariant**>(malloc(sizeof(QVariant*) * roles_ret.size()));
		int roles_ctr = 0;
		for (auto roles_itr = roles_ret.keyValueBegin(); roles_itr != roles_ret.keyValueEnd(); ++roles_itr) {
			roles_karr[roles_ctr] = roles_itr->first;
			roles_varr[roles_ctr] = new QVariant(roles_itr->second);
			roles_ctr++;
		}
		struct miqt_map roles_out;
		roles_out.len = roles_ret.size();
		roles_out.keys = static_cast<void*>(roles_karr);
		roles_out.values = static_cast<void*>(roles_varr);
		struct miqt_map /* of int to QVariant* */  sigval2 = roles_out;

		bool callback_return_value = vtbl->setItemData(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setItemData(QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
		QMap<int, QVariant> roles_QMap;
		int* roles_karr = static_cast<int*>(roles.keys);
		QVariant** roles_varr = static_cast<QVariant**>(roles.values);
		for(size_t i = 0; i < roles.len; ++i) {
			roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
		}

		return QSortFilterProxyModel::setItemData(*index, roles_QMap);

	}

	// Subclass to allow providing a Go implementation
	virtual bool clearItemData(const QModelIndex& index) override {
		if (vtbl->clearItemData == 0) {
			return QSortFilterProxyModel::clearItemData(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->clearItemData(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_clearItemData(QModelIndex* index) {

		return QSortFilterProxyModel::clearItemData(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QSortFilterProxyModel::canDropMimeData(data, action, row, column, parent);
		}

		QMimeData* sigval1 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval2 = static_cast<int>(action_ret);
		int sigval3 = row;
		int sigval4 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval5 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canDropMimeData(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canDropMimeData(QMimeData* data, int action, int row, int column, QModelIndex* parent) const {

		return QSortFilterProxyModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QSortFilterProxyModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_supportedDragActions() const {

		Qt::DropActions _ret = QSortFilterProxyModel::supportedDragActions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QSortFilterProxyModel::roleNames();
		}


		struct miqt_map /* of int to struct miqt_string */  callback_return_value = vtbl->roleNames(vtbl, this);
		QHash<int, QByteArray> callback_return_value_QMap;
		callback_return_value_QMap.reserve(callback_return_value.len);
		int* callback_return_value_karr = static_cast<int*>(callback_return_value.keys);
		struct miqt_string* callback_return_value_varr = static_cast<struct miqt_string*>(callback_return_value.values);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QByteArray callback_return_value_varr_i_QByteArray(callback_return_value_varr[i].data, callback_return_value_varr[i].len);
			callback_return_value_QMap[static_cast<int>(callback_return_value_karr[i])] = callback_return_value_varr_i_QByteArray;
		}

		return callback_return_value_QMap;
	}

	// Wrapper to allow calling protected method
	struct miqt_map /* of int to struct miqt_string */  virtualbase_roleNames() const {

		QHash<int, QByteArray> _ret = QSortFilterProxyModel::roleNames();
		// Convert QMap<> from C++ memory to manually-managed C memory
		int* _karr = static_cast<int*>(malloc(sizeof(int) * _ret.size()));
		struct miqt_string* _varr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.size()));
		int _ctr = 0;
		for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
			_karr[_ctr] = _itr->first;
			QByteArray _hashval_qb = _itr->second;
			struct miqt_string _hashval_ms;
			_hashval_ms.len = _hashval_qb.length();
			_hashval_ms.data = static_cast<char*>(malloc(_hashval_ms.len));
			memcpy(_hashval_ms.data, _hashval_qb.data(), _hashval_ms.len);
			_varr[_ctr] = _hashval_ms;
			_ctr++;
		}
		struct miqt_map _out;
		_out.len = _ret.size();
		_out.keys = static_cast<void*>(_karr);
		_out.values = static_cast<void*>(_varr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QSortFilterProxyModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
		}

		const QModelIndex& sourceParent_ret = sourceParent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceParent_ret);
		int sigval2 = sourceRow;
		int sigval3 = count;
		const QModelIndex& destinationParent_ret = destinationParent;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&destinationParent_ret);
		int sigval5 = destinationChild;

		bool callback_return_value = vtbl->moveRows(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_moveRows(QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {

		return QSortFilterProxyModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));

	}

	// Subclass to allow providing a Go implementation
	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QSortFilterProxyModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
		}

		const QModelIndex& sourceParent_ret = sourceParent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceParent_ret);
		int sigval2 = sourceColumn;
		int sigval3 = count;
		const QModelIndex& destinationParent_ret = destinationParent;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&destinationParent_ret);
		int sigval5 = destinationChild;

		bool callback_return_value = vtbl->moveColumns(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_moveColumns(QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {

		return QSortFilterProxyModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));

	}

	// Subclass to allow providing a Go implementation
	virtual void multiData(const QModelIndex& index, QModelRoleDataSpan roleDataSpan) const override {
		if (vtbl->multiData == 0) {
			QSortFilterProxyModel::multiData(index, roleDataSpan);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QModelRoleDataSpan* sigval2 = new QModelRoleDataSpan(roleDataSpan);

		vtbl->multiData(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_multiData(QModelIndex* index, QModelRoleDataSpan* roleDataSpan) const {

		QSortFilterProxyModel::multiData(*index, *roleDataSpan);

	}

	// Subclass to allow providing a Go implementation
	virtual void resetInternalData() override {
		if (vtbl->resetInternalData == 0) {
			QSortFilterProxyModel::resetInternalData();
			return;
		}


		vtbl->resetInternalData(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resetInternalData() {

		QSortFilterProxyModel::resetInternalData();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSortFilterProxyModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSortFilterProxyModel::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSortFilterProxyModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSortFilterProxyModel::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSortFilterProxyModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSortFilterProxyModel::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSortFilterProxyModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSortFilterProxyModel::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSortFilterProxyModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSortFilterProxyModel::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSortFilterProxyModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSortFilterProxyModel::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSortFilterProxyModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSortFilterProxyModel::disconnectNotify(*signal);

	}

};

QSortFilterProxyModel* QSortFilterProxyModel_new(struct QSortFilterProxyModel_VTable* vtbl) {
	return new MiqtVirtualQSortFilterProxyModel(vtbl);
}

QSortFilterProxyModel* QSortFilterProxyModel_new2(struct QSortFilterProxyModel_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQSortFilterProxyModel(vtbl, parent);
}

void QSortFilterProxyModel_virtbase(QSortFilterProxyModel* src, QAbstractProxyModel** outptr_QAbstractProxyModel) {
	*outptr_QAbstractProxyModel = static_cast<QAbstractProxyModel*>(src);
}

QMetaObject* QSortFilterProxyModel_metaObject(const QSortFilterProxyModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSortFilterProxyModel_metacast(QSortFilterProxyModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSortFilterProxyModel_metacall(QSortFilterProxyModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSortFilterProxyModel_tr(const char* s) {
	QString _ret = QSortFilterProxyModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSortFilterProxyModel_setSourceModel(QSortFilterProxyModel* self, QAbstractItemModel* sourceModel) {
	self->setSourceModel(sourceModel);
}

QModelIndex* QSortFilterProxyModel_mapToSource(const QSortFilterProxyModel* self, QModelIndex* proxyIndex) {
	return new QModelIndex(self->mapToSource(*proxyIndex));
}

QModelIndex* QSortFilterProxyModel_mapFromSource(const QSortFilterProxyModel* self, QModelIndex* sourceIndex) {
	return new QModelIndex(self->mapFromSource(*sourceIndex));
}

QItemSelection* QSortFilterProxyModel_mapSelectionToSource(const QSortFilterProxyModel* self, QItemSelection* proxySelection) {
	return new QItemSelection(self->mapSelectionToSource(*proxySelection));
}

QItemSelection* QSortFilterProxyModel_mapSelectionFromSource(const QSortFilterProxyModel* self, QItemSelection* sourceSelection) {
	return new QItemSelection(self->mapSelectionFromSource(*sourceSelection));
}

QRegularExpression* QSortFilterProxyModel_filterRegularExpression(const QSortFilterProxyModel* self) {
	return new QRegularExpression(self->filterRegularExpression());
}

int QSortFilterProxyModel_filterKeyColumn(const QSortFilterProxyModel* self) {
	return self->filterKeyColumn();
}

void QSortFilterProxyModel_setFilterKeyColumn(QSortFilterProxyModel* self, int column) {
	self->setFilterKeyColumn(static_cast<int>(column));
}

int QSortFilterProxyModel_filterCaseSensitivity(const QSortFilterProxyModel* self) {
	Qt::CaseSensitivity _ret = self->filterCaseSensitivity();
	return static_cast<int>(_ret);
}

void QSortFilterProxyModel_setFilterCaseSensitivity(QSortFilterProxyModel* self, int cs) {
	self->setFilterCaseSensitivity(static_cast<Qt::CaseSensitivity>(cs));
}

int QSortFilterProxyModel_sortCaseSensitivity(const QSortFilterProxyModel* self) {
	Qt::CaseSensitivity _ret = self->sortCaseSensitivity();
	return static_cast<int>(_ret);
}

void QSortFilterProxyModel_setSortCaseSensitivity(QSortFilterProxyModel* self, int cs) {
	self->setSortCaseSensitivity(static_cast<Qt::CaseSensitivity>(cs));
}

bool QSortFilterProxyModel_isSortLocaleAware(const QSortFilterProxyModel* self) {
	return self->isSortLocaleAware();
}

void QSortFilterProxyModel_setSortLocaleAware(QSortFilterProxyModel* self, bool on) {
	self->setSortLocaleAware(on);
}

int QSortFilterProxyModel_sortColumn(const QSortFilterProxyModel* self) {
	return self->sortColumn();
}

int QSortFilterProxyModel_sortOrder(const QSortFilterProxyModel* self) {
	Qt::SortOrder _ret = self->sortOrder();
	return static_cast<int>(_ret);
}

bool QSortFilterProxyModel_dynamicSortFilter(const QSortFilterProxyModel* self) {
	return self->dynamicSortFilter();
}

void QSortFilterProxyModel_setDynamicSortFilter(QSortFilterProxyModel* self, bool enable) {
	self->setDynamicSortFilter(enable);
}

int QSortFilterProxyModel_sortRole(const QSortFilterProxyModel* self) {
	return self->sortRole();
}

void QSortFilterProxyModel_setSortRole(QSortFilterProxyModel* self, int role) {
	self->setSortRole(static_cast<int>(role));
}

int QSortFilterProxyModel_filterRole(const QSortFilterProxyModel* self) {
	return self->filterRole();
}

void QSortFilterProxyModel_setFilterRole(QSortFilterProxyModel* self, int role) {
	self->setFilterRole(static_cast<int>(role));
}

bool QSortFilterProxyModel_isRecursiveFilteringEnabled(const QSortFilterProxyModel* self) {
	return self->isRecursiveFilteringEnabled();
}

void QSortFilterProxyModel_setRecursiveFilteringEnabled(QSortFilterProxyModel* self, bool recursive) {
	self->setRecursiveFilteringEnabled(recursive);
}

bool QSortFilterProxyModel_autoAcceptChildRows(const QSortFilterProxyModel* self) {
	return self->autoAcceptChildRows();
}

void QSortFilterProxyModel_setAutoAcceptChildRows(QSortFilterProxyModel* self, bool accept) {
	self->setAutoAcceptChildRows(accept);
}

void QSortFilterProxyModel_setFilterRegularExpression(QSortFilterProxyModel* self, struct miqt_string pattern) {
	QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
	self->setFilterRegularExpression(pattern_QString);
}

void QSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(QSortFilterProxyModel* self, QRegularExpression* regularExpression) {
	self->setFilterRegularExpression(*regularExpression);
}

void QSortFilterProxyModel_setFilterWildcard(QSortFilterProxyModel* self, struct miqt_string pattern) {
	QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
	self->setFilterWildcard(pattern_QString);
}

void QSortFilterProxyModel_setFilterFixedString(QSortFilterProxyModel* self, struct miqt_string pattern) {
	QString pattern_QString = QString::fromUtf8(pattern.data, pattern.len);
	self->setFilterFixedString(pattern_QString);
}

void QSortFilterProxyModel_invalidate(QSortFilterProxyModel* self) {
	self->invalidate();
}

QModelIndex* QSortFilterProxyModel_index(const QSortFilterProxyModel* self, int row, int column, QModelIndex* parent) {
	return new QModelIndex(self->index(static_cast<int>(row), static_cast<int>(column), *parent));
}

QModelIndex* QSortFilterProxyModel_parent(const QSortFilterProxyModel* self, QModelIndex* child) {
	return new QModelIndex(self->parent(*child));
}

QModelIndex* QSortFilterProxyModel_sibling(const QSortFilterProxyModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

int QSortFilterProxyModel_rowCount(const QSortFilterProxyModel* self, QModelIndex* parent) {
	return self->rowCount(*parent);
}

int QSortFilterProxyModel_columnCount(const QSortFilterProxyModel* self, QModelIndex* parent) {
	return self->columnCount(*parent);
}

bool QSortFilterProxyModel_hasChildren(const QSortFilterProxyModel* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

QVariant* QSortFilterProxyModel_data(const QSortFilterProxyModel* self, QModelIndex* index, int role) {
	return new QVariant(self->data(*index, static_cast<int>(role)));
}

bool QSortFilterProxyModel_setData(QSortFilterProxyModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

QVariant* QSortFilterProxyModel_headerData(const QSortFilterProxyModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

bool QSortFilterProxyModel_setHeaderData(QSortFilterProxyModel* self, int section, int orientation, QVariant* value, int role) {
	return self->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

QMimeData* QSortFilterProxyModel_mimeData(const QSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QSortFilterProxyModel_dropMimeData(QSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QSortFilterProxyModel_insertRows(QSortFilterProxyModel* self, int row, int count, QModelIndex* parent) {
	return self->insertRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QSortFilterProxyModel_insertColumns(QSortFilterProxyModel* self, int column, int count, QModelIndex* parent) {
	return self->insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

bool QSortFilterProxyModel_removeRows(QSortFilterProxyModel* self, int row, int count, QModelIndex* parent) {
	return self->removeRows(static_cast<int>(row), static_cast<int>(count), *parent);
}

bool QSortFilterProxyModel_removeColumns(QSortFilterProxyModel* self, int column, int count, QModelIndex* parent) {
	return self->removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);
}

void QSortFilterProxyModel_fetchMore(QSortFilterProxyModel* self, QModelIndex* parent) {
	self->fetchMore(*parent);
}

bool QSortFilterProxyModel_canFetchMore(const QSortFilterProxyModel* self, QModelIndex* parent) {
	return self->canFetchMore(*parent);
}

int QSortFilterProxyModel_flags(const QSortFilterProxyModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

QModelIndex* QSortFilterProxyModel_buddy(const QSortFilterProxyModel* self, QModelIndex* index) {
	return new QModelIndex(self->buddy(*index));
}

struct miqt_array /* of QModelIndex* */  QSortFilterProxyModel_match(const QSortFilterProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
	QModelIndexList _ret = self->match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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

QSize* QSortFilterProxyModel_span(const QSortFilterProxyModel* self, QModelIndex* index) {
	return new QSize(self->span(*index));
}

void QSortFilterProxyModel_sort(QSortFilterProxyModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

struct miqt_array /* of struct miqt_string */  QSortFilterProxyModel_mimeTypes(const QSortFilterProxyModel* self) {
	QStringList _ret = self->mimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QSortFilterProxyModel_supportedDropActions(const QSortFilterProxyModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

void QSortFilterProxyModel_dynamicSortFilterChanged(QSortFilterProxyModel* self, bool dynamicSortFilter) {
	self->dynamicSortFilterChanged(dynamicSortFilter);
}

void QSortFilterProxyModel_connect_dynamicSortFilterChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(bool)>(&QSortFilterProxyModel::dynamicSortFilterChanged), self, [=](bool dynamicSortFilter) {
		bool sigval1 = dynamicSortFilter;
		miqt_exec_callback_QSortFilterProxyModel_dynamicSortFilterChanged(slot, sigval1);
	});
}

void QSortFilterProxyModel_filterCaseSensitivityChanged(QSortFilterProxyModel* self, int filterCaseSensitivity) {
	self->filterCaseSensitivityChanged(static_cast<Qt::CaseSensitivity>(filterCaseSensitivity));
}

void QSortFilterProxyModel_connect_filterCaseSensitivityChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(Qt::CaseSensitivity)>(&QSortFilterProxyModel::filterCaseSensitivityChanged), self, [=](Qt::CaseSensitivity filterCaseSensitivity) {
		Qt::CaseSensitivity filterCaseSensitivity_ret = filterCaseSensitivity;
		int sigval1 = static_cast<int>(filterCaseSensitivity_ret);
		miqt_exec_callback_QSortFilterProxyModel_filterCaseSensitivityChanged(slot, sigval1);
	});
}

void QSortFilterProxyModel_sortCaseSensitivityChanged(QSortFilterProxyModel* self, int sortCaseSensitivity) {
	self->sortCaseSensitivityChanged(static_cast<Qt::CaseSensitivity>(sortCaseSensitivity));
}

void QSortFilterProxyModel_connect_sortCaseSensitivityChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(Qt::CaseSensitivity)>(&QSortFilterProxyModel::sortCaseSensitivityChanged), self, [=](Qt::CaseSensitivity sortCaseSensitivity) {
		Qt::CaseSensitivity sortCaseSensitivity_ret = sortCaseSensitivity;
		int sigval1 = static_cast<int>(sortCaseSensitivity_ret);
		miqt_exec_callback_QSortFilterProxyModel_sortCaseSensitivityChanged(slot, sigval1);
	});
}

void QSortFilterProxyModel_sortLocaleAwareChanged(QSortFilterProxyModel* self, bool sortLocaleAware) {
	self->sortLocaleAwareChanged(sortLocaleAware);
}

void QSortFilterProxyModel_connect_sortLocaleAwareChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(bool)>(&QSortFilterProxyModel::sortLocaleAwareChanged), self, [=](bool sortLocaleAware) {
		bool sigval1 = sortLocaleAware;
		miqt_exec_callback_QSortFilterProxyModel_sortLocaleAwareChanged(slot, sigval1);
	});
}

void QSortFilterProxyModel_sortRoleChanged(QSortFilterProxyModel* self, int sortRole) {
	self->sortRoleChanged(static_cast<int>(sortRole));
}

void QSortFilterProxyModel_connect_sortRoleChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(int)>(&QSortFilterProxyModel::sortRoleChanged), self, [=](int sortRole) {
		int sigval1 = sortRole;
		miqt_exec_callback_QSortFilterProxyModel_sortRoleChanged(slot, sigval1);
	});
}

void QSortFilterProxyModel_filterRoleChanged(QSortFilterProxyModel* self, int filterRole) {
	self->filterRoleChanged(static_cast<int>(filterRole));
}

void QSortFilterProxyModel_connect_filterRoleChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(int)>(&QSortFilterProxyModel::filterRoleChanged), self, [=](int filterRole) {
		int sigval1 = filterRole;
		miqt_exec_callback_QSortFilterProxyModel_filterRoleChanged(slot, sigval1);
	});
}

void QSortFilterProxyModel_recursiveFilteringEnabledChanged(QSortFilterProxyModel* self, bool recursiveFilteringEnabled) {
	self->recursiveFilteringEnabledChanged(recursiveFilteringEnabled);
}

void QSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(bool)>(&QSortFilterProxyModel::recursiveFilteringEnabledChanged), self, [=](bool recursiveFilteringEnabled) {
		bool sigval1 = recursiveFilteringEnabled;
		miqt_exec_callback_QSortFilterProxyModel_recursiveFilteringEnabledChanged(slot, sigval1);
	});
}

void QSortFilterProxyModel_autoAcceptChildRowsChanged(QSortFilterProxyModel* self, bool autoAcceptChildRows) {
	self->autoAcceptChildRowsChanged(autoAcceptChildRows);
}

void QSortFilterProxyModel_connect_autoAcceptChildRowsChanged(QSortFilterProxyModel* self, intptr_t slot) {
	MiqtVirtualQSortFilterProxyModel::connect(self, static_cast<void (QSortFilterProxyModel::*)(bool)>(&QSortFilterProxyModel::autoAcceptChildRowsChanged), self, [=](bool autoAcceptChildRows) {
		bool sigval1 = autoAcceptChildRows;
		miqt_exec_callback_QSortFilterProxyModel_autoAcceptChildRowsChanged(slot, sigval1);
	});
}

struct miqt_string QSortFilterProxyModel_tr2(const char* s, const char* c) {
	QString _ret = QSortFilterProxyModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSortFilterProxyModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QSortFilterProxyModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSortFilterProxyModel_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_metaObject();
}

void* QSortFilterProxyModel_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_metacast(param1);
}

int QSortFilterProxyModel_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QSortFilterProxyModel_virtualbase_setSourceModel(void* self, QAbstractItemModel* sourceModel) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_setSourceModel(sourceModel);
}

QModelIndex* QSortFilterProxyModel_virtualbase_mapToSource(const void* self, QModelIndex* proxyIndex) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_mapToSource(proxyIndex);
}

QModelIndex* QSortFilterProxyModel_virtualbase_mapFromSource(const void* self, QModelIndex* sourceIndex) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_mapFromSource(sourceIndex);
}

QItemSelection* QSortFilterProxyModel_virtualbase_mapSelectionToSource(const void* self, QItemSelection* proxySelection) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_mapSelectionToSource(proxySelection);
}

QItemSelection* QSortFilterProxyModel_virtualbase_mapSelectionFromSource(const void* self, QItemSelection* sourceSelection) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_mapSelectionFromSource(sourceSelection);
}

bool QSortFilterProxyModel_virtualbase_filterAcceptsRow(const void* self, int source_row, QModelIndex* source_parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_filterAcceptsRow(source_row, source_parent);
}

bool QSortFilterProxyModel_virtualbase_filterAcceptsColumn(const void* self, int source_column, QModelIndex* source_parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_filterAcceptsColumn(source_column, source_parent);
}

bool QSortFilterProxyModel_virtualbase_lessThan(const void* self, QModelIndex* source_left, QModelIndex* source_right) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_lessThan(source_left, source_right);
}

QModelIndex* QSortFilterProxyModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_index(row, column, parent);
}

QModelIndex* QSortFilterProxyModel_virtualbase_parent(const void* self, QModelIndex* child) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_parent(child);
}

QModelIndex* QSortFilterProxyModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_sibling(row, column, idx);
}

int QSortFilterProxyModel_virtualbase_rowCount(const void* self, QModelIndex* parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_rowCount(parent);
}

int QSortFilterProxyModel_virtualbase_columnCount(const void* self, QModelIndex* parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_columnCount(parent);
}

bool QSortFilterProxyModel_virtualbase_hasChildren(const void* self, QModelIndex* parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_hasChildren(parent);
}

QVariant* QSortFilterProxyModel_virtualbase_data(const void* self, QModelIndex* index, int role) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_data(index, role);
}

bool QSortFilterProxyModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_setData(index, value, role);
}

QVariant* QSortFilterProxyModel_virtualbase_headerData(const void* self, int section, int orientation, int role) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_headerData(section, orientation, role);
}

bool QSortFilterProxyModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_setHeaderData(section, orientation, value, role);
}

QMimeData* QSortFilterProxyModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_mimeData(indexes);
}

bool QSortFilterProxyModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_dropMimeData(data, action, row, column, parent);
}

bool QSortFilterProxyModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_insertRows(row, count, parent);
}

bool QSortFilterProxyModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_insertColumns(column, count, parent);
}

bool QSortFilterProxyModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_removeRows(row, count, parent);
}

bool QSortFilterProxyModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_removeColumns(column, count, parent);
}

void QSortFilterProxyModel_virtualbase_fetchMore(void* self, QModelIndex* parent) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_fetchMore(parent);
}

bool QSortFilterProxyModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_canFetchMore(parent);
}

int QSortFilterProxyModel_virtualbase_flags(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_flags(index);
}

QModelIndex* QSortFilterProxyModel_virtualbase_buddy(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_buddy(index);
}

struct miqt_array /* of QModelIndex* */  QSortFilterProxyModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_match(start, role, value, hits, flags);
}

QSize* QSortFilterProxyModel_virtualbase_span(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_span(index);
}

void QSortFilterProxyModel_virtualbase_sort(void* self, int column, int order) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_sort(column, order);
}

struct miqt_array /* of struct miqt_string */  QSortFilterProxyModel_virtualbase_mimeTypes(const void* self) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_mimeTypes();
}

int QSortFilterProxyModel_virtualbase_supportedDropActions(const void* self) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_supportedDropActions();
}

bool QSortFilterProxyModel_virtualbase_submit(void* self) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_submit();
}

void QSortFilterProxyModel_virtualbase_revert(void* self) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_revert();
}

struct miqt_map /* of int to QVariant* */  QSortFilterProxyModel_virtualbase_itemData(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_itemData(index);
}

bool QSortFilterProxyModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_setItemData(index, roles);
}

bool QSortFilterProxyModel_virtualbase_clearItemData(void* self, QModelIndex* index) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_clearItemData(index);
}

bool QSortFilterProxyModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_canDropMimeData(data, action, row, column, parent);
}

int QSortFilterProxyModel_virtualbase_supportedDragActions(const void* self) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_supportedDragActions();
}

struct miqt_map /* of int to struct miqt_string */  QSortFilterProxyModel_virtualbase_roleNames(const void* self) {
	return ( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_roleNames();
}

bool QSortFilterProxyModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
}

bool QSortFilterProxyModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
}

void QSortFilterProxyModel_virtualbase_multiData(const void* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan) {
	( (const MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_multiData(index, roleDataSpan);
}

void QSortFilterProxyModel_virtualbase_resetInternalData(void* self) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_resetInternalData();
}

bool QSortFilterProxyModel_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_event(event);
}

bool QSortFilterProxyModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSortFilterProxyModel_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_timerEvent(event);
}

void QSortFilterProxyModel_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_childEvent(event);
}

void QSortFilterProxyModel_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_customEvent(event);
}

void QSortFilterProxyModel_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_connectNotify(signal);
}

void QSortFilterProxyModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSortFilterProxyModel*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSortFilterProxyModel_staticMetaObject() { return &QSortFilterProxyModel::staticMetaObject; }
void QSortFilterProxyModel_delete(QSortFilterProxyModel* self) {
	delete self;
}

