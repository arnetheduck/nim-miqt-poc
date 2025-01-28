#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERRUBY_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERRUBY_H

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
class QsciLexerRuby;
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
typedef struct QsciLexerRuby QsciLexerRuby;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerRuby_VTable {
	void (*destructor)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self);
	QMetaObject* (*metaObject)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	void* (*metacast)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, const char* param1);
	int (*metacall)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	const char* (*lexer)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	int (*lexerId)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	const char* (*autoCompletionFillups)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	const char* (*blockEnd)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int* style);
	int (*blockLookback)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	const char* (*blockStart)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int* style);
	int (*braceStyle)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	bool (*caseSensitive)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	QColor* (*color)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	bool (*eolFill)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	QFont* (*font)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	int (*indentationGuideView)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	const char* (*keywords)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int set);
	int (*defaultStyle)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	struct miqt_string (*description)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	QColor* (*paper)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	bool (*defaultEolFill)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, int style);
	void (*setEditor)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self);
	int (*styleBitsNeeded)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	const char* (*wordCharacters)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self);
	void (*setAutoIndentStyle)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerRuby_VTable* vtbl, const QsciLexerRuby* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerRuby_VTable* vtbl, QsciLexerRuby* self, QMetaMethod* signal);
};
QsciLexerRuby* QsciLexerRuby_new(struct QsciLexerRuby_VTable* vtbl);
QsciLexerRuby* QsciLexerRuby_new2(struct QsciLexerRuby_VTable* vtbl, QObject* parent);
void QsciLexerRuby_virtbase(QsciLexerRuby* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerRuby_metaObject(const QsciLexerRuby* self);
void* QsciLexerRuby_metacast(QsciLexerRuby* self, const char* param1);
int QsciLexerRuby_metacall(QsciLexerRuby* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerRuby_tr(const char* s);
const char* QsciLexerRuby_language(const QsciLexerRuby* self);
const char* QsciLexerRuby_lexer(const QsciLexerRuby* self);
const char* QsciLexerRuby_blockEnd(const QsciLexerRuby* self);
const char* QsciLexerRuby_blockStart(const QsciLexerRuby* self);
const char* QsciLexerRuby_blockStartKeyword(const QsciLexerRuby* self);
int QsciLexerRuby_braceStyle(const QsciLexerRuby* self);
QColor* QsciLexerRuby_defaultColor(const QsciLexerRuby* self, int style);
bool QsciLexerRuby_defaultEolFill(const QsciLexerRuby* self, int style);
QFont* QsciLexerRuby_defaultFont(const QsciLexerRuby* self, int style);
QColor* QsciLexerRuby_defaultPaper(const QsciLexerRuby* self, int style);
const char* QsciLexerRuby_keywords(const QsciLexerRuby* self, int set);
struct miqt_string QsciLexerRuby_description(const QsciLexerRuby* self, int style);
void QsciLexerRuby_refreshProperties(QsciLexerRuby* self);
void QsciLexerRuby_setFoldComments(QsciLexerRuby* self, bool fold);
bool QsciLexerRuby_foldComments(const QsciLexerRuby* self);
void QsciLexerRuby_setFoldCompact(QsciLexerRuby* self, bool fold);
bool QsciLexerRuby_foldCompact(const QsciLexerRuby* self);
struct miqt_string QsciLexerRuby_tr2(const char* s, const char* c);
struct miqt_string QsciLexerRuby_tr3(const char* s, const char* c, int n);
const char* QsciLexerRuby_blockEnd1(const QsciLexerRuby* self, int* style);
const char* QsciLexerRuby_blockStart1(const QsciLexerRuby* self, int* style);
const char* QsciLexerRuby_blockStartKeyword1(const QsciLexerRuby* self, int* style);
QMetaObject* QsciLexerRuby_virtualbase_metaObject(const void* self);
void* QsciLexerRuby_virtualbase_metacast(void* self, const char* param1);
int QsciLexerRuby_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerRuby_virtualbase_language(const void* self);
const char* QsciLexerRuby_virtualbase_lexer(const void* self);
int QsciLexerRuby_virtualbase_lexerId(const void* self);
const char* QsciLexerRuby_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerRuby_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerRuby_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerRuby_virtualbase_blockLookback(const void* self);
const char* QsciLexerRuby_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerRuby_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerRuby_virtualbase_braceStyle(const void* self);
bool QsciLexerRuby_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerRuby_virtualbase_color(const void* self, int style);
bool QsciLexerRuby_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerRuby_virtualbase_font(const void* self, int style);
int QsciLexerRuby_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerRuby_virtualbase_keywords(const void* self, int set);
int QsciLexerRuby_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerRuby_virtualbase_description(const void* self, int style);
QColor* QsciLexerRuby_virtualbase_paper(const void* self, int style);
QColor* QsciLexerRuby_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerRuby_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerRuby_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerRuby_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerRuby_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerRuby_virtualbase_refreshProperties(void* self);
int QsciLexerRuby_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerRuby_virtualbase_wordCharacters(const void* self);
void QsciLexerRuby_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerRuby_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerRuby_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerRuby_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerRuby_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerRuby_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerRuby_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerRuby_virtualbase_event(void* self, QEvent* event);
bool QsciLexerRuby_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerRuby_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerRuby_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerRuby_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerRuby_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerRuby_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerRuby_staticMetaObject();
void QsciLexerRuby_delete(QsciLexerRuby* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
