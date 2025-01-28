#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERD_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERD_H

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
class QsciLexerD;
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
typedef struct QsciLexerD QsciLexerD;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerD_VTable {
	void (*destructor)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self);
	QMetaObject* (*metaObject)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	void* (*metacast)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, const char* param1);
	int (*metacall)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, int param1, int param2, void** param3);
	void (*setFoldAtElse)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, bool fold);
	void (*setFoldComments)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, bool fold);
	const char* (*language)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	const char* (*lexer)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	int (*lexerId)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	const char* (*autoCompletionFillups)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	const char* (*blockEnd)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int* style);
	int (*blockLookback)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	const char* (*blockStart)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int* style);
	int (*braceStyle)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	bool (*caseSensitive)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	QColor* (*color)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	bool (*eolFill)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	QFont* (*font)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	int (*indentationGuideView)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	const char* (*keywords)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int set);
	int (*defaultStyle)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	struct miqt_string (*description)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	QColor* (*paper)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	bool (*defaultEolFill)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, int style);
	void (*setEditor)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self);
	int (*styleBitsNeeded)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	const char* (*wordCharacters)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self);
	void (*setAutoIndentStyle)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerD_VTable* vtbl, const QsciLexerD* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerD_VTable* vtbl, QsciLexerD* self, QMetaMethod* signal);
};
QsciLexerD* QsciLexerD_new(struct QsciLexerD_VTable* vtbl);
QsciLexerD* QsciLexerD_new2(struct QsciLexerD_VTable* vtbl, QObject* parent);
void QsciLexerD_virtbase(QsciLexerD* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerD_metaObject(const QsciLexerD* self);
void* QsciLexerD_metacast(QsciLexerD* self, const char* param1);
int QsciLexerD_metacall(QsciLexerD* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerD_tr(const char* s);
const char* QsciLexerD_language(const QsciLexerD* self);
const char* QsciLexerD_lexer(const QsciLexerD* self);
struct miqt_array /* of struct miqt_string */  QsciLexerD_autoCompletionWordSeparators(const QsciLexerD* self);
const char* QsciLexerD_blockEnd(const QsciLexerD* self);
const char* QsciLexerD_blockStart(const QsciLexerD* self);
const char* QsciLexerD_blockStartKeyword(const QsciLexerD* self);
int QsciLexerD_braceStyle(const QsciLexerD* self);
const char* QsciLexerD_wordCharacters(const QsciLexerD* self);
QColor* QsciLexerD_defaultColor(const QsciLexerD* self, int style);
bool QsciLexerD_defaultEolFill(const QsciLexerD* self, int style);
QFont* QsciLexerD_defaultFont(const QsciLexerD* self, int style);
QColor* QsciLexerD_defaultPaper(const QsciLexerD* self, int style);
const char* QsciLexerD_keywords(const QsciLexerD* self, int set);
struct miqt_string QsciLexerD_description(const QsciLexerD* self, int style);
void QsciLexerD_refreshProperties(QsciLexerD* self);
bool QsciLexerD_foldAtElse(const QsciLexerD* self);
bool QsciLexerD_foldComments(const QsciLexerD* self);
bool QsciLexerD_foldCompact(const QsciLexerD* self);
void QsciLexerD_setFoldAtElse(QsciLexerD* self, bool fold);
void QsciLexerD_setFoldComments(QsciLexerD* self, bool fold);
void QsciLexerD_setFoldCompact(QsciLexerD* self, bool fold);
struct miqt_string QsciLexerD_tr2(const char* s, const char* c);
struct miqt_string QsciLexerD_tr3(const char* s, const char* c, int n);
const char* QsciLexerD_blockEnd1(const QsciLexerD* self, int* style);
const char* QsciLexerD_blockStart1(const QsciLexerD* self, int* style);
const char* QsciLexerD_blockStartKeyword1(const QsciLexerD* self, int* style);
QMetaObject* QsciLexerD_virtualbase_metaObject(const void* self);
void* QsciLexerD_virtualbase_metacast(void* self, const char* param1);
int QsciLexerD_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerD_virtualbase_setFoldAtElse(void* self, bool fold);
void QsciLexerD_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerD_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerD_virtualbase_language(const void* self);
const char* QsciLexerD_virtualbase_lexer(const void* self);
int QsciLexerD_virtualbase_lexerId(const void* self);
const char* QsciLexerD_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerD_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerD_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerD_virtualbase_blockLookback(const void* self);
const char* QsciLexerD_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerD_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerD_virtualbase_braceStyle(const void* self);
bool QsciLexerD_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerD_virtualbase_color(const void* self, int style);
bool QsciLexerD_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerD_virtualbase_font(const void* self, int style);
int QsciLexerD_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerD_virtualbase_keywords(const void* self, int set);
int QsciLexerD_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerD_virtualbase_description(const void* self, int style);
QColor* QsciLexerD_virtualbase_paper(const void* self, int style);
QColor* QsciLexerD_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerD_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerD_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerD_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerD_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerD_virtualbase_refreshProperties(void* self);
int QsciLexerD_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerD_virtualbase_wordCharacters(const void* self);
void QsciLexerD_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerD_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerD_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerD_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerD_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerD_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerD_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerD_virtualbase_event(void* self, QEvent* event);
bool QsciLexerD_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerD_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerD_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerD_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerD_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerD_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerD_staticMetaObject();
void QsciLexerD_delete(QsciLexerD* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
