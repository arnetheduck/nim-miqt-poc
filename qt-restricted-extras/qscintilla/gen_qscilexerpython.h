#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPYTHON_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPYTHON_H

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
class QsciLexerPython;
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
typedef struct QsciLexerPython QsciLexerPython;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerPython_VTable {
	void (*destructor)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self);
	QMetaObject* (*metaObject)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	void* (*metacast)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, const char* param1);
	int (*metacall)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, int param1, int param2, void** param3);
	int (*indentationGuideView)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	void (*setFoldComments)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, bool fold);
	void (*setFoldQuotes)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, bool fold);
	void (*setIndentationWarning)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, int warn);
	const char* (*language)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	const char* (*lexer)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	int (*lexerId)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	const char* (*autoCompletionFillups)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	const char* (*blockEnd)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int* style);
	int (*blockLookback)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	const char* (*blockStart)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int* style);
	int (*braceStyle)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	bool (*caseSensitive)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	QColor* (*color)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	bool (*eolFill)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	QFont* (*font)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	const char* (*keywords)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int set);
	int (*defaultStyle)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	struct miqt_string (*description)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	QColor* (*paper)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	bool (*defaultEolFill)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, int style);
	void (*setEditor)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self);
	int (*styleBitsNeeded)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	const char* (*wordCharacters)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self);
	void (*setAutoIndentStyle)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerPython_VTable* vtbl, const QsciLexerPython* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerPython_VTable* vtbl, QsciLexerPython* self, QMetaMethod* signal);
};
QsciLexerPython* QsciLexerPython_new(struct QsciLexerPython_VTable* vtbl);
QsciLexerPython* QsciLexerPython_new2(struct QsciLexerPython_VTable* vtbl, QObject* parent);
void QsciLexerPython_virtbase(QsciLexerPython* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerPython_metaObject(const QsciLexerPython* self);
void* QsciLexerPython_metacast(QsciLexerPython* self, const char* param1);
int QsciLexerPython_metacall(QsciLexerPython* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerPython_tr(const char* s);
struct miqt_string QsciLexerPython_trUtf8(const char* s);
const char* QsciLexerPython_language(const QsciLexerPython* self);
const char* QsciLexerPython_lexer(const QsciLexerPython* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPython_autoCompletionWordSeparators(const QsciLexerPython* self);
int QsciLexerPython_blockLookback(const QsciLexerPython* self);
const char* QsciLexerPython_blockStart(const QsciLexerPython* self);
int QsciLexerPython_braceStyle(const QsciLexerPython* self);
QColor* QsciLexerPython_defaultColor(const QsciLexerPython* self, int style);
bool QsciLexerPython_defaultEolFill(const QsciLexerPython* self, int style);
QFont* QsciLexerPython_defaultFont(const QsciLexerPython* self, int style);
QColor* QsciLexerPython_defaultPaper(const QsciLexerPython* self, int style);
int QsciLexerPython_indentationGuideView(const QsciLexerPython* self);
const char* QsciLexerPython_keywords(const QsciLexerPython* self, int set);
struct miqt_string QsciLexerPython_description(const QsciLexerPython* self, int style);
void QsciLexerPython_refreshProperties(QsciLexerPython* self);
bool QsciLexerPython_foldComments(const QsciLexerPython* self);
void QsciLexerPython_setFoldCompact(QsciLexerPython* self, bool fold);
bool QsciLexerPython_foldCompact(const QsciLexerPython* self);
bool QsciLexerPython_foldQuotes(const QsciLexerPython* self);
int QsciLexerPython_indentationWarning(const QsciLexerPython* self);
void QsciLexerPython_setHighlightSubidentifiers(QsciLexerPython* self, bool enabled);
bool QsciLexerPython_highlightSubidentifiers(const QsciLexerPython* self);
void QsciLexerPython_setStringsOverNewlineAllowed(QsciLexerPython* self, bool allowed);
bool QsciLexerPython_stringsOverNewlineAllowed(const QsciLexerPython* self);
void QsciLexerPython_setV2UnicodeAllowed(QsciLexerPython* self, bool allowed);
bool QsciLexerPython_v2UnicodeAllowed(const QsciLexerPython* self);
void QsciLexerPython_setV3BinaryOctalAllowed(QsciLexerPython* self, bool allowed);
bool QsciLexerPython_v3BinaryOctalAllowed(const QsciLexerPython* self);
void QsciLexerPython_setV3BytesAllowed(QsciLexerPython* self, bool allowed);
bool QsciLexerPython_v3BytesAllowed(const QsciLexerPython* self);
void QsciLexerPython_setFoldComments(QsciLexerPython* self, bool fold);
void QsciLexerPython_setFoldQuotes(QsciLexerPython* self, bool fold);
void QsciLexerPython_setIndentationWarning(QsciLexerPython* self, int warn);
struct miqt_string QsciLexerPython_tr2(const char* s, const char* c);
struct miqt_string QsciLexerPython_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerPython_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerPython_trUtf83(const char* s, const char* c, int n);
const char* QsciLexerPython_blockStart1(const QsciLexerPython* self, int* style);
QMetaObject* QsciLexerPython_virtualbase_metaObject(const void* self);
void* QsciLexerPython_virtualbase_metacast(void* self, const char* param1);
int QsciLexerPython_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QsciLexerPython_virtualbase_indentationGuideView(const void* self);
void QsciLexerPython_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerPython_virtualbase_setFoldQuotes(void* self, bool fold);
void QsciLexerPython_virtualbase_setIndentationWarning(void* self, int warn);
const char* QsciLexerPython_virtualbase_language(const void* self);
const char* QsciLexerPython_virtualbase_lexer(const void* self);
int QsciLexerPython_virtualbase_lexerId(const void* self);
const char* QsciLexerPython_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPython_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerPython_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerPython_virtualbase_blockLookback(const void* self);
const char* QsciLexerPython_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerPython_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerPython_virtualbase_braceStyle(const void* self);
bool QsciLexerPython_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerPython_virtualbase_color(const void* self, int style);
bool QsciLexerPython_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerPython_virtualbase_font(const void* self, int style);
const char* QsciLexerPython_virtualbase_keywords(const void* self, int set);
int QsciLexerPython_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerPython_virtualbase_description(const void* self, int style);
QColor* QsciLexerPython_virtualbase_paper(const void* self, int style);
QColor* QsciLexerPython_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerPython_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerPython_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerPython_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerPython_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerPython_virtualbase_refreshProperties(void* self);
int QsciLexerPython_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerPython_virtualbase_wordCharacters(const void* self);
void QsciLexerPython_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerPython_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerPython_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerPython_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerPython_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerPython_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPython_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPython_virtualbase_event(void* self, QEvent* event);
bool QsciLexerPython_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerPython_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerPython_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerPython_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerPython_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerPython_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerPython_staticMetaObject();
void QsciLexerPython_delete(QsciLexerPython* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
