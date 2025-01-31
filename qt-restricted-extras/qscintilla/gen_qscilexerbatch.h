#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERBATCH_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERBATCH_H

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
class QsciLexerBatch;
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
typedef struct QsciLexerBatch QsciLexerBatch;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerBatch_VTable {
	void (*destructor)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self);
	QMetaObject* (*metaObject)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	void* (*metacast)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, const char* param1);
	int (*metacall)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	const char* (*lexer)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	int (*lexerId)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	const char* (*autoCompletionFillups)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	const char* (*blockEnd)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int* style);
	int (*blockLookback)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	const char* (*blockStart)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int* style);
	int (*braceStyle)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	bool (*caseSensitive)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	QColor* (*color)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	bool (*eolFill)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	QFont* (*font)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	int (*indentationGuideView)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	const char* (*keywords)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int set);
	int (*defaultStyle)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	struct miqt_string (*description)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	QColor* (*paper)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	bool (*defaultEolFill)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, int style);
	void (*setEditor)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self);
	int (*styleBitsNeeded)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	const char* (*wordCharacters)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self);
	void (*setAutoIndentStyle)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerBatch_VTable* vtbl, const QsciLexerBatch* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerBatch_VTable* vtbl, QsciLexerBatch* self, QMetaMethod* signal);
};
QsciLexerBatch* QsciLexerBatch_new(struct QsciLexerBatch_VTable* vtbl);
QsciLexerBatch* QsciLexerBatch_new2(struct QsciLexerBatch_VTable* vtbl, QObject* parent);
void QsciLexerBatch_virtbase(QsciLexerBatch* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerBatch_metaObject(const QsciLexerBatch* self);
void* QsciLexerBatch_metacast(QsciLexerBatch* self, const char* param1);
int QsciLexerBatch_metacall(QsciLexerBatch* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerBatch_tr(const char* s);
struct miqt_string QsciLexerBatch_trUtf8(const char* s);
const char* QsciLexerBatch_language(const QsciLexerBatch* self);
const char* QsciLexerBatch_lexer(const QsciLexerBatch* self);
const char* QsciLexerBatch_wordCharacters(const QsciLexerBatch* self);
bool QsciLexerBatch_caseSensitive(const QsciLexerBatch* self);
QColor* QsciLexerBatch_defaultColor(const QsciLexerBatch* self, int style);
bool QsciLexerBatch_defaultEolFill(const QsciLexerBatch* self, int style);
QFont* QsciLexerBatch_defaultFont(const QsciLexerBatch* self, int style);
QColor* QsciLexerBatch_defaultPaper(const QsciLexerBatch* self, int style);
const char* QsciLexerBatch_keywords(const QsciLexerBatch* self, int set);
struct miqt_string QsciLexerBatch_description(const QsciLexerBatch* self, int style);
struct miqt_string QsciLexerBatch_tr2(const char* s, const char* c);
struct miqt_string QsciLexerBatch_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerBatch_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerBatch_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerBatch_virtualbase_metaObject(const void* self);
void* QsciLexerBatch_virtualbase_metacast(void* self, const char* param1);
int QsciLexerBatch_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerBatch_virtualbase_language(const void* self);
const char* QsciLexerBatch_virtualbase_lexer(const void* self);
int QsciLexerBatch_virtualbase_lexerId(const void* self);
const char* QsciLexerBatch_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerBatch_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerBatch_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerBatch_virtualbase_blockLookback(const void* self);
const char* QsciLexerBatch_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerBatch_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerBatch_virtualbase_braceStyle(const void* self);
bool QsciLexerBatch_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerBatch_virtualbase_color(const void* self, int style);
bool QsciLexerBatch_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerBatch_virtualbase_font(const void* self, int style);
int QsciLexerBatch_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerBatch_virtualbase_keywords(const void* self, int set);
int QsciLexerBatch_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerBatch_virtualbase_description(const void* self, int style);
QColor* QsciLexerBatch_virtualbase_paper(const void* self, int style);
QColor* QsciLexerBatch_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerBatch_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerBatch_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerBatch_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerBatch_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerBatch_virtualbase_refreshProperties(void* self);
int QsciLexerBatch_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerBatch_virtualbase_wordCharacters(const void* self);
void QsciLexerBatch_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerBatch_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerBatch_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerBatch_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerBatch_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerBatch_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerBatch_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerBatch_virtualbase_event(void* self, QEvent* event);
bool QsciLexerBatch_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerBatch_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerBatch_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerBatch_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerBatch_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerBatch_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QsciLexerBatch_protectedbase_sender(const void* self);
int QsciLexerBatch_protectedbase_senderSignalIndex(const void* self);
int QsciLexerBatch_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerBatch_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerBatch_staticMetaObject();
void QsciLexerBatch_delete(QsciLexerBatch* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
