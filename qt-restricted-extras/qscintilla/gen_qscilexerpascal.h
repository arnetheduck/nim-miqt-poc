#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPASCAL_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERPASCAL_H

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
class QsciLexerPascal;
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
typedef struct QsciLexerPascal QsciLexerPascal;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerPascal_VTable {
	void (*destructor)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self);
	QMetaObject* (*metaObject)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	void* (*metacast)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, const char* param1);
	int (*metacall)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, bool fold);
	const char* (*language)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	const char* (*lexer)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	int (*lexerId)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	const char* (*autoCompletionFillups)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	const char* (*blockEnd)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int* style);
	int (*blockLookback)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	const char* (*blockStart)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int* style);
	int (*braceStyle)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	bool (*caseSensitive)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	QColor* (*color)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	bool (*eolFill)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	QFont* (*font)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	int (*indentationGuideView)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	const char* (*keywords)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int set);
	int (*defaultStyle)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	struct miqt_string (*description)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	QColor* (*paper)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	bool (*defaultEolFill)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, int style);
	void (*setEditor)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self);
	int (*styleBitsNeeded)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	const char* (*wordCharacters)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self);
	void (*setAutoIndentStyle)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerPascal_VTable* vtbl, const QsciLexerPascal* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerPascal_VTable* vtbl, QsciLexerPascal* self, QMetaMethod* signal);
};
QsciLexerPascal* QsciLexerPascal_new(struct QsciLexerPascal_VTable* vtbl);
QsciLexerPascal* QsciLexerPascal_new2(struct QsciLexerPascal_VTable* vtbl, QObject* parent);
void QsciLexerPascal_virtbase(QsciLexerPascal* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerPascal_metaObject(const QsciLexerPascal* self);
void* QsciLexerPascal_metacast(QsciLexerPascal* self, const char* param1);
int QsciLexerPascal_metacall(QsciLexerPascal* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerPascal_tr(const char* s);
struct miqt_string QsciLexerPascal_trUtf8(const char* s);
const char* QsciLexerPascal_language(const QsciLexerPascal* self);
const char* QsciLexerPascal_lexer(const QsciLexerPascal* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPascal_autoCompletionWordSeparators(const QsciLexerPascal* self);
const char* QsciLexerPascal_blockEnd(const QsciLexerPascal* self);
const char* QsciLexerPascal_blockStart(const QsciLexerPascal* self);
const char* QsciLexerPascal_blockStartKeyword(const QsciLexerPascal* self);
int QsciLexerPascal_braceStyle(const QsciLexerPascal* self);
QColor* QsciLexerPascal_defaultColor(const QsciLexerPascal* self, int style);
bool QsciLexerPascal_defaultEolFill(const QsciLexerPascal* self, int style);
QFont* QsciLexerPascal_defaultFont(const QsciLexerPascal* self, int style);
QColor* QsciLexerPascal_defaultPaper(const QsciLexerPascal* self, int style);
const char* QsciLexerPascal_keywords(const QsciLexerPascal* self, int set);
struct miqt_string QsciLexerPascal_description(const QsciLexerPascal* self, int style);
void QsciLexerPascal_refreshProperties(QsciLexerPascal* self);
bool QsciLexerPascal_foldComments(const QsciLexerPascal* self);
bool QsciLexerPascal_foldCompact(const QsciLexerPascal* self);
bool QsciLexerPascal_foldPreprocessor(const QsciLexerPascal* self);
void QsciLexerPascal_setSmartHighlighting(QsciLexerPascal* self, bool enabled);
bool QsciLexerPascal_smartHighlighting(const QsciLexerPascal* self);
void QsciLexerPascal_setFoldComments(QsciLexerPascal* self, bool fold);
void QsciLexerPascal_setFoldCompact(QsciLexerPascal* self, bool fold);
void QsciLexerPascal_setFoldPreprocessor(QsciLexerPascal* self, bool fold);
struct miqt_string QsciLexerPascal_tr2(const char* s, const char* c);
struct miqt_string QsciLexerPascal_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerPascal_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerPascal_trUtf83(const char* s, const char* c, int n);
const char* QsciLexerPascal_blockEnd1(const QsciLexerPascal* self, int* style);
const char* QsciLexerPascal_blockStart1(const QsciLexerPascal* self, int* style);
const char* QsciLexerPascal_blockStartKeyword1(const QsciLexerPascal* self, int* style);
QMetaObject* QsciLexerPascal_virtualbase_metaObject(const void* self);
void* QsciLexerPascal_virtualbase_metacast(void* self, const char* param1);
int QsciLexerPascal_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerPascal_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerPascal_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerPascal_virtualbase_setFoldPreprocessor(void* self, bool fold);
const char* QsciLexerPascal_virtualbase_language(const void* self);
const char* QsciLexerPascal_virtualbase_lexer(const void* self);
int QsciLexerPascal_virtualbase_lexerId(const void* self);
const char* QsciLexerPascal_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPascal_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerPascal_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerPascal_virtualbase_blockLookback(const void* self);
const char* QsciLexerPascal_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerPascal_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerPascal_virtualbase_braceStyle(const void* self);
bool QsciLexerPascal_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerPascal_virtualbase_color(const void* self, int style);
bool QsciLexerPascal_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerPascal_virtualbase_font(const void* self, int style);
int QsciLexerPascal_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerPascal_virtualbase_keywords(const void* self, int set);
int QsciLexerPascal_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerPascal_virtualbase_description(const void* self, int style);
QColor* QsciLexerPascal_virtualbase_paper(const void* self, int style);
QColor* QsciLexerPascal_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerPascal_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerPascal_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerPascal_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerPascal_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerPascal_virtualbase_refreshProperties(void* self);
int QsciLexerPascal_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerPascal_virtualbase_wordCharacters(const void* self);
void QsciLexerPascal_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerPascal_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerPascal_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerPascal_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerPascal_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerPascal_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPascal_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPascal_virtualbase_event(void* self, QEvent* event);
bool QsciLexerPascal_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerPascal_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerPascal_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerPascal_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerPascal_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerPascal_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerPascal_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPascal_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerPascal_protectedbase_sender(const void* self);
int QsciLexerPascal_protectedbase_senderSignalIndex(const void* self);
int QsciLexerPascal_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerPascal_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerPascal_staticMetaObject();
void QsciLexerPascal_delete(QsciLexerPascal* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
