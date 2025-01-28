#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERFORTRAN77_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERFORTRAN77_H

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
typedef struct QsciLexerFortran77 QsciLexerFortran77;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerFortran77_VTable {
	void (*destructor)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self);
	QMetaObject* (*metaObject)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	void* (*metacast)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, const char* param1);
	int (*metacall)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, int param1, int param2, void** param3);
	void (*setFoldCompact)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, bool fold);
	const char* (*language)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	const char* (*lexer)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	int (*lexerId)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	const char* (*autoCompletionFillups)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	const char* (*blockEnd)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int* style);
	int (*blockLookback)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	const char* (*blockStart)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int* style);
	int (*braceStyle)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	bool (*caseSensitive)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	QColor* (*color)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	bool (*eolFill)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	QFont* (*font)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	int (*indentationGuideView)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	const char* (*keywords)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int set);
	int (*defaultStyle)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	struct miqt_string (*description)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	QColor* (*paper)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	bool (*defaultEolFill)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, int style);
	void (*setEditor)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self);
	int (*styleBitsNeeded)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	const char* (*wordCharacters)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self);
	void (*setAutoIndentStyle)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerFortran77_VTable* vtbl, const QsciLexerFortran77* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerFortran77_VTable* vtbl, QsciLexerFortran77* self, QMetaMethod* signal);
};
QsciLexerFortran77* QsciLexerFortran77_new(struct QsciLexerFortran77_VTable* vtbl);
QsciLexerFortran77* QsciLexerFortran77_new2(struct QsciLexerFortran77_VTable* vtbl, QObject* parent);
void QsciLexerFortran77_virtbase(QsciLexerFortran77* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerFortran77_metaObject(const QsciLexerFortran77* self);
void* QsciLexerFortran77_metacast(QsciLexerFortran77* self, const char* param1);
int QsciLexerFortran77_metacall(QsciLexerFortran77* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerFortran77_tr(const char* s);
struct miqt_string QsciLexerFortran77_trUtf8(const char* s);
const char* QsciLexerFortran77_language(const QsciLexerFortran77* self);
const char* QsciLexerFortran77_lexer(const QsciLexerFortran77* self);
int QsciLexerFortran77_braceStyle(const QsciLexerFortran77* self);
QColor* QsciLexerFortran77_defaultColor(const QsciLexerFortran77* self, int style);
bool QsciLexerFortran77_defaultEolFill(const QsciLexerFortran77* self, int style);
QFont* QsciLexerFortran77_defaultFont(const QsciLexerFortran77* self, int style);
QColor* QsciLexerFortran77_defaultPaper(const QsciLexerFortran77* self, int style);
const char* QsciLexerFortran77_keywords(const QsciLexerFortran77* self, int set);
struct miqt_string QsciLexerFortran77_description(const QsciLexerFortran77* self, int style);
void QsciLexerFortran77_refreshProperties(QsciLexerFortran77* self);
bool QsciLexerFortran77_foldCompact(const QsciLexerFortran77* self);
void QsciLexerFortran77_setFoldCompact(QsciLexerFortran77* self, bool fold);
struct miqt_string QsciLexerFortran77_tr2(const char* s, const char* c);
struct miqt_string QsciLexerFortran77_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerFortran77_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerFortran77_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerFortran77_virtualbase_metaObject(const void* self);
void* QsciLexerFortran77_virtualbase_metacast(void* self, const char* param1);
int QsciLexerFortran77_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerFortran77_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerFortran77_virtualbase_language(const void* self);
const char* QsciLexerFortran77_virtualbase_lexer(const void* self);
int QsciLexerFortran77_virtualbase_lexerId(const void* self);
const char* QsciLexerFortran77_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerFortran77_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerFortran77_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerFortran77_virtualbase_blockLookback(const void* self);
const char* QsciLexerFortran77_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerFortran77_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerFortran77_virtualbase_braceStyle(const void* self);
bool QsciLexerFortran77_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerFortran77_virtualbase_color(const void* self, int style);
bool QsciLexerFortran77_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerFortran77_virtualbase_font(const void* self, int style);
int QsciLexerFortran77_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerFortran77_virtualbase_keywords(const void* self, int set);
int QsciLexerFortran77_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerFortran77_virtualbase_description(const void* self, int style);
QColor* QsciLexerFortran77_virtualbase_paper(const void* self, int style);
QColor* QsciLexerFortran77_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerFortran77_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerFortran77_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerFortran77_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerFortran77_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerFortran77_virtualbase_refreshProperties(void* self);
int QsciLexerFortran77_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerFortran77_virtualbase_wordCharacters(const void* self);
void QsciLexerFortran77_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerFortran77_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerFortran77_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerFortran77_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerFortran77_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerFortran77_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerFortran77_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerFortran77_virtualbase_event(void* self, QEvent* event);
bool QsciLexerFortran77_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerFortran77_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerFortran77_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerFortran77_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerFortran77_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerFortran77_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerFortran77_staticMetaObject();
void QsciLexerFortran77_delete(QsciLexerFortran77* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
