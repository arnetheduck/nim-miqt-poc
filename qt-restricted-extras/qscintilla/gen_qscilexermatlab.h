#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERMATLAB_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERMATLAB_H

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
class QsciLexerMatlab;
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
typedef struct QsciLexerMatlab QsciLexerMatlab;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerMatlab_VTable {
	void (*destructor)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self);
	QMetaObject* (*metaObject)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	void* (*metacast)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, const char* param1);
	int (*metacall)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	const char* (*lexer)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	int (*lexerId)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	const char* (*autoCompletionFillups)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	const char* (*blockEnd)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int* style);
	int (*blockLookback)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	const char* (*blockStart)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int* style);
	int (*braceStyle)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	bool (*caseSensitive)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	QColor* (*color)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	bool (*eolFill)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	QFont* (*font)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	int (*indentationGuideView)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	const char* (*keywords)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int set);
	int (*defaultStyle)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	struct miqt_string (*description)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	QColor* (*paper)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	bool (*defaultEolFill)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, int style);
	void (*setEditor)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self);
	int (*styleBitsNeeded)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	const char* (*wordCharacters)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self);
	void (*setAutoIndentStyle)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerMatlab_VTable* vtbl, const QsciLexerMatlab* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerMatlab_VTable* vtbl, QsciLexerMatlab* self, QMetaMethod* signal);
};
QsciLexerMatlab* QsciLexerMatlab_new(struct QsciLexerMatlab_VTable* vtbl);
QsciLexerMatlab* QsciLexerMatlab_new2(struct QsciLexerMatlab_VTable* vtbl, QObject* parent);
void QsciLexerMatlab_virtbase(QsciLexerMatlab* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerMatlab_metaObject(const QsciLexerMatlab* self);
void* QsciLexerMatlab_metacast(QsciLexerMatlab* self, const char* param1);
int QsciLexerMatlab_metacall(QsciLexerMatlab* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerMatlab_tr(const char* s);
struct miqt_string QsciLexerMatlab_trUtf8(const char* s);
const char* QsciLexerMatlab_language(const QsciLexerMatlab* self);
const char* QsciLexerMatlab_lexer(const QsciLexerMatlab* self);
QColor* QsciLexerMatlab_defaultColor(const QsciLexerMatlab* self, int style);
QFont* QsciLexerMatlab_defaultFont(const QsciLexerMatlab* self, int style);
const char* QsciLexerMatlab_keywords(const QsciLexerMatlab* self, int set);
struct miqt_string QsciLexerMatlab_description(const QsciLexerMatlab* self, int style);
struct miqt_string QsciLexerMatlab_tr2(const char* s, const char* c);
struct miqt_string QsciLexerMatlab_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerMatlab_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerMatlab_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerMatlab_virtualbase_metaObject(const void* self);
void* QsciLexerMatlab_virtualbase_metacast(void* self, const char* param1);
int QsciLexerMatlab_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerMatlab_virtualbase_language(const void* self);
const char* QsciLexerMatlab_virtualbase_lexer(const void* self);
int QsciLexerMatlab_virtualbase_lexerId(const void* self);
const char* QsciLexerMatlab_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerMatlab_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerMatlab_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerMatlab_virtualbase_blockLookback(const void* self);
const char* QsciLexerMatlab_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerMatlab_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerMatlab_virtualbase_braceStyle(const void* self);
bool QsciLexerMatlab_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerMatlab_virtualbase_color(const void* self, int style);
bool QsciLexerMatlab_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerMatlab_virtualbase_font(const void* self, int style);
int QsciLexerMatlab_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerMatlab_virtualbase_keywords(const void* self, int set);
int QsciLexerMatlab_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerMatlab_virtualbase_description(const void* self, int style);
QColor* QsciLexerMatlab_virtualbase_paper(const void* self, int style);
QColor* QsciLexerMatlab_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerMatlab_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerMatlab_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerMatlab_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerMatlab_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerMatlab_virtualbase_refreshProperties(void* self);
int QsciLexerMatlab_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerMatlab_virtualbase_wordCharacters(const void* self);
void QsciLexerMatlab_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerMatlab_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerMatlab_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerMatlab_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerMatlab_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerMatlab_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMatlab_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMatlab_virtualbase_event(void* self, QEvent* event);
bool QsciLexerMatlab_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerMatlab_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerMatlab_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerMatlab_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerMatlab_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerMatlab_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QsciLexerMatlab_protectedbase_sender(const void* self);
int QsciLexerMatlab_protectedbase_senderSignalIndex(const void* self);
int QsciLexerMatlab_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerMatlab_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerMatlab_staticMetaObject();
void QsciLexerMatlab_delete(QsciLexerMatlab* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
