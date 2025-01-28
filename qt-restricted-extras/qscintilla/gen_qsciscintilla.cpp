#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColor>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFrame>
#include <QHideEvent>
#include <QIODevice>
#include <QImage>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMenu>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPixmap>
#include <QPoint>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsciscintilla.h>
#include "gen_qsciscintilla.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QsciScintilla_cursorPositionChanged(intptr_t, int, int);
void miqt_exec_callback_QsciScintilla_copyAvailable(intptr_t, bool);
void miqt_exec_callback_QsciScintilla_indicatorClicked(intptr_t, int, int, int);
void miqt_exec_callback_QsciScintilla_indicatorReleased(intptr_t, int, int, int);
void miqt_exec_callback_QsciScintilla_linesChanged(intptr_t);
void miqt_exec_callback_QsciScintilla_marginClicked(intptr_t, int, int, int);
void miqt_exec_callback_QsciScintilla_marginRightClicked(intptr_t, int, int, int);
void miqt_exec_callback_QsciScintilla_modificationAttempted(intptr_t);
void miqt_exec_callback_QsciScintilla_modificationChanged(intptr_t, bool);
void miqt_exec_callback_QsciScintilla_selectionChanged(intptr_t);
void miqt_exec_callback_QsciScintilla_textChanged(intptr_t);
void miqt_exec_callback_QsciScintilla_userListActivated(intptr_t, int, struct miqt_string);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciScintilla final : public QsciScintilla {
	struct QsciScintilla_VTable* vtbl;
public:

	MiqtVirtualQsciScintilla(struct QsciScintilla_VTable* vtbl, QWidget* parent): QsciScintilla(parent), vtbl(vtbl) {};
	MiqtVirtualQsciScintilla(struct QsciScintilla_VTable* vtbl): QsciScintilla(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciScintilla() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciScintilla::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciScintilla::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciScintilla::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciScintilla::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciScintilla::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QsciScintilla::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList apiContext(int pos, int& context_start, int& last_word_start) override {
		if (vtbl->apiContext == 0) {
			return QsciScintilla::apiContext(pos, context_start, last_word_start);
		}

		int sigval1 = pos;
		int* sigval2 = &context_start;
		int* sigval3 = &last_word_start;

		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->apiContext(vtbl, this, sigval1, sigval2, sigval3);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of struct miqt_string */  virtualbase_apiContext(int pos, int* context_start, int* last_word_start) {

		QStringList _ret = QsciScintilla::apiContext(static_cast<int>(pos), static_cast<int&>(*context_start), static_cast<int&>(*last_word_start));
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
		for (size_t i = 0, e = _ret.length(); i < e; ++i) {
			QString _lv_ret = _ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray _lv_b = _lv_ret.toUtf8();
			struct miqt_string _lv_ms;
			_lv_ms.len = _lv_b.length();
			_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
			memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
			_arr[i] = _lv_ms;
		}
		struct miqt_array _out;
		_out.len = _ret.length();
		_out.data = static_cast<void*>(_arr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual bool findFirst(const QString& expr, bool re, bool cs, bool wo, bool wrap, bool forward, int line, int index, bool show, bool posix, bool cxx11) override {
		if (vtbl->findFirst == 0) {
			return QsciScintilla::findFirst(expr, re, cs, wo, wrap, forward, line, index, show, posix, cxx11);
		}

		const QString expr_ret = expr;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray expr_b = expr_ret.toUtf8();
		struct miqt_string expr_ms;
		expr_ms.len = expr_b.length();
		expr_ms.data = static_cast<char*>(malloc(expr_ms.len));
		memcpy(expr_ms.data, expr_b.data(), expr_ms.len);
		struct miqt_string sigval1 = expr_ms;
		bool sigval2 = re;
		bool sigval3 = cs;
		bool sigval4 = wo;
		bool sigval5 = wrap;
		bool sigval6 = forward;
		int sigval7 = line;
		int sigval8 = index;
		bool sigval9 = show;
		bool sigval10 = posix;
		bool sigval11 = cxx11;

		bool callback_return_value = vtbl->findFirst(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5, sigval6, sigval7, sigval8, sigval9, sigval10, sigval11);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_findFirst(struct miqt_string expr, bool re, bool cs, bool wo, bool wrap, bool forward, int line, int index, bool show, bool posix, bool cxx11) {
		QString expr_QString = QString::fromUtf8(expr.data, expr.len);

		return QsciScintilla::findFirst(expr_QString, re, cs, wo, wrap, forward, static_cast<int>(line), static_cast<int>(index), show, posix, cxx11);

	}

	// Subclass to allow providing a Go implementation
	virtual bool findFirstInSelection(const QString& expr, bool re, bool cs, bool wo, bool forward, bool show, bool posix, bool cxx11) override {
		if (vtbl->findFirstInSelection == 0) {
			return QsciScintilla::findFirstInSelection(expr, re, cs, wo, forward, show, posix, cxx11);
		}

		const QString expr_ret = expr;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray expr_b = expr_ret.toUtf8();
		struct miqt_string expr_ms;
		expr_ms.len = expr_b.length();
		expr_ms.data = static_cast<char*>(malloc(expr_ms.len));
		memcpy(expr_ms.data, expr_b.data(), expr_ms.len);
		struct miqt_string sigval1 = expr_ms;
		bool sigval2 = re;
		bool sigval3 = cs;
		bool sigval4 = wo;
		bool sigval5 = forward;
		bool sigval6 = show;
		bool sigval7 = posix;
		bool sigval8 = cxx11;

		bool callback_return_value = vtbl->findFirstInSelection(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5, sigval6, sigval7, sigval8);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_findFirstInSelection(struct miqt_string expr, bool re, bool cs, bool wo, bool forward, bool show, bool posix, bool cxx11) {
		QString expr_QString = QString::fromUtf8(expr.data, expr.len);

		return QsciScintilla::findFirstInSelection(expr_QString, re, cs, wo, forward, show, posix, cxx11);

	}

	// Subclass to allow providing a Go implementation
	virtual bool findNext() override {
		if (vtbl->findNext == 0) {
			return QsciScintilla::findNext();
		}


		bool callback_return_value = vtbl->findNext(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_findNext() {

		return QsciScintilla::findNext();

	}

	// Subclass to allow providing a Go implementation
	virtual void recolor(int start, int end) override {
		if (vtbl->recolor == 0) {
			QsciScintilla::recolor(start, end);
			return;
		}

		int sigval1 = start;
		int sigval2 = end;

		vtbl->recolor(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_recolor(int start, int end) {

		QsciScintilla::recolor(static_cast<int>(start), static_cast<int>(end));

	}

	// Subclass to allow providing a Go implementation
	virtual void replace(const QString& replaceStr) override {
		if (vtbl->replace == 0) {
			QsciScintilla::replace(replaceStr);
			return;
		}

		const QString replaceStr_ret = replaceStr;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray replaceStr_b = replaceStr_ret.toUtf8();
		struct miqt_string replaceStr_ms;
		replaceStr_ms.len = replaceStr_b.length();
		replaceStr_ms.data = static_cast<char*>(malloc(replaceStr_ms.len));
		memcpy(replaceStr_ms.data, replaceStr_b.data(), replaceStr_ms.len);
		struct miqt_string sigval1 = replaceStr_ms;

		vtbl->replace(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_replace(struct miqt_string replaceStr) {
		QString replaceStr_QString = QString::fromUtf8(replaceStr.data, replaceStr.len);

		QsciScintilla::replace(replaceStr_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual void append(const QString& text) override {
		if (vtbl->append == 0) {
			QsciScintilla::append(text);
			return;
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		vtbl->append(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_append(struct miqt_string text) {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		QsciScintilla::append(text_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual void autoCompleteFromAll() override {
		if (vtbl->autoCompleteFromAll == 0) {
			QsciScintilla::autoCompleteFromAll();
			return;
		}


		vtbl->autoCompleteFromAll(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_autoCompleteFromAll() {

		QsciScintilla::autoCompleteFromAll();

	}

	// Subclass to allow providing a Go implementation
	virtual void autoCompleteFromAPIs() override {
		if (vtbl->autoCompleteFromAPIs == 0) {
			QsciScintilla::autoCompleteFromAPIs();
			return;
		}


		vtbl->autoCompleteFromAPIs(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_autoCompleteFromAPIs() {

		QsciScintilla::autoCompleteFromAPIs();

	}

	// Subclass to allow providing a Go implementation
	virtual void autoCompleteFromDocument() override {
		if (vtbl->autoCompleteFromDocument == 0) {
			QsciScintilla::autoCompleteFromDocument();
			return;
		}


		vtbl->autoCompleteFromDocument(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_autoCompleteFromDocument() {

		QsciScintilla::autoCompleteFromDocument();

	}

	// Subclass to allow providing a Go implementation
	virtual void callTip() override {
		if (vtbl->callTip == 0) {
			QsciScintilla::callTip();
			return;
		}


		vtbl->callTip(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_callTip() {

		QsciScintilla::callTip();

	}

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QsciScintilla::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_clear() {

		QsciScintilla::clear();

	}

	// Subclass to allow providing a Go implementation
	virtual void copy() override {
		if (vtbl->copy == 0) {
			QsciScintilla::copy();
			return;
		}


		vtbl->copy(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_copy() {

		QsciScintilla::copy();

	}

	// Subclass to allow providing a Go implementation
	virtual void cut() override {
		if (vtbl->cut == 0) {
			QsciScintilla::cut();
			return;
		}


		vtbl->cut(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_cut() {

		QsciScintilla::cut();

	}

	// Subclass to allow providing a Go implementation
	virtual void ensureCursorVisible() override {
		if (vtbl->ensureCursorVisible == 0) {
			QsciScintilla::ensureCursorVisible();
			return;
		}


		vtbl->ensureCursorVisible(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_ensureCursorVisible() {

		QsciScintilla::ensureCursorVisible();

	}

	// Subclass to allow providing a Go implementation
	virtual void ensureLineVisible(int line) override {
		if (vtbl->ensureLineVisible == 0) {
			QsciScintilla::ensureLineVisible(line);
			return;
		}

		int sigval1 = line;

		vtbl->ensureLineVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_ensureLineVisible(int line) {

		QsciScintilla::ensureLineVisible(static_cast<int>(line));

	}

	// Subclass to allow providing a Go implementation
	virtual void foldAll(bool children) override {
		if (vtbl->foldAll == 0) {
			QsciScintilla::foldAll(children);
			return;
		}

		bool sigval1 = children;

		vtbl->foldAll(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_foldAll(bool children) {

		QsciScintilla::foldAll(children);

	}

	// Subclass to allow providing a Go implementation
	virtual void foldLine(int line) override {
		if (vtbl->foldLine == 0) {
			QsciScintilla::foldLine(line);
			return;
		}

		int sigval1 = line;

		vtbl->foldLine(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_foldLine(int line) {

		QsciScintilla::foldLine(static_cast<int>(line));

	}

	// Subclass to allow providing a Go implementation
	virtual void indent(int line) override {
		if (vtbl->indent == 0) {
			QsciScintilla::indent(line);
			return;
		}

		int sigval1 = line;

		vtbl->indent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_indent(int line) {

		QsciScintilla::indent(static_cast<int>(line));

	}

	// Subclass to allow providing a Go implementation
	virtual void insert(const QString& text) override {
		if (vtbl->insert == 0) {
			QsciScintilla::insert(text);
			return;
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		vtbl->insert(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_insert(struct miqt_string text) {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		QsciScintilla::insert(text_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual void insertAt(const QString& text, int line, int index) override {
		if (vtbl->insertAt == 0) {
			QsciScintilla::insertAt(text, line, index);
			return;
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;
		int sigval2 = line;
		int sigval3 = index;

		vtbl->insertAt(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_insertAt(struct miqt_string text, int line, int index) {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		QsciScintilla::insertAt(text_QString, static_cast<int>(line), static_cast<int>(index));

	}

	// Subclass to allow providing a Go implementation
	virtual void moveToMatchingBrace() override {
		if (vtbl->moveToMatchingBrace == 0) {
			QsciScintilla::moveToMatchingBrace();
			return;
		}


		vtbl->moveToMatchingBrace(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveToMatchingBrace() {

		QsciScintilla::moveToMatchingBrace();

	}

	// Subclass to allow providing a Go implementation
	virtual void paste() override {
		if (vtbl->paste == 0) {
			QsciScintilla::paste();
			return;
		}


		vtbl->paste(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paste() {

		QsciScintilla::paste();

	}

	// Subclass to allow providing a Go implementation
	virtual void redo() override {
		if (vtbl->redo == 0) {
			QsciScintilla::redo();
			return;
		}


		vtbl->redo(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_redo() {

		QsciScintilla::redo();

	}

	// Subclass to allow providing a Go implementation
	virtual void removeSelectedText() override {
		if (vtbl->removeSelectedText == 0) {
			QsciScintilla::removeSelectedText();
			return;
		}


		vtbl->removeSelectedText(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_removeSelectedText() {

		QsciScintilla::removeSelectedText();

	}

	// Subclass to allow providing a Go implementation
	virtual void replaceSelectedText(const QString& text) override {
		if (vtbl->replaceSelectedText == 0) {
			QsciScintilla::replaceSelectedText(text);
			return;
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		vtbl->replaceSelectedText(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_replaceSelectedText(struct miqt_string text) {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		QsciScintilla::replaceSelectedText(text_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual void resetSelectionBackgroundColor() override {
		if (vtbl->resetSelectionBackgroundColor == 0) {
			QsciScintilla::resetSelectionBackgroundColor();
			return;
		}


		vtbl->resetSelectionBackgroundColor(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resetSelectionBackgroundColor() {

		QsciScintilla::resetSelectionBackgroundColor();

	}

	// Subclass to allow providing a Go implementation
	virtual void resetSelectionForegroundColor() override {
		if (vtbl->resetSelectionForegroundColor == 0) {
			QsciScintilla::resetSelectionForegroundColor();
			return;
		}


		vtbl->resetSelectionForegroundColor(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resetSelectionForegroundColor() {

		QsciScintilla::resetSelectionForegroundColor();

	}

	// Subclass to allow providing a Go implementation
	virtual void selectAll(bool select) override {
		if (vtbl->selectAll == 0) {
			QsciScintilla::selectAll(select);
			return;
		}

		bool sigval1 = select;

		vtbl->selectAll(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_selectAll(bool select) {

		QsciScintilla::selectAll(select);

	}

	// Subclass to allow providing a Go implementation
	virtual void selectToMatchingBrace() override {
		if (vtbl->selectToMatchingBrace == 0) {
			QsciScintilla::selectToMatchingBrace();
			return;
		}


		vtbl->selectToMatchingBrace(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_selectToMatchingBrace() {

		QsciScintilla::selectToMatchingBrace();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoCompletionCaseSensitivity(bool cs) override {
		if (vtbl->setAutoCompletionCaseSensitivity == 0) {
			QsciScintilla::setAutoCompletionCaseSensitivity(cs);
			return;
		}

		bool sigval1 = cs;

		vtbl->setAutoCompletionCaseSensitivity(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoCompletionCaseSensitivity(bool cs) {

		QsciScintilla::setAutoCompletionCaseSensitivity(cs);

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoCompletionReplaceWord(bool replace) override {
		if (vtbl->setAutoCompletionReplaceWord == 0) {
			QsciScintilla::setAutoCompletionReplaceWord(replace);
			return;
		}

		bool sigval1 = replace;

		vtbl->setAutoCompletionReplaceWord(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoCompletionReplaceWord(bool replace) {

		QsciScintilla::setAutoCompletionReplaceWord(replace);

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoCompletionShowSingle(bool single) override {
		if (vtbl->setAutoCompletionShowSingle == 0) {
			QsciScintilla::setAutoCompletionShowSingle(single);
			return;
		}

		bool sigval1 = single;

		vtbl->setAutoCompletionShowSingle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoCompletionShowSingle(bool single) {

		QsciScintilla::setAutoCompletionShowSingle(single);

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoCompletionSource(QsciScintilla::AutoCompletionSource source) override {
		if (vtbl->setAutoCompletionSource == 0) {
			QsciScintilla::setAutoCompletionSource(source);
			return;
		}

		QsciScintilla::AutoCompletionSource source_ret = source;
		int sigval1 = static_cast<int>(source_ret);

		vtbl->setAutoCompletionSource(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoCompletionSource(int source) {

		QsciScintilla::setAutoCompletionSource(static_cast<QsciScintilla::AutoCompletionSource>(source));

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoCompletionThreshold(int thresh) override {
		if (vtbl->setAutoCompletionThreshold == 0) {
			QsciScintilla::setAutoCompletionThreshold(thresh);
			return;
		}

		int sigval1 = thresh;

		vtbl->setAutoCompletionThreshold(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoCompletionThreshold(int thresh) {

		QsciScintilla::setAutoCompletionThreshold(static_cast<int>(thresh));

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoCompletionUseSingle(QsciScintilla::AutoCompletionUseSingle single) override {
		if (vtbl->setAutoCompletionUseSingle == 0) {
			QsciScintilla::setAutoCompletionUseSingle(single);
			return;
		}

		QsciScintilla::AutoCompletionUseSingle single_ret = single;
		int sigval1 = static_cast<int>(single_ret);

		vtbl->setAutoCompletionUseSingle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoCompletionUseSingle(int single) {

		QsciScintilla::setAutoCompletionUseSingle(static_cast<QsciScintilla::AutoCompletionUseSingle>(single));

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndent(bool autoindent) override {
		if (vtbl->setAutoIndent == 0) {
			QsciScintilla::setAutoIndent(autoindent);
			return;
		}

		bool sigval1 = autoindent;

		vtbl->setAutoIndent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndent(bool autoindent) {

		QsciScintilla::setAutoIndent(autoindent);

	}

	// Subclass to allow providing a Go implementation
	virtual void setBraceMatching(QsciScintilla::BraceMatch bm) override {
		if (vtbl->setBraceMatching == 0) {
			QsciScintilla::setBraceMatching(bm);
			return;
		}

		QsciScintilla::BraceMatch bm_ret = bm;
		int sigval1 = static_cast<int>(bm_ret);

		vtbl->setBraceMatching(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setBraceMatching(int bm) {

		QsciScintilla::setBraceMatching(static_cast<QsciScintilla::BraceMatch>(bm));

	}

	// Subclass to allow providing a Go implementation
	virtual void setBackspaceUnindents(bool unindent) override {
		if (vtbl->setBackspaceUnindents == 0) {
			QsciScintilla::setBackspaceUnindents(unindent);
			return;
		}

		bool sigval1 = unindent;

		vtbl->setBackspaceUnindents(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setBackspaceUnindents(bool unindent) {

		QsciScintilla::setBackspaceUnindents(unindent);

	}

	// Subclass to allow providing a Go implementation
	virtual void setCaretForegroundColor(const QColor& col) override {
		if (vtbl->setCaretForegroundColor == 0) {
			QsciScintilla::setCaretForegroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setCaretForegroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setCaretForegroundColor(QColor* col) {

		QsciScintilla::setCaretForegroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setCaretLineBackgroundColor(const QColor& col) override {
		if (vtbl->setCaretLineBackgroundColor == 0) {
			QsciScintilla::setCaretLineBackgroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setCaretLineBackgroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setCaretLineBackgroundColor(QColor* col) {

		QsciScintilla::setCaretLineBackgroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setCaretLineFrameWidth(int width) override {
		if (vtbl->setCaretLineFrameWidth == 0) {
			QsciScintilla::setCaretLineFrameWidth(width);
			return;
		}

		int sigval1 = width;

		vtbl->setCaretLineFrameWidth(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setCaretLineFrameWidth(int width) {

		QsciScintilla::setCaretLineFrameWidth(static_cast<int>(width));

	}

	// Subclass to allow providing a Go implementation
	virtual void setCaretLineVisible(bool enable) override {
		if (vtbl->setCaretLineVisible == 0) {
			QsciScintilla::setCaretLineVisible(enable);
			return;
		}

		bool sigval1 = enable;

		vtbl->setCaretLineVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setCaretLineVisible(bool enable) {

		QsciScintilla::setCaretLineVisible(enable);

	}

	// Subclass to allow providing a Go implementation
	virtual void setCaretWidth(int width) override {
		if (vtbl->setCaretWidth == 0) {
			QsciScintilla::setCaretWidth(width);
			return;
		}

		int sigval1 = width;

		vtbl->setCaretWidth(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setCaretWidth(int width) {

		QsciScintilla::setCaretWidth(static_cast<int>(width));

	}

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c) override {
		if (vtbl->setColor == 0) {
			QsciScintilla::setColor(c);
			return;
		}

		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);

		vtbl->setColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setColor(QColor* c) {

		QsciScintilla::setColor(*c);

	}

	// Subclass to allow providing a Go implementation
	virtual void setCursorPosition(int line, int index) override {
		if (vtbl->setCursorPosition == 0) {
			QsciScintilla::setCursorPosition(line, index);
			return;
		}

		int sigval1 = line;
		int sigval2 = index;

		vtbl->setCursorPosition(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setCursorPosition(int line, int index) {

		QsciScintilla::setCursorPosition(static_cast<int>(line), static_cast<int>(index));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolMode(QsciScintilla::EolMode mode) override {
		if (vtbl->setEolMode == 0) {
			QsciScintilla::setEolMode(mode);
			return;
		}

		QsciScintilla::EolMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		vtbl->setEolMode(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolMode(int mode) {

		QsciScintilla::setEolMode(static_cast<QsciScintilla::EolMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolVisibility(bool visible) override {
		if (vtbl->setEolVisibility == 0) {
			QsciScintilla::setEolVisibility(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setEolVisibility(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolVisibility(bool visible) {

		QsciScintilla::setEolVisibility(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFolding(QsciScintilla::FoldStyle fold, int margin) override {
		if (vtbl->setFolding == 0) {
			QsciScintilla::setFolding(fold, margin);
			return;
		}

		QsciScintilla::FoldStyle fold_ret = fold;
		int sigval1 = static_cast<int>(fold_ret);
		int sigval2 = margin;

		vtbl->setFolding(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFolding(int fold, int margin) {

		QsciScintilla::setFolding(static_cast<QsciScintilla::FoldStyle>(fold), static_cast<int>(margin));

	}

	// Subclass to allow providing a Go implementation
	virtual void setIndentation(int line, int indentation) override {
		if (vtbl->setIndentation == 0) {
			QsciScintilla::setIndentation(line, indentation);
			return;
		}

		int sigval1 = line;
		int sigval2 = indentation;

		vtbl->setIndentation(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setIndentation(int line, int indentation) {

		QsciScintilla::setIndentation(static_cast<int>(line), static_cast<int>(indentation));

	}

	// Subclass to allow providing a Go implementation
	virtual void setIndentationGuides(bool enable) override {
		if (vtbl->setIndentationGuides == 0) {
			QsciScintilla::setIndentationGuides(enable);
			return;
		}

		bool sigval1 = enable;

		vtbl->setIndentationGuides(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setIndentationGuides(bool enable) {

		QsciScintilla::setIndentationGuides(enable);

	}

	// Subclass to allow providing a Go implementation
	virtual void setIndentationGuidesBackgroundColor(const QColor& col) override {
		if (vtbl->setIndentationGuidesBackgroundColor == 0) {
			QsciScintilla::setIndentationGuidesBackgroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setIndentationGuidesBackgroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setIndentationGuidesBackgroundColor(QColor* col) {

		QsciScintilla::setIndentationGuidesBackgroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setIndentationGuidesForegroundColor(const QColor& col) override {
		if (vtbl->setIndentationGuidesForegroundColor == 0) {
			QsciScintilla::setIndentationGuidesForegroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setIndentationGuidesForegroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setIndentationGuidesForegroundColor(QColor* col) {

		QsciScintilla::setIndentationGuidesForegroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setIndentationsUseTabs(bool tabs) override {
		if (vtbl->setIndentationsUseTabs == 0) {
			QsciScintilla::setIndentationsUseTabs(tabs);
			return;
		}

		bool sigval1 = tabs;

		vtbl->setIndentationsUseTabs(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setIndentationsUseTabs(bool tabs) {

		QsciScintilla::setIndentationsUseTabs(tabs);

	}

	// Subclass to allow providing a Go implementation
	virtual void setIndentationWidth(int width) override {
		if (vtbl->setIndentationWidth == 0) {
			QsciScintilla::setIndentationWidth(width);
			return;
		}

		int sigval1 = width;

		vtbl->setIndentationWidth(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setIndentationWidth(int width) {

		QsciScintilla::setIndentationWidth(static_cast<int>(width));

	}

	// Subclass to allow providing a Go implementation
	virtual void setLexer(QsciLexer* lexer) override {
		if (vtbl->setLexer == 0) {
			QsciScintilla::setLexer(lexer);
			return;
		}

		QsciLexer* sigval1 = lexer;

		vtbl->setLexer(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setLexer(QsciLexer* lexer) {

		QsciScintilla::setLexer(lexer);

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginsBackgroundColor(const QColor& col) override {
		if (vtbl->setMarginsBackgroundColor == 0) {
			QsciScintilla::setMarginsBackgroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setMarginsBackgroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginsBackgroundColor(QColor* col) {

		QsciScintilla::setMarginsBackgroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginsFont(const QFont& f) override {
		if (vtbl->setMarginsFont == 0) {
			QsciScintilla::setMarginsFont(f);
			return;
		}

		const QFont& f_ret = f;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&f_ret);

		vtbl->setMarginsFont(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginsFont(QFont* f) {

		QsciScintilla::setMarginsFont(*f);

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginsForegroundColor(const QColor& col) override {
		if (vtbl->setMarginsForegroundColor == 0) {
			QsciScintilla::setMarginsForegroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setMarginsForegroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginsForegroundColor(QColor* col) {

		QsciScintilla::setMarginsForegroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginLineNumbers(int margin, bool lnrs) override {
		if (vtbl->setMarginLineNumbers == 0) {
			QsciScintilla::setMarginLineNumbers(margin, lnrs);
			return;
		}

		int sigval1 = margin;
		bool sigval2 = lnrs;

		vtbl->setMarginLineNumbers(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginLineNumbers(int margin, bool lnrs) {

		QsciScintilla::setMarginLineNumbers(static_cast<int>(margin), lnrs);

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginMarkerMask(int margin, int mask) override {
		if (vtbl->setMarginMarkerMask == 0) {
			QsciScintilla::setMarginMarkerMask(margin, mask);
			return;
		}

		int sigval1 = margin;
		int sigval2 = mask;

		vtbl->setMarginMarkerMask(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginMarkerMask(int margin, int mask) {

		QsciScintilla::setMarginMarkerMask(static_cast<int>(margin), static_cast<int>(mask));

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginSensitivity(int margin, bool sens) override {
		if (vtbl->setMarginSensitivity == 0) {
			QsciScintilla::setMarginSensitivity(margin, sens);
			return;
		}

		int sigval1 = margin;
		bool sigval2 = sens;

		vtbl->setMarginSensitivity(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginSensitivity(int margin, bool sens) {

		QsciScintilla::setMarginSensitivity(static_cast<int>(margin), sens);

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginWidth(int margin, int width) override {
		if (vtbl->setMarginWidth == 0) {
			QsciScintilla::setMarginWidth(margin, width);
			return;
		}

		int sigval1 = margin;
		int sigval2 = width;

		vtbl->setMarginWidth(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginWidth(int margin, int width) {

		QsciScintilla::setMarginWidth(static_cast<int>(margin), static_cast<int>(width));

	}

	// Subclass to allow providing a Go implementation
	virtual void setMarginWidth(int margin, const QString& s) override {
		if (vtbl->setMarginWidth2 == 0) {
			QsciScintilla::setMarginWidth(margin, s);
			return;
		}

		int sigval1 = margin;
		const QString s_ret = s;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray s_b = s_ret.toUtf8();
		struct miqt_string s_ms;
		s_ms.len = s_b.length();
		s_ms.data = static_cast<char*>(malloc(s_ms.len));
		memcpy(s_ms.data, s_b.data(), s_ms.len);
		struct miqt_string sigval2 = s_ms;

		vtbl->setMarginWidth2(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMarginWidth2(int margin, struct miqt_string s) {
		QString s_QString = QString::fromUtf8(s.data, s.len);

		QsciScintilla::setMarginWidth(static_cast<int>(margin), s_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual void setModified(bool m) override {
		if (vtbl->setModified == 0) {
			QsciScintilla::setModified(m);
			return;
		}

		bool sigval1 = m;

		vtbl->setModified(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setModified(bool m) {

		QsciScintilla::setModified(m);

	}

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c) override {
		if (vtbl->setPaper == 0) {
			QsciScintilla::setPaper(c);
			return;
		}

		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);

		vtbl->setPaper(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setPaper(QColor* c) {

		QsciScintilla::setPaper(*c);

	}

	// Subclass to allow providing a Go implementation
	virtual void setReadOnly(bool ro) override {
		if (vtbl->setReadOnly == 0) {
			QsciScintilla::setReadOnly(ro);
			return;
		}

		bool sigval1 = ro;

		vtbl->setReadOnly(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setReadOnly(bool ro) {

		QsciScintilla::setReadOnly(ro);

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelection(int lineFrom, int indexFrom, int lineTo, int indexTo) override {
		if (vtbl->setSelection == 0) {
			QsciScintilla::setSelection(lineFrom, indexFrom, lineTo, indexTo);
			return;
		}

		int sigval1 = lineFrom;
		int sigval2 = indexFrom;
		int sigval3 = lineTo;
		int sigval4 = indexTo;

		vtbl->setSelection(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelection(int lineFrom, int indexFrom, int lineTo, int indexTo) {

		QsciScintilla::setSelection(static_cast<int>(lineFrom), static_cast<int>(indexFrom), static_cast<int>(lineTo), static_cast<int>(indexTo));

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelectionBackgroundColor(const QColor& col) override {
		if (vtbl->setSelectionBackgroundColor == 0) {
			QsciScintilla::setSelectionBackgroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setSelectionBackgroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelectionBackgroundColor(QColor* col) {

		QsciScintilla::setSelectionBackgroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelectionForegroundColor(const QColor& col) override {
		if (vtbl->setSelectionForegroundColor == 0) {
			QsciScintilla::setSelectionForegroundColor(col);
			return;
		}

		const QColor& col_ret = col;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&col_ret);

		vtbl->setSelectionForegroundColor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelectionForegroundColor(QColor* col) {

		QsciScintilla::setSelectionForegroundColor(*col);

	}

	// Subclass to allow providing a Go implementation
	virtual void setTabIndents(bool indent) override {
		if (vtbl->setTabIndents == 0) {
			QsciScintilla::setTabIndents(indent);
			return;
		}

		bool sigval1 = indent;

		vtbl->setTabIndents(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setTabIndents(bool indent) {

		QsciScintilla::setTabIndents(indent);

	}

	// Subclass to allow providing a Go implementation
	virtual void setTabWidth(int width) override {
		if (vtbl->setTabWidth == 0) {
			QsciScintilla::setTabWidth(width);
			return;
		}

		int sigval1 = width;

		vtbl->setTabWidth(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setTabWidth(int width) {

		QsciScintilla::setTabWidth(static_cast<int>(width));

	}

	// Subclass to allow providing a Go implementation
	virtual void setText(const QString& text) override {
		if (vtbl->setText == 0) {
			QsciScintilla::setText(text);
			return;
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		vtbl->setText(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setText(struct miqt_string text) {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		QsciScintilla::setText(text_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual void setUtf8(bool cp) override {
		if (vtbl->setUtf8 == 0) {
			QsciScintilla::setUtf8(cp);
			return;
		}

		bool sigval1 = cp;

		vtbl->setUtf8(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setUtf8(bool cp) {

		QsciScintilla::setUtf8(cp);

	}

	// Subclass to allow providing a Go implementation
	virtual void setWhitespaceVisibility(QsciScintilla::WhitespaceVisibility mode) override {
		if (vtbl->setWhitespaceVisibility == 0) {
			QsciScintilla::setWhitespaceVisibility(mode);
			return;
		}

		QsciScintilla::WhitespaceVisibility mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		vtbl->setWhitespaceVisibility(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setWhitespaceVisibility(int mode) {

		QsciScintilla::setWhitespaceVisibility(static_cast<QsciScintilla::WhitespaceVisibility>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual void setWrapMode(QsciScintilla::WrapMode mode) override {
		if (vtbl->setWrapMode == 0) {
			QsciScintilla::setWrapMode(mode);
			return;
		}

		QsciScintilla::WrapMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		vtbl->setWrapMode(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setWrapMode(int mode) {

		QsciScintilla::setWrapMode(static_cast<QsciScintilla::WrapMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual void undo() override {
		if (vtbl->undo == 0) {
			QsciScintilla::undo();
			return;
		}


		vtbl->undo(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_undo() {

		QsciScintilla::undo();

	}

	// Subclass to allow providing a Go implementation
	virtual void unindent(int line) override {
		if (vtbl->unindent == 0) {
			QsciScintilla::unindent(line);
			return;
		}

		int sigval1 = line;

		vtbl->unindent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_unindent(int line) {

		QsciScintilla::unindent(static_cast<int>(line));

	}

	// Subclass to allow providing a Go implementation
	virtual void zoomIn(int range) override {
		if (vtbl->zoomIn == 0) {
			QsciScintilla::zoomIn(range);
			return;
		}

		int sigval1 = range;

		vtbl->zoomIn(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_zoomIn(int range) {

		QsciScintilla::zoomIn(static_cast<int>(range));

	}

	// Subclass to allow providing a Go implementation
	virtual void zoomIn() override {
		if (vtbl->zoomIn2 == 0) {
			QsciScintilla::zoomIn();
			return;
		}


		vtbl->zoomIn2(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_zoomIn2() {

		QsciScintilla::zoomIn();

	}

	// Subclass to allow providing a Go implementation
	virtual void zoomOut(int range) override {
		if (vtbl->zoomOut == 0) {
			QsciScintilla::zoomOut(range);
			return;
		}

		int sigval1 = range;

		vtbl->zoomOut(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_zoomOut(int range) {

		QsciScintilla::zoomOut(static_cast<int>(range));

	}

	// Subclass to allow providing a Go implementation
	virtual void zoomOut() override {
		if (vtbl->zoomOut2 == 0) {
			QsciScintilla::zoomOut();
			return;
		}


		vtbl->zoomOut2(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_zoomOut2() {

		QsciScintilla::zoomOut();

	}

	// Subclass to allow providing a Go implementation
	virtual void zoomTo(int size) override {
		if (vtbl->zoomTo == 0) {
			QsciScintilla::zoomTo(size);
			return;
		}

		int sigval1 = size;

		vtbl->zoomTo(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_zoomTo(int size) {

		QsciScintilla::zoomTo(static_cast<int>(size));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QsciScintilla::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QsciScintilla::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QsciScintilla::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QsciScintilla::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QsciScintilla::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* e) {

		QsciScintilla::contextMenuEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QsciScintilla::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* e) {

		QsciScintilla::wheelEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canInsertFromMimeData(const QMimeData* source) const override {
		if (vtbl->canInsertFromMimeData == 0) {
			return QsciScintilla::canInsertFromMimeData(source);
		}

		QMimeData* sigval1 = (QMimeData*) source;

		bool callback_return_value = vtbl->canInsertFromMimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canInsertFromMimeData(QMimeData* source) const {

		return QsciScintilla::canInsertFromMimeData(source);

	}

	// Subclass to allow providing a Go implementation
	virtual QByteArray fromMimeData(const QMimeData* source, bool& rectangular) const override {
		if (vtbl->fromMimeData == 0) {
			return QsciScintilla::fromMimeData(source, rectangular);
		}

		QMimeData* sigval1 = (QMimeData*) source;
		bool* sigval2 = &rectangular;

		struct miqt_string callback_return_value = vtbl->fromMimeData(vtbl, this, sigval1, sigval2);
		QByteArray callback_return_value_QByteArray(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QByteArray;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_fromMimeData(QMimeData* source, bool* rectangular) const {

		QByteArray _qb = QsciScintilla::fromMimeData(source, *rectangular);
		struct miqt_string _ms;
		_ms.len = _qb.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _qb.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual QMimeData* toMimeData(const QByteArray& text, bool rectangular) const override {
		if (vtbl->toMimeData == 0) {
			return QsciScintilla::toMimeData(text, rectangular);
		}

		const QByteArray text_qb = text;
		struct miqt_string text_ms;
		text_ms.len = text_qb.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_qb.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;
		bool sigval2 = rectangular;

		QMimeData* callback_return_value = vtbl->toMimeData(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMimeData* virtualbase_toMimeData(struct miqt_string text, bool rectangular) const {
		QByteArray text_QByteArray(text.data, text.len);

		return QsciScintilla::toMimeData(text_QByteArray, rectangular);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QsciScintilla::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* e) {

		QsciScintilla::dragEnterEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QsciScintilla::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* e) {

		QsciScintilla::dragLeaveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QsciScintilla::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* e) {

		QsciScintilla::dragMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QsciScintilla::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* e) {

		QsciScintilla::dropEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QsciScintilla::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* e) {

		QsciScintilla::focusInEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QsciScintilla::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* e) {

		QsciScintilla::focusOutEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QsciScintilla::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QsciScintilla::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QsciScintilla::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* e) {

		QsciScintilla::keyPressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QsciScintilla::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QsciScintilla::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QsciScintilla::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QsciScintilla::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QsciScintilla::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* e) {

		QsciScintilla::mouseDoubleClickEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QsciScintilla::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* e) {

		QsciScintilla::mouseMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QsciScintilla::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* e) {

		QsciScintilla::mousePressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QsciScintilla::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* e) {

		QsciScintilla::mouseReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QsciScintilla::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* e) {

		QsciScintilla::paintEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QsciScintilla::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* e) {

		QsciScintilla::resizeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QsciScintilla::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollContentsBy(int dx, int dy) {

		QsciScintilla::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QsciScintilla::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QsciScintilla::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QsciScintilla::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QsciScintilla::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QsciScintilla::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupViewport(QWidget* viewport) {

		QsciScintilla::setupViewport(viewport);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QsciScintilla::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QsciScintilla::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QsciScintilla::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_viewportEvent(QEvent* param1) {

		return QsciScintilla::viewportEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QsciScintilla::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_viewportSizeHint() const {

		return new QSize(QsciScintilla::viewportSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QsciScintilla::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QsciScintilla::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QsciScintilla::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QsciScintilla::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QsciScintilla::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QsciScintilla::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QsciScintilla::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QsciScintilla::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QsciScintilla::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QsciScintilla::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QsciScintilla::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QsciScintilla::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QsciScintilla::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QsciScintilla::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QsciScintilla::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QsciScintilla::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QsciScintilla::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QsciScintilla::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QsciScintilla::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QsciScintilla::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QsciScintilla::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QsciScintilla::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QsciScintilla::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QsciScintilla::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QsciScintilla::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QsciScintilla::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QsciScintilla::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QsciScintilla::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QsciScintilla::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, long* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QsciScintilla::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QsciScintilla::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QsciScintilla::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QsciScintilla::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QsciScintilla::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QsciScintilla::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QsciScintilla::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QsciScintilla::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QsciScintilla::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciScintilla::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciScintilla::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciScintilla::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciScintilla::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciScintilla::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciScintilla::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciScintilla::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciScintilla::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciScintilla::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciScintilla::disconnectNotify(*signal);

	}

};

QsciScintilla* QsciScintilla_new(struct QsciScintilla_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQsciScintilla(vtbl, parent);
}

QsciScintilla* QsciScintilla_new2(struct QsciScintilla_VTable* vtbl) {
	return new MiqtVirtualQsciScintilla(vtbl);
}

void QsciScintilla_virtbase(QsciScintilla* src, QsciScintillaBase** outptr_QsciScintillaBase) {
	*outptr_QsciScintillaBase = static_cast<QsciScintillaBase*>(src);
}

QMetaObject* QsciScintilla_metaObject(const QsciScintilla* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciScintilla_metacast(QsciScintilla* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciScintilla_metacall(QsciScintilla* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciScintilla_tr(const char* s) {
	QString _ret = QsciScintilla::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciScintilla_trUtf8(const char* s) {
	QString _ret = QsciScintilla::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QsciScintilla_apiContext(QsciScintilla* self, int pos, int* context_start, int* last_word_start) {
	QStringList _ret = self->apiContext(static_cast<int>(pos), static_cast<int&>(*context_start), static_cast<int&>(*last_word_start));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QsciScintilla_annotate(QsciScintilla* self, int line, struct miqt_string text, int style) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->annotate(static_cast<int>(line), text_QString, static_cast<int>(style));
}

void QsciScintilla_annotate2(QsciScintilla* self, int line, struct miqt_string text, QsciStyle* style) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->annotate(static_cast<int>(line), text_QString, *style);
}

void QsciScintilla_annotate3(QsciScintilla* self, int line, QsciStyledText* text) {
	self->annotate(static_cast<int>(line), *text);
}

struct miqt_string QsciScintilla_annotation(const QsciScintilla* self, int line) {
	QString _ret = self->annotation(static_cast<int>(line));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QsciScintilla_annotationDisplay(const QsciScintilla* self) {
	QsciScintilla::AnnotationDisplay _ret = self->annotationDisplay();
	return static_cast<int>(_ret);
}

void QsciScintilla_clearAnnotations(QsciScintilla* self) {
	self->clearAnnotations();
}

bool QsciScintilla_autoCompletionCaseSensitivity(const QsciScintilla* self) {
	return self->autoCompletionCaseSensitivity();
}

bool QsciScintilla_autoCompletionFillupsEnabled(const QsciScintilla* self) {
	return self->autoCompletionFillupsEnabled();
}

bool QsciScintilla_autoCompletionReplaceWord(const QsciScintilla* self) {
	return self->autoCompletionReplaceWord();
}

bool QsciScintilla_autoCompletionShowSingle(const QsciScintilla* self) {
	return self->autoCompletionShowSingle();
}

int QsciScintilla_autoCompletionSource(const QsciScintilla* self) {
	QsciScintilla::AutoCompletionSource _ret = self->autoCompletionSource();
	return static_cast<int>(_ret);
}

int QsciScintilla_autoCompletionThreshold(const QsciScintilla* self) {
	return self->autoCompletionThreshold();
}

int QsciScintilla_autoCompletionUseSingle(const QsciScintilla* self) {
	QsciScintilla::AutoCompletionUseSingle _ret = self->autoCompletionUseSingle();
	return static_cast<int>(_ret);
}

bool QsciScintilla_autoIndent(const QsciScintilla* self) {
	return self->autoIndent();
}

bool QsciScintilla_backspaceUnindents(const QsciScintilla* self) {
	return self->backspaceUnindents();
}

void QsciScintilla_beginUndoAction(QsciScintilla* self) {
	self->beginUndoAction();
}

int QsciScintilla_braceMatching(const QsciScintilla* self) {
	QsciScintilla::BraceMatch _ret = self->braceMatching();
	return static_cast<int>(_ret);
}

struct miqt_string QsciScintilla_bytes(const QsciScintilla* self, int start, int end) {
	QByteArray _qb = self->bytes(static_cast<int>(start), static_cast<int>(end));
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int QsciScintilla_callTipsPosition(const QsciScintilla* self) {
	QsciScintilla::CallTipsPosition _ret = self->callTipsPosition();
	return static_cast<int>(_ret);
}

int QsciScintilla_callTipsStyle(const QsciScintilla* self) {
	QsciScintilla::CallTipsStyle _ret = self->callTipsStyle();
	return static_cast<int>(_ret);
}

int QsciScintilla_callTipsVisible(const QsciScintilla* self) {
	return self->callTipsVisible();
}

void QsciScintilla_cancelFind(QsciScintilla* self) {
	self->cancelFind();
}

void QsciScintilla_cancelList(QsciScintilla* self) {
	self->cancelList();
}

bool QsciScintilla_caseSensitive(const QsciScintilla* self) {
	return self->caseSensitive();
}

void QsciScintilla_clearFolds(QsciScintilla* self) {
	self->clearFolds();
}

void QsciScintilla_clearIndicatorRange(QsciScintilla* self, int lineFrom, int indexFrom, int lineTo, int indexTo, int indicatorNumber) {
	self->clearIndicatorRange(static_cast<int>(lineFrom), static_cast<int>(indexFrom), static_cast<int>(lineTo), static_cast<int>(indexTo), static_cast<int>(indicatorNumber));
}

void QsciScintilla_clearRegisteredImages(QsciScintilla* self) {
	self->clearRegisteredImages();
}

QColor* QsciScintilla_color(const QsciScintilla* self) {
	return new QColor(self->color());
}

struct miqt_array /* of int */  QsciScintilla_contractedFolds(const QsciScintilla* self) {
	QList<int> _ret = self->contractedFolds();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QsciScintilla_convertEols(QsciScintilla* self, int mode) {
	self->convertEols(static_cast<QsciScintilla::EolMode>(mode));
}

QMenu* QsciScintilla_createStandardContextMenu(QsciScintilla* self) {
	return self->createStandardContextMenu();
}

QsciDocument* QsciScintilla_document(const QsciScintilla* self) {
	return new QsciDocument(self->document());
}

void QsciScintilla_endUndoAction(QsciScintilla* self) {
	self->endUndoAction();
}

QColor* QsciScintilla_edgeColor(const QsciScintilla* self) {
	return new QColor(self->edgeColor());
}

int QsciScintilla_edgeColumn(const QsciScintilla* self) {
	return self->edgeColumn();
}

int QsciScintilla_edgeMode(const QsciScintilla* self) {
	QsciScintilla::EdgeMode _ret = self->edgeMode();
	return static_cast<int>(_ret);
}

void QsciScintilla_setFont(QsciScintilla* self, QFont* f) {
	self->setFont(*f);
}

int QsciScintilla_eolMode(const QsciScintilla* self) {
	QsciScintilla::EolMode _ret = self->eolMode();
	return static_cast<int>(_ret);
}

bool QsciScintilla_eolVisibility(const QsciScintilla* self) {
	return self->eolVisibility();
}

int QsciScintilla_extraAscent(const QsciScintilla* self) {
	return self->extraAscent();
}

int QsciScintilla_extraDescent(const QsciScintilla* self) {
	return self->extraDescent();
}

void QsciScintilla_fillIndicatorRange(QsciScintilla* self, int lineFrom, int indexFrom, int lineTo, int indexTo, int indicatorNumber) {
	self->fillIndicatorRange(static_cast<int>(lineFrom), static_cast<int>(indexFrom), static_cast<int>(lineTo), static_cast<int>(indexTo), static_cast<int>(indicatorNumber));
}

bool QsciScintilla_findFirst(QsciScintilla* self, struct miqt_string expr, bool re, bool cs, bool wo, bool wrap, bool forward, int line, int index, bool show, bool posix, bool cxx11) {
	QString expr_QString = QString::fromUtf8(expr.data, expr.len);
	return self->findFirst(expr_QString, re, cs, wo, wrap, forward, static_cast<int>(line), static_cast<int>(index), show, posix, cxx11);
}

bool QsciScintilla_findFirstInSelection(QsciScintilla* self, struct miqt_string expr, bool re, bool cs, bool wo, bool forward, bool show, bool posix, bool cxx11) {
	QString expr_QString = QString::fromUtf8(expr.data, expr.len);
	return self->findFirstInSelection(expr_QString, re, cs, wo, forward, show, posix, cxx11);
}

bool QsciScintilla_findNext(QsciScintilla* self) {
	return self->findNext();
}

bool QsciScintilla_findMatchingBrace(QsciScintilla* self, long* brace, long* other, int mode) {
	return self->findMatchingBrace(static_cast<long&>(*brace), static_cast<long&>(*other), static_cast<QsciScintilla::BraceMatch>(mode));
}

int QsciScintilla_firstVisibleLine(const QsciScintilla* self) {
	return self->firstVisibleLine();
}

int QsciScintilla_folding(const QsciScintilla* self) {
	QsciScintilla::FoldStyle _ret = self->folding();
	return static_cast<int>(_ret);
}

void QsciScintilla_getCursorPosition(const QsciScintilla* self, int* line, int* index) {
	self->getCursorPosition(static_cast<int*>(line), static_cast<int*>(index));
}

void QsciScintilla_getSelection(const QsciScintilla* self, int* lineFrom, int* indexFrom, int* lineTo, int* indexTo) {
	self->getSelection(static_cast<int*>(lineFrom), static_cast<int*>(indexFrom), static_cast<int*>(lineTo), static_cast<int*>(indexTo));
}

bool QsciScintilla_hasSelectedText(const QsciScintilla* self) {
	return self->hasSelectedText();
}

int QsciScintilla_indentation(const QsciScintilla* self, int line) {
	return self->indentation(static_cast<int>(line));
}

bool QsciScintilla_indentationGuides(const QsciScintilla* self) {
	return self->indentationGuides();
}

bool QsciScintilla_indentationsUseTabs(const QsciScintilla* self) {
	return self->indentationsUseTabs();
}

int QsciScintilla_indentationWidth(const QsciScintilla* self) {
	return self->indentationWidth();
}

int QsciScintilla_indicatorDefine(QsciScintilla* self, int style) {
	return self->indicatorDefine(static_cast<QsciScintilla::IndicatorStyle>(style));
}

bool QsciScintilla_indicatorDrawUnder(const QsciScintilla* self, int indicatorNumber) {
	return self->indicatorDrawUnder(static_cast<int>(indicatorNumber));
}

bool QsciScintilla_isCallTipActive(const QsciScintilla* self) {
	return self->isCallTipActive();
}

bool QsciScintilla_isListActive(const QsciScintilla* self) {
	return self->isListActive();
}

bool QsciScintilla_isModified(const QsciScintilla* self) {
	return self->isModified();
}

bool QsciScintilla_isReadOnly(const QsciScintilla* self) {
	return self->isReadOnly();
}

bool QsciScintilla_isRedoAvailable(const QsciScintilla* self) {
	return self->isRedoAvailable();
}

bool QsciScintilla_isUndoAvailable(const QsciScintilla* self) {
	return self->isUndoAvailable();
}

bool QsciScintilla_isUtf8(const QsciScintilla* self) {
	return self->isUtf8();
}

bool QsciScintilla_isWordCharacter(const QsciScintilla* self, char ch) {
	return self->isWordCharacter(static_cast<char>(ch));
}

int QsciScintilla_lineAt(const QsciScintilla* self, QPoint* point) {
	return self->lineAt(*point);
}

void QsciScintilla_lineIndexFromPosition(const QsciScintilla* self, int position, int* line, int* index) {
	self->lineIndexFromPosition(static_cast<int>(position), static_cast<int*>(line), static_cast<int*>(index));
}

int QsciScintilla_lineLength(const QsciScintilla* self, int line) {
	return self->lineLength(static_cast<int>(line));
}

int QsciScintilla_lines(const QsciScintilla* self) {
	return self->lines();
}

int QsciScintilla_length(const QsciScintilla* self) {
	return self->length();
}

QsciLexer* QsciScintilla_lexer(const QsciScintilla* self) {
	return self->lexer();
}

QColor* QsciScintilla_marginBackgroundColor(const QsciScintilla* self, int margin) {
	return new QColor(self->marginBackgroundColor(static_cast<int>(margin)));
}

bool QsciScintilla_marginLineNumbers(const QsciScintilla* self, int margin) {
	return self->marginLineNumbers(static_cast<int>(margin));
}

int QsciScintilla_marginMarkerMask(const QsciScintilla* self, int margin) {
	return self->marginMarkerMask(static_cast<int>(margin));
}

int QsciScintilla_marginOptions(const QsciScintilla* self) {
	return self->marginOptions();
}

bool QsciScintilla_marginSensitivity(const QsciScintilla* self, int margin) {
	return self->marginSensitivity(static_cast<int>(margin));
}

int QsciScintilla_marginType(const QsciScintilla* self, int margin) {
	QsciScintilla::MarginType _ret = self->marginType(static_cast<int>(margin));
	return static_cast<int>(_ret);
}

int QsciScintilla_marginWidth(const QsciScintilla* self, int margin) {
	return self->marginWidth(static_cast<int>(margin));
}

int QsciScintilla_margins(const QsciScintilla* self) {
	return self->margins();
}

int QsciScintilla_markerDefine(QsciScintilla* self, int sym) {
	return self->markerDefine(static_cast<QsciScintilla::MarkerSymbol>(sym));
}

int QsciScintilla_markerDefineWithCh(QsciScintilla* self, char ch) {
	return self->markerDefine(static_cast<char>(ch));
}

int QsciScintilla_markerDefineWithPm(QsciScintilla* self, QPixmap* pm) {
	return self->markerDefine(*pm);
}

int QsciScintilla_markerDefineWithIm(QsciScintilla* self, QImage* im) {
	return self->markerDefine(*im);
}

int QsciScintilla_markerAdd(QsciScintilla* self, int linenr, int markerNumber) {
	return self->markerAdd(static_cast<int>(linenr), static_cast<int>(markerNumber));
}

unsigned int QsciScintilla_markersAtLine(const QsciScintilla* self, int linenr) {
	return self->markersAtLine(static_cast<int>(linenr));
}

void QsciScintilla_markerDelete(QsciScintilla* self, int linenr) {
	self->markerDelete(static_cast<int>(linenr));
}

void QsciScintilla_markerDeleteAll(QsciScintilla* self) {
	self->markerDeleteAll();
}

void QsciScintilla_markerDeleteHandle(QsciScintilla* self, int mhandle) {
	self->markerDeleteHandle(static_cast<int>(mhandle));
}

int QsciScintilla_markerLine(const QsciScintilla* self, int mhandle) {
	return self->markerLine(static_cast<int>(mhandle));
}

int QsciScintilla_markerFindNext(const QsciScintilla* self, int linenr, unsigned int mask) {
	return self->markerFindNext(static_cast<int>(linenr), static_cast<unsigned int>(mask));
}

int QsciScintilla_markerFindPrevious(const QsciScintilla* self, int linenr, unsigned int mask) {
	return self->markerFindPrevious(static_cast<int>(linenr), static_cast<unsigned int>(mask));
}

bool QsciScintilla_overwriteMode(const QsciScintilla* self) {
	return self->overwriteMode();
}

QColor* QsciScintilla_paper(const QsciScintilla* self) {
	return new QColor(self->paper());
}

int QsciScintilla_positionFromLineIndex(const QsciScintilla* self, int line, int index) {
	return self->positionFromLineIndex(static_cast<int>(line), static_cast<int>(index));
}

bool QsciScintilla_read(QsciScintilla* self, QIODevice* io) {
	return self->read(io);
}

void QsciScintilla_recolor(QsciScintilla* self, int start, int end) {
	self->recolor(static_cast<int>(start), static_cast<int>(end));
}

void QsciScintilla_registerImage(QsciScintilla* self, int id, QPixmap* pm) {
	self->registerImage(static_cast<int>(id), *pm);
}

void QsciScintilla_registerImage2(QsciScintilla* self, int id, QImage* im) {
	self->registerImage(static_cast<int>(id), *im);
}

void QsciScintilla_replace(QsciScintilla* self, struct miqt_string replaceStr) {
	QString replaceStr_QString = QString::fromUtf8(replaceStr.data, replaceStr.len);
	self->replace(replaceStr_QString);
}

void QsciScintilla_resetFoldMarginColors(QsciScintilla* self) {
	self->resetFoldMarginColors();
}

void QsciScintilla_resetHotspotBackgroundColor(QsciScintilla* self) {
	self->resetHotspotBackgroundColor();
}

void QsciScintilla_resetHotspotForegroundColor(QsciScintilla* self) {
	self->resetHotspotForegroundColor();
}

int QsciScintilla_scrollWidth(const QsciScintilla* self) {
	return self->scrollWidth();
}

bool QsciScintilla_scrollWidthTracking(const QsciScintilla* self) {
	return self->scrollWidthTracking();
}

void QsciScintilla_setFoldMarginColors(QsciScintilla* self, QColor* fore, QColor* back) {
	self->setFoldMarginColors(*fore, *back);
}

void QsciScintilla_setAnnotationDisplay(QsciScintilla* self, int display) {
	self->setAnnotationDisplay(static_cast<QsciScintilla::AnnotationDisplay>(display));
}

void QsciScintilla_setAutoCompletionFillupsEnabled(QsciScintilla* self, bool enabled) {
	self->setAutoCompletionFillupsEnabled(enabled);
}

void QsciScintilla_setAutoCompletionFillups(QsciScintilla* self, const char* fillups) {
	self->setAutoCompletionFillups(fillups);
}

void QsciScintilla_setAutoCompletionWordSeparators(QsciScintilla* self, struct miqt_array /* of struct miqt_string */  separators) {
	QStringList separators_QList;
	separators_QList.reserve(separators.len);
	struct miqt_string* separators_arr = static_cast<struct miqt_string*>(separators.data);
	for(size_t i = 0; i < separators.len; ++i) {
		QString separators_arr_i_QString = QString::fromUtf8(separators_arr[i].data, separators_arr[i].len);
		separators_QList.push_back(separators_arr_i_QString);
	}
	self->setAutoCompletionWordSeparators(separators_QList);
}

void QsciScintilla_setCallTipsBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setCallTipsBackgroundColor(*col);
}

void QsciScintilla_setCallTipsForegroundColor(QsciScintilla* self, QColor* col) {
	self->setCallTipsForegroundColor(*col);
}

void QsciScintilla_setCallTipsHighlightColor(QsciScintilla* self, QColor* col) {
	self->setCallTipsHighlightColor(*col);
}

void QsciScintilla_setCallTipsPosition(QsciScintilla* self, int position) {
	self->setCallTipsPosition(static_cast<QsciScintilla::CallTipsPosition>(position));
}

void QsciScintilla_setCallTipsStyle(QsciScintilla* self, int style) {
	self->setCallTipsStyle(static_cast<QsciScintilla::CallTipsStyle>(style));
}

void QsciScintilla_setCallTipsVisible(QsciScintilla* self, int nr) {
	self->setCallTipsVisible(static_cast<int>(nr));
}

void QsciScintilla_setContractedFolds(QsciScintilla* self, struct miqt_array /* of int */  folds) {
	QList<int> folds_QList;
	folds_QList.reserve(folds.len);
	int* folds_arr = static_cast<int*>(folds.data);
	for(size_t i = 0; i < folds.len; ++i) {
		folds_QList.push_back(static_cast<int>(folds_arr[i]));
	}
	self->setContractedFolds(folds_QList);
}

void QsciScintilla_setDocument(QsciScintilla* self, QsciDocument* document) {
	self->setDocument(*document);
}

void QsciScintilla_addEdgeColumn(QsciScintilla* self, int colnr, QColor* col) {
	self->addEdgeColumn(static_cast<int>(colnr), *col);
}

void QsciScintilla_clearEdgeColumns(QsciScintilla* self) {
	self->clearEdgeColumns();
}

void QsciScintilla_setEdgeColor(QsciScintilla* self, QColor* col) {
	self->setEdgeColor(*col);
}

void QsciScintilla_setEdgeColumn(QsciScintilla* self, int colnr) {
	self->setEdgeColumn(static_cast<int>(colnr));
}

void QsciScintilla_setEdgeMode(QsciScintilla* self, int mode) {
	self->setEdgeMode(static_cast<QsciScintilla::EdgeMode>(mode));
}

void QsciScintilla_setFirstVisibleLine(QsciScintilla* self, int linenr) {
	self->setFirstVisibleLine(static_cast<int>(linenr));
}

void QsciScintilla_setIndicatorDrawUnder(QsciScintilla* self, bool under) {
	self->setIndicatorDrawUnder(under);
}

void QsciScintilla_setIndicatorForegroundColor(QsciScintilla* self, QColor* col) {
	self->setIndicatorForegroundColor(*col);
}

void QsciScintilla_setIndicatorHoverForegroundColor(QsciScintilla* self, QColor* col) {
	self->setIndicatorHoverForegroundColor(*col);
}

void QsciScintilla_setIndicatorHoverStyle(QsciScintilla* self, int style) {
	self->setIndicatorHoverStyle(static_cast<QsciScintilla::IndicatorStyle>(style));
}

void QsciScintilla_setIndicatorOutlineColor(QsciScintilla* self, QColor* col) {
	self->setIndicatorOutlineColor(*col);
}

void QsciScintilla_setMarginBackgroundColor(QsciScintilla* self, int margin, QColor* col) {
	self->setMarginBackgroundColor(static_cast<int>(margin), *col);
}

void QsciScintilla_setMarginOptions(QsciScintilla* self, int options) {
	self->setMarginOptions(static_cast<int>(options));
}

void QsciScintilla_setMarginText(QsciScintilla* self, int line, struct miqt_string text, int style) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setMarginText(static_cast<int>(line), text_QString, static_cast<int>(style));
}

void QsciScintilla_setMarginText2(QsciScintilla* self, int line, struct miqt_string text, QsciStyle* style) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setMarginText(static_cast<int>(line), text_QString, *style);
}

void QsciScintilla_setMarginText3(QsciScintilla* self, int line, QsciStyledText* text) {
	self->setMarginText(static_cast<int>(line), *text);
}

void QsciScintilla_setMarginType(QsciScintilla* self, int margin, int type) {
	self->setMarginType(static_cast<int>(margin), static_cast<QsciScintilla::MarginType>(type));
}

void QsciScintilla_clearMarginText(QsciScintilla* self) {
	self->clearMarginText();
}

void QsciScintilla_setMargins(QsciScintilla* self, int margins) {
	self->setMargins(static_cast<int>(margins));
}

void QsciScintilla_setMarkerBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setMarkerBackgroundColor(*col);
}

void QsciScintilla_setMarkerForegroundColor(QsciScintilla* self, QColor* col) {
	self->setMarkerForegroundColor(*col);
}

void QsciScintilla_setMatchedBraceBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setMatchedBraceBackgroundColor(*col);
}

void QsciScintilla_setMatchedBraceForegroundColor(QsciScintilla* self, QColor* col) {
	self->setMatchedBraceForegroundColor(*col);
}

void QsciScintilla_setMatchedBraceIndicator(QsciScintilla* self, int indicatorNumber) {
	self->setMatchedBraceIndicator(static_cast<int>(indicatorNumber));
}

void QsciScintilla_resetMatchedBraceIndicator(QsciScintilla* self) {
	self->resetMatchedBraceIndicator();
}

void QsciScintilla_setScrollWidth(QsciScintilla* self, int pixelWidth) {
	self->setScrollWidth(static_cast<int>(pixelWidth));
}

void QsciScintilla_setScrollWidthTracking(QsciScintilla* self, bool enabled) {
	self->setScrollWidthTracking(enabled);
}

void QsciScintilla_setTabDrawMode(QsciScintilla* self, int mode) {
	self->setTabDrawMode(static_cast<QsciScintilla::TabDrawMode>(mode));
}

void QsciScintilla_setUnmatchedBraceBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setUnmatchedBraceBackgroundColor(*col);
}

void QsciScintilla_setUnmatchedBraceForegroundColor(QsciScintilla* self, QColor* col) {
	self->setUnmatchedBraceForegroundColor(*col);
}

void QsciScintilla_setUnmatchedBraceIndicator(QsciScintilla* self, int indicatorNumber) {
	self->setUnmatchedBraceIndicator(static_cast<int>(indicatorNumber));
}

void QsciScintilla_resetUnmatchedBraceIndicator(QsciScintilla* self) {
	self->resetUnmatchedBraceIndicator();
}

void QsciScintilla_setWrapVisualFlags(QsciScintilla* self, int endFlag) {
	self->setWrapVisualFlags(static_cast<QsciScintilla::WrapVisualFlag>(endFlag));
}

struct miqt_string QsciScintilla_selectedText(const QsciScintilla* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QsciScintilla_selectionToEol(const QsciScintilla* self) {
	return self->selectionToEol();
}

void QsciScintilla_setHotspotBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setHotspotBackgroundColor(*col);
}

void QsciScintilla_setHotspotForegroundColor(QsciScintilla* self, QColor* col) {
	self->setHotspotForegroundColor(*col);
}

void QsciScintilla_setHotspotUnderline(QsciScintilla* self, bool enable) {
	self->setHotspotUnderline(enable);
}

void QsciScintilla_setHotspotWrap(QsciScintilla* self, bool enable) {
	self->setHotspotWrap(enable);
}

void QsciScintilla_setSelectionToEol(QsciScintilla* self, bool filled) {
	self->setSelectionToEol(filled);
}

void QsciScintilla_setExtraAscent(QsciScintilla* self, int extra) {
	self->setExtraAscent(static_cast<int>(extra));
}

void QsciScintilla_setExtraDescent(QsciScintilla* self, int extra) {
	self->setExtraDescent(static_cast<int>(extra));
}

void QsciScintilla_setOverwriteMode(QsciScintilla* self, bool overwrite) {
	self->setOverwriteMode(overwrite);
}

void QsciScintilla_setWhitespaceBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setWhitespaceBackgroundColor(*col);
}

void QsciScintilla_setWhitespaceForegroundColor(QsciScintilla* self, QColor* col) {
	self->setWhitespaceForegroundColor(*col);
}

void QsciScintilla_setWhitespaceSize(QsciScintilla* self, int size) {
	self->setWhitespaceSize(static_cast<int>(size));
}

void QsciScintilla_setWrapIndentMode(QsciScintilla* self, int mode) {
	self->setWrapIndentMode(static_cast<QsciScintilla::WrapIndentMode>(mode));
}

void QsciScintilla_showUserList(QsciScintilla* self, int id, struct miqt_array /* of struct miqt_string */  list) {
	QStringList list_QList;
	list_QList.reserve(list.len);
	struct miqt_string* list_arr = static_cast<struct miqt_string*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		QString list_arr_i_QString = QString::fromUtf8(list_arr[i].data, list_arr[i].len);
		list_QList.push_back(list_arr_i_QString);
	}
	self->showUserList(static_cast<int>(id), list_QList);
}

QsciCommandSet* QsciScintilla_standardCommands(const QsciScintilla* self) {
	return self->standardCommands();
}

int QsciScintilla_tabDrawMode(const QsciScintilla* self) {
	QsciScintilla::TabDrawMode _ret = self->tabDrawMode();
	return static_cast<int>(_ret);
}

bool QsciScintilla_tabIndents(const QsciScintilla* self) {
	return self->tabIndents();
}

int QsciScintilla_tabWidth(const QsciScintilla* self) {
	return self->tabWidth();
}

struct miqt_string QsciScintilla_text(const QsciScintilla* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciScintilla_textWithLine(const QsciScintilla* self, int line) {
	QString _ret = self->text(static_cast<int>(line));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciScintilla_text2(const QsciScintilla* self, int start, int end) {
	QString _ret = self->text(static_cast<int>(start), static_cast<int>(end));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QsciScintilla_textHeight(const QsciScintilla* self, int linenr) {
	return self->textHeight(static_cast<int>(linenr));
}

int QsciScintilla_whitespaceSize(const QsciScintilla* self) {
	return self->whitespaceSize();
}

int QsciScintilla_whitespaceVisibility(const QsciScintilla* self) {
	QsciScintilla::WhitespaceVisibility _ret = self->whitespaceVisibility();
	return static_cast<int>(_ret);
}

struct miqt_string QsciScintilla_wordAtLineIndex(const QsciScintilla* self, int line, int index) {
	QString _ret = self->wordAtLineIndex(static_cast<int>(line), static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciScintilla_wordAtPoint(const QsciScintilla* self, QPoint* point) {
	QString _ret = self->wordAtPoint(*point);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciScintilla_wordCharacters(const QsciScintilla* self) {
	return (const char*) self->wordCharacters();
}

int QsciScintilla_wrapMode(const QsciScintilla* self) {
	QsciScintilla::WrapMode _ret = self->wrapMode();
	return static_cast<int>(_ret);
}

int QsciScintilla_wrapIndentMode(const QsciScintilla* self) {
	QsciScintilla::WrapIndentMode _ret = self->wrapIndentMode();
	return static_cast<int>(_ret);
}

bool QsciScintilla_write(const QsciScintilla* self, QIODevice* io) {
	return self->write(io);
}

void QsciScintilla_append(QsciScintilla* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->append(text_QString);
}

void QsciScintilla_autoCompleteFromAll(QsciScintilla* self) {
	self->autoCompleteFromAll();
}

void QsciScintilla_autoCompleteFromAPIs(QsciScintilla* self) {
	self->autoCompleteFromAPIs();
}

void QsciScintilla_autoCompleteFromDocument(QsciScintilla* self) {
	self->autoCompleteFromDocument();
}

void QsciScintilla_callTip(QsciScintilla* self) {
	self->callTip();
}

void QsciScintilla_clear(QsciScintilla* self) {
	self->clear();
}

void QsciScintilla_copy(QsciScintilla* self) {
	self->copy();
}

void QsciScintilla_cut(QsciScintilla* self) {
	self->cut();
}

void QsciScintilla_ensureCursorVisible(QsciScintilla* self) {
	self->ensureCursorVisible();
}

void QsciScintilla_ensureLineVisible(QsciScintilla* self, int line) {
	self->ensureLineVisible(static_cast<int>(line));
}

void QsciScintilla_foldAll(QsciScintilla* self, bool children) {
	self->foldAll(children);
}

void QsciScintilla_foldLine(QsciScintilla* self, int line) {
	self->foldLine(static_cast<int>(line));
}

void QsciScintilla_indent(QsciScintilla* self, int line) {
	self->indent(static_cast<int>(line));
}

void QsciScintilla_insert(QsciScintilla* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insert(text_QString);
}

void QsciScintilla_insertAt(QsciScintilla* self, struct miqt_string text, int line, int index) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertAt(text_QString, static_cast<int>(line), static_cast<int>(index));
}

void QsciScintilla_moveToMatchingBrace(QsciScintilla* self) {
	self->moveToMatchingBrace();
}

void QsciScintilla_paste(QsciScintilla* self) {
	self->paste();
}

void QsciScintilla_redo(QsciScintilla* self) {
	self->redo();
}

void QsciScintilla_removeSelectedText(QsciScintilla* self) {
	self->removeSelectedText();
}

void QsciScintilla_replaceSelectedText(QsciScintilla* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->replaceSelectedText(text_QString);
}

void QsciScintilla_resetSelectionBackgroundColor(QsciScintilla* self) {
	self->resetSelectionBackgroundColor();
}

void QsciScintilla_resetSelectionForegroundColor(QsciScintilla* self) {
	self->resetSelectionForegroundColor();
}

void QsciScintilla_selectAll(QsciScintilla* self, bool select) {
	self->selectAll(select);
}

void QsciScintilla_selectToMatchingBrace(QsciScintilla* self) {
	self->selectToMatchingBrace();
}

void QsciScintilla_setAutoCompletionCaseSensitivity(QsciScintilla* self, bool cs) {
	self->setAutoCompletionCaseSensitivity(cs);
}

void QsciScintilla_setAutoCompletionReplaceWord(QsciScintilla* self, bool replace) {
	self->setAutoCompletionReplaceWord(replace);
}

void QsciScintilla_setAutoCompletionShowSingle(QsciScintilla* self, bool single) {
	self->setAutoCompletionShowSingle(single);
}

void QsciScintilla_setAutoCompletionSource(QsciScintilla* self, int source) {
	self->setAutoCompletionSource(static_cast<QsciScintilla::AutoCompletionSource>(source));
}

void QsciScintilla_setAutoCompletionThreshold(QsciScintilla* self, int thresh) {
	self->setAutoCompletionThreshold(static_cast<int>(thresh));
}

void QsciScintilla_setAutoCompletionUseSingle(QsciScintilla* self, int single) {
	self->setAutoCompletionUseSingle(static_cast<QsciScintilla::AutoCompletionUseSingle>(single));
}

void QsciScintilla_setAutoIndent(QsciScintilla* self, bool autoindent) {
	self->setAutoIndent(autoindent);
}

void QsciScintilla_setBraceMatching(QsciScintilla* self, int bm) {
	self->setBraceMatching(static_cast<QsciScintilla::BraceMatch>(bm));
}

void QsciScintilla_setBackspaceUnindents(QsciScintilla* self, bool unindent) {
	self->setBackspaceUnindents(unindent);
}

void QsciScintilla_setCaretForegroundColor(QsciScintilla* self, QColor* col) {
	self->setCaretForegroundColor(*col);
}

void QsciScintilla_setCaretLineBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setCaretLineBackgroundColor(*col);
}

void QsciScintilla_setCaretLineFrameWidth(QsciScintilla* self, int width) {
	self->setCaretLineFrameWidth(static_cast<int>(width));
}

void QsciScintilla_setCaretLineVisible(QsciScintilla* self, bool enable) {
	self->setCaretLineVisible(enable);
}

void QsciScintilla_setCaretWidth(QsciScintilla* self, int width) {
	self->setCaretWidth(static_cast<int>(width));
}

void QsciScintilla_setColor(QsciScintilla* self, QColor* c) {
	self->setColor(*c);
}

void QsciScintilla_setCursorPosition(QsciScintilla* self, int line, int index) {
	self->setCursorPosition(static_cast<int>(line), static_cast<int>(index));
}

void QsciScintilla_setEolMode(QsciScintilla* self, int mode) {
	self->setEolMode(static_cast<QsciScintilla::EolMode>(mode));
}

void QsciScintilla_setEolVisibility(QsciScintilla* self, bool visible) {
	self->setEolVisibility(visible);
}

void QsciScintilla_setFolding(QsciScintilla* self, int fold, int margin) {
	self->setFolding(static_cast<QsciScintilla::FoldStyle>(fold), static_cast<int>(margin));
}

void QsciScintilla_setIndentation(QsciScintilla* self, int line, int indentation) {
	self->setIndentation(static_cast<int>(line), static_cast<int>(indentation));
}

void QsciScintilla_setIndentationGuides(QsciScintilla* self, bool enable) {
	self->setIndentationGuides(enable);
}

void QsciScintilla_setIndentationGuidesBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setIndentationGuidesBackgroundColor(*col);
}

void QsciScintilla_setIndentationGuidesForegroundColor(QsciScintilla* self, QColor* col) {
	self->setIndentationGuidesForegroundColor(*col);
}

void QsciScintilla_setIndentationsUseTabs(QsciScintilla* self, bool tabs) {
	self->setIndentationsUseTabs(tabs);
}

void QsciScintilla_setIndentationWidth(QsciScintilla* self, int width) {
	self->setIndentationWidth(static_cast<int>(width));
}

void QsciScintilla_setLexer(QsciScintilla* self, QsciLexer* lexer) {
	self->setLexer(lexer);
}

void QsciScintilla_setMarginsBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setMarginsBackgroundColor(*col);
}

void QsciScintilla_setMarginsFont(QsciScintilla* self, QFont* f) {
	self->setMarginsFont(*f);
}

void QsciScintilla_setMarginsForegroundColor(QsciScintilla* self, QColor* col) {
	self->setMarginsForegroundColor(*col);
}

void QsciScintilla_setMarginLineNumbers(QsciScintilla* self, int margin, bool lnrs) {
	self->setMarginLineNumbers(static_cast<int>(margin), lnrs);
}

void QsciScintilla_setMarginMarkerMask(QsciScintilla* self, int margin, int mask) {
	self->setMarginMarkerMask(static_cast<int>(margin), static_cast<int>(mask));
}

void QsciScintilla_setMarginSensitivity(QsciScintilla* self, int margin, bool sens) {
	self->setMarginSensitivity(static_cast<int>(margin), sens);
}

void QsciScintilla_setMarginWidth(QsciScintilla* self, int margin, int width) {
	self->setMarginWidth(static_cast<int>(margin), static_cast<int>(width));
}

void QsciScintilla_setMarginWidth2(QsciScintilla* self, int margin, struct miqt_string s) {
	QString s_QString = QString::fromUtf8(s.data, s.len);
	self->setMarginWidth(static_cast<int>(margin), s_QString);
}

void QsciScintilla_setModified(QsciScintilla* self, bool m) {
	self->setModified(m);
}

void QsciScintilla_setPaper(QsciScintilla* self, QColor* c) {
	self->setPaper(*c);
}

void QsciScintilla_setReadOnly(QsciScintilla* self, bool ro) {
	self->setReadOnly(ro);
}

void QsciScintilla_setSelection(QsciScintilla* self, int lineFrom, int indexFrom, int lineTo, int indexTo) {
	self->setSelection(static_cast<int>(lineFrom), static_cast<int>(indexFrom), static_cast<int>(lineTo), static_cast<int>(indexTo));
}

void QsciScintilla_setSelectionBackgroundColor(QsciScintilla* self, QColor* col) {
	self->setSelectionBackgroundColor(*col);
}

void QsciScintilla_setSelectionForegroundColor(QsciScintilla* self, QColor* col) {
	self->setSelectionForegroundColor(*col);
}

void QsciScintilla_setTabIndents(QsciScintilla* self, bool indent) {
	self->setTabIndents(indent);
}

void QsciScintilla_setTabWidth(QsciScintilla* self, int width) {
	self->setTabWidth(static_cast<int>(width));
}

void QsciScintilla_setText(QsciScintilla* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

void QsciScintilla_setUtf8(QsciScintilla* self, bool cp) {
	self->setUtf8(cp);
}

void QsciScintilla_setWhitespaceVisibility(QsciScintilla* self, int mode) {
	self->setWhitespaceVisibility(static_cast<QsciScintilla::WhitespaceVisibility>(mode));
}

void QsciScintilla_setWrapMode(QsciScintilla* self, int mode) {
	self->setWrapMode(static_cast<QsciScintilla::WrapMode>(mode));
}

void QsciScintilla_undo(QsciScintilla* self) {
	self->undo();
}

void QsciScintilla_unindent(QsciScintilla* self, int line) {
	self->unindent(static_cast<int>(line));
}

void QsciScintilla_zoomIn(QsciScintilla* self, int range) {
	self->zoomIn(static_cast<int>(range));
}

void QsciScintilla_zoomIn2(QsciScintilla* self) {
	self->zoomIn();
}

void QsciScintilla_zoomOut(QsciScintilla* self, int range) {
	self->zoomOut(static_cast<int>(range));
}

void QsciScintilla_zoomOut2(QsciScintilla* self) {
	self->zoomOut();
}

void QsciScintilla_zoomTo(QsciScintilla* self, int size) {
	self->zoomTo(static_cast<int>(size));
}

void QsciScintilla_cursorPositionChanged(QsciScintilla* self, int line, int index) {
	self->cursorPositionChanged(static_cast<int>(line), static_cast<int>(index));
}

void QsciScintilla_connect_cursorPositionChanged(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(int, int)>(&QsciScintilla::cursorPositionChanged), self, [=](int line, int index) {
		int sigval1 = line;
		int sigval2 = index;
		miqt_exec_callback_QsciScintilla_cursorPositionChanged(slot, sigval1, sigval2);
	});
}

void QsciScintilla_copyAvailable(QsciScintilla* self, bool yes) {
	self->copyAvailable(yes);
}

void QsciScintilla_connect_copyAvailable(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(bool)>(&QsciScintilla::copyAvailable), self, [=](bool yes) {
		bool sigval1 = yes;
		miqt_exec_callback_QsciScintilla_copyAvailable(slot, sigval1);
	});
}

void QsciScintilla_indicatorClicked(QsciScintilla* self, int line, int index, int state) {
	self->indicatorClicked(static_cast<int>(line), static_cast<int>(index), static_cast<Qt::KeyboardModifiers>(state));
}

void QsciScintilla_connect_indicatorClicked(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(int, int, Qt::KeyboardModifiers)>(&QsciScintilla::indicatorClicked), self, [=](int line, int index, Qt::KeyboardModifiers state) {
		int sigval1 = line;
		int sigval2 = index;
		Qt::KeyboardModifiers state_ret = state;
		int sigval3 = static_cast<int>(state_ret);
		miqt_exec_callback_QsciScintilla_indicatorClicked(slot, sigval1, sigval2, sigval3);
	});
}

void QsciScintilla_indicatorReleased(QsciScintilla* self, int line, int index, int state) {
	self->indicatorReleased(static_cast<int>(line), static_cast<int>(index), static_cast<Qt::KeyboardModifiers>(state));
}

void QsciScintilla_connect_indicatorReleased(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(int, int, Qt::KeyboardModifiers)>(&QsciScintilla::indicatorReleased), self, [=](int line, int index, Qt::KeyboardModifiers state) {
		int sigval1 = line;
		int sigval2 = index;
		Qt::KeyboardModifiers state_ret = state;
		int sigval3 = static_cast<int>(state_ret);
		miqt_exec_callback_QsciScintilla_indicatorReleased(slot, sigval1, sigval2, sigval3);
	});
}

void QsciScintilla_linesChanged(QsciScintilla* self) {
	self->linesChanged();
}

void QsciScintilla_connect_linesChanged(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)()>(&QsciScintilla::linesChanged), self, [=]() {
		miqt_exec_callback_QsciScintilla_linesChanged(slot);
	});
}

void QsciScintilla_marginClicked(QsciScintilla* self, int margin, int line, int state) {
	self->marginClicked(static_cast<int>(margin), static_cast<int>(line), static_cast<Qt::KeyboardModifiers>(state));
}

void QsciScintilla_connect_marginClicked(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(int, int, Qt::KeyboardModifiers)>(&QsciScintilla::marginClicked), self, [=](int margin, int line, Qt::KeyboardModifiers state) {
		int sigval1 = margin;
		int sigval2 = line;
		Qt::KeyboardModifiers state_ret = state;
		int sigval3 = static_cast<int>(state_ret);
		miqt_exec_callback_QsciScintilla_marginClicked(slot, sigval1, sigval2, sigval3);
	});
}

void QsciScintilla_marginRightClicked(QsciScintilla* self, int margin, int line, int state) {
	self->marginRightClicked(static_cast<int>(margin), static_cast<int>(line), static_cast<Qt::KeyboardModifiers>(state));
}

void QsciScintilla_connect_marginRightClicked(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(int, int, Qt::KeyboardModifiers)>(&QsciScintilla::marginRightClicked), self, [=](int margin, int line, Qt::KeyboardModifiers state) {
		int sigval1 = margin;
		int sigval2 = line;
		Qt::KeyboardModifiers state_ret = state;
		int sigval3 = static_cast<int>(state_ret);
		miqt_exec_callback_QsciScintilla_marginRightClicked(slot, sigval1, sigval2, sigval3);
	});
}

void QsciScintilla_modificationAttempted(QsciScintilla* self) {
	self->modificationAttempted();
}

void QsciScintilla_connect_modificationAttempted(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)()>(&QsciScintilla::modificationAttempted), self, [=]() {
		miqt_exec_callback_QsciScintilla_modificationAttempted(slot);
	});
}

void QsciScintilla_modificationChanged(QsciScintilla* self, bool m) {
	self->modificationChanged(m);
}

void QsciScintilla_connect_modificationChanged(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(bool)>(&QsciScintilla::modificationChanged), self, [=](bool m) {
		bool sigval1 = m;
		miqt_exec_callback_QsciScintilla_modificationChanged(slot, sigval1);
	});
}

void QsciScintilla_selectionChanged(QsciScintilla* self) {
	self->selectionChanged();
}

void QsciScintilla_connect_selectionChanged(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)()>(&QsciScintilla::selectionChanged), self, [=]() {
		miqt_exec_callback_QsciScintilla_selectionChanged(slot);
	});
}

void QsciScintilla_textChanged(QsciScintilla* self) {
	self->textChanged();
}

void QsciScintilla_connect_textChanged(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)()>(&QsciScintilla::textChanged), self, [=]() {
		miqt_exec_callback_QsciScintilla_textChanged(slot);
	});
}

void QsciScintilla_userListActivated(QsciScintilla* self, int id, struct miqt_string string) {
	QString string_QString = QString::fromUtf8(string.data, string.len);
	self->userListActivated(static_cast<int>(id), string_QString);
}

void QsciScintilla_connect_userListActivated(QsciScintilla* self, intptr_t slot) {
	MiqtVirtualQsciScintilla::connect(self, static_cast<void (QsciScintilla::*)(int, const QString&)>(&QsciScintilla::userListActivated), self, [=](int id, const QString& string) {
		int sigval1 = id;
		const QString string_ret = string;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray string_b = string_ret.toUtf8();
		struct miqt_string string_ms;
		string_ms.len = string_b.length();
		string_ms.data = static_cast<char*>(malloc(string_ms.len));
		memcpy(string_ms.data, string_b.data(), string_ms.len);
		struct miqt_string sigval2 = string_ms;
		miqt_exec_callback_QsciScintilla_userListActivated(slot, sigval1, sigval2);
	});
}

struct miqt_string QsciScintilla_tr2(const char* s, const char* c) {
	QString _ret = QsciScintilla::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciScintilla_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciScintilla::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciScintilla_trUtf82(const char* s, const char* c) {
	QString _ret = QsciScintilla::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciScintilla_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QsciScintilla::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciScintilla_clearAnnotations1(QsciScintilla* self, int line) {
	self->clearAnnotations(static_cast<int>(line));
}

int QsciScintilla_indicatorDefine2(QsciScintilla* self, int style, int indicatorNumber) {
	return self->indicatorDefine(static_cast<QsciScintilla::IndicatorStyle>(style), static_cast<int>(indicatorNumber));
}

int QsciScintilla_markerDefine2(QsciScintilla* self, int sym, int markerNumber) {
	return self->markerDefine(static_cast<QsciScintilla::MarkerSymbol>(sym), static_cast<int>(markerNumber));
}

int QsciScintilla_markerDefine22(QsciScintilla* self, char ch, int markerNumber) {
	return self->markerDefine(static_cast<char>(ch), static_cast<int>(markerNumber));
}

int QsciScintilla_markerDefine23(QsciScintilla* self, QPixmap* pm, int markerNumber) {
	return self->markerDefine(*pm, static_cast<int>(markerNumber));
}

int QsciScintilla_markerDefine24(QsciScintilla* self, QImage* im, int markerNumber) {
	return self->markerDefine(*im, static_cast<int>(markerNumber));
}

void QsciScintilla_markerDelete2(QsciScintilla* self, int linenr, int markerNumber) {
	self->markerDelete(static_cast<int>(linenr), static_cast<int>(markerNumber));
}

void QsciScintilla_markerDeleteAll1(QsciScintilla* self, int markerNumber) {
	self->markerDeleteAll(static_cast<int>(markerNumber));
}

void QsciScintilla_setIndicatorDrawUnder2(QsciScintilla* self, bool under, int indicatorNumber) {
	self->setIndicatorDrawUnder(under, static_cast<int>(indicatorNumber));
}

void QsciScintilla_setIndicatorForegroundColor2(QsciScintilla* self, QColor* col, int indicatorNumber) {
	self->setIndicatorForegroundColor(*col, static_cast<int>(indicatorNumber));
}

void QsciScintilla_setIndicatorHoverForegroundColor2(QsciScintilla* self, QColor* col, int indicatorNumber) {
	self->setIndicatorHoverForegroundColor(*col, static_cast<int>(indicatorNumber));
}

void QsciScintilla_setIndicatorHoverStyle2(QsciScintilla* self, int style, int indicatorNumber) {
	self->setIndicatorHoverStyle(static_cast<QsciScintilla::IndicatorStyle>(style), static_cast<int>(indicatorNumber));
}

void QsciScintilla_setIndicatorOutlineColor2(QsciScintilla* self, QColor* col, int indicatorNumber) {
	self->setIndicatorOutlineColor(*col, static_cast<int>(indicatorNumber));
}

void QsciScintilla_clearMarginText1(QsciScintilla* self, int line) {
	self->clearMarginText(static_cast<int>(line));
}

void QsciScintilla_setMarkerBackgroundColor2(QsciScintilla* self, QColor* col, int markerNumber) {
	self->setMarkerBackgroundColor(*col, static_cast<int>(markerNumber));
}

void QsciScintilla_setMarkerForegroundColor2(QsciScintilla* self, QColor* col, int markerNumber) {
	self->setMarkerForegroundColor(*col, static_cast<int>(markerNumber));
}

void QsciScintilla_setWrapVisualFlags2(QsciScintilla* self, int endFlag, int startFlag) {
	self->setWrapVisualFlags(static_cast<QsciScintilla::WrapVisualFlag>(endFlag), static_cast<QsciScintilla::WrapVisualFlag>(startFlag));
}

void QsciScintilla_setWrapVisualFlags3(QsciScintilla* self, int endFlag, int startFlag, int indent) {
	self->setWrapVisualFlags(static_cast<QsciScintilla::WrapVisualFlag>(endFlag), static_cast<QsciScintilla::WrapVisualFlag>(startFlag), static_cast<int>(indent));
}

QMetaObject* QsciScintilla_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_metaObject();
}

void* QsciScintilla_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_metacast(param1);
}

int QsciScintilla_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_metacall(param1, param2, param3);
}

struct miqt_array /* of struct miqt_string */  QsciScintilla_virtualbase_apiContext(void* self, int pos, int* context_start, int* last_word_start) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_apiContext(pos, context_start, last_word_start);
}

bool QsciScintilla_virtualbase_findFirst(void* self, struct miqt_string expr, bool re, bool cs, bool wo, bool wrap, bool forward, int line, int index, bool show, bool posix, bool cxx11) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_findFirst(expr, re, cs, wo, wrap, forward, line, index, show, posix, cxx11);
}

bool QsciScintilla_virtualbase_findFirstInSelection(void* self, struct miqt_string expr, bool re, bool cs, bool wo, bool forward, bool show, bool posix, bool cxx11) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_findFirstInSelection(expr, re, cs, wo, forward, show, posix, cxx11);
}

bool QsciScintilla_virtualbase_findNext(void* self) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_findNext();
}

void QsciScintilla_virtualbase_recolor(void* self, int start, int end) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_recolor(start, end);
}

void QsciScintilla_virtualbase_replace(void* self, struct miqt_string replaceStr) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_replace(replaceStr);
}

void QsciScintilla_virtualbase_append(void* self, struct miqt_string text) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_append(text);
}

void QsciScintilla_virtualbase_autoCompleteFromAll(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_autoCompleteFromAll();
}

void QsciScintilla_virtualbase_autoCompleteFromAPIs(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_autoCompleteFromAPIs();
}

void QsciScintilla_virtualbase_autoCompleteFromDocument(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_autoCompleteFromDocument();
}

void QsciScintilla_virtualbase_callTip(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_callTip();
}

void QsciScintilla_virtualbase_clear(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_clear();
}

void QsciScintilla_virtualbase_copy(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_copy();
}

void QsciScintilla_virtualbase_cut(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_cut();
}

void QsciScintilla_virtualbase_ensureCursorVisible(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_ensureCursorVisible();
}

void QsciScintilla_virtualbase_ensureLineVisible(void* self, int line) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_ensureLineVisible(line);
}

void QsciScintilla_virtualbase_foldAll(void* self, bool children) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_foldAll(children);
}

void QsciScintilla_virtualbase_foldLine(void* self, int line) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_foldLine(line);
}

void QsciScintilla_virtualbase_indent(void* self, int line) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_indent(line);
}

void QsciScintilla_virtualbase_insert(void* self, struct miqt_string text) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_insert(text);
}

void QsciScintilla_virtualbase_insertAt(void* self, struct miqt_string text, int line, int index) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_insertAt(text, line, index);
}

void QsciScintilla_virtualbase_moveToMatchingBrace(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_moveToMatchingBrace();
}

void QsciScintilla_virtualbase_paste(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_paste();
}

void QsciScintilla_virtualbase_redo(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_redo();
}

void QsciScintilla_virtualbase_removeSelectedText(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_removeSelectedText();
}

void QsciScintilla_virtualbase_replaceSelectedText(void* self, struct miqt_string text) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_replaceSelectedText(text);
}

void QsciScintilla_virtualbase_resetSelectionBackgroundColor(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_resetSelectionBackgroundColor();
}

void QsciScintilla_virtualbase_resetSelectionForegroundColor(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_resetSelectionForegroundColor();
}

void QsciScintilla_virtualbase_selectAll(void* self, bool select) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_selectAll(select);
}

void QsciScintilla_virtualbase_selectToMatchingBrace(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_selectToMatchingBrace();
}

void QsciScintilla_virtualbase_setAutoCompletionCaseSensitivity(void* self, bool cs) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setAutoCompletionCaseSensitivity(cs);
}

void QsciScintilla_virtualbase_setAutoCompletionReplaceWord(void* self, bool replace) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setAutoCompletionReplaceWord(replace);
}

void QsciScintilla_virtualbase_setAutoCompletionShowSingle(void* self, bool single) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setAutoCompletionShowSingle(single);
}

void QsciScintilla_virtualbase_setAutoCompletionSource(void* self, int source) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setAutoCompletionSource(source);
}

void QsciScintilla_virtualbase_setAutoCompletionThreshold(void* self, int thresh) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setAutoCompletionThreshold(thresh);
}

void QsciScintilla_virtualbase_setAutoCompletionUseSingle(void* self, int single) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setAutoCompletionUseSingle(single);
}

void QsciScintilla_virtualbase_setAutoIndent(void* self, bool autoindent) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setAutoIndent(autoindent);
}

void QsciScintilla_virtualbase_setBraceMatching(void* self, int bm) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setBraceMatching(bm);
}

void QsciScintilla_virtualbase_setBackspaceUnindents(void* self, bool unindent) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setBackspaceUnindents(unindent);
}

void QsciScintilla_virtualbase_setCaretForegroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setCaretForegroundColor(col);
}

void QsciScintilla_virtualbase_setCaretLineBackgroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setCaretLineBackgroundColor(col);
}

void QsciScintilla_virtualbase_setCaretLineFrameWidth(void* self, int width) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setCaretLineFrameWidth(width);
}

void QsciScintilla_virtualbase_setCaretLineVisible(void* self, bool enable) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setCaretLineVisible(enable);
}

void QsciScintilla_virtualbase_setCaretWidth(void* self, int width) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setCaretWidth(width);
}

void QsciScintilla_virtualbase_setColor(void* self, QColor* c) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setColor(c);
}

void QsciScintilla_virtualbase_setCursorPosition(void* self, int line, int index) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setCursorPosition(line, index);
}

void QsciScintilla_virtualbase_setEolMode(void* self, int mode) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setEolMode(mode);
}

void QsciScintilla_virtualbase_setEolVisibility(void* self, bool visible) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setEolVisibility(visible);
}

void QsciScintilla_virtualbase_setFolding(void* self, int fold, int margin) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setFolding(fold, margin);
}

void QsciScintilla_virtualbase_setIndentation(void* self, int line, int indentation) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setIndentation(line, indentation);
}

void QsciScintilla_virtualbase_setIndentationGuides(void* self, bool enable) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setIndentationGuides(enable);
}

void QsciScintilla_virtualbase_setIndentationGuidesBackgroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setIndentationGuidesBackgroundColor(col);
}

void QsciScintilla_virtualbase_setIndentationGuidesForegroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setIndentationGuidesForegroundColor(col);
}

void QsciScintilla_virtualbase_setIndentationsUseTabs(void* self, bool tabs) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setIndentationsUseTabs(tabs);
}

void QsciScintilla_virtualbase_setIndentationWidth(void* self, int width) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setIndentationWidth(width);
}

void QsciScintilla_virtualbase_setLexer(void* self, QsciLexer* lexer) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setLexer(lexer);
}

void QsciScintilla_virtualbase_setMarginsBackgroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginsBackgroundColor(col);
}

void QsciScintilla_virtualbase_setMarginsFont(void* self, QFont* f) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginsFont(f);
}

void QsciScintilla_virtualbase_setMarginsForegroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginsForegroundColor(col);
}

void QsciScintilla_virtualbase_setMarginLineNumbers(void* self, int margin, bool lnrs) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginLineNumbers(margin, lnrs);
}

void QsciScintilla_virtualbase_setMarginMarkerMask(void* self, int margin, int mask) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginMarkerMask(margin, mask);
}

void QsciScintilla_virtualbase_setMarginSensitivity(void* self, int margin, bool sens) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginSensitivity(margin, sens);
}

void QsciScintilla_virtualbase_setMarginWidth(void* self, int margin, int width) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginWidth(margin, width);
}

void QsciScintilla_virtualbase_setMarginWidth2(void* self, int margin, struct miqt_string s) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setMarginWidth2(margin, s);
}

void QsciScintilla_virtualbase_setModified(void* self, bool m) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setModified(m);
}

void QsciScintilla_virtualbase_setPaper(void* self, QColor* c) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setPaper(c);
}

void QsciScintilla_virtualbase_setReadOnly(void* self, bool ro) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setReadOnly(ro);
}

void QsciScintilla_virtualbase_setSelection(void* self, int lineFrom, int indexFrom, int lineTo, int indexTo) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setSelection(lineFrom, indexFrom, lineTo, indexTo);
}

void QsciScintilla_virtualbase_setSelectionBackgroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setSelectionBackgroundColor(col);
}

void QsciScintilla_virtualbase_setSelectionForegroundColor(void* self, QColor* col) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setSelectionForegroundColor(col);
}

void QsciScintilla_virtualbase_setTabIndents(void* self, bool indent) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setTabIndents(indent);
}

void QsciScintilla_virtualbase_setTabWidth(void* self, int width) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setTabWidth(width);
}

void QsciScintilla_virtualbase_setText(void* self, struct miqt_string text) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setText(text);
}

void QsciScintilla_virtualbase_setUtf8(void* self, bool cp) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setUtf8(cp);
}

void QsciScintilla_virtualbase_setWhitespaceVisibility(void* self, int mode) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setWhitespaceVisibility(mode);
}

void QsciScintilla_virtualbase_setWrapMode(void* self, int mode) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setWrapMode(mode);
}

void QsciScintilla_virtualbase_undo(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_undo();
}

void QsciScintilla_virtualbase_unindent(void* self, int line) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_unindent(line);
}

void QsciScintilla_virtualbase_zoomIn(void* self, int range) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_zoomIn(range);
}

void QsciScintilla_virtualbase_zoomIn2(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_zoomIn2();
}

void QsciScintilla_virtualbase_zoomOut(void* self, int range) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_zoomOut(range);
}

void QsciScintilla_virtualbase_zoomOut2(void* self) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_zoomOut2();
}

void QsciScintilla_virtualbase_zoomTo(void* self, int size) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_zoomTo(size);
}

bool QsciScintilla_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_event(e);
}

void QsciScintilla_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_changeEvent(e);
}

void QsciScintilla_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_contextMenuEvent(e);
}

void QsciScintilla_virtualbase_wheelEvent(void* self, QWheelEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_wheelEvent(e);
}

bool QsciScintilla_virtualbase_canInsertFromMimeData(const void* self, QMimeData* source) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_canInsertFromMimeData(source);
}

struct miqt_string QsciScintilla_virtualbase_fromMimeData(const void* self, QMimeData* source, bool* rectangular) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_fromMimeData(source, rectangular);
}

QMimeData* QsciScintilla_virtualbase_toMimeData(const void* self, struct miqt_string text, bool rectangular) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_toMimeData(text, rectangular);
}

void QsciScintilla_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_dragEnterEvent(e);
}

void QsciScintilla_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_dragLeaveEvent(e);
}

void QsciScintilla_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_dragMoveEvent(e);
}

void QsciScintilla_virtualbase_dropEvent(void* self, QDropEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_dropEvent(e);
}

void QsciScintilla_virtualbase_focusInEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_focusInEvent(e);
}

void QsciScintilla_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_focusOutEvent(e);
}

bool QsciScintilla_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QsciScintilla_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_keyPressEvent(e);
}

void QsciScintilla_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_inputMethodEvent(event);
}

QVariant* QsciScintilla_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_inputMethodQuery(query);
}

void QsciScintilla_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_mouseDoubleClickEvent(e);
}

void QsciScintilla_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_mouseMoveEvent(e);
}

void QsciScintilla_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_mousePressEvent(e);
}

void QsciScintilla_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_mouseReleaseEvent(e);
}

void QsciScintilla_virtualbase_paintEvent(void* self, QPaintEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_paintEvent(e);
}

void QsciScintilla_virtualbase_resizeEvent(void* self, QResizeEvent* e) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_resizeEvent(e);
}

void QsciScintilla_virtualbase_scrollContentsBy(void* self, int dx, int dy) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_scrollContentsBy(dx, dy);
}

QSize* QsciScintilla_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_minimumSizeHint();
}

QSize* QsciScintilla_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_sizeHint();
}

void QsciScintilla_virtualbase_setupViewport(void* self, QWidget* viewport) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setupViewport(viewport);
}

bool QsciScintilla_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_eventFilter(param1, param2);
}

bool QsciScintilla_virtualbase_viewportEvent(void* self, QEvent* param1) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_viewportEvent(param1);
}

QSize* QsciScintilla_virtualbase_viewportSizeHint(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_viewportSizeHint();
}

int QsciScintilla_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_devType();
}

void QsciScintilla_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_setVisible(visible);
}

int QsciScintilla_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_heightForWidth(param1);
}

bool QsciScintilla_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QsciScintilla_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_paintEngine();
}

void QsciScintilla_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QsciScintilla_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_enterEvent(event);
}

void QsciScintilla_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_leaveEvent(event);
}

void QsciScintilla_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_moveEvent(event);
}

void QsciScintilla_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_closeEvent(event);
}

void QsciScintilla_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_tabletEvent(event);
}

void QsciScintilla_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_actionEvent(event);
}

void QsciScintilla_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_showEvent(event);
}

void QsciScintilla_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_hideEvent(event);
}

bool QsciScintilla_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QsciScintilla_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_metric(param1);
}

void QsciScintilla_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QsciScintilla_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_redirected(offset);
}

QPainter* QsciScintilla_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQsciScintilla*)(self) )->virtualbase_sharedPainter();
}

void QsciScintilla_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_timerEvent(event);
}

void QsciScintilla_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_childEvent(event);
}

void QsciScintilla_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_customEvent(event);
}

void QsciScintilla_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_connectNotify(signal);
}

void QsciScintilla_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciScintilla*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QsciScintilla_staticMetaObject() { return &QsciScintilla::staticMetaObject; }
void QsciScintilla_delete(QsciScintilla* self) {
	delete self;
}

