#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERJSON_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERJSON_H

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
class QsciLexerJSON;
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
typedef struct QsciLexerJSON QsciLexerJSON;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerJSON_VTable {
	void (*destructor)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self);
	QMetaObject* (*metaObject)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	void* (*metacast)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, const char* param1);
	int (*metacall)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	const char* (*lexer)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	int (*lexerId)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	const char* (*autoCompletionFillups)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	const char* (*blockEnd)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int* style);
	int (*blockLookback)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	const char* (*blockStart)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int* style);
	int (*braceStyle)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	bool (*caseSensitive)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	QColor* (*color)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	bool (*eolFill)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	QFont* (*font)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	int (*indentationGuideView)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	const char* (*keywords)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int set);
	int (*defaultStyle)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	struct miqt_string (*description)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	QColor* (*paper)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	bool (*defaultEolFill)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, int style);
	void (*setEditor)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self);
	int (*styleBitsNeeded)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	const char* (*wordCharacters)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self);
	void (*setAutoIndentStyle)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerJSON_VTable* vtbl, const QsciLexerJSON* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerJSON_VTable* vtbl, QsciLexerJSON* self, QMetaMethod* signal);
};
QsciLexerJSON* QsciLexerJSON_new(struct QsciLexerJSON_VTable* vtbl);
QsciLexerJSON* QsciLexerJSON_new2(struct QsciLexerJSON_VTable* vtbl, QObject* parent);
void QsciLexerJSON_virtbase(QsciLexerJSON* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerJSON_metaObject(const QsciLexerJSON* self);
void* QsciLexerJSON_metacast(QsciLexerJSON* self, const char* param1);
int QsciLexerJSON_metacall(QsciLexerJSON* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerJSON_tr(const char* s);
struct miqt_string QsciLexerJSON_trUtf8(const char* s);
const char* QsciLexerJSON_language(const QsciLexerJSON* self);
const char* QsciLexerJSON_lexer(const QsciLexerJSON* self);
QColor* QsciLexerJSON_defaultColor(const QsciLexerJSON* self, int style);
bool QsciLexerJSON_defaultEolFill(const QsciLexerJSON* self, int style);
QFont* QsciLexerJSON_defaultFont(const QsciLexerJSON* self, int style);
QColor* QsciLexerJSON_defaultPaper(const QsciLexerJSON* self, int style);
const char* QsciLexerJSON_keywords(const QsciLexerJSON* self, int set);
struct miqt_string QsciLexerJSON_description(const QsciLexerJSON* self, int style);
void QsciLexerJSON_refreshProperties(QsciLexerJSON* self);
void QsciLexerJSON_setHighlightComments(QsciLexerJSON* self, bool highlight);
bool QsciLexerJSON_highlightComments(const QsciLexerJSON* self);
void QsciLexerJSON_setHighlightEscapeSequences(QsciLexerJSON* self, bool highlight);
bool QsciLexerJSON_highlightEscapeSequences(const QsciLexerJSON* self);
void QsciLexerJSON_setFoldCompact(QsciLexerJSON* self, bool fold);
bool QsciLexerJSON_foldCompact(const QsciLexerJSON* self);
struct miqt_string QsciLexerJSON_tr2(const char* s, const char* c);
struct miqt_string QsciLexerJSON_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerJSON_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerJSON_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerJSON_virtualbase_metaObject(const void* self);
void* QsciLexerJSON_virtualbase_metacast(void* self, const char* param1);
int QsciLexerJSON_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerJSON_virtualbase_language(const void* self);
const char* QsciLexerJSON_virtualbase_lexer(const void* self);
int QsciLexerJSON_virtualbase_lexerId(const void* self);
const char* QsciLexerJSON_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerJSON_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerJSON_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerJSON_virtualbase_blockLookback(const void* self);
const char* QsciLexerJSON_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerJSON_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerJSON_virtualbase_braceStyle(const void* self);
bool QsciLexerJSON_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerJSON_virtualbase_color(const void* self, int style);
bool QsciLexerJSON_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerJSON_virtualbase_font(const void* self, int style);
int QsciLexerJSON_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerJSON_virtualbase_keywords(const void* self, int set);
int QsciLexerJSON_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerJSON_virtualbase_description(const void* self, int style);
QColor* QsciLexerJSON_virtualbase_paper(const void* self, int style);
QColor* QsciLexerJSON_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerJSON_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerJSON_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerJSON_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerJSON_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerJSON_virtualbase_refreshProperties(void* self);
int QsciLexerJSON_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerJSON_virtualbase_wordCharacters(const void* self);
void QsciLexerJSON_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerJSON_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerJSON_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerJSON_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerJSON_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerJSON_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerJSON_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerJSON_virtualbase_event(void* self, QEvent* event);
bool QsciLexerJSON_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerJSON_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerJSON_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerJSON_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerJSON_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerJSON_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerJSON_staticMetaObject();
void QsciLexerJSON_delete(QsciLexerJSON* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
