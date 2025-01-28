#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERBASH_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERBASH_H

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
class QsciLexerBash;
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
typedef struct QsciLexerBash QsciLexerBash;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerBash_VTable {
	void (*destructor)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self);
	QMetaObject* (*metaObject)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	void* (*metacast)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, const char* param1);
	int (*metacall)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, bool fold);
	const char* (*language)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	const char* (*lexer)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	int (*lexerId)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	const char* (*autoCompletionFillups)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	const char* (*blockEnd)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int* style);
	int (*blockLookback)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	const char* (*blockStart)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int* style);
	int (*braceStyle)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	bool (*caseSensitive)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	QColor* (*color)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	bool (*eolFill)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	QFont* (*font)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	int (*indentationGuideView)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	const char* (*keywords)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int set);
	int (*defaultStyle)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	struct miqt_string (*description)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	QColor* (*paper)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	bool (*defaultEolFill)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, int style);
	void (*setEditor)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self);
	int (*styleBitsNeeded)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	const char* (*wordCharacters)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self);
	void (*setAutoIndentStyle)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerBash_VTable* vtbl, const QsciLexerBash* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerBash_VTable* vtbl, QsciLexerBash* self, QMetaMethod* signal);
};
QsciLexerBash* QsciLexerBash_new(struct QsciLexerBash_VTable* vtbl);
QsciLexerBash* QsciLexerBash_new2(struct QsciLexerBash_VTable* vtbl, QObject* parent);
void QsciLexerBash_virtbase(QsciLexerBash* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerBash_metaObject(const QsciLexerBash* self);
void* QsciLexerBash_metacast(QsciLexerBash* self, const char* param1);
int QsciLexerBash_metacall(QsciLexerBash* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerBash_tr(const char* s);
const char* QsciLexerBash_language(const QsciLexerBash* self);
const char* QsciLexerBash_lexer(const QsciLexerBash* self);
int QsciLexerBash_braceStyle(const QsciLexerBash* self);
const char* QsciLexerBash_wordCharacters(const QsciLexerBash* self);
QColor* QsciLexerBash_defaultColor(const QsciLexerBash* self, int style);
bool QsciLexerBash_defaultEolFill(const QsciLexerBash* self, int style);
QFont* QsciLexerBash_defaultFont(const QsciLexerBash* self, int style);
QColor* QsciLexerBash_defaultPaper(const QsciLexerBash* self, int style);
const char* QsciLexerBash_keywords(const QsciLexerBash* self, int set);
struct miqt_string QsciLexerBash_description(const QsciLexerBash* self, int style);
void QsciLexerBash_refreshProperties(QsciLexerBash* self);
bool QsciLexerBash_foldComments(const QsciLexerBash* self);
bool QsciLexerBash_foldCompact(const QsciLexerBash* self);
void QsciLexerBash_setFoldComments(QsciLexerBash* self, bool fold);
void QsciLexerBash_setFoldCompact(QsciLexerBash* self, bool fold);
struct miqt_string QsciLexerBash_tr2(const char* s, const char* c);
struct miqt_string QsciLexerBash_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerBash_virtualbase_metaObject(const void* self);
void* QsciLexerBash_virtualbase_metacast(void* self, const char* param1);
int QsciLexerBash_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerBash_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerBash_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerBash_virtualbase_language(const void* self);
const char* QsciLexerBash_virtualbase_lexer(const void* self);
int QsciLexerBash_virtualbase_lexerId(const void* self);
const char* QsciLexerBash_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerBash_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerBash_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerBash_virtualbase_blockLookback(const void* self);
const char* QsciLexerBash_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerBash_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerBash_virtualbase_braceStyle(const void* self);
bool QsciLexerBash_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerBash_virtualbase_color(const void* self, int style);
bool QsciLexerBash_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerBash_virtualbase_font(const void* self, int style);
int QsciLexerBash_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerBash_virtualbase_keywords(const void* self, int set);
int QsciLexerBash_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerBash_virtualbase_description(const void* self, int style);
QColor* QsciLexerBash_virtualbase_paper(const void* self, int style);
QColor* QsciLexerBash_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerBash_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerBash_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerBash_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerBash_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerBash_virtualbase_refreshProperties(void* self);
int QsciLexerBash_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerBash_virtualbase_wordCharacters(const void* self);
void QsciLexerBash_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerBash_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerBash_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerBash_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerBash_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerBash_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerBash_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerBash_virtualbase_event(void* self, QEvent* event);
bool QsciLexerBash_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerBash_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerBash_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerBash_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerBash_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerBash_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerBash_staticMetaObject();
void QsciLexerBash_delete(QsciLexerBash* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
