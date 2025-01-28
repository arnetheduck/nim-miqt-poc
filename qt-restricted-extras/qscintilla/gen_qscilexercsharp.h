#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCSHARP_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERCSHARP_H

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
class QsciLexerCSharp;
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
typedef struct QsciLexerCSharp QsciLexerCSharp;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerCSharp_VTable {
	void (*destructor)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self);
	QMetaObject* (*metaObject)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	void* (*metacast)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, const char* param1);
	int (*metacall)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, int param1, int param2, void** param3);
	void (*setFoldAtElse)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, bool fold);
	void (*setFoldComments)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, bool fold);
	void (*setStylePreprocessor)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, bool style);
	const char* (*language)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	const char* (*lexer)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	int (*lexerId)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	const char* (*autoCompletionFillups)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	const char* (*blockEnd)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int* style);
	int (*blockLookback)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	const char* (*blockStart)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int* style);
	int (*braceStyle)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	bool (*caseSensitive)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	QColor* (*color)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	bool (*eolFill)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	QFont* (*font)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	int (*indentationGuideView)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	const char* (*keywords)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int set);
	int (*defaultStyle)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	struct miqt_string (*description)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	QColor* (*paper)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	bool (*defaultEolFill)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, int style);
	void (*setEditor)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self);
	int (*styleBitsNeeded)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	const char* (*wordCharacters)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self);
	void (*setAutoIndentStyle)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerCSharp_VTable* vtbl, const QsciLexerCSharp* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerCSharp_VTable* vtbl, QsciLexerCSharp* self, QMetaMethod* signal);
};
QsciLexerCSharp* QsciLexerCSharp_new(struct QsciLexerCSharp_VTable* vtbl);
QsciLexerCSharp* QsciLexerCSharp_new2(struct QsciLexerCSharp_VTable* vtbl, QObject* parent);
void QsciLexerCSharp_virtbase(QsciLexerCSharp* src, QsciLexerCPP** outptr_QsciLexerCPP);
QMetaObject* QsciLexerCSharp_metaObject(const QsciLexerCSharp* self);
void* QsciLexerCSharp_metacast(QsciLexerCSharp* self, const char* param1);
int QsciLexerCSharp_metacall(QsciLexerCSharp* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerCSharp_tr(const char* s);
struct miqt_string QsciLexerCSharp_trUtf8(const char* s);
const char* QsciLexerCSharp_language(const QsciLexerCSharp* self);
QColor* QsciLexerCSharp_defaultColor(const QsciLexerCSharp* self, int style);
bool QsciLexerCSharp_defaultEolFill(const QsciLexerCSharp* self, int style);
QFont* QsciLexerCSharp_defaultFont(const QsciLexerCSharp* self, int style);
QColor* QsciLexerCSharp_defaultPaper(const QsciLexerCSharp* self, int style);
const char* QsciLexerCSharp_keywords(const QsciLexerCSharp* self, int set);
struct miqt_string QsciLexerCSharp_description(const QsciLexerCSharp* self, int style);
struct miqt_string QsciLexerCSharp_tr2(const char* s, const char* c);
struct miqt_string QsciLexerCSharp_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerCSharp_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerCSharp_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerCSharp_virtualbase_metaObject(const void* self);
void* QsciLexerCSharp_virtualbase_metacast(void* self, const char* param1);
int QsciLexerCSharp_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerCSharp_virtualbase_setFoldAtElse(void* self, bool fold);
void QsciLexerCSharp_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerCSharp_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerCSharp_virtualbase_setFoldPreprocessor(void* self, bool fold);
void QsciLexerCSharp_virtualbase_setStylePreprocessor(void* self, bool style);
const char* QsciLexerCSharp_virtualbase_language(const void* self);
const char* QsciLexerCSharp_virtualbase_lexer(const void* self);
int QsciLexerCSharp_virtualbase_lexerId(const void* self);
const char* QsciLexerCSharp_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerCSharp_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerCSharp_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerCSharp_virtualbase_blockLookback(const void* self);
const char* QsciLexerCSharp_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerCSharp_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerCSharp_virtualbase_braceStyle(const void* self);
bool QsciLexerCSharp_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerCSharp_virtualbase_color(const void* self, int style);
bool QsciLexerCSharp_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerCSharp_virtualbase_font(const void* self, int style);
int QsciLexerCSharp_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerCSharp_virtualbase_keywords(const void* self, int set);
int QsciLexerCSharp_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerCSharp_virtualbase_description(const void* self, int style);
QColor* QsciLexerCSharp_virtualbase_paper(const void* self, int style);
QColor* QsciLexerCSharp_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerCSharp_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerCSharp_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerCSharp_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerCSharp_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerCSharp_virtualbase_refreshProperties(void* self);
int QsciLexerCSharp_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerCSharp_virtualbase_wordCharacters(const void* self);
void QsciLexerCSharp_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerCSharp_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerCSharp_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerCSharp_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerCSharp_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerCSharp_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCSharp_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerCSharp_virtualbase_event(void* self, QEvent* event);
bool QsciLexerCSharp_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerCSharp_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerCSharp_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerCSharp_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerCSharp_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerCSharp_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerCSharp_staticMetaObject();
void QsciLexerCSharp_delete(QsciLexerCSharp* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
