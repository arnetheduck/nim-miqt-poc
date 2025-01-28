#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERMAKEFILE_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERMAKEFILE_H

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
class QsciLexerMakefile;
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
typedef struct QsciLexerMakefile QsciLexerMakefile;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerMakefile_VTable {
	void (*destructor)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self);
	QMetaObject* (*metaObject)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	void* (*metacast)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, const char* param1);
	int (*metacall)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	const char* (*lexer)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	int (*lexerId)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	const char* (*autoCompletionFillups)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	const char* (*blockEnd)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int* style);
	int (*blockLookback)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	const char* (*blockStart)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int* style);
	int (*braceStyle)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	bool (*caseSensitive)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	QColor* (*color)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	bool (*eolFill)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	QFont* (*font)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	int (*indentationGuideView)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	const char* (*keywords)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int set);
	int (*defaultStyle)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	struct miqt_string (*description)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	QColor* (*paper)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	bool (*defaultEolFill)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, int style);
	void (*setEditor)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self);
	int (*styleBitsNeeded)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	const char* (*wordCharacters)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self);
	void (*setAutoIndentStyle)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerMakefile_VTable* vtbl, const QsciLexerMakefile* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerMakefile_VTable* vtbl, QsciLexerMakefile* self, QMetaMethod* signal);
};
QsciLexerMakefile* QsciLexerMakefile_new(struct QsciLexerMakefile_VTable* vtbl);
QsciLexerMakefile* QsciLexerMakefile_new2(struct QsciLexerMakefile_VTable* vtbl, QObject* parent);
void QsciLexerMakefile_virtbase(QsciLexerMakefile* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerMakefile_metaObject(const QsciLexerMakefile* self);
void* QsciLexerMakefile_metacast(QsciLexerMakefile* self, const char* param1);
int QsciLexerMakefile_metacall(QsciLexerMakefile* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerMakefile_tr(const char* s);
const char* QsciLexerMakefile_language(const QsciLexerMakefile* self);
const char* QsciLexerMakefile_lexer(const QsciLexerMakefile* self);
const char* QsciLexerMakefile_wordCharacters(const QsciLexerMakefile* self);
QColor* QsciLexerMakefile_defaultColor(const QsciLexerMakefile* self, int style);
bool QsciLexerMakefile_defaultEolFill(const QsciLexerMakefile* self, int style);
QFont* QsciLexerMakefile_defaultFont(const QsciLexerMakefile* self, int style);
QColor* QsciLexerMakefile_defaultPaper(const QsciLexerMakefile* self, int style);
struct miqt_string QsciLexerMakefile_description(const QsciLexerMakefile* self, int style);
struct miqt_string QsciLexerMakefile_tr2(const char* s, const char* c);
struct miqt_string QsciLexerMakefile_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerMakefile_virtualbase_metaObject(const void* self);
void* QsciLexerMakefile_virtualbase_metacast(void* self, const char* param1);
int QsciLexerMakefile_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerMakefile_virtualbase_language(const void* self);
const char* QsciLexerMakefile_virtualbase_lexer(const void* self);
int QsciLexerMakefile_virtualbase_lexerId(const void* self);
const char* QsciLexerMakefile_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerMakefile_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerMakefile_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerMakefile_virtualbase_blockLookback(const void* self);
const char* QsciLexerMakefile_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerMakefile_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerMakefile_virtualbase_braceStyle(const void* self);
bool QsciLexerMakefile_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerMakefile_virtualbase_color(const void* self, int style);
bool QsciLexerMakefile_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerMakefile_virtualbase_font(const void* self, int style);
int QsciLexerMakefile_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerMakefile_virtualbase_keywords(const void* self, int set);
int QsciLexerMakefile_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerMakefile_virtualbase_description(const void* self, int style);
QColor* QsciLexerMakefile_virtualbase_paper(const void* self, int style);
QColor* QsciLexerMakefile_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerMakefile_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerMakefile_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerMakefile_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerMakefile_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerMakefile_virtualbase_refreshProperties(void* self);
int QsciLexerMakefile_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerMakefile_virtualbase_wordCharacters(const void* self);
void QsciLexerMakefile_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerMakefile_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerMakefile_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerMakefile_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerMakefile_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerMakefile_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMakefile_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMakefile_virtualbase_event(void* self, QEvent* event);
bool QsciLexerMakefile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerMakefile_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerMakefile_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerMakefile_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerMakefile_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerMakefile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerMakefile_staticMetaObject();
void QsciLexerMakefile_delete(QsciLexerMakefile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
