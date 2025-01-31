#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERXML_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERXML_H

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
class QsciLexerHTML;
class QsciLexerXML;
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
typedef struct QsciLexerHTML QsciLexerHTML;
typedef struct QsciLexerXML QsciLexerXML;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerXML_VTable {
	void (*destructor)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self);
	QMetaObject* (*metaObject)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	void* (*metacast)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, const char* param1);
	int (*metacall)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, int param1, int param2, void** param3);
	void (*setFoldCompact)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, bool fold);
	void (*setCaseSensitiveTags)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, bool sens);
	const char* (*language)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	const char* (*lexer)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	int (*lexerId)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	const char* (*autoCompletionFillups)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	const char* (*blockEnd)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int* style);
	int (*blockLookback)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	const char* (*blockStart)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int* style);
	int (*braceStyle)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	bool (*caseSensitive)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	QColor* (*color)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	bool (*eolFill)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	QFont* (*font)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	int (*indentationGuideView)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	const char* (*keywords)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int set);
	int (*defaultStyle)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	struct miqt_string (*description)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	QColor* (*paper)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	bool (*defaultEolFill)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, int style);
	void (*setEditor)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self);
	int (*styleBitsNeeded)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	const char* (*wordCharacters)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self);
	void (*setAutoIndentStyle)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerXML_VTable* vtbl, const QsciLexerXML* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerXML_VTable* vtbl, QsciLexerXML* self, QMetaMethod* signal);
};
QsciLexerXML* QsciLexerXML_new(struct QsciLexerXML_VTable* vtbl);
QsciLexerXML* QsciLexerXML_new2(struct QsciLexerXML_VTable* vtbl, QObject* parent);
void QsciLexerXML_virtbase(QsciLexerXML* src, QsciLexerHTML** outptr_QsciLexerHTML);
QMetaObject* QsciLexerXML_metaObject(const QsciLexerXML* self);
void* QsciLexerXML_metacast(QsciLexerXML* self, const char* param1);
int QsciLexerXML_metacall(QsciLexerXML* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerXML_tr(const char* s);
struct miqt_string QsciLexerXML_trUtf8(const char* s);
const char* QsciLexerXML_language(const QsciLexerXML* self);
const char* QsciLexerXML_lexer(const QsciLexerXML* self);
QColor* QsciLexerXML_defaultColor(const QsciLexerXML* self, int style);
bool QsciLexerXML_defaultEolFill(const QsciLexerXML* self, int style);
QFont* QsciLexerXML_defaultFont(const QsciLexerXML* self, int style);
QColor* QsciLexerXML_defaultPaper(const QsciLexerXML* self, int style);
const char* QsciLexerXML_keywords(const QsciLexerXML* self, int set);
void QsciLexerXML_refreshProperties(QsciLexerXML* self);
void QsciLexerXML_setScriptsStyled(QsciLexerXML* self, bool styled);
bool QsciLexerXML_scriptsStyled(const QsciLexerXML* self);
struct miqt_string QsciLexerXML_tr2(const char* s, const char* c);
struct miqt_string QsciLexerXML_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerXML_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerXML_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerXML_virtualbase_metaObject(const void* self);
void* QsciLexerXML_virtualbase_metacast(void* self, const char* param1);
int QsciLexerXML_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerXML_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerXML_virtualbase_setFoldPreprocessor(void* self, bool fold);
void QsciLexerXML_virtualbase_setCaseSensitiveTags(void* self, bool sens);
const char* QsciLexerXML_virtualbase_language(const void* self);
const char* QsciLexerXML_virtualbase_lexer(const void* self);
int QsciLexerXML_virtualbase_lexerId(const void* self);
const char* QsciLexerXML_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerXML_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerXML_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerXML_virtualbase_blockLookback(const void* self);
const char* QsciLexerXML_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerXML_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerXML_virtualbase_braceStyle(const void* self);
bool QsciLexerXML_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerXML_virtualbase_color(const void* self, int style);
bool QsciLexerXML_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerXML_virtualbase_font(const void* self, int style);
int QsciLexerXML_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerXML_virtualbase_keywords(const void* self, int set);
int QsciLexerXML_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerXML_virtualbase_description(const void* self, int style);
QColor* QsciLexerXML_virtualbase_paper(const void* self, int style);
QColor* QsciLexerXML_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerXML_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerXML_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerXML_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerXML_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerXML_virtualbase_refreshProperties(void* self);
int QsciLexerXML_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerXML_virtualbase_wordCharacters(const void* self);
void QsciLexerXML_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerXML_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerXML_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerXML_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerXML_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerXML_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerXML_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerXML_virtualbase_event(void* self, QEvent* event);
bool QsciLexerXML_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerXML_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerXML_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerXML_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerXML_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerXML_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerXML_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerXML_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerXML_protectedbase_sender(const void* self);
int QsciLexerXML_protectedbase_senderSignalIndex(const void* self);
int QsciLexerXML_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerXML_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerXML_staticMetaObject();
void QsciLexerXML_delete(QsciLexerXML* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
