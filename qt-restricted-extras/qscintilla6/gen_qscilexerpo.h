#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERPO_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERPO_H

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
class QsciLexerPO;
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
typedef struct QsciLexerPO QsciLexerPO;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerPO_VTable {
	void (*destructor)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self);
	QMetaObject* (*metaObject)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	void* (*metacast)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, const char* param1);
	int (*metacall)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, bool fold);
	const char* (*language)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	const char* (*lexer)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	int (*lexerId)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	const char* (*autoCompletionFillups)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	const char* (*blockEnd)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int* style);
	int (*blockLookback)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	const char* (*blockStart)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int* style);
	int (*braceStyle)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	bool (*caseSensitive)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	QColor* (*color)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	bool (*eolFill)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	QFont* (*font)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	int (*indentationGuideView)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	const char* (*keywords)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int set);
	int (*defaultStyle)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	struct miqt_string (*description)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	QColor* (*paper)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	bool (*defaultEolFill)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, int style);
	void (*setEditor)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self);
	int (*styleBitsNeeded)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	const char* (*wordCharacters)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self);
	void (*setAutoIndentStyle)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerPO_VTable* vtbl, const QsciLexerPO* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerPO_VTable* vtbl, QsciLexerPO* self, QMetaMethod* signal);
};
QsciLexerPO* QsciLexerPO_new(struct QsciLexerPO_VTable* vtbl);
QsciLexerPO* QsciLexerPO_new2(struct QsciLexerPO_VTable* vtbl, QObject* parent);
void QsciLexerPO_virtbase(QsciLexerPO* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerPO_metaObject(const QsciLexerPO* self);
void* QsciLexerPO_metacast(QsciLexerPO* self, const char* param1);
int QsciLexerPO_metacall(QsciLexerPO* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerPO_tr(const char* s);
const char* QsciLexerPO_language(const QsciLexerPO* self);
const char* QsciLexerPO_lexer(const QsciLexerPO* self);
QColor* QsciLexerPO_defaultColor(const QsciLexerPO* self, int style);
QFont* QsciLexerPO_defaultFont(const QsciLexerPO* self, int style);
struct miqt_string QsciLexerPO_description(const QsciLexerPO* self, int style);
void QsciLexerPO_refreshProperties(QsciLexerPO* self);
bool QsciLexerPO_foldComments(const QsciLexerPO* self);
bool QsciLexerPO_foldCompact(const QsciLexerPO* self);
void QsciLexerPO_setFoldComments(QsciLexerPO* self, bool fold);
void QsciLexerPO_setFoldCompact(QsciLexerPO* self, bool fold);
struct miqt_string QsciLexerPO_tr2(const char* s, const char* c);
struct miqt_string QsciLexerPO_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerPO_virtualbase_metaObject(const void* self);
void* QsciLexerPO_virtualbase_metacast(void* self, const char* param1);
int QsciLexerPO_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerPO_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerPO_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerPO_virtualbase_language(const void* self);
const char* QsciLexerPO_virtualbase_lexer(const void* self);
int QsciLexerPO_virtualbase_lexerId(const void* self);
const char* QsciLexerPO_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPO_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerPO_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerPO_virtualbase_blockLookback(const void* self);
const char* QsciLexerPO_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerPO_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerPO_virtualbase_braceStyle(const void* self);
bool QsciLexerPO_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerPO_virtualbase_color(const void* self, int style);
bool QsciLexerPO_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerPO_virtualbase_font(const void* self, int style);
int QsciLexerPO_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerPO_virtualbase_keywords(const void* self, int set);
int QsciLexerPO_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerPO_virtualbase_description(const void* self, int style);
QColor* QsciLexerPO_virtualbase_paper(const void* self, int style);
QColor* QsciLexerPO_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerPO_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerPO_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerPO_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerPO_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerPO_virtualbase_refreshProperties(void* self);
int QsciLexerPO_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerPO_virtualbase_wordCharacters(const void* self);
void QsciLexerPO_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerPO_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerPO_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerPO_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerPO_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerPO_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPO_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPO_virtualbase_event(void* self, QEvent* event);
bool QsciLexerPO_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerPO_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerPO_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerPO_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerPO_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerPO_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerPO_staticMetaObject();
void QsciLexerPO_delete(QsciLexerPO* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
