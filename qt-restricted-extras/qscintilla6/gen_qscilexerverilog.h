#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERVERILOG_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERVERILOG_H

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
class QsciLexerVerilog;
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
typedef struct QsciLexerVerilog QsciLexerVerilog;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerVerilog_VTable {
	void (*destructor)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self);
	QMetaObject* (*metaObject)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	void* (*metacast)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, const char* param1);
	int (*metacall)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	const char* (*lexer)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	int (*lexerId)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	const char* (*autoCompletionFillups)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	const char* (*blockEnd)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int* style);
	int (*blockLookback)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	const char* (*blockStart)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int* style);
	int (*braceStyle)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	bool (*caseSensitive)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	QColor* (*color)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	bool (*eolFill)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	QFont* (*font)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	int (*indentationGuideView)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	const char* (*keywords)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int set);
	int (*defaultStyle)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	struct miqt_string (*description)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	QColor* (*paper)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	bool (*defaultEolFill)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, int style);
	void (*setEditor)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self);
	int (*styleBitsNeeded)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	const char* (*wordCharacters)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self);
	void (*setAutoIndentStyle)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerVerilog_VTable* vtbl, const QsciLexerVerilog* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerVerilog_VTable* vtbl, QsciLexerVerilog* self, QMetaMethod* signal);
};
QsciLexerVerilog* QsciLexerVerilog_new(struct QsciLexerVerilog_VTable* vtbl);
QsciLexerVerilog* QsciLexerVerilog_new2(struct QsciLexerVerilog_VTable* vtbl, QObject* parent);
void QsciLexerVerilog_virtbase(QsciLexerVerilog* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerVerilog_metaObject(const QsciLexerVerilog* self);
void* QsciLexerVerilog_metacast(QsciLexerVerilog* self, const char* param1);
int QsciLexerVerilog_metacall(QsciLexerVerilog* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerVerilog_tr(const char* s);
const char* QsciLexerVerilog_language(const QsciLexerVerilog* self);
const char* QsciLexerVerilog_lexer(const QsciLexerVerilog* self);
int QsciLexerVerilog_braceStyle(const QsciLexerVerilog* self);
const char* QsciLexerVerilog_wordCharacters(const QsciLexerVerilog* self);
QColor* QsciLexerVerilog_defaultColor(const QsciLexerVerilog* self, int style);
bool QsciLexerVerilog_defaultEolFill(const QsciLexerVerilog* self, int style);
QFont* QsciLexerVerilog_defaultFont(const QsciLexerVerilog* self, int style);
QColor* QsciLexerVerilog_defaultPaper(const QsciLexerVerilog* self, int style);
const char* QsciLexerVerilog_keywords(const QsciLexerVerilog* self, int set);
struct miqt_string QsciLexerVerilog_description(const QsciLexerVerilog* self, int style);
void QsciLexerVerilog_refreshProperties(QsciLexerVerilog* self);
void QsciLexerVerilog_setFoldAtElse(QsciLexerVerilog* self, bool fold);
bool QsciLexerVerilog_foldAtElse(const QsciLexerVerilog* self);
void QsciLexerVerilog_setFoldComments(QsciLexerVerilog* self, bool fold);
bool QsciLexerVerilog_foldComments(const QsciLexerVerilog* self);
void QsciLexerVerilog_setFoldCompact(QsciLexerVerilog* self, bool fold);
bool QsciLexerVerilog_foldCompact(const QsciLexerVerilog* self);
void QsciLexerVerilog_setFoldPreprocessor(QsciLexerVerilog* self, bool fold);
bool QsciLexerVerilog_foldPreprocessor(const QsciLexerVerilog* self);
void QsciLexerVerilog_setFoldAtModule(QsciLexerVerilog* self, bool fold);
bool QsciLexerVerilog_foldAtModule(const QsciLexerVerilog* self);
struct miqt_string QsciLexerVerilog_tr2(const char* s, const char* c);
struct miqt_string QsciLexerVerilog_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerVerilog_virtualbase_metaObject(const void* self);
void* QsciLexerVerilog_virtualbase_metacast(void* self, const char* param1);
int QsciLexerVerilog_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerVerilog_virtualbase_language(const void* self);
const char* QsciLexerVerilog_virtualbase_lexer(const void* self);
int QsciLexerVerilog_virtualbase_lexerId(const void* self);
const char* QsciLexerVerilog_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerVerilog_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerVerilog_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerVerilog_virtualbase_blockLookback(const void* self);
const char* QsciLexerVerilog_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerVerilog_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerVerilog_virtualbase_braceStyle(const void* self);
bool QsciLexerVerilog_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerVerilog_virtualbase_color(const void* self, int style);
bool QsciLexerVerilog_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerVerilog_virtualbase_font(const void* self, int style);
int QsciLexerVerilog_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerVerilog_virtualbase_keywords(const void* self, int set);
int QsciLexerVerilog_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerVerilog_virtualbase_description(const void* self, int style);
QColor* QsciLexerVerilog_virtualbase_paper(const void* self, int style);
QColor* QsciLexerVerilog_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerVerilog_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerVerilog_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerVerilog_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerVerilog_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerVerilog_virtualbase_refreshProperties(void* self);
int QsciLexerVerilog_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerVerilog_virtualbase_wordCharacters(const void* self);
void QsciLexerVerilog_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerVerilog_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerVerilog_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerVerilog_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerVerilog_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerVerilog_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerVerilog_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerVerilog_virtualbase_event(void* self, QEvent* event);
bool QsciLexerVerilog_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerVerilog_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerVerilog_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerVerilog_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerVerilog_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerVerilog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerVerilog_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerVerilog_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerVerilog_protectedbase_sender(const void* self);
int QsciLexerVerilog_protectedbase_senderSignalIndex(const void* self);
int QsciLexerVerilog_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerVerilog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerVerilog_staticMetaObject();
void QsciLexerVerilog_delete(QsciLexerVerilog* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
