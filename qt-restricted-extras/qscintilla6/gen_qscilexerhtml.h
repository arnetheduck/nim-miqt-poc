#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERHTML_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERHTML_H

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
class QsciLexerHTML;
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
typedef struct QsciLexerHTML QsciLexerHTML;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerHTML_VTable {
	void (*destructor)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self);
	QMetaObject* (*metaObject)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	void* (*metacast)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, const char* param1);
	int (*metacall)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, int param1, int param2, void** param3);
	void (*setFoldCompact)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, bool fold);
	void (*setCaseSensitiveTags)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, bool sens);
	const char* (*language)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	const char* (*lexer)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	int (*lexerId)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	const char* (*autoCompletionFillups)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	const char* (*blockEnd)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int* style);
	int (*blockLookback)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	const char* (*blockStart)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int* style);
	int (*braceStyle)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	bool (*caseSensitive)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	QColor* (*color)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	bool (*eolFill)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	QFont* (*font)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	int (*indentationGuideView)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	const char* (*keywords)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int set);
	int (*defaultStyle)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	struct miqt_string (*description)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	QColor* (*paper)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	bool (*defaultEolFill)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, int style);
	void (*setEditor)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self);
	int (*styleBitsNeeded)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	const char* (*wordCharacters)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self);
	void (*setAutoIndentStyle)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerHTML_VTable* vtbl, const QsciLexerHTML* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerHTML_VTable* vtbl, QsciLexerHTML* self, QMetaMethod* signal);
};
QsciLexerHTML* QsciLexerHTML_new(struct QsciLexerHTML_VTable* vtbl);
QsciLexerHTML* QsciLexerHTML_new2(struct QsciLexerHTML_VTable* vtbl, QObject* parent);
void QsciLexerHTML_virtbase(QsciLexerHTML* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerHTML_metaObject(const QsciLexerHTML* self);
void* QsciLexerHTML_metacast(QsciLexerHTML* self, const char* param1);
int QsciLexerHTML_metacall(QsciLexerHTML* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerHTML_tr(const char* s);
const char* QsciLexerHTML_language(const QsciLexerHTML* self);
const char* QsciLexerHTML_lexer(const QsciLexerHTML* self);
const char* QsciLexerHTML_autoCompletionFillups(const QsciLexerHTML* self);
const char* QsciLexerHTML_wordCharacters(const QsciLexerHTML* self);
QColor* QsciLexerHTML_defaultColor(const QsciLexerHTML* self, int style);
bool QsciLexerHTML_defaultEolFill(const QsciLexerHTML* self, int style);
QFont* QsciLexerHTML_defaultFont(const QsciLexerHTML* self, int style);
QColor* QsciLexerHTML_defaultPaper(const QsciLexerHTML* self, int style);
const char* QsciLexerHTML_keywords(const QsciLexerHTML* self, int set);
struct miqt_string QsciLexerHTML_description(const QsciLexerHTML* self, int style);
void QsciLexerHTML_refreshProperties(QsciLexerHTML* self);
bool QsciLexerHTML_caseSensitiveTags(const QsciLexerHTML* self);
void QsciLexerHTML_setDjangoTemplates(QsciLexerHTML* self, bool enabled);
bool QsciLexerHTML_djangoTemplates(const QsciLexerHTML* self);
bool QsciLexerHTML_foldCompact(const QsciLexerHTML* self);
bool QsciLexerHTML_foldPreprocessor(const QsciLexerHTML* self);
void QsciLexerHTML_setFoldScriptComments(QsciLexerHTML* self, bool fold);
bool QsciLexerHTML_foldScriptComments(const QsciLexerHTML* self);
void QsciLexerHTML_setFoldScriptHeredocs(QsciLexerHTML* self, bool fold);
bool QsciLexerHTML_foldScriptHeredocs(const QsciLexerHTML* self);
void QsciLexerHTML_setMakoTemplates(QsciLexerHTML* self, bool enabled);
bool QsciLexerHTML_makoTemplates(const QsciLexerHTML* self);
void QsciLexerHTML_setFoldCompact(QsciLexerHTML* self, bool fold);
void QsciLexerHTML_setFoldPreprocessor(QsciLexerHTML* self, bool fold);
void QsciLexerHTML_setCaseSensitiveTags(QsciLexerHTML* self, bool sens);
struct miqt_string QsciLexerHTML_tr2(const char* s, const char* c);
struct miqt_string QsciLexerHTML_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerHTML_virtualbase_metaObject(const void* self);
void* QsciLexerHTML_virtualbase_metacast(void* self, const char* param1);
int QsciLexerHTML_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerHTML_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerHTML_virtualbase_setFoldPreprocessor(void* self, bool fold);
void QsciLexerHTML_virtualbase_setCaseSensitiveTags(void* self, bool sens);
const char* QsciLexerHTML_virtualbase_language(const void* self);
const char* QsciLexerHTML_virtualbase_lexer(const void* self);
int QsciLexerHTML_virtualbase_lexerId(const void* self);
const char* QsciLexerHTML_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerHTML_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerHTML_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerHTML_virtualbase_blockLookback(const void* self);
const char* QsciLexerHTML_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerHTML_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerHTML_virtualbase_braceStyle(const void* self);
bool QsciLexerHTML_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerHTML_virtualbase_color(const void* self, int style);
bool QsciLexerHTML_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerHTML_virtualbase_font(const void* self, int style);
int QsciLexerHTML_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerHTML_virtualbase_keywords(const void* self, int set);
int QsciLexerHTML_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerHTML_virtualbase_description(const void* self, int style);
QColor* QsciLexerHTML_virtualbase_paper(const void* self, int style);
QColor* QsciLexerHTML_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerHTML_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerHTML_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerHTML_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerHTML_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerHTML_virtualbase_refreshProperties(void* self);
int QsciLexerHTML_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerHTML_virtualbase_wordCharacters(const void* self);
void QsciLexerHTML_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerHTML_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerHTML_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerHTML_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerHTML_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerHTML_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerHTML_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerHTML_virtualbase_event(void* self, QEvent* event);
bool QsciLexerHTML_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerHTML_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerHTML_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerHTML_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerHTML_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerHTML_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerHTML_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerHTML_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerHTML_protectedbase_sender(const void* self);
int QsciLexerHTML_protectedbase_senderSignalIndex(const void* self);
int QsciLexerHTML_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerHTML_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerHTML_staticMetaObject();
void QsciLexerHTML_delete(QsciLexerHTML* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
