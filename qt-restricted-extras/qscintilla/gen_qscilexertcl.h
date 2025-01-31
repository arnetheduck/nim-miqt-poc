#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERTCL_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCILEXERTCL_H

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
class QsciLexerTCL;
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
typedef struct QsciLexerTCL QsciLexerTCL;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerTCL_VTable {
	void (*destructor)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self);
	QMetaObject* (*metaObject)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	void* (*metacast)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, const char* param1);
	int (*metacall)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, int param1, int param2, void** param3);
	const char* (*language)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	const char* (*lexer)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	int (*lexerId)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	const char* (*autoCompletionFillups)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	const char* (*blockEnd)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int* style);
	int (*blockLookback)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	const char* (*blockStart)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int* style);
	int (*braceStyle)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	bool (*caseSensitive)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	QColor* (*color)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	bool (*eolFill)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	QFont* (*font)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	int (*indentationGuideView)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	const char* (*keywords)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int set);
	int (*defaultStyle)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	struct miqt_string (*description)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	QColor* (*paper)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	bool (*defaultEolFill)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, int style);
	void (*setEditor)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self);
	int (*styleBitsNeeded)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	const char* (*wordCharacters)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self);
	void (*setAutoIndentStyle)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerTCL_VTable* vtbl, const QsciLexerTCL* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerTCL_VTable* vtbl, QsciLexerTCL* self, QMetaMethod* signal);
};
QsciLexerTCL* QsciLexerTCL_new(struct QsciLexerTCL_VTable* vtbl);
QsciLexerTCL* QsciLexerTCL_new2(struct QsciLexerTCL_VTable* vtbl, QObject* parent);
void QsciLexerTCL_virtbase(QsciLexerTCL* src, QsciLexer** outptr_QsciLexer);
QMetaObject* QsciLexerTCL_metaObject(const QsciLexerTCL* self);
void* QsciLexerTCL_metacast(QsciLexerTCL* self, const char* param1);
int QsciLexerTCL_metacall(QsciLexerTCL* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerTCL_tr(const char* s);
struct miqt_string QsciLexerTCL_trUtf8(const char* s);
const char* QsciLexerTCL_language(const QsciLexerTCL* self);
const char* QsciLexerTCL_lexer(const QsciLexerTCL* self);
int QsciLexerTCL_braceStyle(const QsciLexerTCL* self);
QColor* QsciLexerTCL_defaultColor(const QsciLexerTCL* self, int style);
bool QsciLexerTCL_defaultEolFill(const QsciLexerTCL* self, int style);
QFont* QsciLexerTCL_defaultFont(const QsciLexerTCL* self, int style);
QColor* QsciLexerTCL_defaultPaper(const QsciLexerTCL* self, int style);
const char* QsciLexerTCL_keywords(const QsciLexerTCL* self, int set);
struct miqt_string QsciLexerTCL_description(const QsciLexerTCL* self, int style);
void QsciLexerTCL_refreshProperties(QsciLexerTCL* self);
void QsciLexerTCL_setFoldComments(QsciLexerTCL* self, bool fold);
bool QsciLexerTCL_foldComments(const QsciLexerTCL* self);
struct miqt_string QsciLexerTCL_tr2(const char* s, const char* c);
struct miqt_string QsciLexerTCL_tr3(const char* s, const char* c, int n);
struct miqt_string QsciLexerTCL_trUtf82(const char* s, const char* c);
struct miqt_string QsciLexerTCL_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciLexerTCL_virtualbase_metaObject(const void* self);
void* QsciLexerTCL_virtualbase_metacast(void* self, const char* param1);
int QsciLexerTCL_virtualbase_metacall(void* self, int param1, int param2, void** param3);
const char* QsciLexerTCL_virtualbase_language(const void* self);
const char* QsciLexerTCL_virtualbase_lexer(const void* self);
int QsciLexerTCL_virtualbase_lexerId(const void* self);
const char* QsciLexerTCL_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerTCL_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerTCL_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerTCL_virtualbase_blockLookback(const void* self);
const char* QsciLexerTCL_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerTCL_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerTCL_virtualbase_braceStyle(const void* self);
bool QsciLexerTCL_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerTCL_virtualbase_color(const void* self, int style);
bool QsciLexerTCL_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerTCL_virtualbase_font(const void* self, int style);
int QsciLexerTCL_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerTCL_virtualbase_keywords(const void* self, int set);
int QsciLexerTCL_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerTCL_virtualbase_description(const void* self, int style);
QColor* QsciLexerTCL_virtualbase_paper(const void* self, int style);
QColor* QsciLexerTCL_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerTCL_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerTCL_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerTCL_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerTCL_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerTCL_virtualbase_refreshProperties(void* self);
int QsciLexerTCL_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerTCL_virtualbase_wordCharacters(const void* self);
void QsciLexerTCL_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerTCL_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerTCL_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerTCL_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerTCL_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerTCL_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerTCL_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerTCL_virtualbase_event(void* self, QEvent* event);
bool QsciLexerTCL_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerTCL_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerTCL_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerTCL_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerTCL_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerTCL_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerTCL_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerTCL_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerTCL_protectedbase_sender(const void* self);
int QsciLexerTCL_protectedbase_senderSignalIndex(const void* self);
int QsciLexerTCL_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerTCL_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerTCL_staticMetaObject();
void QsciLexerTCL_delete(QsciLexerTCL* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
