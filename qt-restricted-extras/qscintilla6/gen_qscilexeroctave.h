#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXEROCTAVE_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXEROCTAVE_H

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
class QsciLexerMatlab;
class QsciLexerOctave;
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
typedef struct QsciLexerMatlab QsciLexerMatlab;
typedef struct QsciLexerOctave QsciLexerOctave;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerOctave_VTable {
	void (*destructor)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self);
	QMetaObject* (*metaObject)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	void* (*metacast)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, const char* param1);
	int (*metacall)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	const char* (*lexer)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	int (*lexerId)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	const char* (*autoCompletionFillups)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	const char* (*blockEnd)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int* style);
	int (*blockLookback)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	const char* (*blockStart)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int* style);
	int (*braceStyle)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	bool (*caseSensitive)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	QColor* (*color)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	bool (*eolFill)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	QFont* (*font)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	int (*indentationGuideView)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	const char* (*keywords)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int set);
	int (*defaultStyle)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	struct miqt_string (*description)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	QColor* (*paper)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	bool (*defaultEolFill)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, int style);
	void (*setEditor)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self);
	int (*styleBitsNeeded)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	const char* (*wordCharacters)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self);
	void (*setAutoIndentStyle)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerOctave_VTable* vtbl, const QsciLexerOctave* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerOctave_VTable* vtbl, QsciLexerOctave* self, QMetaMethod* signal);
};
QsciLexerOctave* QsciLexerOctave_new(struct QsciLexerOctave_VTable* vtbl);
QsciLexerOctave* QsciLexerOctave_new2(struct QsciLexerOctave_VTable* vtbl, QObject* parent);
void QsciLexerOctave_virtbase(QsciLexerOctave* src, QsciLexerMatlab** outptr_QsciLexerMatlab);
QMetaObject* QsciLexerOctave_metaObject(const QsciLexerOctave* self);
void* QsciLexerOctave_metacast(QsciLexerOctave* self, const char* param1);
int QsciLexerOctave_metacall(QsciLexerOctave* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerOctave_tr(const char* s);
const char* QsciLexerOctave_language(const QsciLexerOctave* self);
const char* QsciLexerOctave_lexer(const QsciLexerOctave* self);
const char* QsciLexerOctave_keywords(const QsciLexerOctave* self, int set);
struct miqt_string QsciLexerOctave_tr2(const char* s, const char* c);
struct miqt_string QsciLexerOctave_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerOctave_virtualbase_metaObject(const void* self);
void* QsciLexerOctave_virtualbase_metacast(void* self, const char* param1);
int QsciLexerOctave_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerOctave_virtualbase_language(const void* self);
const char* QsciLexerOctave_virtualbase_lexer(const void* self);
int QsciLexerOctave_virtualbase_lexerId(const void* self);
const char* QsciLexerOctave_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerOctave_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerOctave_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerOctave_virtualbase_blockLookback(const void* self);
const char* QsciLexerOctave_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerOctave_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerOctave_virtualbase_braceStyle(const void* self);
bool QsciLexerOctave_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerOctave_virtualbase_color(const void* self, int style);
bool QsciLexerOctave_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerOctave_virtualbase_font(const void* self, int style);
int QsciLexerOctave_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerOctave_virtualbase_keywords(const void* self, int set);
int QsciLexerOctave_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerOctave_virtualbase_description(const void* self, int style);
QColor* QsciLexerOctave_virtualbase_paper(const void* self, int style);
QColor* QsciLexerOctave_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerOctave_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerOctave_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerOctave_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerOctave_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerOctave_virtualbase_refreshProperties(void* self);
int QsciLexerOctave_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerOctave_virtualbase_wordCharacters(const void* self);
void QsciLexerOctave_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerOctave_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerOctave_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerOctave_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerOctave_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerOctave_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerOctave_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerOctave_virtualbase_event(void* self, QEvent* event);
bool QsciLexerOctave_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerOctave_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerOctave_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerOctave_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerOctave_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerOctave_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QsciLexerOctave_protectedbase_sender(const void* self);
int QsciLexerOctave_protectedbase_senderSignalIndex(const void* self);
int QsciLexerOctave_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerOctave_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerOctave_staticMetaObject();
void QsciLexerOctave_delete(QsciLexerOctave* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
