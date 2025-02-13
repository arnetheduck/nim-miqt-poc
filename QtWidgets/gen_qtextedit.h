#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QTEXTEDIT_H
#define MIQT_QTWIDGETS_GEN_QTEXTEDIT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractScrollArea;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QColor;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QFont;
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMargins;
class QMenu;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPagedPaintDevice;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QRect;
class QRegularExpression;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
class QTabletEvent;
class QTextCharFormat;
class QTextCursor;
class QTextDocument;
class QTextEdit;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextEdit__ExtraSelection)
typedef QTextEdit::ExtraSelection QTextEdit__ExtraSelection;
#else
class QTextEdit__ExtraSelection;
#endif
class QTimerEvent;
class QUrl;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMenu QMenu;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegularExpression QRegularExpression;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextEdit QTextEdit;
typedef struct QTextEdit__ExtraSelection QTextEdit__ExtraSelection;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QTextEdit* QTextEdit_new(QWidget* parent);
QTextEdit* QTextEdit_new2();
QTextEdit* QTextEdit_new3(struct miqt_string text);
QTextEdit* QTextEdit_new4(struct miqt_string text, QWidget* parent);
void QTextEdit_virtbase(QTextEdit* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QTextEdit_metaObject(const QTextEdit* self);
void* QTextEdit_metacast(QTextEdit* self, const char* param1);
int QTextEdit_metacall(QTextEdit* self, int param1, int param2, void** param3);
struct miqt_string QTextEdit_tr(const char* s);
void QTextEdit_setDocument(QTextEdit* self, QTextDocument* document);
QTextDocument* QTextEdit_document(const QTextEdit* self);
void QTextEdit_setPlaceholderText(QTextEdit* self, struct miqt_string placeholderText);
struct miqt_string QTextEdit_placeholderText(const QTextEdit* self);
void QTextEdit_setTextCursor(QTextEdit* self, QTextCursor* cursor);
QTextCursor* QTextEdit_textCursor(const QTextEdit* self);
bool QTextEdit_isReadOnly(const QTextEdit* self);
void QTextEdit_setReadOnly(QTextEdit* self, bool ro);
void QTextEdit_setTextInteractionFlags(QTextEdit* self, int flags);
int QTextEdit_textInteractionFlags(const QTextEdit* self);
double QTextEdit_fontPointSize(const QTextEdit* self);
struct miqt_string QTextEdit_fontFamily(const QTextEdit* self);
int QTextEdit_fontWeight(const QTextEdit* self);
bool QTextEdit_fontUnderline(const QTextEdit* self);
bool QTextEdit_fontItalic(const QTextEdit* self);
QColor* QTextEdit_textColor(const QTextEdit* self);
QColor* QTextEdit_textBackgroundColor(const QTextEdit* self);
QFont* QTextEdit_currentFont(const QTextEdit* self);
int QTextEdit_alignment(const QTextEdit* self);
void QTextEdit_mergeCurrentCharFormat(QTextEdit* self, QTextCharFormat* modifier);
void QTextEdit_setCurrentCharFormat(QTextEdit* self, QTextCharFormat* format);
QTextCharFormat* QTextEdit_currentCharFormat(const QTextEdit* self);
int QTextEdit_autoFormatting(const QTextEdit* self);
void QTextEdit_setAutoFormatting(QTextEdit* self, int features);
bool QTextEdit_tabChangesFocus(const QTextEdit* self);
void QTextEdit_setTabChangesFocus(QTextEdit* self, bool b);
void QTextEdit_setDocumentTitle(QTextEdit* self, struct miqt_string title);
struct miqt_string QTextEdit_documentTitle(const QTextEdit* self);
bool QTextEdit_isUndoRedoEnabled(const QTextEdit* self);
void QTextEdit_setUndoRedoEnabled(QTextEdit* self, bool enable);
int QTextEdit_lineWrapMode(const QTextEdit* self);
void QTextEdit_setLineWrapMode(QTextEdit* self, int mode);
int QTextEdit_lineWrapColumnOrWidth(const QTextEdit* self);
void QTextEdit_setLineWrapColumnOrWidth(QTextEdit* self, int w);
int QTextEdit_wordWrapMode(const QTextEdit* self);
void QTextEdit_setWordWrapMode(QTextEdit* self, int policy);
bool QTextEdit_find(QTextEdit* self, struct miqt_string exp);
bool QTextEdit_findWithExp(QTextEdit* self, QRegularExpression* exp);
struct miqt_string QTextEdit_toPlainText(const QTextEdit* self);
struct miqt_string QTextEdit_toHtml(const QTextEdit* self);
struct miqt_string QTextEdit_toMarkdown(const QTextEdit* self);
void QTextEdit_ensureCursorVisible(QTextEdit* self);
QVariant* QTextEdit_loadResource(QTextEdit* self, int type, QUrl* name);
QMenu* QTextEdit_createStandardContextMenu(QTextEdit* self);
QMenu* QTextEdit_createStandardContextMenuWithPosition(QTextEdit* self, QPoint* position);
QTextCursor* QTextEdit_cursorForPosition(const QTextEdit* self, QPoint* pos);
QRect* QTextEdit_cursorRect(const QTextEdit* self, QTextCursor* cursor);
QRect* QTextEdit_cursorRect2(const QTextEdit* self);
struct miqt_string QTextEdit_anchorAt(const QTextEdit* self, QPoint* pos);
bool QTextEdit_overwriteMode(const QTextEdit* self);
void QTextEdit_setOverwriteMode(QTextEdit* self, bool overwrite);
double QTextEdit_tabStopDistance(const QTextEdit* self);
void QTextEdit_setTabStopDistance(QTextEdit* self, double distance);
int QTextEdit_cursorWidth(const QTextEdit* self);
void QTextEdit_setCursorWidth(QTextEdit* self, int width);
bool QTextEdit_acceptRichText(const QTextEdit* self);
void QTextEdit_setAcceptRichText(QTextEdit* self, bool accept);
void QTextEdit_setExtraSelections(QTextEdit* self, struct miqt_array /* of QTextEdit__ExtraSelection* */  selections);
struct miqt_array /* of QTextEdit__ExtraSelection* */  QTextEdit_extraSelections(const QTextEdit* self);
void QTextEdit_moveCursor(QTextEdit* self, int operation);
bool QTextEdit_canPaste(const QTextEdit* self);
void QTextEdit_print(const QTextEdit* self, QPagedPaintDevice* printer);
QVariant* QTextEdit_inputMethodQuery(const QTextEdit* self, int property);
QVariant* QTextEdit_inputMethodQuery2(const QTextEdit* self, int query, QVariant* argument);
void QTextEdit_setFontPointSize(QTextEdit* self, double s);
void QTextEdit_setFontFamily(QTextEdit* self, struct miqt_string fontFamily);
void QTextEdit_setFontWeight(QTextEdit* self, int w);
void QTextEdit_setFontUnderline(QTextEdit* self, bool b);
void QTextEdit_setFontItalic(QTextEdit* self, bool b);
void QTextEdit_setTextColor(QTextEdit* self, QColor* c);
void QTextEdit_setTextBackgroundColor(QTextEdit* self, QColor* c);
void QTextEdit_setCurrentFont(QTextEdit* self, QFont* f);
void QTextEdit_setAlignment(QTextEdit* self, int a);
void QTextEdit_setPlainText(QTextEdit* self, struct miqt_string text);
void QTextEdit_setHtml(QTextEdit* self, struct miqt_string text);
void QTextEdit_setMarkdown(QTextEdit* self, struct miqt_string markdown);
void QTextEdit_setText(QTextEdit* self, struct miqt_string text);
void QTextEdit_cut(QTextEdit* self);
void QTextEdit_copy(QTextEdit* self);
void QTextEdit_paste(QTextEdit* self);
void QTextEdit_undo(QTextEdit* self);
void QTextEdit_redo(QTextEdit* self);
void QTextEdit_clear(QTextEdit* self);
void QTextEdit_selectAll(QTextEdit* self);
void QTextEdit_insertPlainText(QTextEdit* self, struct miqt_string text);
void QTextEdit_insertHtml(QTextEdit* self, struct miqt_string text);
void QTextEdit_append(QTextEdit* self, struct miqt_string text);
void QTextEdit_scrollToAnchor(QTextEdit* self, struct miqt_string name);
void QTextEdit_zoomIn(QTextEdit* self);
void QTextEdit_zoomOut(QTextEdit* self);
void QTextEdit_textChanged(QTextEdit* self);
void QTextEdit_connect_textChanged(QTextEdit* self, intptr_t slot);
void QTextEdit_undoAvailable(QTextEdit* self, bool b);
void QTextEdit_connect_undoAvailable(QTextEdit* self, intptr_t slot);
void QTextEdit_redoAvailable(QTextEdit* self, bool b);
void QTextEdit_connect_redoAvailable(QTextEdit* self, intptr_t slot);
void QTextEdit_currentCharFormatChanged(QTextEdit* self, QTextCharFormat* format);
void QTextEdit_connect_currentCharFormatChanged(QTextEdit* self, intptr_t slot);
void QTextEdit_copyAvailable(QTextEdit* self, bool b);
void QTextEdit_connect_copyAvailable(QTextEdit* self, intptr_t slot);
void QTextEdit_selectionChanged(QTextEdit* self);
void QTextEdit_connect_selectionChanged(QTextEdit* self, intptr_t slot);
void QTextEdit_cursorPositionChanged(QTextEdit* self);
void QTextEdit_connect_cursorPositionChanged(QTextEdit* self, intptr_t slot);
bool QTextEdit_event(QTextEdit* self, QEvent* e);
void QTextEdit_timerEvent(QTextEdit* self, QTimerEvent* e);
void QTextEdit_keyPressEvent(QTextEdit* self, QKeyEvent* e);
void QTextEdit_keyReleaseEvent(QTextEdit* self, QKeyEvent* e);
void QTextEdit_resizeEvent(QTextEdit* self, QResizeEvent* e);
void QTextEdit_paintEvent(QTextEdit* self, QPaintEvent* e);
void QTextEdit_mousePressEvent(QTextEdit* self, QMouseEvent* e);
void QTextEdit_mouseMoveEvent(QTextEdit* self, QMouseEvent* e);
void QTextEdit_mouseReleaseEvent(QTextEdit* self, QMouseEvent* e);
void QTextEdit_mouseDoubleClickEvent(QTextEdit* self, QMouseEvent* e);
bool QTextEdit_focusNextPrevChild(QTextEdit* self, bool next);
void QTextEdit_contextMenuEvent(QTextEdit* self, QContextMenuEvent* e);
void QTextEdit_dragEnterEvent(QTextEdit* self, QDragEnterEvent* e);
void QTextEdit_dragLeaveEvent(QTextEdit* self, QDragLeaveEvent* e);
void QTextEdit_dragMoveEvent(QTextEdit* self, QDragMoveEvent* e);
void QTextEdit_dropEvent(QTextEdit* self, QDropEvent* e);
void QTextEdit_focusInEvent(QTextEdit* self, QFocusEvent* e);
void QTextEdit_focusOutEvent(QTextEdit* self, QFocusEvent* e);
void QTextEdit_showEvent(QTextEdit* self, QShowEvent* param1);
void QTextEdit_changeEvent(QTextEdit* self, QEvent* e);
void QTextEdit_wheelEvent(QTextEdit* self, QWheelEvent* e);
QMimeData* QTextEdit_createMimeDataFromSelection(const QTextEdit* self);
bool QTextEdit_canInsertFromMimeData(const QTextEdit* self, QMimeData* source);
void QTextEdit_insertFromMimeData(QTextEdit* self, QMimeData* source);
void QTextEdit_inputMethodEvent(QTextEdit* self, QInputMethodEvent* param1);
void QTextEdit_scrollContentsBy(QTextEdit* self, int dx, int dy);
void QTextEdit_doSetTextCursor(QTextEdit* self, QTextCursor* cursor);
struct miqt_string QTextEdit_tr2(const char* s, const char* c);
struct miqt_string QTextEdit_tr3(const char* s, const char* c, int n);
bool QTextEdit_find2(QTextEdit* self, struct miqt_string exp, int options);
bool QTextEdit_find22(QTextEdit* self, QRegularExpression* exp, int options);
struct miqt_string QTextEdit_toMarkdown1(const QTextEdit* self, int features);
void QTextEdit_moveCursor2(QTextEdit* self, int operation, int mode);
void QTextEdit_zoomIn1(QTextEdit* self, int range);
void QTextEdit_zoomOut1(QTextEdit* self, int range);
bool QTextEdit_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QTextEdit_virtualbase_metaObject(const void* self);
bool QTextEdit_override_virtual_metacast(void* self, intptr_t slot);
void* QTextEdit_virtualbase_metacast(void* self, const char* param1);
bool QTextEdit_override_virtual_metacall(void* self, intptr_t slot);
int QTextEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTextEdit_override_virtual_loadResource(void* self, intptr_t slot);
QVariant* QTextEdit_virtualbase_loadResource(void* self, int type, QUrl* name);
bool QTextEdit_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QTextEdit_virtualbase_inputMethodQuery(const void* self, int property);
bool QTextEdit_override_virtual_event(void* self, intptr_t slot);
bool QTextEdit_virtualbase_event(void* self, QEvent* e);
bool QTextEdit_override_virtual_timerEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_timerEvent(void* self, QTimerEvent* e);
bool QTextEdit_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* e);
bool QTextEdit_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
bool QTextEdit_override_virtual_resizeEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_resizeEvent(void* self, QResizeEvent* e);
bool QTextEdit_override_virtual_paintEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QTextEdit_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
bool QTextEdit_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
bool QTextEdit_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
bool QTextEdit_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e);
bool QTextEdit_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QTextEdit_virtualbase_focusNextPrevChild(void* self, bool next);
bool QTextEdit_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e);
bool QTextEdit_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e);
bool QTextEdit_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
bool QTextEdit_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
bool QTextEdit_override_virtual_dropEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_dropEvent(void* self, QDropEvent* e);
bool QTextEdit_override_virtual_focusInEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_focusInEvent(void* self, QFocusEvent* e);
bool QTextEdit_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* e);
bool QTextEdit_override_virtual_showEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QTextEdit_override_virtual_changeEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_changeEvent(void* self, QEvent* e);
bool QTextEdit_override_virtual_wheelEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_wheelEvent(void* self, QWheelEvent* e);
bool QTextEdit_override_virtual_createMimeDataFromSelection(void* self, intptr_t slot);
QMimeData* QTextEdit_virtualbase_createMimeDataFromSelection(const void* self);
bool QTextEdit_override_virtual_canInsertFromMimeData(void* self, intptr_t slot);
bool QTextEdit_virtualbase_canInsertFromMimeData(const void* self, QMimeData* source);
bool QTextEdit_override_virtual_insertFromMimeData(void* self, intptr_t slot);
void QTextEdit_virtualbase_insertFromMimeData(void* self, QMimeData* source);
bool QTextEdit_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QTextEdit_override_virtual_scrollContentsBy(void* self, intptr_t slot);
void QTextEdit_virtualbase_scrollContentsBy(void* self, int dx, int dy);
bool QTextEdit_override_virtual_doSetTextCursor(void* self, intptr_t slot);
void QTextEdit_virtualbase_doSetTextCursor(void* self, QTextCursor* cursor);
bool QTextEdit_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QTextEdit_virtualbase_minimumSizeHint(const void* self);
bool QTextEdit_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QTextEdit_virtualbase_sizeHint(const void* self);
bool QTextEdit_override_virtual_setupViewport(void* self, intptr_t slot);
void QTextEdit_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QTextEdit_override_virtual_eventFilter(void* self, intptr_t slot);
bool QTextEdit_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
bool QTextEdit_override_virtual_viewportEvent(void* self, intptr_t slot);
bool QTextEdit_virtualbase_viewportEvent(void* self, QEvent* param1);
bool QTextEdit_override_virtual_viewportSizeHint(void* self, intptr_t slot);
QSize* QTextEdit_virtualbase_viewportSizeHint(const void* self);
bool QTextEdit_override_virtual_initStyleOption(void* self, intptr_t slot);
void QTextEdit_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
bool QTextEdit_override_virtual_devType(void* self, intptr_t slot);
int QTextEdit_virtualbase_devType(const void* self);
bool QTextEdit_override_virtual_setVisible(void* self, intptr_t slot);
void QTextEdit_virtualbase_setVisible(void* self, bool visible);
bool QTextEdit_override_virtual_heightForWidth(void* self, intptr_t slot);
int QTextEdit_virtualbase_heightForWidth(const void* self, int param1);
bool QTextEdit_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QTextEdit_virtualbase_hasHeightForWidth(const void* self);
bool QTextEdit_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QTextEdit_virtualbase_paintEngine(const void* self);
bool QTextEdit_override_virtual_enterEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QTextEdit_override_virtual_leaveEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_leaveEvent(void* self, QEvent* event);
bool QTextEdit_override_virtual_moveEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QTextEdit_override_virtual_closeEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QTextEdit_override_virtual_tabletEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QTextEdit_override_virtual_actionEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QTextEdit_override_virtual_hideEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QTextEdit_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QTextEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QTextEdit_override_virtual_metric(void* self, intptr_t slot);
int QTextEdit_virtualbase_metric(const void* self, int param1);
bool QTextEdit_override_virtual_initPainter(void* self, intptr_t slot);
void QTextEdit_virtualbase_initPainter(const void* self, QPainter* painter);
bool QTextEdit_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QTextEdit_virtualbase_redirected(const void* self, QPoint* offset);
bool QTextEdit_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QTextEdit_virtualbase_sharedPainter(const void* self);
bool QTextEdit_override_virtual_childEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_childEvent(void* self, QChildEvent* event);
bool QTextEdit_override_virtual_customEvent(void* self, intptr_t slot);
void QTextEdit_virtualbase_customEvent(void* self, QEvent* event);
bool QTextEdit_override_virtual_connectNotify(void* self, intptr_t slot);
void QTextEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QTextEdit_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QTextEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QTextEdit_protectedbase_zoomInF(bool* _dynamic_cast_ok, void* self, float range);
void QTextEdit_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QTextEdit_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QTextEdit_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QTextEdit_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QTextEdit_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QTextEdit_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QTextEdit_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QTextEdit_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QTextEdit_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QTextEdit_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QTextEdit_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QTextEdit_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QTextEdit_staticMetaObject();
void QTextEdit_delete(QTextEdit* self);

QTextEdit__ExtraSelection* QTextEdit__ExtraSelection_new(QTextEdit__ExtraSelection* param1);
void QTextEdit__ExtraSelection_operatorAssign(QTextEdit__ExtraSelection* self, QTextEdit__ExtraSelection* param1);
void QTextEdit__ExtraSelection_delete(QTextEdit__ExtraSelection* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
