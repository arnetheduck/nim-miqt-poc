#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERMARKDOWN_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERMARKDOWN_H

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
class QsciLexerMarkdown;
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
typedef struct QsciLexerMarkdown QsciLexerMarkdown;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerMarkdown_VTable {
	void (*destructor)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self);
	QMetaObject* (*metaObject)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	void* (*metacast)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, const char* param1);
	int (*metacall)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	const char* (*lexer)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	int (*lexerId)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	const char* (*autoCompletionFillups)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	const char* (*blockEnd)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int* style);
	int (*blockLookback)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	const char* (*blockStart)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int* style);
	int (*braceStyle)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	bool (*caseSensitive)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	QColor* (*color)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	bool (*eolFill)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	QFont* (*font)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	int (*indentationGuideView)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	const char* (*keywords)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int set);
	int (*defaultStyle)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	struct miqt_string (*description)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	QColor* (*paper)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	bool (*defaultEolFill)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, int style);
	void (*setEditor)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self);
	int (*styleBitsNeeded)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	const char* (*wordCharacters)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self);
	void (*setAutoIndentStyle)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerMarkdown_VTable* vtbl, const QsciLexerMarkdown* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerMarkdown_VTable* vtbl, QsciLexerMarkdown* self, QMetaMethod* signal);
};
QsciLexerMarkdown* QsciLexerMarkdown_new(struct QsciLexerMarkdown_VTable* vtbl);
QsciLexerMarkdown* QsciLexerMarkdown_new2(struct QsciLexerMarkdown_VTable* vtbl, QObject* parent);
void QsciLexerMarkdown_virtbase(QsciLexerMarkdown* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerMarkdown_metaObject(const QsciLexerMarkdown* self);
void* QsciLexerMarkdown_metacast(QsciLexerMarkdown* self, const char* param1);
int QsciLexerMarkdown_metacall(QsciLexerMarkdown* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerMarkdown_tr(const char* s);
struct miqt_string QsciLexerMarkdown_trUtf8(const char* s);
const char* QsciLexerMarkdown_language(const QsciLexerMarkdown* self);
const char* QsciLexerMarkdown_lexer(const QsciLexerMarkdown* self);
QColor* QsciLexerMarkdown_defaultColor(const QsciLexerMarkdown* self, int style);
QFont* QsciLexerMarkdown_defaultFont(const QsciLexerMarkdown* self, int style);
QColor* QsciLexerMarkdown_defaultPaper(const QsciLexerMarkdown* self, int style);
struct miqt_string QsciLexerMarkdown_description(const QsciLexerMarkdown* self, int style);
struct miqt_string QsciLexerMarkdown_tr2(const char* s, const char* c);
struct miqt_string QsciLexerMarkdown_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerMarkdown_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerMarkdown_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerMarkdown_virtualbase_metaObject(const void* self);
void* QsciLexerMarkdown_virtualbase_metacast(void* self, const char* param1);
int QsciLexerMarkdown_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerMarkdown_virtualbase_language(const void* self);
const char* QsciLexerMarkdown_virtualbase_lexer(const void* self);
int QsciLexerMarkdown_virtualbase_lexerId(const void* self);
const char* QsciLexerMarkdown_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerMarkdown_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerMarkdown_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerMarkdown_virtualbase_blockLookback(const void* self);
const char* QsciLexerMarkdown_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerMarkdown_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerMarkdown_virtualbase_braceStyle(const void* self);
bool QsciLexerMarkdown_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerMarkdown_virtualbase_color(const void* self, int style);
bool QsciLexerMarkdown_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerMarkdown_virtualbase_font(const void* self, int style);
int QsciLexerMarkdown_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerMarkdown_virtualbase_keywords(const void* self, int set);
int QsciLexerMarkdown_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerMarkdown_virtualbase_description(const void* self, int style);
QColor* QsciLexerMarkdown_virtualbase_paper(const void* self, int style);
QColor* QsciLexerMarkdown_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerMarkdown_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerMarkdown_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerMarkdown_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerMarkdown_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerMarkdown_virtualbase_refreshProperties(void* self);
int QsciLexerMarkdown_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerMarkdown_virtualbase_wordCharacters(const void* self);
void QsciLexerMarkdown_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerMarkdown_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerMarkdown_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerMarkdown_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerMarkdown_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerMarkdown_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMarkdown_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMarkdown_virtualbase_event(void* self, QEvent* event);
bool QsciLexerMarkdown_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerMarkdown_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerMarkdown_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerMarkdown_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerMarkdown_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerMarkdown_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QsciLexerMarkdown_protectedbase_sender(const void* self);
int QsciLexerMarkdown_protectedbase_senderSignalIndex(const void* self);
int QsciLexerMarkdown_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerMarkdown_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerMarkdown_staticMetaObject();
void QsciLexerMarkdown_delete(QsciLexerMarkdown* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
