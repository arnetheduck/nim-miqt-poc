#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERDIFF_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERDIFF_H

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
class QsciLexerDiff;
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
typedef struct QsciLexerDiff QsciLexerDiff;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerDiff_VTable {
	void (*destructor)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self);
	QMetaObject* (*metaObject)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	void* (*metacast)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, const char* param1);
	int (*metacall)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	const char* (*lexer)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	int (*lexerId)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	const char* (*autoCompletionFillups)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	const char* (*blockEnd)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int* style);
	int (*blockLookback)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	const char* (*blockStart)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int* style);
	int (*braceStyle)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	bool (*caseSensitive)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	QColor* (*color)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	bool (*eolFill)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	QFont* (*font)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	int (*indentationGuideView)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	const char* (*keywords)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int set);
	int (*defaultStyle)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	struct miqt_string (*description)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	QColor* (*paper)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	bool (*defaultEolFill)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, int style);
	void (*setEditor)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self);
	int (*styleBitsNeeded)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	const char* (*wordCharacters)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self);
	void (*setAutoIndentStyle)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerDiff_VTable* vtbl, const QsciLexerDiff* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerDiff_VTable* vtbl, QsciLexerDiff* self, QMetaMethod* signal);
};
QsciLexerDiff* QsciLexerDiff_new(struct QsciLexerDiff_VTable* vtbl);
QsciLexerDiff* QsciLexerDiff_new2(struct QsciLexerDiff_VTable* vtbl, QObject* parent);
void QsciLexerDiff_virtbase(QsciLexerDiff* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerDiff_metaObject(const QsciLexerDiff* self);
void* QsciLexerDiff_metacast(QsciLexerDiff* self, const char* param1);
int QsciLexerDiff_metacall(QsciLexerDiff* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerDiff_tr(const char* s);
const char* QsciLexerDiff_language(const QsciLexerDiff* self);
const char* QsciLexerDiff_lexer(const QsciLexerDiff* self);
const char* QsciLexerDiff_wordCharacters(const QsciLexerDiff* self);
QColor* QsciLexerDiff_defaultColor(const QsciLexerDiff* self, int style);
struct miqt_string QsciLexerDiff_description(const QsciLexerDiff* self, int style);
struct miqt_string QsciLexerDiff_tr2(const char* s, const char* c);
struct miqt_string QsciLexerDiff_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerDiff_virtualbase_metaObject(const void* self);
void* QsciLexerDiff_virtualbase_metacast(void* self, const char* param1);
int QsciLexerDiff_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerDiff_virtualbase_language(const void* self);
const char* QsciLexerDiff_virtualbase_lexer(const void* self);
int QsciLexerDiff_virtualbase_lexerId(const void* self);
const char* QsciLexerDiff_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerDiff_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerDiff_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerDiff_virtualbase_blockLookback(const void* self);
const char* QsciLexerDiff_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerDiff_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerDiff_virtualbase_braceStyle(const void* self);
bool QsciLexerDiff_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerDiff_virtualbase_color(const void* self, int style);
bool QsciLexerDiff_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerDiff_virtualbase_font(const void* self, int style);
int QsciLexerDiff_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerDiff_virtualbase_keywords(const void* self, int set);
int QsciLexerDiff_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerDiff_virtualbase_description(const void* self, int style);
QColor* QsciLexerDiff_virtualbase_paper(const void* self, int style);
QColor* QsciLexerDiff_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerDiff_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerDiff_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerDiff_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerDiff_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerDiff_virtualbase_refreshProperties(void* self);
int QsciLexerDiff_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerDiff_virtualbase_wordCharacters(const void* self);
void QsciLexerDiff_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerDiff_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerDiff_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerDiff_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerDiff_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerDiff_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerDiff_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerDiff_virtualbase_event(void* self, QEvent* event);
bool QsciLexerDiff_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerDiff_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerDiff_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerDiff_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerDiff_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerDiff_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QsciLexerDiff_protectedbase_sender(const void* self);
int QsciLexerDiff_protectedbase_senderSignalIndex(const void* self);
int QsciLexerDiff_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerDiff_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerDiff_staticMetaObject();
void QsciLexerDiff_delete(QsciLexerDiff* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
