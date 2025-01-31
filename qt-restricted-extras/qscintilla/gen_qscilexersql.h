#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERSQL_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERSQL_H

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
class QsciLexerSQL;
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
typedef struct QsciLexerSQL QsciLexerSQL;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerSQL_VTable {
	void (*destructor)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self);
	QMetaObject* (*metaObject)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	void* (*metacast)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, const char* param1);
	int (*metacall)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, int param1, int param2, void** param3);
	void (*setBackslashEscapes)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, bool enable);
	void (*setFoldComments)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, bool fold);
	const char* (*language)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	const char* (*lexer)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	int (*lexerId)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	const char* (*autoCompletionFillups)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	const char* (*blockEnd)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int* style);
	int (*blockLookback)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	const char* (*blockStart)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int* style);
	int (*braceStyle)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	bool (*caseSensitive)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	QColor* (*color)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	bool (*eolFill)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	QFont* (*font)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	int (*indentationGuideView)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	const char* (*keywords)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int set);
	int (*defaultStyle)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	struct miqt_string (*description)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	QColor* (*paper)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	bool (*defaultEolFill)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, int style);
	void (*setEditor)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self);
	int (*styleBitsNeeded)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	const char* (*wordCharacters)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self);
	void (*setAutoIndentStyle)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerSQL_VTable* vtbl, const QsciLexerSQL* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerSQL_VTable* vtbl, QsciLexerSQL* self, QMetaMethod* signal);
};
QsciLexerSQL* QsciLexerSQL_new(struct QsciLexerSQL_VTable* vtbl);
QsciLexerSQL* QsciLexerSQL_new2(struct QsciLexerSQL_VTable* vtbl, QObject* parent);
void QsciLexerSQL_virtbase(QsciLexerSQL* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerSQL_metaObject(const QsciLexerSQL* self);
void* QsciLexerSQL_metacast(QsciLexerSQL* self, const char* param1);
int QsciLexerSQL_metacall(QsciLexerSQL* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerSQL_tr(const char* s);
struct miqt_string QsciLexerSQL_trUtf8(const char* s);
const char* QsciLexerSQL_language(const QsciLexerSQL* self);
const char* QsciLexerSQL_lexer(const QsciLexerSQL* self);
int QsciLexerSQL_braceStyle(const QsciLexerSQL* self);
QColor* QsciLexerSQL_defaultColor(const QsciLexerSQL* self, int style);
bool QsciLexerSQL_defaultEolFill(const QsciLexerSQL* self, int style);
QFont* QsciLexerSQL_defaultFont(const QsciLexerSQL* self, int style);
QColor* QsciLexerSQL_defaultPaper(const QsciLexerSQL* self, int style);
const char* QsciLexerSQL_keywords(const QsciLexerSQL* self, int set);
struct miqt_string QsciLexerSQL_description(const QsciLexerSQL* self, int style);
void QsciLexerSQL_refreshProperties(QsciLexerSQL* self);
bool QsciLexerSQL_backslashEscapes(const QsciLexerSQL* self);
void QsciLexerSQL_setDottedWords(QsciLexerSQL* self, bool enable);
bool QsciLexerSQL_dottedWords(const QsciLexerSQL* self);
void QsciLexerSQL_setFoldAtElse(QsciLexerSQL* self, bool fold);
bool QsciLexerSQL_foldAtElse(const QsciLexerSQL* self);
bool QsciLexerSQL_foldComments(const QsciLexerSQL* self);
bool QsciLexerSQL_foldCompact(const QsciLexerSQL* self);
void QsciLexerSQL_setFoldOnlyBegin(QsciLexerSQL* self, bool fold);
bool QsciLexerSQL_foldOnlyBegin(const QsciLexerSQL* self);
void QsciLexerSQL_setHashComments(QsciLexerSQL* self, bool enable);
bool QsciLexerSQL_hashComments(const QsciLexerSQL* self);
void QsciLexerSQL_setQuotedIdentifiers(QsciLexerSQL* self, bool enable);
bool QsciLexerSQL_quotedIdentifiers(const QsciLexerSQL* self);
void QsciLexerSQL_setBackslashEscapes(QsciLexerSQL* self, bool enable);
void QsciLexerSQL_setFoldComments(QsciLexerSQL* self, bool fold);
void QsciLexerSQL_setFoldCompact(QsciLexerSQL* self, bool fold);
struct miqt_string QsciLexerSQL_tr2(const char* s, const char* c);
struct miqt_string QsciLexerSQL_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerSQL_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerSQL_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerSQL_virtualbase_metaObject(const void* self);
void* QsciLexerSQL_virtualbase_metacast(void* self, const char* param1);
int QsciLexerSQL_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerSQL_virtualbase_setBackslashEscapes(void* self, bool enable);
void QsciLexerSQL_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerSQL_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerSQL_virtualbase_language(const void* self);
const char* QsciLexerSQL_virtualbase_lexer(const void* self);
int QsciLexerSQL_virtualbase_lexerId(const void* self);
const char* QsciLexerSQL_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerSQL_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerSQL_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerSQL_virtualbase_blockLookback(const void* self);
const char* QsciLexerSQL_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerSQL_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerSQL_virtualbase_braceStyle(const void* self);
bool QsciLexerSQL_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerSQL_virtualbase_color(const void* self, int style);
bool QsciLexerSQL_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerSQL_virtualbase_font(const void* self, int style);
int QsciLexerSQL_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerSQL_virtualbase_keywords(const void* self, int set);
int QsciLexerSQL_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerSQL_virtualbase_description(const void* self, int style);
QColor* QsciLexerSQL_virtualbase_paper(const void* self, int style);
QColor* QsciLexerSQL_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerSQL_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerSQL_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerSQL_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerSQL_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerSQL_virtualbase_refreshProperties(void* self);
int QsciLexerSQL_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerSQL_virtualbase_wordCharacters(const void* self);
void QsciLexerSQL_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerSQL_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerSQL_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerSQL_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerSQL_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerSQL_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerSQL_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerSQL_virtualbase_event(void* self, QEvent* event);
bool QsciLexerSQL_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerSQL_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerSQL_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerSQL_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerSQL_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerSQL_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerSQL_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerSQL_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerSQL_protectedbase_sender(const void* self);
int QsciLexerSQL_protectedbase_senderSignalIndex(const void* self);
int QsciLexerSQL_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerSQL_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerSQL_staticMetaObject();
void QsciLexerSQL_delete(QsciLexerSQL* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
