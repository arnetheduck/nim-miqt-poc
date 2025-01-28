#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERSPICE_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERSPICE_H

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
class QsciLexerSpice;
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
typedef struct QsciLexerSpice QsciLexerSpice;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerSpice_VTable {
	void (*destructor)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self);
	QMetaObject* (*metaObject)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	void* (*metacast)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, const char* param1);
	int (*metacall)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	const char* (*lexer)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	int (*lexerId)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	const char* (*autoCompletionFillups)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	const char* (*blockEnd)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int* style);
	int (*blockLookback)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	const char* (*blockStart)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int* style);
	int (*braceStyle)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	bool (*caseSensitive)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	QColor* (*color)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	bool (*eolFill)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	QFont* (*font)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	int (*indentationGuideView)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	const char* (*keywords)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int set);
	int (*defaultStyle)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	struct miqt_string (*description)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	QColor* (*paper)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	bool (*defaultEolFill)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, int style);
	void (*setEditor)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self);
	int (*styleBitsNeeded)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	const char* (*wordCharacters)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self);
	void (*setAutoIndentStyle)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerSpice_VTable* vtbl, const QsciLexerSpice* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerSpice_VTable* vtbl, QsciLexerSpice* self, QMetaMethod* signal);
};
QsciLexerSpice* QsciLexerSpice_new(struct QsciLexerSpice_VTable* vtbl);
QsciLexerSpice* QsciLexerSpice_new2(struct QsciLexerSpice_VTable* vtbl, QObject* parent);
void QsciLexerSpice_virtbase(QsciLexerSpice* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerSpice_metaObject(const QsciLexerSpice* self);
void* QsciLexerSpice_metacast(QsciLexerSpice* self, const char* param1);
int QsciLexerSpice_metacall(QsciLexerSpice* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerSpice_tr(const char* s);
const char* QsciLexerSpice_language(const QsciLexerSpice* self);
const char* QsciLexerSpice_lexer(const QsciLexerSpice* self);
int QsciLexerSpice_braceStyle(const QsciLexerSpice* self);
const char* QsciLexerSpice_keywords(const QsciLexerSpice* self, int set);
QColor* QsciLexerSpice_defaultColor(const QsciLexerSpice* self, int style);
QFont* QsciLexerSpice_defaultFont(const QsciLexerSpice* self, int style);
struct miqt_string QsciLexerSpice_description(const QsciLexerSpice* self, int style);
struct miqt_string QsciLexerSpice_tr2(const char* s, const char* c);
struct miqt_string QsciLexerSpice_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerSpice_virtualbase_metaObject(const void* self);
void* QsciLexerSpice_virtualbase_metacast(void* self, const char* param1);
int QsciLexerSpice_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerSpice_virtualbase_language(const void* self);
const char* QsciLexerSpice_virtualbase_lexer(const void* self);
int QsciLexerSpice_virtualbase_lexerId(const void* self);
const char* QsciLexerSpice_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerSpice_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerSpice_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerSpice_virtualbase_blockLookback(const void* self);
const char* QsciLexerSpice_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerSpice_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerSpice_virtualbase_braceStyle(const void* self);
bool QsciLexerSpice_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerSpice_virtualbase_color(const void* self, int style);
bool QsciLexerSpice_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerSpice_virtualbase_font(const void* self, int style);
int QsciLexerSpice_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerSpice_virtualbase_keywords(const void* self, int set);
int QsciLexerSpice_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerSpice_virtualbase_description(const void* self, int style);
QColor* QsciLexerSpice_virtualbase_paper(const void* self, int style);
QColor* QsciLexerSpice_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerSpice_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerSpice_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerSpice_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerSpice_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerSpice_virtualbase_refreshProperties(void* self);
int QsciLexerSpice_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerSpice_virtualbase_wordCharacters(const void* self);
void QsciLexerSpice_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerSpice_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerSpice_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerSpice_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerSpice_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerSpice_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerSpice_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerSpice_virtualbase_event(void* self, QEvent* event);
bool QsciLexerSpice_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerSpice_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerSpice_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerSpice_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerSpice_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerSpice_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerSpice_staticMetaObject();
void QsciLexerSpice_delete(QsciLexerSpice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
