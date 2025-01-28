#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERJAVA_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERJAVA_H

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
class QsciLexerJava;
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
typedef struct QsciLexerJava QsciLexerJava;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerJava_VTable {
	void (*destructor)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self);
	QMetaObject* (*metaObject)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	void* (*metacast)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, const char* param1);
	int (*metacall)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, int param1, int param2, void** param3);
	void (*setFoldAtElse)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, bool fold);
	void (*setFoldComments)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, bool fold);
	void (*setStylePreprocessor)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, bool style);
	const char* (*language)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	const char* (*lexer)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	int (*lexerId)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	const char* (*autoCompletionFillups)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	const char* (*blockEnd)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int* style);
	int (*blockLookback)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	const char* (*blockStart)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int* style);
	int (*braceStyle)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	bool (*caseSensitive)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	QColor* (*color)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	bool (*eolFill)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	QFont* (*font)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	int (*indentationGuideView)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	const char* (*keywords)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int set);
	int (*defaultStyle)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	struct miqt_string (*description)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	QColor* (*paper)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	bool (*defaultEolFill)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, int style);
	void (*setEditor)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self);
	int (*styleBitsNeeded)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	const char* (*wordCharacters)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self);
	void (*setAutoIndentStyle)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerJava_VTable* vtbl, const QsciLexerJava* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerJava_VTable* vtbl, QsciLexerJava* self, QMetaMethod* signal);
};
QsciLexerJava* QsciLexerJava_new(struct QsciLexerJava_VTable* vtbl);
QsciLexerJava* QsciLexerJava_new2(struct QsciLexerJava_VTable* vtbl, QObject* parent);
void QsciLexerJava_virtbase(QsciLexerJava* src, QsciLexerCPP** outptr_QsciLexerCPP);
QMetaObject* QsciLexerJava_metaObject(const QsciLexerJava* self);
void* QsciLexerJava_metacast(QsciLexerJava* self, const char* param1);
int QsciLexerJava_metacall(QsciLexerJava* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerJava_tr(const char* s);
struct miqt_string QsciLexerJava_trUtf8(const char* s);
const char* QsciLexerJava_language(const QsciLexerJava* self);
const char* QsciLexerJava_keywords(const QsciLexerJava* self, int set);
struct miqt_string QsciLexerJava_tr2(const char* s, const char* c);
struct miqt_string QsciLexerJava_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerJava_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerJava_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerJava_virtualbase_metaObject(const void* self);
void* QsciLexerJava_virtualbase_metacast(void* self, const char* param1);
int QsciLexerJava_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerJava_virtualbase_setFoldAtElse(void* self, bool fold);
void QsciLexerJava_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerJava_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerJava_virtualbase_setFoldPreprocessor(void* self, bool fold);
void QsciLexerJava_virtualbase_setStylePreprocessor(void* self, bool style);
const char* QsciLexerJava_virtualbase_language(const void* self);
const char* QsciLexerJava_virtualbase_lexer(const void* self);
int QsciLexerJava_virtualbase_lexerId(const void* self);
const char* QsciLexerJava_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerJava_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerJava_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerJava_virtualbase_blockLookback(const void* self);
const char* QsciLexerJava_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerJava_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerJava_virtualbase_braceStyle(const void* self);
bool QsciLexerJava_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerJava_virtualbase_color(const void* self, int style);
bool QsciLexerJava_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerJava_virtualbase_font(const void* self, int style);
int QsciLexerJava_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerJava_virtualbase_keywords(const void* self, int set);
int QsciLexerJava_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerJava_virtualbase_description(const void* self, int style);
QColor* QsciLexerJava_virtualbase_paper(const void* self, int style);
QColor* QsciLexerJava_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerJava_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerJava_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerJava_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerJava_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerJava_virtualbase_refreshProperties(void* self);
int QsciLexerJava_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerJava_virtualbase_wordCharacters(const void* self);
void QsciLexerJava_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerJava_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerJava_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerJava_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerJava_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerJava_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerJava_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerJava_virtualbase_event(void* self, QEvent* event);
bool QsciLexerJava_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerJava_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerJava_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerJava_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerJava_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerJava_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerJava_staticMetaObject();
void QsciLexerJava_delete(QsciLexerJava* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
