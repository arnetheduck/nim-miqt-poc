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
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qabstractproxymodel.h>
#include "gen_qabstractproxymodel.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractProxyModel final : public QAbstractProxyModel {
	struct QAbstractProxyModel_VTable* vtbl;
public:

	MiqtVirtualQAbstractProxyModel(struct QAbstractProxyModel_VTable* vtbl): QAbstractProxyModel(), vtbl(vtbl) {};
	MiqtVirtualQAbstractProxyModel(struct QAbstractProxyModel_VTable* vtbl, QObject* parent): QAbstractProxyModel(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractProxyModel() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractProxyModel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAbstractProxyModel::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractProxyModel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAbstractProxyModel::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractProxyModel::qt_metacall(param1, param2, param3);
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

		return QAbstractProxyModel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setSourceModel(QAbstractItemModel* sourceModel) override {
		if (vtbl->setSourceModel == 0) {
			QAbstractProxyModel::setSourceModel(sourceModel);
			return;
		}

		QAbstractItemModel* sigval1 = sourceModel;

		vtbl->setSourceModel(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSourceModel(QAbstractItemModel* sourceModel) {

		QAbstractProxyModel::setSourceModel(sourceModel);

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex mapToSource(const QModelIndex& proxyIndex) const override {
		if (vtbl->mapToSource == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapToSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex mapFromSource(const QModelIndex& sourceIndex) const override {
		if (vtbl->mapFromSource == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& sourceIndex_ret = sourceIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&sourceIndex_ret);

		QModelIndex* callback_return_value = vtbl->mapFromSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QItemSelection mapSelectionToSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionToSource == 0) {
			return QAbstractProxyModel::mapSelectionToSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionToSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QItemSelection* virtualbase_mapSelectionToSource(QItemSelection* selection) const {

		return new QItemSelection(QAbstractProxyModel::mapSelectionToSource(*selection));

	}

	// Subclass to allow providing a Go implementation
	virtual QItemSelection mapSelectionFromSource(const QItemSelection& selection) const override {
		if (vtbl->mapSelectionFromSource == 0) {
			return QAbstractProxyModel::mapSelectionFromSource(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QItemSelection* callback_return_value = vtbl->mapSelectionFromSource(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QItemSelection* virtualbase_mapSelectionFromSource(QItemSelection* selection) const {

		return new QItemSelection(QAbstractProxyModel::mapSelectionFromSource(*selection));

	}

	// Subclass to allow providing a Go implementation
	virtual bool submit() override {
		if (vtbl->submit == 0) {
			return QAbstractProxyModel::submit();
		}


		bool callback_return_value = vtbl->submit(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_submit() {

		return QAbstractProxyModel::submit();

	}

	// Subclass to allow providing a Go implementation
	virtual void revert() override {
		if (vtbl->revert == 0) {
			QAbstractProxyModel::revert();
			return;
		}


		vtbl->revert(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_revert() {

		QAbstractProxyModel::revert();

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant data(const QModelIndex& proxyIndex, int role) const override {
		if (vtbl->data == 0) {
			return QAbstractProxyModel::data(proxyIndex, role);
		}

		const QModelIndex& proxyIndex_ret = proxyIndex;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&proxyIndex_ret);
		int sigval2 = role;

		QVariant* callback_return_value = vtbl->data(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_data(QModelIndex* proxyIndex, int role) const {

		return new QVariant(QAbstractProxyModel::data(*proxyIndex, static_cast<int>(role)));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant headerData(int section, Qt::Orientation orientation, int role) const override {
		if (vtbl->headerData == 0) {
			return QAbstractProxyModel::headerData(section, orientation, role);
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

		return new QVariant(QAbstractProxyModel::headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));

	}

	// Subclass to allow providing a Go implementation
	virtual QMap<int, QVariant> itemData(const QModelIndex& index) const override {
		if (vtbl->itemData == 0) {
			return QAbstractProxyModel::itemData(index);
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

		QMap<int, QVariant> _ret = QAbstractProxyModel::itemData(*index);
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
	virtual Qt::ItemFlags flags(const QModelIndex& index) const override {
		if (vtbl->flags == 0) {
			return QAbstractProxyModel::flags(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		int callback_return_value = vtbl->flags(vtbl, this, sigval1);

		return static_cast<Qt::ItemFlags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_flags(QModelIndex* index) const {

		Qt::ItemFlags _ret = QAbstractProxyModel::flags(*index);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setData(const QModelIndex& index, const QVariant& value, int role) override {
		if (vtbl->setData == 0) {
			return QAbstractProxyModel::setData(index, value, role);
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

		return QAbstractProxyModel::setData(*index, *value, static_cast<int>(role));

	}

	// Subclass to allow providing a Go implementation
	virtual bool setItemData(const QModelIndex& index, const QMap<int, QVariant>& roles) override {
		if (vtbl->setItemData == 0) {
			return QAbstractProxyModel::setItemData(index, roles);
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

		return QAbstractProxyModel::setItemData(*index, roles_QMap);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setHeaderData(int section, Qt::Orientation orientation, const QVariant& value, int role) override {
		if (vtbl->setHeaderData == 0) {
			return QAbstractProxyModel::setHeaderData(section, orientation, value, role);
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

		return QAbstractProxyModel::setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex buddy(const QModelIndex& index) const override {
		if (vtbl->buddy == 0) {
			return QAbstractProxyModel::buddy(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QModelIndex* callback_return_value = vtbl->buddy(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_buddy(QModelIndex* index) const {

		return new QModelIndex(QAbstractProxyModel::buddy(*index));

	}

	// Subclass to allow providing a Go implementation
	virtual bool canFetchMore(const QModelIndex& parent) const override {
		if (vtbl->canFetchMore == 0) {
			return QAbstractProxyModel::canFetchMore(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->canFetchMore(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canFetchMore(QModelIndex* parent) const {

		return QAbstractProxyModel::canFetchMore(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual void fetchMore(const QModelIndex& parent) override {
		if (vtbl->fetchMore == 0) {
			QAbstractProxyModel::fetchMore(parent);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		vtbl->fetchMore(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_fetchMore(QModelIndex* parent) {

		QAbstractProxyModel::fetchMore(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual void sort(int column, Qt::SortOrder order) override {
		if (vtbl->sort == 0) {
			QAbstractProxyModel::sort(column, order);
			return;
		}

		int sigval1 = column;
		Qt::SortOrder order_ret = order;
		int sigval2 = static_cast<int>(order_ret);

		vtbl->sort(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sort(int column, int order) {

		QAbstractProxyModel::sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize span(const QModelIndex& index) const override {
		if (vtbl->span == 0) {
			return QAbstractProxyModel::span(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->span(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_span(QModelIndex* index) const {

		return new QSize(QAbstractProxyModel::span(*index));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasChildren(const QModelIndex& parent) const override {
		if (vtbl->hasChildren == 0) {
			return QAbstractProxyModel::hasChildren(parent);
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		bool callback_return_value = vtbl->hasChildren(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasChildren(QModelIndex* parent) const {

		return QAbstractProxyModel::hasChildren(*parent);

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex sibling(int row, int column, const QModelIndex& idx) const override {
		if (vtbl->sibling == 0) {
			return QAbstractProxyModel::sibling(row, column, idx);
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

		return new QModelIndex(QAbstractProxyModel::sibling(static_cast<int>(row), static_cast<int>(column), *idx));

	}

	// Subclass to allow providing a Go implementation
	virtual QMimeData* mimeData(const QModelIndexList& indexes) const override {
		if (vtbl->mimeData == 0) {
			return QAbstractProxyModel::mimeData(indexes);
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

		return QAbstractProxyModel::mimeData(indexes_QList);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canDropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) const override {
		if (vtbl->canDropMimeData == 0) {
			return QAbstractProxyModel::canDropMimeData(data, action, row, column, parent);
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

		return QAbstractProxyModel::canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool dropMimeData(const QMimeData* data, Qt::DropAction action, int row, int column, const QModelIndex& parent) override {
		if (vtbl->dropMimeData == 0) {
			return QAbstractProxyModel::dropMimeData(data, action, row, column, parent);
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

		return QAbstractProxyModel::dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QAbstractProxyModel::mimeTypes();
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

		QStringList _ret = QAbstractProxyModel::mimeTypes();
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
	virtual Qt::DropActions supportedDragActions() const override {
		if (vtbl->supportedDragActions == 0) {
			return QAbstractProxyModel::supportedDragActions();
		}


		int callback_return_value = vtbl->supportedDragActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_supportedDragActions() const {

		Qt::DropActions _ret = QAbstractProxyModel::supportedDragActions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QAbstractProxyModel::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_supportedDropActions() const {

		Qt::DropActions _ret = QAbstractProxyModel::supportedDropActions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex index(int row, int column, const QModelIndex& parent) const override {
		if (vtbl->index == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		int sigval1 = row;
		int sigval2 = column;
		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&parent_ret);

		QModelIndex* callback_return_value = vtbl->index(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex parent(const QModelIndex& child) const override {
		if (vtbl->parent == 0) {
			return QModelIndex(); // Pure virtual, there is no base we can call
		}

		const QModelIndex& child_ret = child;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&child_ret);

		QModelIndex* callback_return_value = vtbl->parent(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual int rowCount(const QModelIndex& parent) const override {
		if (vtbl->rowCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->rowCount(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual int columnCount(const QModelIndex& parent) const override {
		if (vtbl->columnCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);

		int callback_return_value = vtbl->columnCount(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual bool insertRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->insertRows == 0) {
			return QAbstractProxyModel::insertRows(row, count, parent);
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

		return QAbstractProxyModel::insertRows(static_cast<int>(row), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool insertColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->insertColumns == 0) {
			return QAbstractProxyModel::insertColumns(column, count, parent);
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

		return QAbstractProxyModel::insertColumns(static_cast<int>(column), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool removeRows(int row, int count, const QModelIndex& parent) override {
		if (vtbl->removeRows == 0) {
			return QAbstractProxyModel::removeRows(row, count, parent);
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

		return QAbstractProxyModel::removeRows(static_cast<int>(row), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool removeColumns(int column, int count, const QModelIndex& parent) override {
		if (vtbl->removeColumns == 0) {
			return QAbstractProxyModel::removeColumns(column, count, parent);
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

		return QAbstractProxyModel::removeColumns(static_cast<int>(column), static_cast<int>(count), *parent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool moveRows(const QModelIndex& sourceParent, int sourceRow, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveRows == 0) {
			return QAbstractProxyModel::moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
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

		return QAbstractProxyModel::moveRows(*sourceParent, static_cast<int>(sourceRow), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));

	}

	// Subclass to allow providing a Go implementation
	virtual bool moveColumns(const QModelIndex& sourceParent, int sourceColumn, int count, const QModelIndex& destinationParent, int destinationChild) override {
		if (vtbl->moveColumns == 0) {
			return QAbstractProxyModel::moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
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

		return QAbstractProxyModel::moveColumns(*sourceParent, static_cast<int>(sourceColumn), static_cast<int>(count), *destinationParent, static_cast<int>(destinationChild));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList match(const QModelIndex& start, int role, const QVariant& value, int hits, Qt::MatchFlags flags) const override {
		if (vtbl->match == 0) {
			return QAbstractProxyModel::match(start, role, value, hits, flags);
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

		QModelIndexList _ret = QAbstractProxyModel::match(*start, static_cast<int>(role), *value, static_cast<int>(hits), static_cast<Qt::MatchFlags>(flags));
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
	virtual QHash<int, QByteArray> roleNames() const override {
		if (vtbl->roleNames == 0) {
			return QAbstractProxyModel::roleNames();
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

		QHash<int, QByteArray> _ret = QAbstractProxyModel::roleNames();
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
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractProxyModel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAbstractProxyModel::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractProxyModel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAbstractProxyModel::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractProxyModel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAbstractProxyModel::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractProxyModel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAbstractProxyModel::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractProxyModel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAbstractProxyModel::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractProxyModel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAbstractProxyModel::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractProxyModel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAbstractProxyModel::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_resetInternalData() {

		QAbstractProxyModel::resetInternalData();

	}

	// Wrapper to allow calling protected method
	QModelIndex* protectedbase_createIndex(int row, int column) const {

		return new QModelIndex(QAbstractProxyModel::createIndex(static_cast<int>(row), static_cast<int>(column)));

	}

	// Wrapper to allow calling protected method
	void protectedbase_encodeData(struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) const {
		QModelIndexList indexes_QList;
		indexes_QList.reserve(indexes.len);
		QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
		for(size_t i = 0; i < indexes.len; ++i) {
			indexes_QList.push_back(*(indexes_arr[i]));
		}

		QAbstractProxyModel::encodeData(indexes_QList, *stream);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_decodeData(int row, int column, QModelIndex* parent, QDataStream* stream) {

		return QAbstractProxyModel::decodeData(static_cast<int>(row), static_cast<int>(column), *parent, *stream);

	}

	// Wrapper to allow calling protected method
	void protectedbase_beginInsertRows(QModelIndex* parent, int first, int last) {

		QAbstractProxyModel::beginInsertRows(*parent, static_cast<int>(first), static_cast<int>(last));

	}

	// Wrapper to allow calling protected method
	void protectedbase_endInsertRows() {

		QAbstractProxyModel::endInsertRows();

	}

	// Wrapper to allow calling protected method
	void protectedbase_beginRemoveRows(QModelIndex* parent, int first, int last) {

		QAbstractProxyModel::beginRemoveRows(*parent, static_cast<int>(first), static_cast<int>(last));

	}

	// Wrapper to allow calling protected method
	void protectedbase_endRemoveRows() {

		QAbstractProxyModel::endRemoveRows();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_beginMoveRows(QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {

		return QAbstractProxyModel::beginMoveRows(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationRow));

	}

	// Wrapper to allow calling protected method
	void protectedbase_endMoveRows() {

		QAbstractProxyModel::endMoveRows();

	}

	// Wrapper to allow calling protected method
	void protectedbase_beginInsertColumns(QModelIndex* parent, int first, int last) {

		QAbstractProxyModel::beginInsertColumns(*parent, static_cast<int>(first), static_cast<int>(last));

	}

	// Wrapper to allow calling protected method
	void protectedbase_endInsertColumns() {

		QAbstractProxyModel::endInsertColumns();

	}

	// Wrapper to allow calling protected method
	void protectedbase_beginRemoveColumns(QModelIndex* parent, int first, int last) {

		QAbstractProxyModel::beginRemoveColumns(*parent, static_cast<int>(first), static_cast<int>(last));

	}

	// Wrapper to allow calling protected method
	void protectedbase_endRemoveColumns() {

		QAbstractProxyModel::endRemoveColumns();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_beginMoveColumns(QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {

		return QAbstractProxyModel::beginMoveColumns(*sourceParent, static_cast<int>(sourceFirst), static_cast<int>(sourceLast), *destinationParent, static_cast<int>(destinationColumn));

	}

	// Wrapper to allow calling protected method
	void protectedbase_endMoveColumns() {

		QAbstractProxyModel::endMoveColumns();

	}

	// Wrapper to allow calling protected method
	void protectedbase_beginResetModel() {

		QAbstractProxyModel::beginResetModel();

	}

	// Wrapper to allow calling protected method
	void protectedbase_endResetModel() {

		QAbstractProxyModel::endResetModel();

	}

	// Wrapper to allow calling protected method
	void protectedbase_changePersistentIndex(QModelIndex* from, QModelIndex* to) {

		QAbstractProxyModel::changePersistentIndex(*from, *to);

	}

	// Wrapper to allow calling protected method
	void protectedbase_changePersistentIndexList(struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
		QModelIndexList from_QList;
		from_QList.reserve(from.len);
		QModelIndex** from_arr = static_cast<QModelIndex**>(from.data);
		for(size_t i = 0; i < from.len; ++i) {
			from_QList.push_back(*(from_arr[i]));
		}
		QModelIndexList to_QList;
		to_QList.reserve(to.len);
		QModelIndex** to_arr = static_cast<QModelIndex**>(to.data);
		for(size_t i = 0; i < to.len; ++i) {
			to_QList.push_back(*(to_arr[i]));
		}

		QAbstractProxyModel::changePersistentIndexList(from_QList, to_QList);

	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of QModelIndex* */  protectedbase_persistentIndexList() const {

		QModelIndexList _ret = QAbstractProxyModel::persistentIndexList();
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

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QAbstractProxyModel::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QAbstractProxyModel::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QAbstractProxyModel::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QAbstractProxyModel::isSignalConnected(*signal);

	}

};

QAbstractProxyModel* QAbstractProxyModel_new(struct QAbstractProxyModel_VTable* vtbl) {
	return new MiqtVirtualQAbstractProxyModel(vtbl);
}

QAbstractProxyModel* QAbstractProxyModel_new2(struct QAbstractProxyModel_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQAbstractProxyModel(vtbl, parent);
}

void QAbstractProxyModel_virtbase(QAbstractProxyModel* src, QAbstractItemModel** outptr_QAbstractItemModel) {
	*outptr_QAbstractItemModel = static_cast<QAbstractItemModel*>(src);
}

QMetaObject* QAbstractProxyModel_metaObject(const QAbstractProxyModel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractProxyModel_metacast(QAbstractProxyModel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractProxyModel_metacall(QAbstractProxyModel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractProxyModel_tr(const char* s) {
	QString _ret = QAbstractProxyModel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_trUtf8(const char* s) {
	QString _ret = QAbstractProxyModel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractProxyModel_setSourceModel(QAbstractProxyModel* self, QAbstractItemModel* sourceModel) {
	self->setSourceModel(sourceModel);
}

QAbstractItemModel* QAbstractProxyModel_sourceModel(const QAbstractProxyModel* self) {
	return self->sourceModel();
}

QModelIndex* QAbstractProxyModel_mapToSource(const QAbstractProxyModel* self, QModelIndex* proxyIndex) {
	return new QModelIndex(self->mapToSource(*proxyIndex));
}

QModelIndex* QAbstractProxyModel_mapFromSource(const QAbstractProxyModel* self, QModelIndex* sourceIndex) {
	return new QModelIndex(self->mapFromSource(*sourceIndex));
}

QItemSelection* QAbstractProxyModel_mapSelectionToSource(const QAbstractProxyModel* self, QItemSelection* selection) {
	return new QItemSelection(self->mapSelectionToSource(*selection));
}

QItemSelection* QAbstractProxyModel_mapSelectionFromSource(const QAbstractProxyModel* self, QItemSelection* selection) {
	return new QItemSelection(self->mapSelectionFromSource(*selection));
}

bool QAbstractProxyModel_submit(QAbstractProxyModel* self) {
	return self->submit();
}

void QAbstractProxyModel_revert(QAbstractProxyModel* self) {
	self->revert();
}

QVariant* QAbstractProxyModel_data(const QAbstractProxyModel* self, QModelIndex* proxyIndex, int role) {
	return new QVariant(self->data(*proxyIndex, static_cast<int>(role)));
}

QVariant* QAbstractProxyModel_headerData(const QAbstractProxyModel* self, int section, int orientation, int role) {
	return new QVariant(self->headerData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), static_cast<int>(role)));
}

struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_itemData(const QAbstractProxyModel* self, QModelIndex* index) {
	QMap<int, QVariant> _ret = self->itemData(*index);
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

int QAbstractProxyModel_flags(const QAbstractProxyModel* self, QModelIndex* index) {
	Qt::ItemFlags _ret = self->flags(*index);
	return static_cast<int>(_ret);
}

bool QAbstractProxyModel_setData(QAbstractProxyModel* self, QModelIndex* index, QVariant* value, int role) {
	return self->setData(*index, *value, static_cast<int>(role));
}

bool QAbstractProxyModel_setItemData(QAbstractProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	QMap<int, QVariant> roles_QMap;
	int* roles_karr = static_cast<int*>(roles.keys);
	QVariant** roles_varr = static_cast<QVariant**>(roles.values);
	for(size_t i = 0; i < roles.len; ++i) {
		roles_QMap[static_cast<int>(roles_karr[i])] = *(roles_varr[i]);
	}
	return self->setItemData(*index, roles_QMap);
}

bool QAbstractProxyModel_setHeaderData(QAbstractProxyModel* self, int section, int orientation, QVariant* value, int role) {
	return self->setHeaderData(static_cast<int>(section), static_cast<Qt::Orientation>(orientation), *value, static_cast<int>(role));
}

QModelIndex* QAbstractProxyModel_buddy(const QAbstractProxyModel* self, QModelIndex* index) {
	return new QModelIndex(self->buddy(*index));
}

bool QAbstractProxyModel_canFetchMore(const QAbstractProxyModel* self, QModelIndex* parent) {
	return self->canFetchMore(*parent);
}

void QAbstractProxyModel_fetchMore(QAbstractProxyModel* self, QModelIndex* parent) {
	self->fetchMore(*parent);
}

void QAbstractProxyModel_sort(QAbstractProxyModel* self, int column, int order) {
	self->sort(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QSize* QAbstractProxyModel_span(const QAbstractProxyModel* self, QModelIndex* index) {
	return new QSize(self->span(*index));
}

bool QAbstractProxyModel_hasChildren(const QAbstractProxyModel* self, QModelIndex* parent) {
	return self->hasChildren(*parent);
}

QModelIndex* QAbstractProxyModel_sibling(const QAbstractProxyModel* self, int row, int column, QModelIndex* idx) {
	return new QModelIndex(self->sibling(static_cast<int>(row), static_cast<int>(column), *idx));
}

QMimeData* QAbstractProxyModel_mimeData(const QAbstractProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes) {
	QModelIndexList indexes_QList;
	indexes_QList.reserve(indexes.len);
	QModelIndex** indexes_arr = static_cast<QModelIndex**>(indexes.data);
	for(size_t i = 0; i < indexes.len; ++i) {
		indexes_QList.push_back(*(indexes_arr[i]));
	}
	return self->mimeData(indexes_QList);
}

bool QAbstractProxyModel_canDropMimeData(const QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->canDropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

bool QAbstractProxyModel_dropMimeData(QAbstractProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return self->dropMimeData(data, static_cast<Qt::DropAction>(action), static_cast<int>(row), static_cast<int>(column), *parent);
}

struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_mimeTypes(const QAbstractProxyModel* self) {
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

int QAbstractProxyModel_supportedDragActions(const QAbstractProxyModel* self) {
	Qt::DropActions _ret = self->supportedDragActions();
	return static_cast<int>(_ret);
}

int QAbstractProxyModel_supportedDropActions(const QAbstractProxyModel* self) {
	Qt::DropActions _ret = self->supportedDropActions();
	return static_cast<int>(_ret);
}

struct miqt_string QAbstractProxyModel_tr2(const char* s, const char* c) {
	QString _ret = QAbstractProxyModel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractProxyModel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractProxyModel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractProxyModel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractProxyModel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractProxyModel_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_metaObject();
}

void* QAbstractProxyModel_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_metacast(param1);
}

int QAbstractProxyModel_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QAbstractProxyModel_virtualbase_setSourceModel(void* self, QAbstractItemModel* sourceModel) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_setSourceModel(sourceModel);
}

QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionToSource(const void* self, QItemSelection* selection) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_mapSelectionToSource(selection);
}

QItemSelection* QAbstractProxyModel_virtualbase_mapSelectionFromSource(const void* self, QItemSelection* selection) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_mapSelectionFromSource(selection);
}

bool QAbstractProxyModel_virtualbase_submit(void* self) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_submit();
}

void QAbstractProxyModel_virtualbase_revert(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_revert();
}

QVariant* QAbstractProxyModel_virtualbase_data(const void* self, QModelIndex* proxyIndex, int role) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_data(proxyIndex, role);
}

QVariant* QAbstractProxyModel_virtualbase_headerData(const void* self, int section, int orientation, int role) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_headerData(section, orientation, role);
}

struct miqt_map /* of int to QVariant* */  QAbstractProxyModel_virtualbase_itemData(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_itemData(index);
}

int QAbstractProxyModel_virtualbase_flags(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_flags(index);
}

bool QAbstractProxyModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_setData(index, value, role);
}

bool QAbstractProxyModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_setItemData(index, roles);
}

bool QAbstractProxyModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_setHeaderData(section, orientation, value, role);
}

QModelIndex* QAbstractProxyModel_virtualbase_buddy(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_buddy(index);
}

bool QAbstractProxyModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_canFetchMore(parent);
}

void QAbstractProxyModel_virtualbase_fetchMore(void* self, QModelIndex* parent) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_fetchMore(parent);
}

void QAbstractProxyModel_virtualbase_sort(void* self, int column, int order) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_sort(column, order);
}

QSize* QAbstractProxyModel_virtualbase_span(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_span(index);
}

bool QAbstractProxyModel_virtualbase_hasChildren(const void* self, QModelIndex* parent) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_hasChildren(parent);
}

QModelIndex* QAbstractProxyModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_sibling(row, column, idx);
}

QMimeData* QAbstractProxyModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_mimeData(indexes);
}

bool QAbstractProxyModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_canDropMimeData(data, action, row, column, parent);
}

bool QAbstractProxyModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_dropMimeData(data, action, row, column, parent);
}

struct miqt_array /* of struct miqt_string */  QAbstractProxyModel_virtualbase_mimeTypes(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_mimeTypes();
}

int QAbstractProxyModel_virtualbase_supportedDragActions(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_supportedDragActions();
}

int QAbstractProxyModel_virtualbase_supportedDropActions(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_supportedDropActions();
}

bool QAbstractProxyModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_insertRows(row, count, parent);
}

bool QAbstractProxyModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_insertColumns(column, count, parent);
}

bool QAbstractProxyModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_removeRows(row, count, parent);
}

bool QAbstractProxyModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_removeColumns(column, count, parent);
}

bool QAbstractProxyModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_moveRows(sourceParent, sourceRow, count, destinationParent, destinationChild);
}

bool QAbstractProxyModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_moveColumns(sourceParent, sourceColumn, count, destinationParent, destinationChild);
}

struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_match(start, role, value, hits, flags);
}

struct miqt_map /* of int to struct miqt_string */  QAbstractProxyModel_virtualbase_roleNames(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_roleNames();
}

bool QAbstractProxyModel_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_event(event);
}

bool QAbstractProxyModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAbstractProxyModel_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_timerEvent(event);
}

void QAbstractProxyModel_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_childEvent(event);
}

void QAbstractProxyModel_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_customEvent(event);
}

void QAbstractProxyModel_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_connectNotify(signal);
}

void QAbstractProxyModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->virtualbase_disconnectNotify(signal);
}

void QAbstractProxyModel_protectedbase_resetInternalData(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_resetInternalData();
}

QModelIndex* QAbstractProxyModel_protectedbase_createIndex(const void* self, int row, int column) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_createIndex(row, column);
}

void QAbstractProxyModel_protectedbase_encodeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream) {
	( (const MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_encodeData(indexes, stream);
}

bool QAbstractProxyModel_protectedbase_decodeData(void* self, int row, int column, QModelIndex* parent, QDataStream* stream) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_decodeData(row, column, parent, stream);
}

void QAbstractProxyModel_protectedbase_beginInsertRows(void* self, QModelIndex* parent, int first, int last) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_beginInsertRows(parent, first, last);
}

void QAbstractProxyModel_protectedbase_endInsertRows(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_endInsertRows();
}

void QAbstractProxyModel_protectedbase_beginRemoveRows(void* self, QModelIndex* parent, int first, int last) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_beginRemoveRows(parent, first, last);
}

void QAbstractProxyModel_protectedbase_endRemoveRows(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_endRemoveRows();
}

bool QAbstractProxyModel_protectedbase_beginMoveRows(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_beginMoveRows(sourceParent, sourceFirst, sourceLast, destinationParent, destinationRow);
}

void QAbstractProxyModel_protectedbase_endMoveRows(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_endMoveRows();
}

void QAbstractProxyModel_protectedbase_beginInsertColumns(void* self, QModelIndex* parent, int first, int last) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_beginInsertColumns(parent, first, last);
}

void QAbstractProxyModel_protectedbase_endInsertColumns(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_endInsertColumns();
}

void QAbstractProxyModel_protectedbase_beginRemoveColumns(void* self, QModelIndex* parent, int first, int last) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_beginRemoveColumns(parent, first, last);
}

void QAbstractProxyModel_protectedbase_endRemoveColumns(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_endRemoveColumns();
}

bool QAbstractProxyModel_protectedbase_beginMoveColumns(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn) {
	return ( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_beginMoveColumns(sourceParent, sourceFirst, sourceLast, destinationParent, destinationColumn);
}

void QAbstractProxyModel_protectedbase_endMoveColumns(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_endMoveColumns();
}

void QAbstractProxyModel_protectedbase_beginResetModel(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_beginResetModel();
}

void QAbstractProxyModel_protectedbase_endResetModel(void* self) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_endResetModel();
}

void QAbstractProxyModel_protectedbase_changePersistentIndex(void* self, QModelIndex* from, QModelIndex* to) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_changePersistentIndex(from, to);
}

void QAbstractProxyModel_protectedbase_changePersistentIndexList(void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to) {
	( (MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_changePersistentIndexList(from, to);
}

struct miqt_array /* of QModelIndex* */  QAbstractProxyModel_protectedbase_persistentIndexList(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_persistentIndexList();
}

QObject* QAbstractProxyModel_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_sender();
}

int QAbstractProxyModel_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_senderSignalIndex();
}

int QAbstractProxyModel_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_receivers(signal);
}

bool QAbstractProxyModel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQAbstractProxyModel*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QAbstractProxyModel_staticMetaObject() { return &QAbstractProxyModel::staticMetaObject; }
void QAbstractProxyModel_delete(QAbstractProxyModel* self) {
	delete self;
}

