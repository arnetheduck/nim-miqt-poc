#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERFORTRAN_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERFORTRAN_H

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
class QsciLexerFortran;
class QsciLexerFortran77;
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
typedef struct QsciLexerFortran QsciLexerFortran;
typedef struct QsciLexerFortran77 QsciLexerFortran77;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerFortran_VTable {
	void (*destructor)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self);
	QMetaObject* (*metaObject)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	void* (*metacast)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, const char* param1);
	int (*metacall)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, int param1, int param2, void** param3);
	void (*setFoldCompact)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, bool fold);
	const char* (*language)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	const char* (*lexer)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	int (*lexerId)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	const char* (*autoCompletionFillups)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	const char* (*blockEnd)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int* style);
	int (*blockLookback)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	const char* (*blockStart)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int* style);
	int (*braceStyle)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	bool (*caseSensitive)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	QColor* (*color)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	bool (*eolFill)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	QFont* (*font)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	int (*indentationGuideView)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	const char* (*keywords)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int set);
	int (*defaultStyle)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	struct miqt_string (*description)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	QColor* (*paper)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	bool (*defaultEolFill)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, int style);
	void (*setEditor)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self);
	int (*styleBitsNeeded)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	const char* (*wordCharacters)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self);
	void (*setAutoIndentStyle)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerFortran_VTable* vtbl, const QsciLexerFortran* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerFortran_VTable* vtbl, QsciLexerFortran* self, QMetaMethod* signal);
};
QsciLexerFortran* QsciLexerFortran_new(struct QsciLexerFortran_VTable* vtbl);
QsciLexerFortran* QsciLexerFortran_new2(struct QsciLexerFortran_VTable* vtbl, QObject* parent);
void QsciLexerFortran_virtbase(QsciLexerFortran* src, QsciLexerFortran77** outptr_QsciLexerFortran77);
QMetaObject* QsciLexerFortran_metaObject(const QsciLexerFortran* self);
void* QsciLexerFortran_metacast(QsciLexerFortran* self, const char* param1);
int QsciLexerFortran_metacall(QsciLexerFortran* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerFortran_tr(const char* s);
const char* QsciLexerFortran_language(const QsciLexerFortran* self);
const char* QsciLexerFortran_lexer(const QsciLexerFortran* self);
const char* QsciLexerFortran_keywords(const QsciLexerFortran* self, int set);
struct miqt_string QsciLexerFortran_tr2(const char* s, const char* c);
struct miqt_string QsciLexerFortran_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerFortran_virtualbase_metaObject(const void* self);
void* QsciLexerFortran_virtualbase_metacast(void* self, const char* param1);
int QsciLexerFortran_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerFortran_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerFortran_virtualbase_language(const void* self);
const char* QsciLexerFortran_virtualbase_lexer(const void* self);
int QsciLexerFortran_virtualbase_lexerId(const void* self);
const char* QsciLexerFortran_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerFortran_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerFortran_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerFortran_virtualbase_blockLookback(const void* self);
const char* QsciLexerFortran_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerFortran_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerFortran_virtualbase_braceStyle(const void* self);
bool QsciLexerFortran_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerFortran_virtualbase_color(const void* self, int style);
bool QsciLexerFortran_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerFortran_virtualbase_font(const void* self, int style);
int QsciLexerFortran_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerFortran_virtualbase_keywords(const void* self, int set);
int QsciLexerFortran_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerFortran_virtualbase_description(const void* self, int style);
QColor* QsciLexerFortran_virtualbase_paper(const void* self, int style);
QColor* QsciLexerFortran_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerFortran_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerFortran_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerFortran_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerFortran_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerFortran_virtualbase_refreshProperties(void* self);
int QsciLexerFortran_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerFortran_virtualbase_wordCharacters(const void* self);
void QsciLexerFortran_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerFortran_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerFortran_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerFortran_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerFortran_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerFortran_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerFortran_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerFortran_virtualbase_event(void* self, QEvent* event);
bool QsciLexerFortran_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerFortran_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerFortran_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerFortran_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerFortran_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerFortran_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerFortran_staticMetaObject();
void QsciLexerFortran_delete(QsciLexerFortran* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
