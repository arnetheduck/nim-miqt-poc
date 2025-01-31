#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERIDL_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCILEXERIDL_H

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
class QsciLexerCPP;
class QsciLexerIDL;
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
typedef struct QsciLexerCPP QsciLexerCPP;
typedef struct QsciLexerIDL QsciLexerIDL;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciLexerIDL_VTable {
	void (*destructor)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self);
	QMetaObject* (*metaObject)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	void* (*metacast)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, const char* param1);
	int (*metacall)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, int param1, int param2, void** param3);
	void (*setFoldAtElse)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, bool fold);
	void (*setFoldComments)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, bool fold);
	void (*setFoldCompact)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, bool fold);
	void (*setFoldPreprocessor)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, bool fold);
	void (*setStylePreprocessor)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, bool style);
	const char* (*language)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	const char* (*lexer)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	int (*lexerId)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	const char* (*autoCompletionFillups)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	struct miqt_array /* of struct miqt_string */  (*autoCompletionWordSeparators)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	const char* (*blockEnd)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int* style);
	int (*blockLookback)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	const char* (*blockStart)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int* style);
	const char* (*blockStartKeyword)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int* style);
	int (*braceStyle)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	bool (*caseSensitive)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	QColor* (*color)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	bool (*eolFill)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	QFont* (*font)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	int (*indentationGuideView)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	const char* (*keywords)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int set);
	int (*defaultStyle)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	struct miqt_string (*description)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	QColor* (*paper)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	QColor* (*defaultColorWithStyle)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	bool (*defaultEolFill)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	QFont* (*defaultFontWithStyle)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	QColor* (*defaultPaperWithStyle)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, int style);
	void (*setEditor)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QsciScintilla* editor);
	void (*refreshProperties)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self);
	int (*styleBitsNeeded)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	const char* (*wordCharacters)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self);
	void (*setAutoIndentStyle)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, int autoindentstyle);
	void (*setColor)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QColor* c, int style);
	void (*setEolFill)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, bool eoffill, int style);
	void (*setFont)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QFont* f, int style);
	void (*setPaper)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QColor* c, int style);
	bool (*readProperties)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QSettings* qs, struct miqt_string prefix);
	bool (*writeProperties)(struct QsciLexerIDL_VTable* vtbl, const QsciLexerIDL* self, QSettings* qs, struct miqt_string prefix);
	bool (*event)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QEvent* event);
	bool (*eventFilter)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QTimerEvent* event);
	void (*childEvent)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QChildEvent* event);
	void (*customEvent)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QEvent* event);
	void (*connectNotify)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciLexerIDL_VTable* vtbl, QsciLexerIDL* self, QMetaMethod* signal);
};
QsciLexerIDL* QsciLexerIDL_new(struct QsciLexerIDL_VTable* vtbl);
QsciLexerIDL* QsciLexerIDL_new2(struct QsciLexerIDL_VTable* vtbl, QObject* parent);
void QsciLexerIDL_virtbase(QsciLexerIDL* src, QsciLexerCPP** outptr_QsciLexerCPP);
QMetaObject* QsciLexerIDL_metaObject(const QsciLexerIDL* self);
void* QsciLexerIDL_metacast(QsciLexerIDL* self, const char* param1);
int QsciLexerIDL_metacall(QsciLexerIDL* self, int param1, int param2, void** param3);
struct miqt_string QsciLexerIDL_tr(const char* s);
const char* QsciLexerIDL_language(const QsciLexerIDL* self);
QColor* QsciLexerIDL_defaultColor(const QsciLexerIDL* self, int style);
const char* QsciLexerIDL_keywords(const QsciLexerIDL* self, int set);
struct miqt_string QsciLexerIDL_description(const QsciLexerIDL* self, int style);
struct miqt_string QsciLexerIDL_tr2(const char* s, const char* c);
struct miqt_string QsciLexerIDL_tr3(const char* s, const char* c, int n);
QMetaObject* QsciLexerIDL_virtualbase_metaObject(const void* self);
void* QsciLexerIDL_virtualbase_metacast(void* self, const char* param1);
int QsciLexerIDL_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciLexerIDL_virtualbase_setFoldAtElse(void* self, bool fold);
void QsciLexerIDL_virtualbase_setFoldComments(void* self, bool fold);
void QsciLexerIDL_virtualbase_setFoldCompact(void* self, bool fold);
void QsciLexerIDL_virtualbase_setFoldPreprocessor(void* self, bool fold);
void QsciLexerIDL_virtualbase_setStylePreprocessor(void* self, bool style);
const char* QsciLexerIDL_virtualbase_language(const void* self);
const char* QsciLexerIDL_virtualbase_lexer(const void* self);
int QsciLexerIDL_virtualbase_lexerId(const void* self);
const char* QsciLexerIDL_virtualbase_autoCompletionFillups(const void* self);
struct miqt_array /* of struct miqt_string */  QsciLexerIDL_virtualbase_autoCompletionWordSeparators(const void* self);
const char* QsciLexerIDL_virtualbase_blockEnd(const void* self, int* style);
int QsciLexerIDL_virtualbase_blockLookback(const void* self);
const char* QsciLexerIDL_virtualbase_blockStart(const void* self, int* style);
const char* QsciLexerIDL_virtualbase_blockStartKeyword(const void* self, int* style);
int QsciLexerIDL_virtualbase_braceStyle(const void* self);
bool QsciLexerIDL_virtualbase_caseSensitive(const void* self);
QColor* QsciLexerIDL_virtualbase_color(const void* self, int style);
bool QsciLexerIDL_virtualbase_eolFill(const void* self, int style);
QFont* QsciLexerIDL_virtualbase_font(const void* self, int style);
int QsciLexerIDL_virtualbase_indentationGuideView(const void* self);
const char* QsciLexerIDL_virtualbase_keywords(const void* self, int set);
int QsciLexerIDL_virtualbase_defaultStyle(const void* self);
struct miqt_string QsciLexerIDL_virtualbase_description(const void* self, int style);
QColor* QsciLexerIDL_virtualbase_paper(const void* self, int style);
QColor* QsciLexerIDL_virtualbase_defaultColorWithStyle(const void* self, int style);
bool QsciLexerIDL_virtualbase_defaultEolFill(const void* self, int style);
QFont* QsciLexerIDL_virtualbase_defaultFontWithStyle(const void* self, int style);
QColor* QsciLexerIDL_virtualbase_defaultPaperWithStyle(const void* self, int style);
void QsciLexerIDL_virtualbase_setEditor(void* self, QsciScintilla* editor);
void QsciLexerIDL_virtualbase_refreshProperties(void* self);
int QsciLexerIDL_virtualbase_styleBitsNeeded(const void* self);
const char* QsciLexerIDL_virtualbase_wordCharacters(const void* self);
void QsciLexerIDL_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle);
void QsciLexerIDL_virtualbase_setColor(void* self, QColor* c, int style);
void QsciLexerIDL_virtualbase_setEolFill(void* self, bool eoffill, int style);
void QsciLexerIDL_virtualbase_setFont(void* self, QFont* f, int style);
void QsciLexerIDL_virtualbase_setPaper(void* self, QColor* c, int style);
bool QsciLexerIDL_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerIDL_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerIDL_virtualbase_event(void* self, QEvent* event);
bool QsciLexerIDL_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciLexerIDL_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciLexerIDL_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciLexerIDL_virtualbase_customEvent(void* self, QEvent* event);
void QsciLexerIDL_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciLexerIDL_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QsciLexerIDL_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix);
bool QsciLexerIDL_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix);
QObject* QsciLexerIDL_protectedbase_sender(const void* self);
int QsciLexerIDL_protectedbase_senderSignalIndex(const void* self);
int QsciLexerIDL_protectedbase_receivers(const void* self, const char* signal);
bool QsciLexerIDL_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciLexerIDL_staticMetaObject();
void QsciLexerIDL_delete(QsciLexerIDL* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
