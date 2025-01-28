#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPERL_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPERL_H

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
class QsciLexerPerl;
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
typedef struct QsciLexerPerl QsciLexerPerl;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerPerl_VTable {
	void (*destructor)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self);
	QMetaObject* (*metaObject)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	void* (*metacast)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, const char* param1);
	int (*metacall)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, bool fold);
	const char* (*language)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	const char* (*lexer)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	int (*lexerId)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	const char* (*autoCompletionFillups)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	const char* (*blockEnd)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int* style);
	int (*blockLookback)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	const char* (*blockStart)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int* style);
	int (*braceStyle)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	bool (*caseSensitive)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	QColor* (*color)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	bool (*eolFill)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	QFont* (*font)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	int (*indentationGuideView)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	const char* (*keywords)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int set);
	int (*defaultStyle)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	struct miqt_string (*description)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	QColor* (*paper)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	bool (*defaultEolFill)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, int style);
	void (*setEditor)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self);
	int (*styleBitsNeeded)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	const char* (*wordCharacters)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self);
	void (*setAutoIndentStyle)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerPerl_VTable* vtbl, const QsciLexerPerl* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerPerl_VTable* vtbl, QsciLexerPerl* self, QMetaMethod* signal);
};
QsciLexerPerl* QsciLexerPerl_new(struct QsciLexerPerl_VTable* vtbl);
QsciLexerPerl* QsciLexerPerl_new2(struct QsciLexerPerl_VTable* vtbl, QObject* parent);
void QsciLexerPerl_virtbase(QsciLexerPerl* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerPerl_metaObject(const QsciLexerPerl* self);
void* QsciLexerPerl_metacast(QsciLexerPerl* self, const char* param1);
int QsciLexerPerl_metacall(QsciLexerPerl* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerPerl_tr(const char* s);
struct miqt_string QsciLexerPerl_trUtf8(const char* s);
const char* QsciLexerPerl_language(const QsciLexerPerl* self);
const char* QsciLexerPerl_lexer(const QsciLexerPerl* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPerl_autoCompletionWordSeparators(const QsciLexerPerl* self);
const char* QsciLexerPerl_blockEnd(const QsciLexerPerl* self);
const char* QsciLexerPerl_blockStart(const QsciLexerPerl* self);
int QsciLexerPerl_braceStyle(const QsciLexerPerl* self);
const char* QsciLexerPerl_wordCharacters(const QsciLexerPerl* self);
QColor* QsciLexerPerl_defaultColor(const QsciLexerPerl* self, int style);
bool QsciLexerPerl_defaultEolFill(const QsciLexerPerl* self, int style);
QFont* QsciLexerPerl_defaultFont(const QsciLexerPerl* self, int style);
QColor* QsciLexerPerl_defaultPaper(const QsciLexerPerl* self, int style);
const char* QsciLexerPerl_keywords(const QsciLexerPerl* self, int set);
struct miqt_string QsciLexerPerl_description(const QsciLexerPerl* self, int style);
void QsciLexerPerl_refreshProperties(QsciLexerPerl* self);
void QsciLexerPerl_setFoldAtElse(QsciLexerPerl* self, bool fold);
bool QsciLexerPerl_foldAtElse(const QsciLexerPerl* self);
bool QsciLexerPerl_foldComments(const QsciLexerPerl* self);
bool QsciLexerPerl_foldCompact(const QsciLexerPerl* self);
void QsciLexerPerl_setFoldPackages(QsciLexerPerl* self, bool fold);
bool QsciLexerPerl_foldPackages(const QsciLexerPerl* self);
void QsciLexerPerl_setFoldPODBlocks(QsciLexerPerl* self, bool fold);
bool QsciLexerPerl_foldPODBlocks(const QsciLexerPerl* self);
void QsciLexerPerl_setFoldComments(QsciLexerPerl* self, bool fold);
void QsciLexerPerl_setFoldCompact(QsciLexerPerl* self, bool fold);
struct miqt_string QsciLexerPerl_tr2(const char* s, const char* c);
struct miqt_string QsciLexerPerl_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerPerl_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerPerl_trUtf83(const char* s, const char* c, int n);
const char* QsciLexerPerl_blockEnd1(const QsciLexerPerl* self, int* style);
const char* QsciLexerPerl_blockStart1(const QsciLexerPerl* self, int* style);
QMetaObject* QsciLexerPerl_virtualbase_metaObject(const void* self);
void* QsciLexerPerl_virtualbase_metacast(void* self, const char* param1);
int QsciLexerPerl_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerPerl_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerPerl_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerPerl_virtualbase_language(const void* self);
const char* QsciLexerPerl_virtualbase_lexer(const void* self);
int QsciLexerPerl_virtualbase_lexerId(const void* self);
const char* QsciLexerPerl_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPerl_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerPerl_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerPerl_virtualbase_blockLookback(const void* self);
const char* QsciLexerPerl_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerPerl_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerPerl_virtualbase_braceStyle(const void* self);
bool QsciLexerPerl_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerPerl_virtualbase_color(const void* self, int style);
bool QsciLexerPerl_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerPerl_virtualbase_font(const void* self, int style);
int QsciLexerPerl_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerPerl_virtualbase_keywords(const void* self, int set);
int QsciLexerPerl_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerPerl_virtualbase_description(const void* self, int style);
QColor* QsciLexerPerl_virtualbase_paper(const void* self, int style);
QColor* QsciLexerPerl_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerPerl_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerPerl_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerPerl_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerPerl_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerPerl_virtualbase_refreshProperties(void* self);
int QsciLexerPerl_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerPerl_virtualbase_wordCharacters(const void* self);
void QsciLexerPerl_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerPerl_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerPerl_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerPerl_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerPerl_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerPerl_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPerl_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPerl_virtualbase_event(void* self, QEvent* event);
bool QsciLexerPerl_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerPerl_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerPerl_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerPerl_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerPerl_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerPerl_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerPerl_staticMetaObject();
void QsciLexerPerl_delete(QsciLexerPerl* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
