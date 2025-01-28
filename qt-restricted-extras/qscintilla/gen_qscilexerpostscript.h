#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPOSTSCRIPT_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPOSTSCRIPT_H

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
class QsciLexerPostScript;
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
typedef struct QsciLexerPostScript QsciLexerPostScript;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerPostScript_VTable {
	void (*destructor)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self);
	QMetaObject* (*metaObject)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	void* (*metacast)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, const char* param1);
	int (*metacall)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, int param1, int param2, void** param3);
	void (*setTokenize)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, bool tokenize);
	void (*setLevel)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, int level);
	void (*setFoldCompact)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, bool fold);
	void (*setFoldAtElse)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, bool fold);
	const char* (*language)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	const char* (*lexer)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	int (*lexerId)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	const char* (*autoCompletionFillups)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	const char* (*blockEnd)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int* style);
	int (*blockLookback)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	const char* (*blockStart)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int* style);
	int (*braceStyle)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	bool (*caseSensitive)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	QColor* (*color)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	bool (*eolFill)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	QFont* (*font)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	int (*indentationGuideView)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	const char* (*keywords)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int set);
	int (*defaultStyle)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	struct miqt_string (*description)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	QColor* (*paper)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	bool (*defaultEolFill)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, int style);
	void (*setEditor)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self);
	int (*styleBitsNeeded)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	const char* (*wordCharacters)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self);
	void (*setAutoIndentStyle)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerPostScript_VTable* vtbl, const QsciLexerPostScript* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerPostScript_VTable* vtbl, QsciLexerPostScript* self, QMetaMethod* signal);
};
QsciLexerPostScript* QsciLexerPostScript_new(struct QsciLexerPostScript_VTable* vtbl);
QsciLexerPostScript* QsciLexerPostScript_new2(struct QsciLexerPostScript_VTable* vtbl, QObject* parent);
void QsciLexerPostScript_virtbase(QsciLexerPostScript* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerPostScript_metaObject(const QsciLexerPostScript* self);
void* QsciLexerPostScript_metacast(QsciLexerPostScript* self, const char* param1);
int QsciLexerPostScript_metacall(QsciLexerPostScript* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerPostScript_tr(const char* s);
struct miqt_string QsciLexerPostScript_trUtf8(const char* s);
const char* QsciLexerPostScript_language(const QsciLexerPostScript* self);
const char* QsciLexerPostScript_lexer(const QsciLexerPostScript* self);
int QsciLexerPostScript_braceStyle(const QsciLexerPostScript* self);
QColor* QsciLexerPostScript_defaultColor(const QsciLexerPostScript* self, int style);
QFont* QsciLexerPostScript_defaultFont(const QsciLexerPostScript* self, int style);
QColor* QsciLexerPostScript_defaultPaper(const QsciLexerPostScript* self, int style);
const char* QsciLexerPostScript_keywords(const QsciLexerPostScript* self, int set);
struct miqt_string QsciLexerPostScript_description(const QsciLexerPostScript* self, int style);
void QsciLexerPostScript_refreshProperties(QsciLexerPostScript* self);
bool QsciLexerPostScript_tokenize(const QsciLexerPostScript* self);
int QsciLexerPostScript_level(const QsciLexerPostScript* self);
bool QsciLexerPostScript_foldCompact(const QsciLexerPostScript* self);
bool QsciLexerPostScript_foldAtElse(const QsciLexerPostScript* self);
void QsciLexerPostScript_setTokenize(QsciLexerPostScript* self, bool tokenize);
void QsciLexerPostScript_setLevel(QsciLexerPostScript* self, int level);
void QsciLexerPostScript_setFoldCompact(QsciLexerPostScript* self, bool fold);
void QsciLexerPostScript_setFoldAtElse(QsciLexerPostScript* self, bool fold);
struct miqt_string QsciLexerPostScript_tr2(const char* s, const char* c);
struct miqt_string QsciLexerPostScript_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerPostScript_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerPostScript_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerPostScript_virtualbase_metaObject(const void* self);
void* QsciLexerPostScript_virtualbase_metacast(void* self, const char* param1);
int QsciLexerPostScript_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerPostScript_virtualbase_setTokenize(void* self, bool tokenize);
void QsciLexerPostScript_virtualbase_setLevel(void* self, int level);
void QsciLexerPostScript_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerPostScript_virtualbase_setFoldAtElse(void* self, bool fold);
const char* QsciLexerPostScript_virtualbase_language(const void* self);
const char* QsciLexerPostScript_virtualbase_lexer(const void* self);
int QsciLexerPostScript_virtualbase_lexerId(const void* self);
const char* QsciLexerPostScript_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPostScript_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerPostScript_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerPostScript_virtualbase_blockLookback(const void* self);
const char* QsciLexerPostScript_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerPostScript_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerPostScript_virtualbase_braceStyle(const void* self);
bool QsciLexerPostScript_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerPostScript_virtualbase_color(const void* self, int style);
bool QsciLexerPostScript_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerPostScript_virtualbase_font(const void* self, int style);
int QsciLexerPostScript_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerPostScript_virtualbase_keywords(const void* self, int set);
int QsciLexerPostScript_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerPostScript_virtualbase_description(const void* self, int style);
QColor* QsciLexerPostScript_virtualbase_paper(const void* self, int style);
QColor* QsciLexerPostScript_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerPostScript_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerPostScript_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerPostScript_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerPostScript_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerPostScript_virtualbase_refreshProperties(void* self);
int QsciLexerPostScript_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerPostScript_virtualbase_wordCharacters(const void* self);
void QsciLexerPostScript_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerPostScript_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerPostScript_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerPostScript_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerPostScript_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerPostScript_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPostScript_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPostScript_virtualbase_event(void* self, QEvent* event);
bool QsciLexerPostScript_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerPostScript_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerPostScript_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerPostScript_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerPostScript_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerPostScript_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerPostScript_staticMetaObject();
void QsciLexerPostScript_delete(QsciLexerPostScript* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
