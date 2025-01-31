#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERLUA_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERLUA_H

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
class QsciLexerLua;
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
typedef struct QsciLexerLua QsciLexerLua;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerLua_VTable {
	void (*destructor)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self);
	QMetaObject* (*metaObject)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	void* (*metacast)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, const char* param1);
	int (*metacall)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, int param1, int param2, void** param3);
	void (*setFoldCompact)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, bool fold);
	const char* (*language)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	const char* (*lexer)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	int (*lexerId)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	const char* (*autoCompletionFillups)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	const char* (*blockEnd)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int* style);
	int (*blockLookback)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	const char* (*blockStart)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int* style);
	int (*braceStyle)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	bool (*caseSensitive)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	QColor* (*color)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	bool (*eolFill)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	QFont* (*font)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	int (*indentationGuideView)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	const char* (*keywords)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int set);
	int (*defaultStyle)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	struct miqt_string (*description)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	QColor* (*paper)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	bool (*defaultEolFill)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, int style);
	void (*setEditor)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self);
	int (*styleBitsNeeded)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	const char* (*wordCharacters)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self);
	void (*setAutoIndentStyle)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerLua_VTable* vtbl, const QsciLexerLua* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerLua_VTable* vtbl, QsciLexerLua* self, QMetaMethod* signal);
};
QsciLexerLua* QsciLexerLua_new(struct QsciLexerLua_VTable* vtbl);
QsciLexerLua* QsciLexerLua_new2(struct QsciLexerLua_VTable* vtbl, QObject* parent);
void QsciLexerLua_virtbase(QsciLexerLua* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerLua_metaObject(const QsciLexerLua* self);
void* QsciLexerLua_metacast(QsciLexerLua* self, const char* param1);
int QsciLexerLua_metacall(QsciLexerLua* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerLua_tr(const char* s);
struct miqt_string QsciLexerLua_trUtf8(const char* s);
const char* QsciLexerLua_language(const QsciLexerLua* self);
const char* QsciLexerLua_lexer(const QsciLexerLua* self);
struct miqt_array /* of struct miqt_string */  QsciLexerLua_autoCompletionWordSeparators(const QsciLexerLua* self);
const char* QsciLexerLua_blockStart(const QsciLexerLua* self);
int QsciLexerLua_braceStyle(const QsciLexerLua* self);
QColor* QsciLexerLua_defaultColor(const QsciLexerLua* self, int style);
bool QsciLexerLua_defaultEolFill(const QsciLexerLua* self, int style);
QFont* QsciLexerLua_defaultFont(const QsciLexerLua* self, int style);
QColor* QsciLexerLua_defaultPaper(const QsciLexerLua* self, int style);
const char* QsciLexerLua_keywords(const QsciLexerLua* self, int set);
struct miqt_string QsciLexerLua_description(const QsciLexerLua* self, int style);
void QsciLexerLua_refreshProperties(QsciLexerLua* self);
bool QsciLexerLua_foldCompact(const QsciLexerLua* self);
void QsciLexerLua_setFoldCompact(QsciLexerLua* self, bool fold);
struct miqt_string QsciLexerLua_tr2(const char* s, const char* c);
struct miqt_string QsciLexerLua_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerLua_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerLua_trUtf83(const char* s, const char* c, int n);
const char* QsciLexerLua_blockStart1(const QsciLexerLua* self, int* style);
QMetaObject* QsciLexerLua_virtualbase_metaObject(const void* self);
void* QsciLexerLua_virtualbase_metacast(void* self, const char* param1);
int QsciLexerLua_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerLua_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerLua_virtualbase_language(const void* self);
const char* QsciLexerLua_virtualbase_lexer(const void* self);
int QsciLexerLua_virtualbase_lexerId(const void* self);
const char* QsciLexerLua_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerLua_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerLua_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerLua_virtualbase_blockLookback(const void* self);
const char* QsciLexerLua_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerLua_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerLua_virtualbase_braceStyle(const void* self);
bool QsciLexerLua_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerLua_virtualbase_color(const void* self, int style);
bool QsciLexerLua_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerLua_virtualbase_font(const void* self, int style);
int QsciLexerLua_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerLua_virtualbase_keywords(const void* self, int set);
int QsciLexerLua_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerLua_virtualbase_description(const void* self, int style);
QColor* QsciLexerLua_virtualbase_paper(const void* self, int style);
QColor* QsciLexerLua_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerLua_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerLua_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerLua_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerLua_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerLua_virtualbase_refreshProperties(void* self);
int QsciLexerLua_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerLua_virtualbase_wordCharacters(const void* self);
void QsciLexerLua_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerLua_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerLua_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerLua_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerLua_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerLua_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerLua_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerLua_virtualbase_event(void* self, QEvent* event);
bool QsciLexerLua_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerLua_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerLua_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerLua_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerLua_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerLua_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerLua_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerLua_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerLua_protectedbase_sender(const void* self);
int QsciLexerLua_protectedbase_senderSignalIndex(const void* self);
int QsciLexerLua_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerLua_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerLua_staticMetaObject();
void QsciLexerLua_delete(QsciLexerLua* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
