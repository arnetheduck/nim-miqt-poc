#pragma once
#ifndef MIQT_QTCORE_GEN_QSTRINGLISTMODEL_H
#define MIQT_QTCORE_GEN_QSTRINGLISTMODEL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemModel;
class QAbstractListModel;
class QChildEvent;
class QDataStream;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QModelRoleDataSpan;
class QObject;
class QSize;
class QStringListModel;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractListModel QAbstractListModel;
typedef struct QChildEvent QChildEvent;
typedef struct QDataStream QDataStream;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QSize QSize;
typedef struct QStringListModel QStringListModel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

struct QStringListModel_VTable {
	void (*destructor)(struct QStringListModel_VTable* vtbl, QStringListModel* self);
	QMetaObject* (*metaObject)(struct QStringListModel_VTable* vtbl, const QStringListModel* self);
	void* (*metacast)(struct QStringListModel_VTable* vtbl, QStringListModel* self, const char* param1);
	int (*metacall)(struct QStringListModel_VTable* vtbl, QStringListModel* self, int param1, int param2, void** param3);
	int (*rowCount)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* parent);
	QModelIndex* (*sibling)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, int row, int column, QModelIndex* idx);
	QVariant* (*data)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* index, int role);
	bool (*setData)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QModelIndex* index, QVariant* value, int role);
	bool (*clearItemData)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QModelIndex* index);
	int (*flags)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* index);
	bool (*insertRows)(struct QStringListModel_VTable* vtbl, QStringListModel* self, int row, int count, QModelIndex* parent);
	bool (*removeRows)(struct QStringListModel_VTable* vtbl, QStringListModel* self, int row, int count, QModelIndex* parent);
	bool (*moveRows)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* index);
	bool (*setItemData)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	void (*sort)(struct QStringListModel_VTable* vtbl, QStringListModel* self, int column, int order);
	int (*supportedDropActions)(struct QStringListModel_VTable* vtbl, const QStringListModel* self);
	QModelIndex* (*index)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, int row, int column, QModelIndex* parent);
	bool (*dropMimeData)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	QVariant* (*headerData)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(struct QStringListModel_VTable* vtbl, QStringListModel* self, int section, int orientation, QVariant* value, int role);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QStringListModel_VTable* vtbl, const QStringListModel* self);
	QMimeData* (*mimeData)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*canDropMimeData)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(struct QStringListModel_VTable* vtbl, const QStringListModel* self);
	bool (*insertColumns)(struct QStringListModel_VTable* vtbl, QStringListModel* self, int column, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QStringListModel_VTable* vtbl, QStringListModel* self, int column, int count, QModelIndex* parent);
	bool (*moveColumns)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*fetchMore)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QModelIndex* parent);
	bool (*canFetchMore)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* parent);
	QModelIndex* (*buddy)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* index);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QStringListModel_VTable* vtbl, const QStringListModel* self);
	void (*multiData)(struct QStringListModel_VTable* vtbl, const QStringListModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	bool (*submit)(struct QStringListModel_VTable* vtbl, QStringListModel* self);
	void (*revert)(struct QStringListModel_VTable* vtbl, QStringListModel* self);
	void (*resetInternalData)(struct QStringListModel_VTable* vtbl, QStringListModel* self);
	bool (*event)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QEvent* event);
	bool (*eventFilter)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QTimerEvent* event);
	void (*childEvent)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QChildEvent* event);
	void (*customEvent)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QEvent* event);
	void (*connectNotify)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QStringListModel_VTable* vtbl, QStringListModel* self, QMetaMethod* signal);
};
QStringListModel* QStringListModel_new(struct QStringListModel_VTable* vtbl);
QStringListModel* QStringListModel_new2(struct QStringListModel_VTable* vtbl, struct miqt_array /* of struct miqt_string */  strings);
QStringListModel* QStringListModel_new3(struct QStringListModel_VTable* vtbl, QObject* parent);
QStringListModel* QStringListModel_new4(struct QStringListModel_VTable* vtbl, struct miqt_array /* of struct miqt_string */  strings, QObject* parent);
void QStringListModel_virtbase(QStringListModel* src, QAbstractListModel** outptr_QAbstractListModel);
QMetaObject* QStringListModel_metaObject(const QStringListModel* self);
void* QStringListModel_metacast(QStringListModel* self, const char* param1);
int QStringListModel_metacall(QStringListModel* self, int param1, int param2, void** param3);
struct miqt_string QStringListModel_tr(const char* s);
int QStringListModel_rowCount(const QStringListModel* self, QModelIndex* parent);
QModelIndex* QStringListModel_sibling(const QStringListModel* self, int row, int column, QModelIndex* idx);
QVariant* QStringListModel_data(const QStringListModel* self, QModelIndex* index, int role);
bool QStringListModel_setData(QStringListModel* self, QModelIndex* index, QVariant* value, int role);
bool QStringListModel_clearItemData(QStringListModel* self, QModelIndex* index);
int QStringListModel_flags(const QStringListModel* self, QModelIndex* index);
bool QStringListModel_insertRows(QStringListModel* self, int row, int count, QModelIndex* parent);
bool QStringListModel_removeRows(QStringListModel* self, int row, int count, QModelIndex* parent);
bool QStringListModel_moveRows(QStringListModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_map /* of int to QVariant* */  QStringListModel_itemData(const QStringListModel* self, QModelIndex* index);
bool QStringListModel_setItemData(QStringListModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
void QStringListModel_sort(QStringListModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QStringListModel_stringList(const QStringListModel* self);
void QStringListModel_setStringList(QStringListModel* self, struct miqt_array /* of struct miqt_string */  strings);
int QStringListModel_supportedDropActions(const QStringListModel* self);
struct miqt_string QStringListModel_tr2(const char* s, const char* c);
struct miqt_string QStringListModel_tr3(const char* s, const char* c, int n);
QMetaObject* QStringListModel_virtualbase_metaObject(const void* self);
void* QStringListModel_virtualbase_metacast(void* self, const char* param1);
int QStringListModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QStringListModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
QModelIndex* QStringListModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
QVariant* QStringListModel_virtualbase_data(const void* self, QModelIndex* index, int role);
bool QStringListModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
bool QStringListModel_virtualbase_clearItemData(void* self, QModelIndex* index);
int QStringListModel_virtualbase_flags(const void* self, QModelIndex* index);
bool QStringListModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
struct miqt_map /* of int to QVariant* */  QStringListModel_virtualbase_itemData(const void* self, QModelIndex* index);
bool QStringListModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
void QStringListModel_virtualbase_sort(void* self, int column, int order);
int QStringListModel_virtualbase_supportedDropActions(const void* self);
QModelIndex* QStringListModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
bool QStringListModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
QVariant* QStringListModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
bool QStringListModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
struct miqt_array /* of struct miqt_string */  QStringListModel_virtualbase_mimeTypes(const void* self);
QMimeData* QStringListModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QStringListModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QStringListModel_virtualbase_supportedDragActions(const void* self);
bool QStringListModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
bool QStringListModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QStringListModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
bool QStringListModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
QModelIndex* QStringListModel_virtualbase_buddy(const void* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QStringListModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QStringListModel_virtualbase_span(const void* self, QModelIndex* index);
struct miqt_map /* of int to struct miqt_string */  QStringListModel_virtualbase_roleNames(const void* self);
void QStringListModel_virtualbase_multiData(const void* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
bool QStringListModel_virtualbase_submit(void* self);
void QStringListModel_virtualbase_revert(void* self);
void QStringListModel_virtualbase_resetInternalData(void* self);
bool QStringListModel_virtualbase_event(void* self, QEvent* event);
bool QStringListModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QStringListModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QStringListModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QStringListModel_virtualbase_customEvent(void* self, QEvent* event);
void QStringListModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QStringListModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QModelIndex* QStringListModel_protectedbase_createIndex(const void* self, int row, int column);
void QStringListModel_protectedbase_encodeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes, QDataStream* stream);
bool QStringListModel_protectedbase_decodeData(void* self, int row, int column, QModelIndex* parent, QDataStream* stream);
void QStringListModel_protectedbase_beginInsertRows(void* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endInsertRows(void* self);
void QStringListModel_protectedbase_beginRemoveRows(void* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endRemoveRows(void* self);
bool QStringListModel_protectedbase_beginMoveRows(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationRow);
void QStringListModel_protectedbase_endMoveRows(void* self);
void QStringListModel_protectedbase_beginInsertColumns(void* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endInsertColumns(void* self);
void QStringListModel_protectedbase_beginRemoveColumns(void* self, QModelIndex* parent, int first, int last);
void QStringListModel_protectedbase_endRemoveColumns(void* self);
bool QStringListModel_protectedbase_beginMoveColumns(void* self, QModelIndex* sourceParent, int sourceFirst, int sourceLast, QModelIndex* destinationParent, int destinationColumn);
void QStringListModel_protectedbase_endMoveColumns(void* self);
void QStringListModel_protectedbase_beginResetModel(void* self);
void QStringListModel_protectedbase_endResetModel(void* self);
void QStringListModel_protectedbase_changePersistentIndex(void* self, QModelIndex* from, QModelIndex* to);
void QStringListModel_protectedbase_changePersistentIndexList(void* self, struct miqt_array /* of QModelIndex* */  from, struct miqt_array /* of QModelIndex* */  to);
struct miqt_array /* of QModelIndex* */  QStringListModel_protectedbase_persistentIndexList(const void* self);
QObject* QStringListModel_protectedbase_sender(const void* self);
int QStringListModel_protectedbase_senderSignalIndex(const void* self);
int QStringListModel_protectedbase_receivers(const void* self, const char* signal);
bool QStringListModel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QStringListModel_staticMetaObject();
void QStringListModel_delete(QStringListModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
