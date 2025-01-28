#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERYAML_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERYAML_H

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
class QsciLexerYAML;
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
typedef struct QsciLexerYAML QsciLexerYAML;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerYAML_VTable {
	void (*destructor)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self);
	QMetaObject* (*metaObject)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	void* (*metacast)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, const char* param1);
	int (*metacall)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, bool fold);
	const char* (*language)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	const char* (*lexer)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	int (*lexerId)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	const char* (*autoCompletionFillups)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	const char* (*blockEnd)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int* style);
	int (*blockLookback)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	const char* (*blockStart)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int* style);
	int (*braceStyle)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	bool (*caseSensitive)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	QColor* (*color)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	bool (*eolFill)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	QFont* (*font)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	int (*indentationGuideView)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	const char* (*keywords)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int set);
	int (*defaultStyle)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	struct miqt_string (*description)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	QColor* (*paper)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	bool (*defaultEolFill)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, int style);
	void (*setEditor)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self);
	int (*styleBitsNeeded)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	const char* (*wordCharacters)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self);
	void (*setAutoIndentStyle)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerYAML_VTable* vtbl, const QsciLexerYAML* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerYAML_VTable* vtbl, QsciLexerYAML* self, QMetaMethod* signal);
};
QsciLexerYAML* QsciLexerYAML_new(struct QsciLexerYAML_VTable* vtbl);
QsciLexerYAML* QsciLexerYAML_new2(struct QsciLexerYAML_VTable* vtbl, QObject* parent);
void QsciLexerYAML_virtbase(QsciLexerYAML* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerYAML_metaObject(const QsciLexerYAML* self);
void* QsciLexerYAML_metacast(QsciLexerYAML* self, const char* param1);
int QsciLexerYAML_metacall(QsciLexerYAML* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerYAML_tr(const char* s);
struct miqt_string QsciLexerYAML_trUtf8(const char* s);
const char* QsciLexerYAML_language(const QsciLexerYAML* self);
const char* QsciLexerYAML_lexer(const QsciLexerYAML* self);
QColor* QsciLexerYAML_defaultColor(const QsciLexerYAML* self, int style);
bool QsciLexerYAML_defaultEolFill(const QsciLexerYAML* self, int style);
QFont* QsciLexerYAML_defaultFont(const QsciLexerYAML* self, int style);
QColor* QsciLexerYAML_defaultPaper(const QsciLexerYAML* self, int style);
const char* QsciLexerYAML_keywords(const QsciLexerYAML* self, int set);
struct miqt_string QsciLexerYAML_description(const QsciLexerYAML* self, int style);
void QsciLexerYAML_refreshProperties(QsciLexerYAML* self);
bool QsciLexerYAML_foldComments(const QsciLexerYAML* self);
void QsciLexerYAML_setFoldComments(QsciLexerYAML* self, bool fold);
struct miqt_string QsciLexerYAML_tr2(const char* s, const char* c);
struct miqt_string QsciLexerYAML_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerYAML_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerYAML_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerYAML_virtualbase_metaObject(const void* self);
void* QsciLexerYAML_virtualbase_metacast(void* self, const char* param1);
int QsciLexerYAML_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerYAML_virtualbase_setFoldComments(void* self, bool fold);
const char* QsciLexerYAML_virtualbase_language(const void* self);
const char* QsciLexerYAML_virtualbase_lexer(const void* self);
int QsciLexerYAML_virtualbase_lexerId(const void* self);
const char* QsciLexerYAML_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerYAML_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerYAML_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerYAML_virtualbase_blockLookback(const void* self);
const char* QsciLexerYAML_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerYAML_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerYAML_virtualbase_braceStyle(const void* self);
bool QsciLexerYAML_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerYAML_virtualbase_color(const void* self, int style);
bool QsciLexerYAML_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerYAML_virtualbase_font(const void* self, int style);
int QsciLexerYAML_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerYAML_virtualbase_keywords(const void* self, int set);
int QsciLexerYAML_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerYAML_virtualbase_description(const void* self, int style);
QColor* QsciLexerYAML_virtualbase_paper(const void* self, int style);
QColor* QsciLexerYAML_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerYAML_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerYAML_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerYAML_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerYAML_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerYAML_virtualbase_refreshProperties(void* self);
int QsciLexerYAML_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerYAML_virtualbase_wordCharacters(const void* self);
void QsciLexerYAML_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerYAML_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerYAML_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerYAML_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerYAML_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerYAML_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerYAML_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerYAML_virtualbase_event(void* self, QEvent* event);
bool QsciLexerYAML_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerYAML_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerYAML_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerYAML_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerYAML_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerYAML_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerYAML_staticMetaObject();
void QsciLexerYAML_delete(QsciLexerYAML* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
