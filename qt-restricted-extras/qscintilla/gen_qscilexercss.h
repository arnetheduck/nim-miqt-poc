#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCSS_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCSS_H

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
class QsciLexerCSS;
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
typedef struct QsciLexerCSS QsciLexerCSS;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerCSS_VTable {
	void (*destructor)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self);
	QMetaObject* (*metaObject)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	void* (*metacast)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, const char* param1);
	int (*metacall)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, bool fold);
	const char* (*language)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	const char* (*lexer)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	int (*lexerId)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	const char* (*autoCompletionFillups)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	const char* (*blockEnd)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int* style);
	int (*blockLookback)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	const char* (*blockStart)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int* style);
	int (*braceStyle)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	bool (*caseSensitive)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	QColor* (*color)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	bool (*eolFill)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	QFont* (*font)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	int (*indentationGuideView)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	const char* (*keywords)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int set);
	int (*defaultStyle)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	struct miqt_string (*description)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	QColor* (*paper)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	bool (*defaultEolFill)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, int style);
	void (*setEditor)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self);
	int (*styleBitsNeeded)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	const char* (*wordCharacters)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self);
	void (*setAutoIndentStyle)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerCSS_VTable* vtbl, const QsciLexerCSS* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerCSS_VTable* vtbl, QsciLexerCSS* self, QMetaMethod* signal);
};
QsciLexerCSS* QsciLexerCSS_new(struct QsciLexerCSS_VTable* vtbl);
QsciLexerCSS* QsciLexerCSS_new2(struct QsciLexerCSS_VTable* vtbl, QObject* parent);
void QsciLexerCSS_virtbase(QsciLexerCSS* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerCSS_metaObject(const QsciLexerCSS* self);
void* QsciLexerCSS_metacast(QsciLexerCSS* self, const char* param1);
int QsciLexerCSS_metacall(QsciLexerCSS* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerCSS_tr(const char* s);
struct miqt_string QsciLexerCSS_trUtf8(const char* s);
const char* QsciLexerCSS_language(const QsciLexerCSS* self);
const char* QsciLexerCSS_lexer(const QsciLexerCSS* self);
const char* QsciLexerCSS_blockEnd(const QsciLexerCSS* self);
const char* QsciLexerCSS_blockStart(const QsciLexerCSS* self);
const char* QsciLexerCSS_wordCharacters(const QsciLexerCSS* self);
QColor* QsciLexerCSS_defaultColor(const QsciLexerCSS* self, int style);
QFont* QsciLexerCSS_defaultFont(const QsciLexerCSS* self, int style);
const char* QsciLexerCSS_keywords(const QsciLexerCSS* self, int set);
struct miqt_string QsciLexerCSS_description(const QsciLexerCSS* self, int style);
void QsciLexerCSS_refreshProperties(QsciLexerCSS* self);
bool QsciLexerCSS_foldComments(const QsciLexerCSS* self);
bool QsciLexerCSS_foldCompact(const QsciLexerCSS* self);
void QsciLexerCSS_setHSSLanguage(QsciLexerCSS* self, bool enabled);
bool QsciLexerCSS_HSSLanguage(const QsciLexerCSS* self);
void QsciLexerCSS_setLessLanguage(QsciLexerCSS* self, bool enabled);
bool QsciLexerCSS_LessLanguage(const QsciLexerCSS* self);
void QsciLexerCSS_setSCSSLanguage(QsciLexerCSS* self, bool enabled);
bool QsciLexerCSS_SCSSLanguage(const QsciLexerCSS* self);
void QsciLexerCSS_setFoldComments(QsciLexerCSS* self, bool fold);
void QsciLexerCSS_setFoldCompact(QsciLexerCSS* self, bool fold);
struct miqt_string QsciLexerCSS_tr2(const char* s, const char* c);
struct miqt_string QsciLexerCSS_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerCSS_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerCSS_trUtf83(const char* s, const char* c, int n);
const char* QsciLexerCSS_blockEnd1(const QsciLexerCSS* self, int* style);
const char* QsciLexerCSS_blockStart1(const QsciLexerCSS* self, int* style);
QMetaObject* QsciLexerCSS_virtualbase_metaObject(const void* self);
void* QsciLexerCSS_virtualbase_metacast(void* self, const char* param1);
int QsciLexerCSS_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerCSS_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerCSS_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerCSS_virtualbase_language(const void* self);
const char* QsciLexerCSS_virtualbase_lexer(const void* self);
int QsciLexerCSS_virtualbase_lexerId(const void* self);
const char* QsciLexerCSS_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCSS_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerCSS_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerCSS_virtualbase_blockLookback(const void* self);
const char* QsciLexerCSS_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerCSS_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerCSS_virtualbase_braceStyle(const void* self);
bool QsciLexerCSS_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerCSS_virtualbase_color(const void* self, int style);
bool QsciLexerCSS_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerCSS_virtualbase_font(const void* self, int style);
int QsciLexerCSS_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerCSS_virtualbase_keywords(const void* self, int set);
int QsciLexerCSS_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerCSS_virtualbase_description(const void* self, int style);
QColor* QsciLexerCSS_virtualbase_paper(const void* self, int style);
QColor* QsciLexerCSS_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerCSS_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerCSS_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerCSS_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerCSS_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerCSS_virtualbase_refreshProperties(void* self);
int QsciLexerCSS_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerCSS_virtualbase_wordCharacters(const void* self);
void QsciLexerCSS_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerCSS_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerCSS_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerCSS_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerCSS_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerCSS_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCSS_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCSS_virtualbase_event(void* self, QEvent* event);
bool QsciLexerCSS_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerCSS_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerCSS_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerCSS_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerCSS_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerCSS_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerCSS_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCSS_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerCSS_protectedbase_sender(const void* self);
int QsciLexerCSS_protectedbase_senderSignalIndex(const void* self);
int QsciLexerCSS_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerCSS_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerCSS_staticMetaObject();
void QsciLexerCSS_delete(QsciLexerCSS* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
