#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERTEX_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERTEX_H

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
class QsciLexerTeX;
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
typedef struct QsciLexerTeX QsciLexerTeX;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerTeX_VTable {
	void (*destructor)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self);
	QMetaObject* (*metaObject)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	void* (*metacast)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, const char* param1);
	int (*metacall)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	const char* (*lexer)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	int (*lexerId)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	const char* (*autoCompletionFillups)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	const char* (*blockEnd)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int* style);
	int (*blockLookback)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	const char* (*blockStart)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int* style);
	int (*braceStyle)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	bool (*caseSensitive)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	QColor* (*color)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	bool (*eolFill)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	QFont* (*font)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	int (*indentationGuideView)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	const char* (*keywords)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int set);
	int (*defaultStyle)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	struct miqt_string (*description)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	QColor* (*paper)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	bool (*defaultEolFill)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, int style);
	void (*setEditor)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self);
	int (*styleBitsNeeded)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	const char* (*wordCharacters)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self);
	void (*setAutoIndentStyle)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerTeX_VTable* vtbl, const QsciLexerTeX* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerTeX_VTable* vtbl, QsciLexerTeX* self, QMetaMethod* signal);
};
QsciLexerTeX* QsciLexerTeX_new(struct QsciLexerTeX_VTable* vtbl);
QsciLexerTeX* QsciLexerTeX_new2(struct QsciLexerTeX_VTable* vtbl, QObject* parent);
void QsciLexerTeX_virtbase(QsciLexerTeX* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerTeX_metaObject(const QsciLexerTeX* self);
void* QsciLexerTeX_metacast(QsciLexerTeX* self, const char* param1);
int QsciLexerTeX_metacall(QsciLexerTeX* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerTeX_tr(const char* s);
struct miqt_string QsciLexerTeX_trUtf8(const char* s);
const char* QsciLexerTeX_language(const QsciLexerTeX* self);
const char* QsciLexerTeX_lexer(const QsciLexerTeX* self);
const char* QsciLexerTeX_wordCharacters(const QsciLexerTeX* self);
QColor* QsciLexerTeX_defaultColor(const QsciLexerTeX* self, int style);
const char* QsciLexerTeX_keywords(const QsciLexerTeX* self, int set);
struct miqt_string QsciLexerTeX_description(const QsciLexerTeX* self, int style);
void QsciLexerTeX_refreshProperties(QsciLexerTeX* self);
void QsciLexerTeX_setFoldComments(QsciLexerTeX* self, bool fold);
bool QsciLexerTeX_foldComments(const QsciLexerTeX* self);
void QsciLexerTeX_setFoldCompact(QsciLexerTeX* self, bool fold);
bool QsciLexerTeX_foldCompact(const QsciLexerTeX* self);
void QsciLexerTeX_setProcessComments(QsciLexerTeX* self, bool enable);
bool QsciLexerTeX_processComments(const QsciLexerTeX* self);
void QsciLexerTeX_setProcessIf(QsciLexerTeX* self, bool enable);
bool QsciLexerTeX_processIf(const QsciLexerTeX* self);
struct miqt_string QsciLexerTeX_tr2(const char* s, const char* c);
struct miqt_string QsciLexerTeX_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerTeX_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerTeX_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerTeX_virtualbase_metaObject(const void* self);
void* QsciLexerTeX_virtualbase_metacast(void* self, const char* param1);
int QsciLexerTeX_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerTeX_virtualbase_language(const void* self);
const char* QsciLexerTeX_virtualbase_lexer(const void* self);
int QsciLexerTeX_virtualbase_lexerId(const void* self);
const char* QsciLexerTeX_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerTeX_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerTeX_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerTeX_virtualbase_blockLookback(const void* self);
const char* QsciLexerTeX_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerTeX_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerTeX_virtualbase_braceStyle(const void* self);
bool QsciLexerTeX_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerTeX_virtualbase_color(const void* self, int style);
bool QsciLexerTeX_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerTeX_virtualbase_font(const void* self, int style);
int QsciLexerTeX_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerTeX_virtualbase_keywords(const void* self, int set);
int QsciLexerTeX_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerTeX_virtualbase_description(const void* self, int style);
QColor* QsciLexerTeX_virtualbase_paper(const void* self, int style);
QColor* QsciLexerTeX_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerTeX_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerTeX_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerTeX_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerTeX_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerTeX_virtualbase_refreshProperties(void* self);
int QsciLexerTeX_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerTeX_virtualbase_wordCharacters(const void* self);
void QsciLexerTeX_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerTeX_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerTeX_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerTeX_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerTeX_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerTeX_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerTeX_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerTeX_virtualbase_event(void* self, QEvent* event);
bool QsciLexerTeX_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerTeX_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerTeX_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerTeX_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerTeX_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerTeX_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerTeX_staticMetaObject();
void QsciLexerTeX_delete(QsciLexerTeX* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
