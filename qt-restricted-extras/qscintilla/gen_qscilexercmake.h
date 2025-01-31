#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCMAKE_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCMAKE_H

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
class QsciLexerCMake;
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
typedef struct QsciLexerCMake QsciLexerCMake;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerCMake_VTable {
	void (*destructor)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self);
	QMetaObject* (*metaObject)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	void* (*metacast)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, const char* param1);
	int (*metacall)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, int param1, int param2, void** param3);
	void (*setFoldAtElse)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, bool fold);
	const char* (*language)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	const char* (*lexer)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	int (*lexerId)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	const char* (*autoCompletionFillups)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	const char* (*blockEnd)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int* style);
	int (*blockLookback)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	const char* (*blockStart)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int* style);
	int (*braceStyle)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	bool (*caseSensitive)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	QColor* (*color)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	bool (*eolFill)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	QFont* (*font)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	int (*indentationGuideView)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	const char* (*keywords)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int set);
	int (*defaultStyle)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	struct miqt_string (*description)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	QColor* (*paper)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	bool (*defaultEolFill)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, int style);
	void (*setEditor)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self);
	int (*styleBitsNeeded)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	const char* (*wordCharacters)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self);
	void (*setAutoIndentStyle)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerCMake_VTable* vtbl, const QsciLexerCMake* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerCMake_VTable* vtbl, QsciLexerCMake* self, QMetaMethod* signal);
};
QsciLexerCMake* QsciLexerCMake_new(struct QsciLexerCMake_VTable* vtbl);
QsciLexerCMake* QsciLexerCMake_new2(struct QsciLexerCMake_VTable* vtbl, QObject* parent);
void QsciLexerCMake_virtbase(QsciLexerCMake* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerCMake_metaObject(const QsciLexerCMake* self);
void* QsciLexerCMake_metacast(QsciLexerCMake* self, const char* param1);
int QsciLexerCMake_metacall(QsciLexerCMake* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerCMake_tr(const char* s);
struct miqt_string QsciLexerCMake_trUtf8(const char* s);
const char* QsciLexerCMake_language(const QsciLexerCMake* self);
const char* QsciLexerCMake_lexer(const QsciLexerCMake* self);
QColor* QsciLexerCMake_defaultColor(const QsciLexerCMake* self, int style);
QFont* QsciLexerCMake_defaultFont(const QsciLexerCMake* self, int style);
QColor* QsciLexerCMake_defaultPaper(const QsciLexerCMake* self, int style);
const char* QsciLexerCMake_keywords(const QsciLexerCMake* self, int set);
struct miqt_string QsciLexerCMake_description(const QsciLexerCMake* self, int style);
void QsciLexerCMake_refreshProperties(QsciLexerCMake* self);
bool QsciLexerCMake_foldAtElse(const QsciLexerCMake* self);
void QsciLexerCMake_setFoldAtElse(QsciLexerCMake* self, bool fold);
struct miqt_string QsciLexerCMake_tr2(const char* s, const char* c);
struct miqt_string QsciLexerCMake_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerCMake_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerCMake_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerCMake_virtualbase_metaObject(const void* self);
void* QsciLexerCMake_virtualbase_metacast(void* self, const char* param1);
int QsciLexerCMake_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerCMake_virtualbase_setFoldAtElse(void* self, bool fold);
const char* QsciLexerCMake_virtualbase_language(const void* self);
const char* QsciLexerCMake_virtualbase_lexer(const void* self);
int QsciLexerCMake_virtualbase_lexerId(const void* self);
const char* QsciLexerCMake_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCMake_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerCMake_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerCMake_virtualbase_blockLookback(const void* self);
const char* QsciLexerCMake_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerCMake_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerCMake_virtualbase_braceStyle(const void* self);
bool QsciLexerCMake_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerCMake_virtualbase_color(const void* self, int style);
bool QsciLexerCMake_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerCMake_virtualbase_font(const void* self, int style);
int QsciLexerCMake_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerCMake_virtualbase_keywords(const void* self, int set);
int QsciLexerCMake_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerCMake_virtualbase_description(const void* self, int style);
QColor* QsciLexerCMake_virtualbase_paper(const void* self, int style);
QColor* QsciLexerCMake_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerCMake_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerCMake_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerCMake_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerCMake_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerCMake_virtualbase_refreshProperties(void* self);
int QsciLexerCMake_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerCMake_virtualbase_wordCharacters(const void* self);
void QsciLexerCMake_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerCMake_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerCMake_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerCMake_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerCMake_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerCMake_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCMake_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCMake_virtualbase_event(void* self, QEvent* event);
bool QsciLexerCMake_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerCMake_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerCMake_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerCMake_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerCMake_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerCMake_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerCMake_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCMake_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerCMake_protectedbase_sender(const void* self);
int QsciLexerCMake_protectedbase_senderSignalIndex(const void* self);
int QsciLexerCMake_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerCMake_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerCMake_staticMetaObject();
void QsciLexerCMake_delete(QsciLexerCMake* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
