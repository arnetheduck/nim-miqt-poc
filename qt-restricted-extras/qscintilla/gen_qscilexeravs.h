#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERAVS_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERAVS_H

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
class QsciLexerAVS;
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
typedef struct QsciLexerAVS QsciLexerAVS;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerAVS_VTable {
	void (*destructor)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self);
	QMetaObject* (*metaObject)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	void* (*metacast)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, const char* param1);
	int (*metacall)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, bool fold);
	const char* (*language)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	const char* (*lexer)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	int (*lexerId)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	const char* (*autoCompletionFillups)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	const char* (*blockEnd)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int* style);
	int (*blockLookback)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	const char* (*blockStart)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int* style);
	int (*braceStyle)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	bool (*caseSensitive)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	QColor* (*color)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	bool (*eolFill)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	QFont* (*font)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	int (*indentationGuideView)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	const char* (*keywords)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int set);
	int (*defaultStyle)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	struct miqt_string (*description)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	QColor* (*paper)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	bool (*defaultEolFill)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, int style);
	void (*setEditor)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self);
	int (*styleBitsNeeded)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	const char* (*wordCharacters)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self);
	void (*setAutoIndentStyle)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerAVS_VTable* vtbl, const QsciLexerAVS* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerAVS_VTable* vtbl, QsciLexerAVS* self, QMetaMethod* signal);
};
QsciLexerAVS* QsciLexerAVS_new(struct QsciLexerAVS_VTable* vtbl);
QsciLexerAVS* QsciLexerAVS_new2(struct QsciLexerAVS_VTable* vtbl, QObject* parent);
void QsciLexerAVS_virtbase(QsciLexerAVS* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerAVS_metaObject(const QsciLexerAVS* self);
void* QsciLexerAVS_metacast(QsciLexerAVS* self, const char* param1);
int QsciLexerAVS_metacall(QsciLexerAVS* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerAVS_tr(const char* s);
struct miqt_string QsciLexerAVS_trUtf8(const char* s);
const char* QsciLexerAVS_language(const QsciLexerAVS* self);
const char* QsciLexerAVS_lexer(const QsciLexerAVS* self);
int QsciLexerAVS_braceStyle(const QsciLexerAVS* self);
const char* QsciLexerAVS_wordCharacters(const QsciLexerAVS* self);
QColor* QsciLexerAVS_defaultColor(const QsciLexerAVS* self, int style);
QFont* QsciLexerAVS_defaultFont(const QsciLexerAVS* self, int style);
const char* QsciLexerAVS_keywords(const QsciLexerAVS* self, int set);
struct miqt_string QsciLexerAVS_description(const QsciLexerAVS* self, int style);
void QsciLexerAVS_refreshProperties(QsciLexerAVS* self);
bool QsciLexerAVS_foldComments(const QsciLexerAVS* self);
bool QsciLexerAVS_foldCompact(const QsciLexerAVS* self);
void QsciLexerAVS_setFoldComments(QsciLexerAVS* self, bool fold);
void QsciLexerAVS_setFoldCompact(QsciLexerAVS* self, bool fold);
struct miqt_string QsciLexerAVS_tr2(const char* s, const char* c);
struct miqt_string QsciLexerAVS_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerAVS_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerAVS_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerAVS_virtualbase_metaObject(const void* self);
void* QsciLexerAVS_virtualbase_metacast(void* self, const char* param1);
int QsciLexerAVS_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerAVS_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerAVS_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerAVS_virtualbase_language(const void* self);
const char* QsciLexerAVS_virtualbase_lexer(const void* self);
int QsciLexerAVS_virtualbase_lexerId(const void* self);
const char* QsciLexerAVS_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerAVS_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerAVS_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerAVS_virtualbase_blockLookback(const void* self);
const char* QsciLexerAVS_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerAVS_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerAVS_virtualbase_braceStyle(const void* self);
bool QsciLexerAVS_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerAVS_virtualbase_color(const void* self, int style);
bool QsciLexerAVS_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerAVS_virtualbase_font(const void* self, int style);
int QsciLexerAVS_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerAVS_virtualbase_keywords(const void* self, int set);
int QsciLexerAVS_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerAVS_virtualbase_description(const void* self, int style);
QColor* QsciLexerAVS_virtualbase_paper(const void* self, int style);
QColor* QsciLexerAVS_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerAVS_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerAVS_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerAVS_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerAVS_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerAVS_virtualbase_refreshProperties(void* self);
int QsciLexerAVS_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerAVS_virtualbase_wordCharacters(const void* self);
void QsciLexerAVS_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerAVS_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerAVS_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerAVS_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerAVS_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerAVS_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerAVS_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerAVS_virtualbase_event(void* self, QEvent* event);
bool QsciLexerAVS_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerAVS_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerAVS_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerAVS_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerAVS_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerAVS_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerAVS_staticMetaObject();
void QsciLexerAVS_delete(QsciLexerAVS* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
