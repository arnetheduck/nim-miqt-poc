#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXEREDIFACT_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXEREDIFACT_H

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
class QsciLexerEDIFACT;
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
typedef struct QsciLexerEDIFACT QsciLexerEDIFACT;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerEDIFACT_VTable {
	void (*destructor)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self);
	QMetaObject* (*metaObject)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	void* (*metacast)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, const char* param1);
	int (*metacall)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	const char* (*lexer)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	int (*lexerId)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	const char* (*autoCompletionFillups)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	const char* (*blockEnd)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int* style);
	int (*blockLookback)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	const char* (*blockStart)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int* style);
	int (*braceStyle)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	bool (*caseSensitive)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	QColor* (*color)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	bool (*eolFill)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	QFont* (*font)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	int (*indentationGuideView)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	const char* (*keywords)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int set);
	int (*defaultStyle)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	struct miqt_string (*description)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	QColor* (*paper)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	bool (*defaultEolFill)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, int style);
	void (*setEditor)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self);
	int (*styleBitsNeeded)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	const char* (*wordCharacters)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self);
	void (*setAutoIndentStyle)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerEDIFACT_VTable* vtbl, const QsciLexerEDIFACT* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerEDIFACT_VTable* vtbl, QsciLexerEDIFACT* self, QMetaMethod* signal);
};
QsciLexerEDIFACT* QsciLexerEDIFACT_new(struct QsciLexerEDIFACT_VTable* vtbl);
QsciLexerEDIFACT* QsciLexerEDIFACT_new2(struct QsciLexerEDIFACT_VTable* vtbl, QObject* parent);
void QsciLexerEDIFACT_virtbase(QsciLexerEDIFACT* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerEDIFACT_metaObject(const QsciLexerEDIFACT* self);
void* QsciLexerEDIFACT_metacast(QsciLexerEDIFACT* self, const char* param1);
int QsciLexerEDIFACT_metacall(QsciLexerEDIFACT* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerEDIFACT_tr(const char* s);
struct miqt_string QsciLexerEDIFACT_trUtf8(const char* s);
const char* QsciLexerEDIFACT_language(const QsciLexerEDIFACT* self);
const char* QsciLexerEDIFACT_lexer(const QsciLexerEDIFACT* self);
QColor* QsciLexerEDIFACT_defaultColor(const QsciLexerEDIFACT* self, int style);
struct miqt_string QsciLexerEDIFACT_description(const QsciLexerEDIFACT* self, int style);
struct miqt_string QsciLexerEDIFACT_tr2(const char* s, const char* c);
struct miqt_string QsciLexerEDIFACT_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerEDIFACT_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerEDIFACT_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerEDIFACT_virtualbase_metaObject(const void* self);
void* QsciLexerEDIFACT_virtualbase_metacast(void* self, const char* param1);
int QsciLexerEDIFACT_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerEDIFACT_virtualbase_language(const void* self);
const char* QsciLexerEDIFACT_virtualbase_lexer(const void* self);
int QsciLexerEDIFACT_virtualbase_lexerId(const void* self);
const char* QsciLexerEDIFACT_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerEDIFACT_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerEDIFACT_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerEDIFACT_virtualbase_blockLookback(const void* self);
const char* QsciLexerEDIFACT_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerEDIFACT_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerEDIFACT_virtualbase_braceStyle(const void* self);
bool QsciLexerEDIFACT_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerEDIFACT_virtualbase_color(const void* self, int style);
bool QsciLexerEDIFACT_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerEDIFACT_virtualbase_font(const void* self, int style);
int QsciLexerEDIFACT_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerEDIFACT_virtualbase_keywords(const void* self, int set);
int QsciLexerEDIFACT_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerEDIFACT_virtualbase_description(const void* self, int style);
QColor* QsciLexerEDIFACT_virtualbase_paper(const void* self, int style);
QColor* QsciLexerEDIFACT_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerEDIFACT_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerEDIFACT_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerEDIFACT_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerEDIFACT_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerEDIFACT_virtualbase_refreshProperties(void* self);
int QsciLexerEDIFACT_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerEDIFACT_virtualbase_wordCharacters(const void* self);
void QsciLexerEDIFACT_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerEDIFACT_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerEDIFACT_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerEDIFACT_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerEDIFACT_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerEDIFACT_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerEDIFACT_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerEDIFACT_virtualbase_event(void* self, QEvent* event);
bool QsciLexerEDIFACT_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerEDIFACT_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerEDIFACT_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerEDIFACT_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerEDIFACT_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerEDIFACT_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QsciLexerEDIFACT_protectedbase_sender(const void* self);
int QsciLexerEDIFACT_protectedbase_senderSignalIndex(const void* self);
int QsciLexerEDIFACT_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerEDIFACT_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerEDIFACT_staticMetaObject();
void QsciLexerEDIFACT_delete(QsciLexerEDIFACT* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
