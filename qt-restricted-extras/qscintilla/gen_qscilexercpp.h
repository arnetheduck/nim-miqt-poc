#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCPP_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCPP_H

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
class QsciLexerCPP;
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
typedef struct QsciLexerCPP QsciLexerCPP;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerCPP_VTable {
	void (*destructor)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self);
	QMetaObject* (*metaObject)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	void* (*metacast)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, const char* param1);
	int (*metacall)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, int param1, int param2, void** param3);
	void (*setFoldAtElse)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, bool fold);
	void (*setFoldComments)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, bool fold);
	void (*setStylePreprocessor)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, bool style);
	const char* (*language)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	const char* (*lexer)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	int (*lexerId)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	const char* (*autoCompletionFillups)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	const char* (*blockEnd)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int* style);
	int (*blockLookback)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	const char* (*blockStart)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int* style);
	int (*braceStyle)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	bool (*caseSensitive)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	QColor* (*color)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	bool (*eolFill)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	QFont* (*font)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	int (*indentationGuideView)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	const char* (*keywords)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int set);
	int (*defaultStyle)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	struct miqt_string (*description)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	QColor* (*paper)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	bool (*defaultEolFill)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, int style);
	void (*setEditor)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self);
	int (*styleBitsNeeded)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	const char* (*wordCharacters)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self);
	void (*setAutoIndentStyle)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerCPP_VTable* vtbl, const QsciLexerCPP* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerCPP_VTable* vtbl, QsciLexerCPP* self, QMetaMethod* signal);
};
QsciLexerCPP* QsciLexerCPP_new(struct QsciLexerCPP_VTable* vtbl);
QsciLexerCPP* QsciLexerCPP_new2(struct QsciLexerCPP_VTable* vtbl, QObject* parent);
QsciLexerCPP* QsciLexerCPP_new3(struct QsciLexerCPP_VTable* vtbl, QObject* parent, bool caseInsensitiveKeywords);
void QsciLexerCPP_virtbase(QsciLexerCPP* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerCPP_metaObject(const QsciLexerCPP* self);
void* QsciLexerCPP_metacast(QsciLexerCPP* self, const char* param1);
int QsciLexerCPP_metacall(QsciLexerCPP* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerCPP_tr(const char* s);
struct miqt_string QsciLexerCPP_trUtf8(const char* s);
const char* QsciLexerCPP_language(const QsciLexerCPP* self);
const char* QsciLexerCPP_lexer(const QsciLexerCPP* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCPP_autoCompletionWordSeparators(const QsciLexerCPP* self);
const char* QsciLexerCPP_blockEnd(const QsciLexerCPP* self);
const char* QsciLexerCPP_blockStart(const QsciLexerCPP* self);
const char* QsciLexerCPP_blockStartKeyword(const QsciLexerCPP* self);
int QsciLexerCPP_braceStyle(const QsciLexerCPP* self);
const char* QsciLexerCPP_wordCharacters(const QsciLexerCPP* self);
QColor* QsciLexerCPP_defaultColor(const QsciLexerCPP* self, int style);
bool QsciLexerCPP_defaultEolFill(const QsciLexerCPP* self, int style);
QFont* QsciLexerCPP_defaultFont(const QsciLexerCPP* self, int style);
QColor* QsciLexerCPP_defaultPaper(const QsciLexerCPP* self, int style);
const char* QsciLexerCPP_keywords(const QsciLexerCPP* self, int set);
struct miqt_string QsciLexerCPP_description(const QsciLexerCPP* self, int style);
void QsciLexerCPP_refreshProperties(QsciLexerCPP* self);
bool QsciLexerCPP_foldAtElse(const QsciLexerCPP* self);
bool QsciLexerCPP_foldComments(const QsciLexerCPP* self);
bool QsciLexerCPP_foldCompact(const QsciLexerCPP* self);
bool QsciLexerCPP_foldPreprocessor(const QsciLexerCPP* self);
bool QsciLexerCPP_stylePreprocessor(const QsciLexerCPP* self);
void QsciLexerCPP_setDollarsAllowed(QsciLexerCPP* self, bool allowed);
bool QsciLexerCPP_dollarsAllowed(const QsciLexerCPP* self);
void QsciLexerCPP_setHighlightTripleQuotedStrings(QsciLexerCPP* self, bool enabled);
bool QsciLexerCPP_highlightTripleQuotedStrings(const QsciLexerCPP* self);
void QsciLexerCPP_setHighlightHashQuotedStrings(QsciLexerCPP* self, bool enabled);
bool QsciLexerCPP_highlightHashQuotedStrings(const QsciLexerCPP* self);
void QsciLexerCPP_setHighlightBackQuotedStrings(QsciLexerCPP* self, bool enabled);
bool QsciLexerCPP_highlightBackQuotedStrings(const QsciLexerCPP* self);
void QsciLexerCPP_setHighlightEscapeSequences(QsciLexerCPP* self, bool enabled);
bool QsciLexerCPP_highlightEscapeSequences(const QsciLexerCPP* self);
void QsciLexerCPP_setVerbatimStringEscapeSequencesAllowed(QsciLexerCPP* self, bool allowed);
bool QsciLexerCPP_verbatimStringEscapeSequencesAllowed(const QsciLexerCPP* self);
void QsciLexerCPP_setFoldAtElse(QsciLexerCPP* self, bool fold);
void QsciLexerCPP_setFoldComments(QsciLexerCPP* self, bool fold);
void QsciLexerCPP_setFoldCompact(QsciLexerCPP* self, bool fold);
void QsciLexerCPP_setFoldPreprocessor(QsciLexerCPP* self, bool fold);
void QsciLexerCPP_setStylePreprocessor(QsciLexerCPP* self, bool style);
struct miqt_string QsciLexerCPP_tr2(const char* s, const char* c);
struct miqt_string QsciLexerCPP_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerCPP_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerCPP_trUtf83(const char* s, const char* c, int n);
const char* QsciLexerCPP_blockEnd1(const QsciLexerCPP* self, int* style);
const char* QsciLexerCPP_blockStart1(const QsciLexerCPP* self, int* style);
const char* QsciLexerCPP_blockStartKeyword1(const QsciLexerCPP* self, int* style);
QMetaObject* QsciLexerCPP_virtualbase_metaObject(const void* self);
void* QsciLexerCPP_virtualbase_metacast(void* self, const char* param1);
int QsciLexerCPP_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerCPP_virtualbase_setFoldAtElse(void* self, bool fold);
void QsciLexerCPP_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerCPP_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerCPP_virtualbase_setFoldPreprocessor(void* self, bool fold);
void QsciLexerCPP_virtualbase_setStylePreprocessor(void* self, bool style);
const char* QsciLexerCPP_virtualbase_language(const void* self);
const char* QsciLexerCPP_virtualbase_lexer(const void* self);
int QsciLexerCPP_virtualbase_lexerId(const void* self);
const char* QsciLexerCPP_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCPP_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerCPP_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerCPP_virtualbase_blockLookback(const void* self);
const char* QsciLexerCPP_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerCPP_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerCPP_virtualbase_braceStyle(const void* self);
bool QsciLexerCPP_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerCPP_virtualbase_color(const void* self, int style);
bool QsciLexerCPP_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerCPP_virtualbase_font(const void* self, int style);
int QsciLexerCPP_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerCPP_virtualbase_keywords(const void* self, int set);
int QsciLexerCPP_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerCPP_virtualbase_description(const void* self, int style);
QColor* QsciLexerCPP_virtualbase_paper(const void* self, int style);
QColor* QsciLexerCPP_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerCPP_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerCPP_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerCPP_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerCPP_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerCPP_virtualbase_refreshProperties(void* self);
int QsciLexerCPP_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerCPP_virtualbase_wordCharacters(const void* self);
void QsciLexerCPP_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerCPP_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerCPP_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerCPP_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerCPP_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerCPP_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCPP_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCPP_virtualbase_event(void* self, QEvent* event);
bool QsciLexerCPP_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerCPP_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerCPP_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerCPP_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerCPP_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerCPP_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerCPP_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCPP_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerCPP_protectedbase_sender(const void* self);
int QsciLexerCPP_protectedbase_senderSignalIndex(const void* self);
int QsciLexerCPP_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerCPP_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerCPP_staticMetaObject();
void QsciLexerCPP_delete(QsciLexerCPP* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
