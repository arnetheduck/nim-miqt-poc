#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERPOV_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERPOV_H

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
class QsciLexerPOV;
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
typedef struct QsciLexerPOV QsciLexerPOV;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerPOV_VTable {
	void (*destructor)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self);
	QMetaObject* (*metaObject)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	void* (*metacast)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, const char* param1);
	int (*metacall)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, int param1, int param2, void** param3);
	void (*setFoldComments)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, bool fold);
	void (*setFoldDirectives)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, bool fold);
	const char* (*language)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	const char* (*lexer)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	int (*lexerId)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	const char* (*autoCompletionFillups)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	const char* (*blockEnd)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int* style);
	int (*blockLookback)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	const char* (*blockStart)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int* style);
	int (*braceStyle)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	bool (*caseSensitive)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	QColor* (*color)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	bool (*eolFill)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	QFont* (*font)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	int (*indentationGuideView)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	const char* (*keywords)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int set);
	int (*defaultStyle)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	struct miqt_string (*description)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	QColor* (*paper)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	bool (*defaultEolFill)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, int style);
	void (*setEditor)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self);
	int (*styleBitsNeeded)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	const char* (*wordCharacters)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self);
	void (*setAutoIndentStyle)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerPOV_VTable* vtbl, const QsciLexerPOV* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerPOV_VTable* vtbl, QsciLexerPOV* self, QMetaMethod* signal);
};
QsciLexerPOV* QsciLexerPOV_new(struct QsciLexerPOV_VTable* vtbl);
QsciLexerPOV* QsciLexerPOV_new2(struct QsciLexerPOV_VTable* vtbl, QObject* parent);
void QsciLexerPOV_virtbase(QsciLexerPOV* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerPOV_metaObject(const QsciLexerPOV* self);
void* QsciLexerPOV_metacast(QsciLexerPOV* self, const char* param1);
int QsciLexerPOV_metacall(QsciLexerPOV* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerPOV_tr(const char* s);
const char* QsciLexerPOV_language(const QsciLexerPOV* self);
const char* QsciLexerPOV_lexer(const QsciLexerPOV* self);
int QsciLexerPOV_braceStyle(const QsciLexerPOV* self);
const char* QsciLexerPOV_wordCharacters(const QsciLexerPOV* self);
QColor* QsciLexerPOV_defaultColor(const QsciLexerPOV* self, int style);
bool QsciLexerPOV_defaultEolFill(const QsciLexerPOV* self, int style);
QFont* QsciLexerPOV_defaultFont(const QsciLexerPOV* self, int style);
QColor* QsciLexerPOV_defaultPaper(const QsciLexerPOV* self, int style);
const char* QsciLexerPOV_keywords(const QsciLexerPOV* self, int set);
struct miqt_string QsciLexerPOV_description(const QsciLexerPOV* self, int style);
void QsciLexerPOV_refreshProperties(QsciLexerPOV* self);
bool QsciLexerPOV_foldComments(const QsciLexerPOV* self);
bool QsciLexerPOV_foldCompact(const QsciLexerPOV* self);
bool QsciLexerPOV_foldDirectives(const QsciLexerPOV* self);
void QsciLexerPOV_setFoldComments(QsciLexerPOV* self, bool fold);
void QsciLexerPOV_setFoldCompact(QsciLexerPOV* self, bool fold);
void QsciLexerPOV_setFoldDirectives(QsciLexerPOV* self, bool fold);
struct miqt_string QsciLexerPOV_tr2(const char* s, const char* c);
struct miqt_string QsciLexerPOV_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerPOV_virtualbase_metaObject(const void* self);
void* QsciLexerPOV_virtualbase_metacast(void* self, const char* param1);
int QsciLexerPOV_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerPOV_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerPOV_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerPOV_virtualbase_setFoldDirectives(void* self, bool fold);
const char* QsciLexerPOV_virtualbase_language(const void* self);
const char* QsciLexerPOV_virtualbase_lexer(const void* self);
int QsciLexerPOV_virtualbase_lexerId(const void* self);
const char* QsciLexerPOV_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerPOV_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerPOV_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerPOV_virtualbase_blockLookback(const void* self);
const char* QsciLexerPOV_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerPOV_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerPOV_virtualbase_braceStyle(const void* self);
bool QsciLexerPOV_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerPOV_virtualbase_color(const void* self, int style);
bool QsciLexerPOV_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerPOV_virtualbase_font(const void* self, int style);
int QsciLexerPOV_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerPOV_virtualbase_keywords(const void* self, int set);
int QsciLexerPOV_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerPOV_virtualbase_description(const void* self, int style);
QColor* QsciLexerPOV_virtualbase_paper(const void* self, int style);
QColor* QsciLexerPOV_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerPOV_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerPOV_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerPOV_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerPOV_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerPOV_virtualbase_refreshProperties(void* self);
int QsciLexerPOV_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerPOV_virtualbase_wordCharacters(const void* self);
void QsciLexerPOV_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerPOV_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerPOV_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerPOV_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerPOV_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerPOV_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPOV_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPOV_virtualbase_event(void* self, QEvent* event);
bool QsciLexerPOV_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerPOV_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerPOV_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerPOV_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerPOV_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerPOV_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerPOV_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerPOV_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerPOV_protectedbase_sender(const void* self);
int QsciLexerPOV_protectedbase_senderSignalIndex(const void* self);
int QsciLexerPOV_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerPOV_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerPOV_staticMetaObject();
void QsciLexerPOV_delete(QsciLexerPOV* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
