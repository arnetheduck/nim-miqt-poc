#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERMAKEFILE_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERMAKEFILE_H

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
class QsciLexerMakefile;
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
typedef struct QsciLexerMakefile QsciLexerMakefile;
typedef struct QsciScintilla QsciScintilla;
#endif

QsciLexerMakefile* QsciLexerMakefile_new();
QsciLexerMakefile* QsciLexerMakefile_new2(QObject* parent);
void QsciLexerMakefile_virtbase(QsciLexerMakefile* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerMakefile_metaObject(const QsciLexerMakefile* self);
void* QsciLexerMakefile_metacast(QsciLexerMakefile* self, const char* param1);
int QsciLexerMakefile_metacall(QsciLexerMakefile* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerMakefile_tr(const char* s);
const char* QsciLexerMakefile_language(const QsciLexerMakefile* self);
const char* QsciLexerMakefile_lexer(const QsciLexerMakefile* self);
const char* QsciLexerMakefile_wordCharacters(const QsciLexerMakefile* self);
QColor* QsciLexerMakefile_defaultColor(const QsciLexerMakefile* self, int style);
bool QsciLexerMakefile_defaultEolFill(const QsciLexerMakefile* self, int style);
QFont* QsciLexerMakefile_defaultFont(const QsciLexerMakefile* self, int style);
QColor* QsciLexerMakefile_defaultPaper(const QsciLexerMakefile* self, int style);
struct miqt_string QsciLexerMakefile_description(const QsciLexerMakefile* self, int style);
struct miqt_string QsciLexerMakefile_tr2(const char* s, const char* c);
struct miqt_string QsciLexerMakefile_tr3(const char* s, const char* c, int n);
bool QsciLexerMakefile_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QsciLexerMakefile_virtualbase_metaObject(const void* self);
bool QsciLexerMakefile_override_virtual_metacast(void* self, intptr_t slot);
void* QsciLexerMakefile_virtualbase_metacast(void* self, const char* param1);
bool QsciLexerMakefile_override_virtual_metacall(void* self, intptr_t slot);
int QsciLexerMakefile_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QsciLexerMakefile_override_virtual_language(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_language(const void* self);
bool QsciLexerMakefile_override_virtual_lexer(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_lexer(const void* self);
bool QsciLexerMakefile_override_virtual_lexerId(void* self, intptr_t slot);
int QsciLexerMakefile_virtualbase_lexerId(const void* self);
bool QsciLexerMakefile_override_virtual_autoCompletionFillups(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_autoCompletionFillups(const void* self);
bool QsciLexerMakefile_override_virtual_autoCompletionWordSeparators(void* self, intptr_t slot);
struct miqt_array /* of struct miqt_string */  QsciLexerMakefile_virtualbase_autoCompletionWordSeparators(const void* self);
bool QsciLexerMakefile_override_virtual_blockEnd(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_blockEnd(const void* self, int* style);
bool QsciLexerMakefile_override_virtual_blockLookback(void* self, intptr_t slot);
int QsciLexerMakefile_virtualbase_blockLookback(const void* self);
bool QsciLexerMakefile_override_virtual_blockStart(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_blockStart(const void* self, int* style);
bool QsciLexerMakefile_override_virtual_blockStartKeyword(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_blockStartKeyword(const void* self, int* style);
bool QsciLexerMakefile_override_virtual_braceStyle(void* self, intptr_t slot);
int QsciLexerMakefile_virtualbase_braceStyle(const void* self);
bool QsciLexerMakefile_override_virtual_caseSensitive(void* self, intptr_t slot);
bool QsciLexerMakefile_virtualbase_caseSensitive(const void* self);
bool QsciLexerMakefile_override_virtual_color(void* self, intptr_t slot);
QColor* QsciLexerMakefile_virtualbase_color(const void* self, int style);
bool QsciLexerMakefile_override_virtual_eolFill(void* self, intptr_t slot);
bool QsciLexerMakefile_virtualbase_eolFill(const void* self, int style);
bool QsciLexerMakefile_override_virtual_font(void* self, intptr_t slot);
QFont* QsciLexerMakefile_virtualbase_font(const void* self, int style);
bool QsciLexerMakefile_override_virtual_indentationGuideView(void* self, intptr_t slot);
int QsciLexerMakefile_virtualbase_indentationGuideView(const void* self);
bool QsciLexerMakefile_override_virtual_keywords(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_keywords(const void* self, int set);
bool QsciLexerMakefile_override_virtual_defaultStyle(void* self, intptr_t slot);
int QsciLexerMakefile_virtualbase_defaultStyle(const void* self);
bool QsciLexerMakefile_override_virtual_description(void* self, intptr_t slot);
struct miqt_string QsciLexerMakefile_virtualbase_description(const void* self, int style);
bool QsciLexerMakefile_override_virtual_paper(void* self, intptr_t slot);
QColor* QsciLexerMakefile_virtualbase_paper(const void* self, int style);
bool QsciLexerMakefile_override_virtual_defaultColorWithStyle(void* self, intptr_t slot);
QColor* QsciLexerMakefile_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerMakefile_override_virtual_defaultEolFill(void* self, intptr_t slot);
bool QsciLexerMakefile_virtualbase_defaultEolFill(const void* self, int style);
bool QsciLexerMakefile_override_virtual_defaultFontWithStyle(void* self, intptr_t slot);
QFont* QsciLexerMakefile_virtualbase_defaultFontWithStyle(const void* self, int style);
bool QsciLexerMakefile_override_virtual_defaultPaperWithStyle(void* self, intptr_t slot);
QColor* QsciLexerMakefile_virtualbase_defaultPaperWithStyle(const void* self, int style);
bool QsciLexerMakefile_override_virtual_setEditor(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_setEditor(void* self, QsciScintilla* editor);
bool QsciLexerMakefile_override_virtual_refreshProperties(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_refreshProperties(void* self);
bool QsciLexerMakefile_override_virtual_styleBitsNeeded(void* self, intptr_t slot);
int QsciLexerMakefile_virtualbase_styleBitsNeeded(const void* self);
bool QsciLexerMakefile_override_virtual_wordCharacters(void* self, intptr_t slot);
const char* QsciLexerMakefile_virtualbase_wordCharacters(const void* self);
bool QsciLexerMakefile_override_virtual_setAutoIndentStyle(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
bool QsciLexerMakefile_override_virtual_setColor(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_setColor(void* self, QColor* c, int style);
bool QsciLexerMakefile_override_virtual_setEolFill(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_setEolFill(void* self, bool eoffill, int style);
bool QsciLexerMakefile_override_virtual_setFont(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_setFont(void* self, QFont* f, int style);
bool QsciLexerMakefile_override_virtual_setPaper(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerMakefile_override_virtual_readProperties(void* self, intptr_t slot);
bool QsciLexerMakefile_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMakefile_override_virtual_writeProperties(void* self, intptr_t slot);
bool QsciLexerMakefile_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerMakefile_override_virtual_event(void* self, intptr_t slot);
bool QsciLexerMakefile_virtualbase_event(void* self, QEvent* event);
bool QsciLexerMakefile_override_virtual_eventFilter(void* self, intptr_t slot);
bool QsciLexerMakefile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QsciLexerMakefile_override_virtual_timerEvent(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QsciLexerMakefile_override_virtual_childEvent(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_childEvent(void* self, QChildEvent* event);
bool QsciLexerMakefile_override_virtual_customEvent(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_customEvent(void* self, QEvent* event);
bool QsciLexerMakefile_override_virtual_connectNotify(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QsciLexerMakefile_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QsciLexerMakefile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerMakefile_staticMetaObject();
void QsciLexerMakefile_delete(QsciLexerMakefile* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
