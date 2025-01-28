#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCUSTOM_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCUSTOM_H

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
class QsciLexerCustom;
class QsciScintilla;
class QsciStyle;
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
typedef struct QsciLexerCustom QsciLexerCustom;
typedef struct QsciScintilla QsciScintilla;
typedef struct QsciStyle QsciStyle;
#endif

struct QsciLexerCustom_VTable {
	void (*destructor)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self);
	QMetaObject* (*metaObject)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	void* (*metacast)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, const char* param1);
	int (*metacall)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, int param1, int param2, void** param3);
	void (*styleText)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, int start, int end);
	void (*setEditor)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QsciScintilla* editor);
	int (*styleBitsNeeded)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	const char* (*language)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	const char* (*lexer)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	int (*lexerId)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	const char* (*autoCompletionFillups)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	const char* (*blockEnd)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int* style);
	int (*blockLookback)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	const char* (*blockStart)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int* style);
	int (*braceStyle)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	bool (*caseSensitive)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	QColor* (*color)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	bool (*eolFill)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	QFont* (*font)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	int (*indentationGuideView)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	const char* (*keywords)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int set);
	int (*defaultStyle)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	struct miqt_string (*description)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	QColor* (*paper)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	bool (*defaultEolFill)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, int style);
	void (*refreshProperties)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self);
	const char* (*wordCharacters)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self);
	void (*setAutoIndentStyle)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerCustom_VTable* vtbl, const QsciLexerCustom* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerCustom_VTable* vtbl, QsciLexerCustom* self, QMetaMethod* signal);
};
QsciLexerCustom* QsciLexerCustom_new(struct QsciLexerCustom_VTable* vtbl);
QsciLexerCustom* QsciLexerCustom_new2(struct QsciLexerCustom_VTable* vtbl, QObject* parent);
void QsciLexerCustom_virtbase(QsciLexerCustom* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerCustom_metaObject(const QsciLexerCustom* self);
void* QsciLexerCustom_metacast(QsciLexerCustom* self, const char* param1);
int QsciLexerCustom_metacall(QsciLexerCustom* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerCustom_tr(const char* s);
struct miqt_string QsciLexerCustom_trUtf8(const char* s);
void QsciLexerCustom_setStyling(QsciLexerCustom* self, int length, int style);
void QsciLexerCustom_setStyling2(QsciLexerCustom* self, int length, QsciStyle* style);
void QsciLexerCustom_startStyling(QsciLexerCustom* self, int pos);
void QsciLexerCustom_styleText(QsciLexerCustom* self, int start, int end);
void QsciLexerCustom_setEditor(QsciLexerCustom* self, QsciScintilla* editor);
int QsciLexerCustom_styleBitsNeeded(const QsciLexerCustom* self);
struct miqt_string QsciLexerCustom_tr2(const char* s, const char* c);
struct miqt_string QsciLexerCustom_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerCustom_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerCustom_trUtf83(const char* s, const char* c, int n);
void QsciLexerCustom_startStyling2(QsciLexerCustom* self, int pos, int styleBits);
QMetaObject* QsciLexerCustom_virtualbase_metaObject(const void* self);
void* QsciLexerCustom_virtualbase_metacast(void* self, const char* param1);
int QsciLexerCustom_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerCustom_virtualbase_styleText(void* self, int start, int end);
void QsciLexerCustom_virtualbase_setEditor(void* self, QsciScintilla* editor);
int QsciLexerCustom_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerCustom_virtualbase_language(const void* self);
const char* QsciLexerCustom_virtualbase_lexer(const void* self);
int QsciLexerCustom_virtualbase_lexerId(const void* self);
const char* QsciLexerCustom_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCustom_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerCustom_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerCustom_virtualbase_blockLookback(const void* self);
const char* QsciLexerCustom_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerCustom_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerCustom_virtualbase_braceStyle(const void* self);
bool QsciLexerCustom_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerCustom_virtualbase_color(const void* self, int style);
bool QsciLexerCustom_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerCustom_virtualbase_font(const void* self, int style);
int QsciLexerCustom_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerCustom_virtualbase_keywords(const void* self, int set);
int QsciLexerCustom_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerCustom_virtualbase_description(const void* self, int style);
QColor* QsciLexerCustom_virtualbase_paper(const void* self, int style);
QColor* QsciLexerCustom_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerCustom_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerCustom_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerCustom_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerCustom_virtualbase_refreshProperties(void* self);
const char* QsciLexerCustom_virtualbase_wordCharacters(const void* self);
void QsciLexerCustom_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerCustom_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerCustom_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerCustom_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerCustom_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerCustom_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCustom_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCustom_virtualbase_event(void* self, QEvent* event);
bool QsciLexerCustom_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerCustom_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerCustom_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerCustom_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerCustom_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerCustom_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerCustom_staticMetaObject();
void QsciLexerCustom_delete(QsciLexerCustom* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
