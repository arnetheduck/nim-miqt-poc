#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPROPERTIES_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPROPERTIES_H

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
class QsciLexerProperties;
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
typedef struct QsciLexerProperties QsciLexerProperties;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerProperties_VTable {
	void (*destructor)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self);
	QMetaObject* (*metaObject)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	void* (*metacast)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, const char* param1);
	int (*metacall)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, int param1, int param2, void** param3);
	void (*setFoldCompact)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, bool fold);
	const char* (*language)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	const char* (*lexer)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	int (*lexerId)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	const char* (*autoCompletionFillups)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	const char* (*blockEnd)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int* style);
	int (*blockLookback)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	const char* (*blockStart)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int* style);
	int (*braceStyle)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	bool (*caseSensitive)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	QColor* (*color)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	bool (*eolFill)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	QFont* (*font)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	int (*indentationGuideView)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	const char* (*keywords)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int set);
	int (*defaultStyle)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	struct miqt_string (*description)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	QColor* (*paper)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	bool (*defaultEolFill)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, int style);
	void (*setEditor)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self);
	int (*styleBitsNeeded)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	const char* (*wordCharacters)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self);
	void (*setAutoIndentStyle)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerProperties_VTable* vtbl, const QsciLexerProperties* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerProperties_VTable* vtbl, QsciLexerProperties* self, QMetaMethod* signal);
};
QsciLexerProperties* QsciLexerProperties_new(struct QsciLexerProperties_VTable* vtbl);
QsciLexerProperties* QsciLexerProperties_new2(struct QsciLexerProperties_VTable* vtbl, QObject* parent);
void QsciLexerProperties_virtbase(QsciLexerProperties* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerProperties_metaObject(const QsciLexerProperties* self);
void* QsciLexerProperties_metacast(QsciLexerProperties* self, const char* param1);
int QsciLexerProperties_metacall(QsciLexerProperties* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerProperties_tr(const char* s);
struct miqt_string QsciLexerProperties_trUtf8(const char* s);
const char* QsciLexerProperties_language(const QsciLexerProperties* self);
const char* QsciLexerProperties_lexer(const QsciLexerProperties* self);
const char* QsciLexerProperties_wordCharacters(const QsciLexerProperties* self);
QColor* QsciLexerProperties_defaultColor(const QsciLexerProperties* self, int style);
bool QsciLexerProperties_defaultEolFill(const QsciLexerProperties* self, int style);
QFont* QsciLexerProperties_defaultFont(const QsciLexerProperties* self, int style);
QColor* QsciLexerProperties_defaultPaper(const QsciLexerProperties* self, int style);
struct miqt_string QsciLexerProperties_description(const QsciLexerProperties* self, int style);
void QsciLexerProperties_refreshProperties(QsciLexerProperties* self);
bool QsciLexerProperties_foldCompact(const QsciLexerProperties* self);
void QsciLexerProperties_setInitialSpaces(QsciLexerProperties* self, bool enable);
bool QsciLexerProperties_initialSpaces(const QsciLexerProperties* self);
void QsciLexerProperties_setFoldCompact(QsciLexerProperties* self, bool fold);
struct miqt_string QsciLexerProperties_tr2(const char* s, const char* c);
struct miqt_string QsciLexerProperties_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerProperties_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerProperties_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerProperties_virtualbase_metaObject(const void* self);
void* QsciLexerProperties_virtualbase_metacast(void* self, const char* param1);
int QsciLexerProperties_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerProperties_virtualbase_setFoldCompact(void* self, bool fold);
const char* QsciLexerProperties_virtualbase_language(const void* self);
const char* QsciLexerProperties_virtualbase_lexer(const void* self);
int QsciLexerProperties_virtualbase_lexerId(const void* self);
const char* QsciLexerProperties_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerProperties_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerProperties_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerProperties_virtualbase_blockLookback(const void* self);
const char* QsciLexerProperties_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerProperties_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerProperties_virtualbase_braceStyle(const void* self);
bool QsciLexerProperties_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerProperties_virtualbase_color(const void* self, int style);
bool QsciLexerProperties_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerProperties_virtualbase_font(const void* self, int style);
int QsciLexerProperties_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerProperties_virtualbase_keywords(const void* self, int set);
int QsciLexerProperties_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerProperties_virtualbase_description(const void* self, int style);
QColor* QsciLexerProperties_virtualbase_paper(const void* self, int style);
QColor* QsciLexerProperties_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerProperties_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerProperties_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerProperties_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerProperties_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerProperties_virtualbase_refreshProperties(void* self);
int QsciLexerProperties_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerProperties_virtualbase_wordCharacters(const void* self);
void QsciLexerProperties_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerProperties_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerProperties_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerProperties_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerProperties_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerProperties_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerProperties_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerProperties_virtualbase_event(void* self, QEvent* event);
bool QsciLexerProperties_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerProperties_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerProperties_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerProperties_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerProperties_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerProperties_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerProperties_staticMetaObject();
void QsciLexerProperties_delete(QsciLexerProperties* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
