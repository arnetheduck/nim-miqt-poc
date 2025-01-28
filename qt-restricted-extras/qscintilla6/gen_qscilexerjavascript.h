#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERJAVASCRIPT_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERJAVASCRIPT_H

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
class QsciLexerCPP;
class QsciLexerJavaScript;
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
typedef struct QsciLexerCPP QsciLexerCPP;
typedef struct QsciLexerJavaScript QsciLexerJavaScript;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerJavaScript_VTable {
	void (*destructor)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self);
	QMetaObject* (*metaObject)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	void* (*metacast)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, const char* param1);
	int (*metacall)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, int param1, int param2, void** param3);
	void (*setFoldAtElse)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, bool fold);
	void (*setFoldComments)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, bool fold);
	void (*setStylePreprocessor)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, bool style);
	const char* (*language)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	const char* (*lexer)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	int (*lexerId)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	const char* (*autoCompletionFillups)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	const char* (*blockEnd)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int* style);
	int (*blockLookback)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	const char* (*blockStart)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int* style);
	int (*braceStyle)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	bool (*caseSensitive)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	QColor* (*color)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	bool (*eolFill)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	QFont* (*font)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	int (*indentationGuideView)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	const char* (*keywords)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int set);
	int (*defaultStyle)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	struct miqt_string (*description)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	QColor* (*paper)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	bool (*defaultEolFill)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, int style);
	void (*setEditor)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self);
	int (*styleBitsNeeded)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	const char* (*wordCharacters)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self);
	void (*setAutoIndentStyle)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerJavaScript_VTable* vtbl, const QsciLexerJavaScript* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerJavaScript_VTable* vtbl, QsciLexerJavaScript* self, QMetaMethod* signal);
};
QsciLexerJavaScript* QsciLexerJavaScript_new(struct QsciLexerJavaScript_VTable* vtbl);
QsciLexerJavaScript* QsciLexerJavaScript_new2(struct QsciLexerJavaScript_VTable* vtbl, QObject* parent);
void QsciLexerJavaScript_virtbase(QsciLexerJavaScript* src, QsciLexerCPP** outptr_QsciLexerCPP);
QMetaObject* QsciLexerJavaScript_metaObject(const QsciLexerJavaScript* self);
void* QsciLexerJavaScript_metacast(QsciLexerJavaScript* self, const char* param1);
int QsciLexerJavaScript_metacall(QsciLexerJavaScript* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerJavaScript_tr(const char* s);
const char* QsciLexerJavaScript_language(const QsciLexerJavaScript* self);
QColor* QsciLexerJavaScript_defaultColor(const QsciLexerJavaScript* self, int style);
bool QsciLexerJavaScript_defaultEolFill(const QsciLexerJavaScript* self, int style);
QFont* QsciLexerJavaScript_defaultFont(const QsciLexerJavaScript* self, int style);
QColor* QsciLexerJavaScript_defaultPaper(const QsciLexerJavaScript* self, int style);
const char* QsciLexerJavaScript_keywords(const QsciLexerJavaScript* self, int set);
struct miqt_string QsciLexerJavaScript_description(const QsciLexerJavaScript* self, int style);
struct miqt_string QsciLexerJavaScript_tr2(const char* s, const char* c);
struct miqt_string QsciLexerJavaScript_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerJavaScript_virtualbase_metaObject(const void* self);
void* QsciLexerJavaScript_virtualbase_metacast(void* self, const char* param1);
int QsciLexerJavaScript_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerJavaScript_virtualbase_setFoldAtElse(void* self, bool fold);
void QsciLexerJavaScript_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerJavaScript_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerJavaScript_virtualbase_setFoldPreprocessor(void* self, bool fold);
void QsciLexerJavaScript_virtualbase_setStylePreprocessor(void* self, bool style);
const char* QsciLexerJavaScript_virtualbase_language(const void* self);
const char* QsciLexerJavaScript_virtualbase_lexer(const void* self);
int QsciLexerJavaScript_virtualbase_lexerId(const void* self);
const char* QsciLexerJavaScript_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerJavaScript_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerJavaScript_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerJavaScript_virtualbase_blockLookback(const void* self);
const char* QsciLexerJavaScript_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerJavaScript_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerJavaScript_virtualbase_braceStyle(const void* self);
bool QsciLexerJavaScript_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerJavaScript_virtualbase_color(const void* self, int style);
bool QsciLexerJavaScript_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerJavaScript_virtualbase_font(const void* self, int style);
int QsciLexerJavaScript_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerJavaScript_virtualbase_keywords(const void* self, int set);
int QsciLexerJavaScript_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerJavaScript_virtualbase_description(const void* self, int style);
QColor* QsciLexerJavaScript_virtualbase_paper(const void* self, int style);
QColor* QsciLexerJavaScript_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerJavaScript_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerJavaScript_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerJavaScript_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerJavaScript_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerJavaScript_virtualbase_refreshProperties(void* self);
int QsciLexerJavaScript_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerJavaScript_virtualbase_wordCharacters(const void* self);
void QsciLexerJavaScript_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerJavaScript_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerJavaScript_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerJavaScript_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerJavaScript_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerJavaScript_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerJavaScript_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerJavaScript_virtualbase_event(void* self, QEvent* event);
bool QsciLexerJavaScript_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerJavaScript_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerJavaScript_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerJavaScript_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerJavaScript_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerJavaScript_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerJavaScript_staticMetaObject();
void QsciLexerJavaScript_delete(QsciLexerJavaScript* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
