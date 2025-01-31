#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCOFFEESCRIPT_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCOFFEESCRIPT_H

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
class QsciLexerCoffeeScript;
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
typedef struct QsciLexerCoffeeScript QsciLexerCoffeeScript;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerCoffeeScript_VTable {
	void (*destructor)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self);
	QMetaObject* (*metaObject)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	void* (*metacast)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, const char* param1);
	int (*metacall)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	const char* (*lexer)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	int (*lexerId)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	const char* (*autoCompletionFillups)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	const char* (*blockEnd)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int* style);
	int (*blockLookback)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	const char* (*blockStart)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int* style);
	int (*braceStyle)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	bool (*caseSensitive)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	QColor* (*color)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	bool (*eolFill)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	QFont* (*font)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	int (*indentationGuideView)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	const char* (*keywords)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int set);
	int (*defaultStyle)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	struct miqt_string (*description)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	QColor* (*paper)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	bool (*defaultEolFill)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, int style);
	void (*setEditor)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self);
	int (*styleBitsNeeded)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	const char* (*wordCharacters)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self);
	void (*setAutoIndentStyle)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerCoffeeScript_VTable* vtbl, const QsciLexerCoffeeScript* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerCoffeeScript_VTable* vtbl, QsciLexerCoffeeScript* self, QMetaMethod* signal);
};
QsciLexerCoffeeScript* QsciLexerCoffeeScript_new(struct QsciLexerCoffeeScript_VTable* vtbl);
QsciLexerCoffeeScript* QsciLexerCoffeeScript_new2(struct QsciLexerCoffeeScript_VTable* vtbl, QObject* parent);
void QsciLexerCoffeeScript_virtbase(QsciLexerCoffeeScript* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerCoffeeScript_metaObject(const QsciLexerCoffeeScript* self);
void* QsciLexerCoffeeScript_metacast(QsciLexerCoffeeScript* self, const char* param1);
int QsciLexerCoffeeScript_metacall(QsciLexerCoffeeScript* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerCoffeeScript_tr(const char* s);
struct miqt_string QsciLexerCoffeeScript_trUtf8(const char* s);
const char* QsciLexerCoffeeScript_language(const QsciLexerCoffeeScript* self);
const char* QsciLexerCoffeeScript_lexer(const QsciLexerCoffeeScript* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCoffeeScript_autoCompletionWordSeparators(const QsciLexerCoffeeScript* self);
const char* QsciLexerCoffeeScript_blockEnd(const QsciLexerCoffeeScript* self);
const char* QsciLexerCoffeeScript_blockStart(const QsciLexerCoffeeScript* self);
const char* QsciLexerCoffeeScript_blockStartKeyword(const QsciLexerCoffeeScript* self);
int QsciLexerCoffeeScript_braceStyle(const QsciLexerCoffeeScript* self);
const char* QsciLexerCoffeeScript_wordCharacters(const QsciLexerCoffeeScript* self);
QColor* QsciLexerCoffeeScript_defaultColor(const QsciLexerCoffeeScript* self, int style);
bool QsciLexerCoffeeScript_defaultEolFill(const QsciLexerCoffeeScript* self, int style);
QFont* QsciLexerCoffeeScript_defaultFont(const QsciLexerCoffeeScript* self, int style);
QColor* QsciLexerCoffeeScript_defaultPaper(const QsciLexerCoffeeScript* self, int style);
const char* QsciLexerCoffeeScript_keywords(const QsciLexerCoffeeScript* self, int set);
struct miqt_string QsciLexerCoffeeScript_description(const QsciLexerCoffeeScript* self, int style);
void QsciLexerCoffeeScript_refreshProperties(QsciLexerCoffeeScript* self);
bool QsciLexerCoffeeScript_dollarsAllowed(const QsciLexerCoffeeScript* self);
void QsciLexerCoffeeScript_setDollarsAllowed(QsciLexerCoffeeScript* self, bool allowed);
bool QsciLexerCoffeeScript_foldComments(const QsciLexerCoffeeScript* self);
void QsciLexerCoffeeScript_setFoldComments(QsciLexerCoffeeScript* self, bool fold);
bool QsciLexerCoffeeScript_foldCompact(const QsciLexerCoffeeScript* self);
void QsciLexerCoffeeScript_setFoldCompact(QsciLexerCoffeeScript* self, bool fold);
bool QsciLexerCoffeeScript_stylePreprocessor(const QsciLexerCoffeeScript* self);
void QsciLexerCoffeeScript_setStylePreprocessor(QsciLexerCoffeeScript* self, bool style);
struct miqt_string QsciLexerCoffeeScript_tr2(const char* s, const char* c);
struct miqt_string QsciLexerCoffeeScript_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerCoffeeScript_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerCoffeeScript_trUtf83(const char* s, const char* c, int n);
const char* QsciLexerCoffeeScript_blockEnd1(const QsciLexerCoffeeScript* self, int* style);
const char* QsciLexerCoffeeScript_blockStart1(const QsciLexerCoffeeScript* self, int* style);
const char* QsciLexerCoffeeScript_blockStartKeyword1(const QsciLexerCoffeeScript* self, int* style);
QMetaObject* QsciLexerCoffeeScript_virtualbase_metaObject(const void* self);
void* QsciLexerCoffeeScript_virtualbase_metacast(void* self, const char* param1);
int QsciLexerCoffeeScript_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerCoffeeScript_virtualbase_language(const void* self);
const char* QsciLexerCoffeeScript_virtualbase_lexer(const void* self);
int QsciLexerCoffeeScript_virtualbase_lexerId(const void* self);
const char* QsciLexerCoffeeScript_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCoffeeScript_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerCoffeeScript_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerCoffeeScript_virtualbase_blockLookback(const void* self);
const char* QsciLexerCoffeeScript_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerCoffeeScript_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerCoffeeScript_virtualbase_braceStyle(const void* self);
bool QsciLexerCoffeeScript_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerCoffeeScript_virtualbase_color(const void* self, int style);
bool QsciLexerCoffeeScript_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerCoffeeScript_virtualbase_font(const void* self, int style);
int QsciLexerCoffeeScript_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerCoffeeScript_virtualbase_keywords(const void* self, int set);
int QsciLexerCoffeeScript_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerCoffeeScript_virtualbase_description(const void* self, int style);
QColor* QsciLexerCoffeeScript_virtualbase_paper(const void* self, int style);
QColor* QsciLexerCoffeeScript_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerCoffeeScript_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerCoffeeScript_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerCoffeeScript_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerCoffeeScript_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerCoffeeScript_virtualbase_refreshProperties(void* self);
int QsciLexerCoffeeScript_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerCoffeeScript_virtualbase_wordCharacters(const void* self);
void QsciLexerCoffeeScript_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerCoffeeScript_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerCoffeeScript_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerCoffeeScript_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerCoffeeScript_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerCoffeeScript_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCoffeeScript_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCoffeeScript_virtualbase_event(void* self, QEvent* event);
bool QsciLexerCoffeeScript_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerCoffeeScript_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerCoffeeScript_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerCoffeeScript_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerCoffeeScript_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerCoffeeScript_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerCoffeeScript_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCoffeeScript_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerCoffeeScript_protectedbase_sender(const void* self);
int QsciLexerCoffeeScript_protectedbase_senderSignalIndex(const void* self);
int QsciLexerCoffeeScript_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerCoffeeScript_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerCoffeeScript_staticMetaObject();
void QsciLexerCoffeeScript_delete(QsciLexerCoffeeScript* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
