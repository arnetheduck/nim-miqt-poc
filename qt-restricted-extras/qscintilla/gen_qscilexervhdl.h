#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERVHDL_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERVHDL_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QColor;
class QEvent;
class QFont;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSettings;
class QTimerEvent;
class QsciLexer;
class QsciLexerVHDL;
class QsciScintilla;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QColor QColor;
typedef struct QEvent QEvent;
typedef struct QFont QFont;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSettings QSettings;
typedef struct QTimerEvent QTimerEvent;
typedef struct QsciLexer QsciLexer;
typedef struct QsciLexerVHDL QsciLexerVHDL;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerVHDL_VTable {
	void (*destructor)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self);
	QMetaObject* (*metaObject)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	void* (*metacast)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, const char* param1);
	int (*metacall)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, bool fold);
	void (*setFoldAtElse)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, bool fold);
	void (*setFoldAtBegin)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, bool fold);
	void (*setFoldAtParenthesis)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, bool fold);
	const char* (*language)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	const char* (*lexer)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	int (*lexerId)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	const char* (*autoCompletionFillups)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	const char* (*blockEnd)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int* style);
	int (*blockLookback)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	const char* (*blockStart)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int* style);
	int (*braceStyle)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	bool (*caseSensitive)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	QColor* (*color)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	bool (*eolFill)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	QFont* (*font)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	int (*indentationGuideView)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	const char* (*keywords)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int set);
	int (*defaultStyle)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	struct miqt_string (*description)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	QColor* (*paper)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	bool (*defaultEolFill)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, int style);
	void (*setEditor)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self);
	int (*styleBitsNeeded)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	const char* (*wordCharacters)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self);
	void (*setAutoIndentStyle)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerVHDL_VTable* vtbl, const QsciLexerVHDL* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerVHDL_VTable* vtbl, QsciLexerVHDL* self, QMetaMethod* signal);
};
QsciLexerVHDL* QsciLexerVHDL_new(struct QsciLexerVHDL_VTable* vtbl);
QsciLexerVHDL* QsciLexerVHDL_new2(struct QsciLexerVHDL_VTable* vtbl, QObject* parent);
void QsciLexerVHDL_virtbase(QsciLexerVHDL* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerVHDL_metaObject(const QsciLexerVHDL* self);
void* QsciLexerVHDL_metacast(QsciLexerVHDL* self, const char* param1);
int QsciLexerVHDL_metacall(QsciLexerVHDL* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerVHDL_tr(const char* s);
struct miqt_string QsciLexerVHDL_trUtf8(const char* s);
const char* QsciLexerVHDL_language(const QsciLexerVHDL* self);
const char* QsciLexerVHDL_lexer(const QsciLexerVHDL* self);
int QsciLexerVHDL_braceStyle(const QsciLexerVHDL* self);
QColor* QsciLexerVHDL_defaultColor(const QsciLexerVHDL* self, int style);
bool QsciLexerVHDL_defaultEolFill(const QsciLexerVHDL* self, int style);
QFont* QsciLexerVHDL_defaultFont(const QsciLexerVHDL* self, int style);
QColor* QsciLexerVHDL_defaultPaper(const QsciLexerVHDL* self, int style);
const char* QsciLexerVHDL_keywords(const QsciLexerVHDL* self, int set);
struct miqt_string QsciLexerVHDL_description(const QsciLexerVHDL* self, int style);
void QsciLexerVHDL_refreshProperties(QsciLexerVHDL* self);
bool QsciLexerVHDL_foldComments(const QsciLexerVHDL* self);
bool QsciLexerVHDL_foldCompact(const QsciLexerVHDL* self);
bool QsciLexerVHDL_foldAtElse(const QsciLexerVHDL* self);
bool QsciLexerVHDL_foldAtBegin(const QsciLexerVHDL* self);
bool QsciLexerVHDL_foldAtParenthesis(const QsciLexerVHDL* self);
void QsciLexerVHDL_setFoldComments(QsciLexerVHDL* self, bool fold);
void QsciLexerVHDL_setFoldCompact(QsciLexerVHDL* self, bool fold);
void QsciLexerVHDL_setFoldAtElse(QsciLexerVHDL* self, bool fold);
void QsciLexerVHDL_setFoldAtBegin(QsciLexerVHDL* self, bool fold);
void QsciLexerVHDL_setFoldAtParenthesis(QsciLexerVHDL* self, bool fold);
struct miqt_string QsciLexerVHDL_tr2(const char* s, const char* c);
struct miqt_string QsciLexerVHDL_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerVHDL_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerVHDL_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerVHDL_virtualbase_metaObject(const void* self);
void* QsciLexerVHDL_virtualbase_metacast(void* self, const char* param1);
int QsciLexerVHDL_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerVHDL_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerVHDL_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerVHDL_virtualbase_setFoldAtElse(void* self, bool fold);
void QsciLexerVHDL_virtualbase_setFoldAtBegin(void* self, bool fold);
void QsciLexerVHDL_virtualbase_setFoldAtParenthesis(void* self, bool fold);
const char* QsciLexerVHDL_virtualbase_language(const void* self);
const char* QsciLexerVHDL_virtualbase_lexer(const void* self);
int QsciLexerVHDL_virtualbase_lexerId(const void* self);
const char* QsciLexerVHDL_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerVHDL_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerVHDL_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerVHDL_virtualbase_blockLookback(const void* self);
const char* QsciLexerVHDL_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerVHDL_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerVHDL_virtualbase_braceStyle(const void* self);
bool QsciLexerVHDL_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerVHDL_virtualbase_color(const void* self, int style);
bool QsciLexerVHDL_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerVHDL_virtualbase_font(const void* self, int style);
int QsciLexerVHDL_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerVHDL_virtualbase_keywords(const void* self, int set);
int QsciLexerVHDL_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerVHDL_virtualbase_description(const void* self, int style);
QColor* QsciLexerVHDL_virtualbase_paper(const void* self, int style);
QColor* QsciLexerVHDL_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerVHDL_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerVHDL_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerVHDL_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerVHDL_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerVHDL_virtualbase_refreshProperties(void* self);
int QsciLexerVHDL_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerVHDL_virtualbase_wordCharacters(const void* self);
void QsciLexerVHDL_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerVHDL_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerVHDL_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerVHDL_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerVHDL_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerVHDL_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerVHDL_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerVHDL_virtualbase_event(void* self, QEvent* event);
bool QsciLexerVHDL_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerVHDL_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerVHDL_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerVHDL_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerVHDL_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerVHDL_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerVHDL_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerVHDL_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerVHDL_protectedbase_sender(const void* self);
int QsciLexerVHDL_protectedbase_senderSignalIndex(const void* self);
int QsciLexerVHDL_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerVHDL_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerVHDL_staticMetaObject();
void QsciLexerVHDL_delete(QsciLexerVHDL* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
