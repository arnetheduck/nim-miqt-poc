#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QFont>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSettings>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qscilexerhtml.h>
#include "gen_qscilexerhtml.h"

#ifdef __cplusplus
extern "C" {
#endif

int miqt_exec_callback_QsciLexerHTML_metacall(QsciLexerHTML*, intptr_t, int, int, void**);
void miqt_exec_callback_QsciLexerHTML_setFoldCompact(QsciLexerHTML*, intptr_t, bool);
void miqt_exec_callback_QsciLexerHTML_setFoldPreprocessor(QsciLexerHTML*, intptr_t, bool);
void miqt_exec_callback_QsciLexerHTML_setCaseSensitiveTags(QsciLexerHTML*, intptr_t, bool);
const char* miqt_exec_callback_QsciLexerHTML_language(const QsciLexerHTML*, intptr_t);
const char* miqt_exec_callback_QsciLexerHTML_lexer(const QsciLexerHTML*, intptr_t);
int miqt_exec_callback_QsciLexerHTML_lexerId(const QsciLexerHTML*, intptr_t);
const char* miqt_exec_callback_QsciLexerHTML_autoCompletionFillups(const QsciLexerHTML*, intptr_t);
struct miqt_array /* of struct miqt_string */  miqt_exec_callback_QsciLexerHTML_autoCompletionWordSeparators(const QsciLexerHTML*, intptr_t);
const char* miqt_exec_callback_QsciLexerHTML_blockEnd(const QsciLexerHTML*, intptr_t, int*);
int miqt_exec_callback_QsciLexerHTML_blockLookback(const QsciLexerHTML*, intptr_t);
const char* miqt_exec_callback_QsciLexerHTML_blockStart(const QsciLexerHTML*, intptr_t, int*);
const char* miqt_exec_callback_QsciLexerHTML_blockStartKeyword(const QsciLexerHTML*, intptr_t, int*);
int miqt_exec_callback_QsciLexerHTML_braceStyle(const QsciLexerHTML*, intptr_t);
bool miqt_exec_callback_QsciLexerHTML_caseSensitive(const QsciLexerHTML*, intptr_t);
QColor* miqt_exec_callback_QsciLexerHTML_color(const QsciLexerHTML*, intptr_t, int);
bool miqt_exec_callback_QsciLexerHTML_eolFill(const QsciLexerHTML*, intptr_t, int);
QFont* miqt_exec_callback_QsciLexerHTML_font(const QsciLexerHTML*, intptr_t, int);
int miqt_exec_callback_QsciLexerHTML_indentationGuideView(const QsciLexerHTML*, intptr_t);
const char* miqt_exec_callback_QsciLexerHTML_keywords(const QsciLexerHTML*, intptr_t, int);
int miqt_exec_callback_QsciLexerHTML_defaultStyle(const QsciLexerHTML*, intptr_t);
struct miqt_string miqt_exec_callback_QsciLexerHTML_description(const QsciLexerHTML*, intptr_t, int);
QColor* miqt_exec_callback_QsciLexerHTML_paper(const QsciLexerHTML*, intptr_t, int);
QColor* miqt_exec_callback_QsciLexerHTML_defaultColorWithStyle(const QsciLexerHTML*, intptr_t, int);
bool miqt_exec_callback_QsciLexerHTML_defaultEolFill(const QsciLexerHTML*, intptr_t, int);
QFont* miqt_exec_callback_QsciLexerHTML_defaultFontWithStyle(const QsciLexerHTML*, intptr_t, int);
QColor* miqt_exec_callback_QsciLexerHTML_defaultPaperWithStyle(const QsciLexerHTML*, intptr_t, int);
void miqt_exec_callback_QsciLexerHTML_setEditor(QsciLexerHTML*, intptr_t, QsciScintilla*);
void miqt_exec_callback_QsciLexerHTML_refreshProperties(QsciLexerHTML*, intptr_t);
int miqt_exec_callback_QsciLexerHTML_styleBitsNeeded(const QsciLexerHTML*, intptr_t);
const char* miqt_exec_callback_QsciLexerHTML_wordCharacters(const QsciLexerHTML*, intptr_t);
void miqt_exec_callback_QsciLexerHTML_setAutoIndentStyle(QsciLexerHTML*, intptr_t, int);
void miqt_exec_callback_QsciLexerHTML_setColor(QsciLexerHTML*, intptr_t, QColor*, int);
void miqt_exec_callback_QsciLexerHTML_setEolFill(QsciLexerHTML*, intptr_t, bool, int);
void miqt_exec_callback_QsciLexerHTML_setFont(QsciLexerHTML*, intptr_t, QFont*, int);
void miqt_exec_callback_QsciLexerHTML_setPaper(QsciLexerHTML*, intptr_t, QColor*, int);
bool miqt_exec_callback_QsciLexerHTML_readProperties(QsciLexerHTML*, intptr_t, QSettings*, struct miqt_string);
bool miqt_exec_callback_QsciLexerHTML_writeProperties(const QsciLexerHTML*, intptr_t, QSettings*, struct miqt_string);
bool miqt_exec_callback_QsciLexerHTML_event(QsciLexerHTML*, intptr_t, QEvent*);
bool miqt_exec_callback_QsciLexerHTML_eventFilter(QsciLexerHTML*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QsciLexerHTML_timerEvent(QsciLexerHTML*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QsciLexerHTML_childEvent(QsciLexerHTML*, intptr_t, QChildEvent*);
void miqt_exec_callback_QsciLexerHTML_customEvent(QsciLexerHTML*, intptr_t, QEvent*);
void miqt_exec_callback_QsciLexerHTML_connectNotify(QsciLexerHTML*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QsciLexerHTML_disconnectNotify(QsciLexerHTML*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexerHTML final : public QsciLexerHTML {
public:

	MiqtVirtualQsciLexerHTML(): QsciLexerHTML() {};
	MiqtVirtualQsciLexerHTML(QObject* parent): QsciLexerHTML(parent) {};

	virtual ~MiqtVirtualQsciLexerHTML() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QsciLexerHTML::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QsciLexerHTML_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QsciLexerHTML::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setFoldCompact = 0;

	// Subclass to allow providing a Go implementation
	virtual void setFoldCompact(bool fold) override {
		if (handle__setFoldCompact == 0) {
			QsciLexerHTML::setFoldCompact(fold);
			return;
		}
		
		bool sigval1 = fold;

		miqt_exec_callback_QsciLexerHTML_setFoldCompact(this, handle__setFoldCompact, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldCompact(bool fold) {

		QsciLexerHTML::setFoldCompact(fold);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setFoldPreprocessor = 0;

	// Subclass to allow providing a Go implementation
	virtual void setFoldPreprocessor(bool fold) override {
		if (handle__setFoldPreprocessor == 0) {
			QsciLexerHTML::setFoldPreprocessor(fold);
			return;
		}
		
		bool sigval1 = fold;

		miqt_exec_callback_QsciLexerHTML_setFoldPreprocessor(this, handle__setFoldPreprocessor, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldPreprocessor(bool fold) {

		QsciLexerHTML::setFoldPreprocessor(fold);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setCaseSensitiveTags = 0;

	// Subclass to allow providing a Go implementation
	virtual void setCaseSensitiveTags(bool sens) override {
		if (handle__setCaseSensitiveTags == 0) {
			QsciLexerHTML::setCaseSensitiveTags(sens);
			return;
		}
		
		bool sigval1 = sens;

		miqt_exec_callback_QsciLexerHTML_setCaseSensitiveTags(this, handle__setCaseSensitiveTags, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setCaseSensitiveTags(bool sens) {

		QsciLexerHTML::setCaseSensitiveTags(sens);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__language = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* language() const override {
		if (handle__language == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_language(this, handle__language);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__lexer = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* lexer() const override {
		if (handle__lexer == 0) {
			return QsciLexerHTML::lexer();
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_lexer(this, handle__lexer);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexerHTML::lexer();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__lexerId = 0;

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (handle__lexerId == 0) {
			return QsciLexerHTML::lexerId();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerHTML_lexerId(this, handle__lexerId);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexerHTML::lexerId();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__autoCompletionFillups = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (handle__autoCompletionFillups == 0) {
			return QsciLexerHTML::autoCompletionFillups();
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_autoCompletionFillups(this, handle__autoCompletionFillups);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexerHTML::autoCompletionFillups();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__autoCompletionWordSeparators = 0;

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (handle__autoCompletionWordSeparators == 0) {
			return QsciLexerHTML::autoCompletionWordSeparators();
		}
		

		struct miqt_array /* of struct miqt_string */  callback_return_value = miqt_exec_callback_QsciLexerHTML_autoCompletionWordSeparators(this, handle__autoCompletionWordSeparators);
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
	struct miqt_array /* of struct miqt_string */  virtualbase_autoCompletionWordSeparators() const {

		QStringList _ret = QsciLexerHTML::autoCompletionWordSeparators();
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

	// cgo.Handle value for overwritten implementation
	intptr_t handle__blockEnd = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* blockEnd(int* style) const override {
		if (handle__blockEnd == 0) {
			return QsciLexerHTML::blockEnd(style);
		}
		
		int* sigval1 = style;

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_blockEnd(this, handle__blockEnd, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexerHTML::blockEnd(static_cast<int*>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__blockLookback = 0;

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (handle__blockLookback == 0) {
			return QsciLexerHTML::blockLookback();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerHTML_blockLookback(this, handle__blockLookback);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexerHTML::blockLookback();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__blockStart = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (handle__blockStart == 0) {
			return QsciLexerHTML::blockStart(style);
		}
		
		int* sigval1 = style;

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_blockStart(this, handle__blockStart, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexerHTML::blockStart(static_cast<int*>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__blockStartKeyword = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (handle__blockStartKeyword == 0) {
			return QsciLexerHTML::blockStartKeyword(style);
		}
		
		int* sigval1 = style;

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_blockStartKeyword(this, handle__blockStartKeyword, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexerHTML::blockStartKeyword(static_cast<int*>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__braceStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (handle__braceStyle == 0) {
			return QsciLexerHTML::braceStyle();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerHTML_braceStyle(this, handle__braceStyle);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexerHTML::braceStyle();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__caseSensitive = 0;

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (handle__caseSensitive == 0) {
			return QsciLexerHTML::caseSensitive();
		}
		

		bool callback_return_value = miqt_exec_callback_QsciLexerHTML_caseSensitive(this, handle__caseSensitive);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexerHTML::caseSensitive();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__color = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (handle__color == 0) {
			return QsciLexerHTML::color(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerHTML_color(this, handle__color, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexerHTML::color(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eolFill = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (handle__eolFill == 0) {
			return QsciLexerHTML::eolFill(style);
		}
		
		int sigval1 = style;

		bool callback_return_value = miqt_exec_callback_QsciLexerHTML_eolFill(this, handle__eolFill, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexerHTML::eolFill(static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__font = 0;

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (handle__font == 0) {
			return QsciLexerHTML::font(style);
		}
		
		int sigval1 = style;

		QFont* callback_return_value = miqt_exec_callback_QsciLexerHTML_font(this, handle__font, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexerHTML::font(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__indentationGuideView = 0;

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (handle__indentationGuideView == 0) {
			return QsciLexerHTML::indentationGuideView();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerHTML_indentationGuideView(this, handle__indentationGuideView);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexerHTML::indentationGuideView();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keywords = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (handle__keywords == 0) {
			return QsciLexerHTML::keywords(set);
		}
		
		int sigval1 = set;

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_keywords(this, handle__keywords, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexerHTML::keywords(static_cast<int>(set));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (handle__defaultStyle == 0) {
			return QsciLexerHTML::defaultStyle();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerHTML_defaultStyle(this, handle__defaultStyle);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexerHTML::defaultStyle();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__description = 0;

	// Subclass to allow providing a Go implementation
	virtual QString description(int style) const override {
		if (handle__description == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}
		
		int sigval1 = style;

		struct miqt_string callback_return_value = miqt_exec_callback_QsciLexerHTML_description(this, handle__description, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__paper = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor paper(int style) const override {
		if (handle__paper == 0) {
			return QsciLexerHTML::paper(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerHTML_paper(this, handle__paper, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexerHTML::paper(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultColorWithStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (handle__defaultColorWithStyle == 0) {
			return QsciLexerHTML::defaultColor(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerHTML_defaultColorWithStyle(this, handle__defaultColorWithStyle, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexerHTML::defaultColor(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultEolFill = 0;

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (handle__defaultEolFill == 0) {
			return QsciLexerHTML::defaultEolFill(style);
		}
		
		int sigval1 = style;

		bool callback_return_value = miqt_exec_callback_QsciLexerHTML_defaultEolFill(this, handle__defaultEolFill, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexerHTML::defaultEolFill(static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultFontWithStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (handle__defaultFontWithStyle == 0) {
			return QsciLexerHTML::defaultFont(style);
		}
		
		int sigval1 = style;

		QFont* callback_return_value = miqt_exec_callback_QsciLexerHTML_defaultFontWithStyle(this, handle__defaultFontWithStyle, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexerHTML::defaultFont(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultPaperWithStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (handle__defaultPaperWithStyle == 0) {
			return QsciLexerHTML::defaultPaper(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerHTML_defaultPaperWithStyle(this, handle__defaultPaperWithStyle, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexerHTML::defaultPaper(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setEditor = 0;

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (handle__setEditor == 0) {
			QsciLexerHTML::setEditor(editor);
			return;
		}
		
		QsciScintilla* sigval1 = editor;

		miqt_exec_callback_QsciLexerHTML_setEditor(this, handle__setEditor, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexerHTML::setEditor(editor);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__refreshProperties = 0;

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (handle__refreshProperties == 0) {
			QsciLexerHTML::refreshProperties();
			return;
		}
		

		miqt_exec_callback_QsciLexerHTML_refreshProperties(this, handle__refreshProperties);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexerHTML::refreshProperties();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__styleBitsNeeded = 0;

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (handle__styleBitsNeeded == 0) {
			return QsciLexerHTML::styleBitsNeeded();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerHTML_styleBitsNeeded(this, handle__styleBitsNeeded);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexerHTML::styleBitsNeeded();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__wordCharacters = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (handle__wordCharacters == 0) {
			return QsciLexerHTML::wordCharacters();
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerHTML_wordCharacters(this, handle__wordCharacters);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexerHTML::wordCharacters();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAutoIndentStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (handle__setAutoIndentStyle == 0) {
			QsciLexerHTML::setAutoIndentStyle(autoindentstyle);
			return;
		}
		
		int sigval1 = autoindentstyle;

		miqt_exec_callback_QsciLexerHTML_setAutoIndentStyle(this, handle__setAutoIndentStyle, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexerHTML::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setColor = 0;

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (handle__setColor == 0) {
			QsciLexerHTML::setColor(c, style);
			return;
		}
		
		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;

		miqt_exec_callback_QsciLexerHTML_setColor(this, handle__setColor, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setColor(QColor* c, int style) {

		QsciLexerHTML::setColor(*c, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setEolFill = 0;

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (handle__setEolFill == 0) {
			QsciLexerHTML::setEolFill(eoffill, style);
			return;
		}
		
		bool sigval1 = eoffill;
		int sigval2 = style;

		miqt_exec_callback_QsciLexerHTML_setEolFill(this, handle__setEolFill, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexerHTML::setEolFill(eoffill, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setFont = 0;

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (handle__setFont == 0) {
			QsciLexerHTML::setFont(f, style);
			return;
		}
		
		const QFont& f_ret = f;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&f_ret);
		int sigval2 = style;

		miqt_exec_callback_QsciLexerHTML_setFont(this, handle__setFont, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setFont(QFont* f, int style) {

		QsciLexerHTML::setFont(*f, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setPaper = 0;

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (handle__setPaper == 0) {
			QsciLexerHTML::setPaper(c, style);
			return;
		}
		
		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;

		miqt_exec_callback_QsciLexerHTML_setPaper(this, handle__setPaper, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setPaper(QColor* c, int style) {

		QsciLexerHTML::setPaper(*c, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__readProperties = 0;

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (handle__readProperties == 0) {
			return QsciLexerHTML::readProperties(qs, prefix);
		}
		
		QSettings& qs_ret = qs;
		// Cast returned reference into pointer
		QSettings* sigval1 = &qs_ret;
		const QString prefix_ret = prefix;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray prefix_b = prefix_ret.toUtf8();
		struct miqt_string prefix_ms;
		prefix_ms.len = prefix_b.length();
		prefix_ms.data = static_cast<char*>(malloc(prefix_ms.len));
		memcpy(prefix_ms.data, prefix_b.data(), prefix_ms.len);
		struct miqt_string sigval2 = prefix_ms;

		bool callback_return_value = miqt_exec_callback_QsciLexerHTML_readProperties(this, handle__readProperties, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerHTML::readProperties(*qs, prefix_QString);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__writeProperties = 0;

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (handle__writeProperties == 0) {
			return QsciLexerHTML::writeProperties(qs, prefix);
		}
		
		QSettings& qs_ret = qs;
		// Cast returned reference into pointer
		QSettings* sigval1 = &qs_ret;
		const QString prefix_ret = prefix;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray prefix_b = prefix_ret.toUtf8();
		struct miqt_string prefix_ms;
		prefix_ms.len = prefix_b.length();
		prefix_ms.data = static_cast<char*>(malloc(prefix_ms.len));
		memcpy(prefix_ms.data, prefix_b.data(), prefix_ms.len);
		struct miqt_string sigval2 = prefix_ms;

		bool callback_return_value = miqt_exec_callback_QsciLexerHTML_writeProperties(this, handle__writeProperties, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerHTML::writeProperties(*qs, prefix_QString);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QsciLexerHTML::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QsciLexerHTML_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexerHTML::event(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QsciLexerHTML::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QsciLexerHTML_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexerHTML::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QsciLexerHTML::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QsciLexerHTML_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexerHTML::timerEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QsciLexerHTML::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QsciLexerHTML_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexerHTML::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QsciLexerHTML::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QsciLexerHTML_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexerHTML::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QsciLexerHTML::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QsciLexerHTML_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexerHTML::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QsciLexerHTML::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QsciLexerHTML_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexerHTML::disconnectNotify(*signal);

	}

};

QsciLexerHTML* QsciLexerHTML_new() {
	return new MiqtVirtualQsciLexerHTML();
}

QsciLexerHTML* QsciLexerHTML_new2(QObject* parent) {
	return new MiqtVirtualQsciLexerHTML(parent);
}

void QsciLexerHTML_virtbase(QsciLexerHTML* src, QsciLexer** outptr_QsciLexer) {
	*outptr_QsciLexer = static_cast<QsciLexer*>(src);
}

QMetaObject* QsciLexerHTML_metaObject(const QsciLexerHTML* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciLexerHTML_metacast(QsciLexerHTML* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciLexerHTML_metacall(QsciLexerHTML* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciLexerHTML_tr(const char* s) {
	QString _ret = QsciLexerHTML::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerHTML_language(const QsciLexerHTML* self) {
	return (const char*) self->language();
}

const char* QsciLexerHTML_lexer(const QsciLexerHTML* self) {
	return (const char*) self->lexer();
}

const char* QsciLexerHTML_autoCompletionFillups(const QsciLexerHTML* self) {
	return (const char*) self->autoCompletionFillups();
}

const char* QsciLexerHTML_wordCharacters(const QsciLexerHTML* self) {
	return (const char*) self->wordCharacters();
}

QColor* QsciLexerHTML_defaultColor(const QsciLexerHTML* self, int style) {
	return new QColor(self->defaultColor(static_cast<int>(style)));
}

bool QsciLexerHTML_defaultEolFill(const QsciLexerHTML* self, int style) {
	return self->defaultEolFill(static_cast<int>(style));
}

QFont* QsciLexerHTML_defaultFont(const QsciLexerHTML* self, int style) {
	return new QFont(self->defaultFont(static_cast<int>(style)));
}

QColor* QsciLexerHTML_defaultPaper(const QsciLexerHTML* self, int style) {
	return new QColor(self->defaultPaper(static_cast<int>(style)));
}

const char* QsciLexerHTML_keywords(const QsciLexerHTML* self, int set) {
	return (const char*) self->keywords(static_cast<int>(set));
}

struct miqt_string QsciLexerHTML_description(const QsciLexerHTML* self, int style) {
	QString _ret = self->description(static_cast<int>(style));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciLexerHTML_refreshProperties(QsciLexerHTML* self) {
	self->refreshProperties();
}

bool QsciLexerHTML_caseSensitiveTags(const QsciLexerHTML* self) {
	return self->caseSensitiveTags();
}

void QsciLexerHTML_setDjangoTemplates(QsciLexerHTML* self, bool enabled) {
	self->setDjangoTemplates(enabled);
}

bool QsciLexerHTML_djangoTemplates(const QsciLexerHTML* self) {
	return self->djangoTemplates();
}

bool QsciLexerHTML_foldCompact(const QsciLexerHTML* self) {
	return self->foldCompact();
}

bool QsciLexerHTML_foldPreprocessor(const QsciLexerHTML* self) {
	return self->foldPreprocessor();
}

void QsciLexerHTML_setFoldScriptComments(QsciLexerHTML* self, bool fold) {
	self->setFoldScriptComments(fold);
}

bool QsciLexerHTML_foldScriptComments(const QsciLexerHTML* self) {
	return self->foldScriptComments();
}

void QsciLexerHTML_setFoldScriptHeredocs(QsciLexerHTML* self, bool fold) {
	self->setFoldScriptHeredocs(fold);
}

bool QsciLexerHTML_foldScriptHeredocs(const QsciLexerHTML* self) {
	return self->foldScriptHeredocs();
}

void QsciLexerHTML_setMakoTemplates(QsciLexerHTML* self, bool enabled) {
	self->setMakoTemplates(enabled);
}

bool QsciLexerHTML_makoTemplates(const QsciLexerHTML* self) {
	return self->makoTemplates();
}

void QsciLexerHTML_setFoldCompact(QsciLexerHTML* self, bool fold) {
	self->setFoldCompact(fold);
}

void QsciLexerHTML_setFoldPreprocessor(QsciLexerHTML* self, bool fold) {
	self->setFoldPreprocessor(fold);
}

void QsciLexerHTML_setCaseSensitiveTags(QsciLexerHTML* self, bool sens) {
	self->setCaseSensitiveTags(sens);
}

struct miqt_string QsciLexerHTML_tr2(const char* s, const char* c) {
	QString _ret = QsciLexerHTML::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerHTML_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciLexerHTML::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QsciLexerHTML_override_virtual_metacall(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QsciLexerHTML_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QsciLexerHTML_override_virtual_setFoldCompact(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setFoldCompact = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setFoldCompact(void* self, bool fold) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setFoldCompact(fold);
}

bool QsciLexerHTML_override_virtual_setFoldPreprocessor(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setFoldPreprocessor = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setFoldPreprocessor(void* self, bool fold) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setFoldPreprocessor(fold);
}

bool QsciLexerHTML_override_virtual_setCaseSensitiveTags(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setCaseSensitiveTags = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setCaseSensitiveTags(void* self, bool sens) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setCaseSensitiveTags(sens);
}

bool QsciLexerHTML_override_virtual_language(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__language = slot;
	return true;
}

bool QsciLexerHTML_override_virtual_lexer(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__lexer = slot;
	return true;
}

const char* QsciLexerHTML_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_lexer();
}

bool QsciLexerHTML_override_virtual_lexerId(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__lexerId = slot;
	return true;
}

int QsciLexerHTML_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_lexerId();
}

bool QsciLexerHTML_override_virtual_autoCompletionFillups(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__autoCompletionFillups = slot;
	return true;
}

const char* QsciLexerHTML_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_autoCompletionFillups();
}

bool QsciLexerHTML_override_virtual_autoCompletionWordSeparators(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__autoCompletionWordSeparators = slot;
	return true;
}

struct miqt_array /* of struct miqt_string */  QsciLexerHTML_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_autoCompletionWordSeparators();
}

bool QsciLexerHTML_override_virtual_blockEnd(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockEnd = slot;
	return true;
}

const char* QsciLexerHTML_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockEnd(style);
}

bool QsciLexerHTML_override_virtual_blockLookback(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockLookback = slot;
	return true;
}

int QsciLexerHTML_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockLookback();
}

bool QsciLexerHTML_override_virtual_blockStart(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockStart = slot;
	return true;
}

const char* QsciLexerHTML_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockStart(style);
}

bool QsciLexerHTML_override_virtual_blockStartKeyword(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockStartKeyword = slot;
	return true;
}

const char* QsciLexerHTML_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockStartKeyword(style);
}

bool QsciLexerHTML_override_virtual_braceStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__braceStyle = slot;
	return true;
}

int QsciLexerHTML_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_braceStyle();
}

bool QsciLexerHTML_override_virtual_caseSensitive(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__caseSensitive = slot;
	return true;
}

bool QsciLexerHTML_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_caseSensitive();
}

bool QsciLexerHTML_override_virtual_color(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__color = slot;
	return true;
}

QColor* QsciLexerHTML_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_color(style);
}

bool QsciLexerHTML_override_virtual_eolFill(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eolFill = slot;
	return true;
}

bool QsciLexerHTML_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_eolFill(style);
}

bool QsciLexerHTML_override_virtual_font(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__font = slot;
	return true;
}

QFont* QsciLexerHTML_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_font(style);
}

bool QsciLexerHTML_override_virtual_indentationGuideView(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__indentationGuideView = slot;
	return true;
}

int QsciLexerHTML_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_indentationGuideView();
}

bool QsciLexerHTML_override_virtual_keywords(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keywords = slot;
	return true;
}

const char* QsciLexerHTML_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_keywords(set);
}

bool QsciLexerHTML_override_virtual_defaultStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultStyle = slot;
	return true;
}

int QsciLexerHTML_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultStyle();
}

bool QsciLexerHTML_override_virtual_description(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__description = slot;
	return true;
}

bool QsciLexerHTML_override_virtual_paper(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__paper = slot;
	return true;
}

QColor* QsciLexerHTML_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_paper(style);
}

bool QsciLexerHTML_override_virtual_defaultColorWithStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultColorWithStyle = slot;
	return true;
}

QColor* QsciLexerHTML_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexerHTML_override_virtual_defaultEolFill(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultEolFill = slot;
	return true;
}

bool QsciLexerHTML_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultEolFill(style);
}

bool QsciLexerHTML_override_virtual_defaultFontWithStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultFontWithStyle = slot;
	return true;
}

QFont* QsciLexerHTML_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultFontWithStyle(style);
}

bool QsciLexerHTML_override_virtual_defaultPaperWithStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultPaperWithStyle = slot;
	return true;
}

QColor* QsciLexerHTML_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

bool QsciLexerHTML_override_virtual_setEditor(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setEditor = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setEditor(editor);
}

bool QsciLexerHTML_override_virtual_refreshProperties(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__refreshProperties = slot;
	return true;
}

void QsciLexerHTML_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_refreshProperties();
}

bool QsciLexerHTML_override_virtual_styleBitsNeeded(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__styleBitsNeeded = slot;
	return true;
}

int QsciLexerHTML_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_styleBitsNeeded();
}

bool QsciLexerHTML_override_virtual_wordCharacters(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__wordCharacters = slot;
	return true;
}

const char* QsciLexerHTML_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_wordCharacters();
}

bool QsciLexerHTML_override_virtual_setAutoIndentStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAutoIndentStyle = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

bool QsciLexerHTML_override_virtual_setColor(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setColor = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setColor(c, style);
}

bool QsciLexerHTML_override_virtual_setEolFill(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setEolFill = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setEolFill(eoffill, style);
}

bool QsciLexerHTML_override_virtual_setFont(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setFont = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setFont(f, style);
}

bool QsciLexerHTML_override_virtual_setPaper(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setPaper = slot;
	return true;
}

void QsciLexerHTML_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexerHTML_override_virtual_readProperties(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__readProperties = slot;
	return true;
}

bool QsciLexerHTML_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexerHTML_override_virtual_writeProperties(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__writeProperties = slot;
	return true;
}

bool QsciLexerHTML_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexerHTML_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QsciLexerHTML_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_event(event);
}

bool QsciLexerHTML_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QsciLexerHTML_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QsciLexerHTML_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QsciLexerHTML_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_timerEvent(event);
}

bool QsciLexerHTML_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QsciLexerHTML_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_childEvent(event);
}

bool QsciLexerHTML_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QsciLexerHTML_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_customEvent(event);
}

bool QsciLexerHTML_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QsciLexerHTML_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_connectNotify(signal);
}

bool QsciLexerHTML_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerHTML* self_cast = dynamic_cast<MiqtVirtualQsciLexerHTML*>( (QsciLexerHTML*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QsciLexerHTML_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QsciLexerHTML_staticMetaObject() { return &QsciLexerHTML::staticMetaObject; }
void QsciLexerHTML_delete(QsciLexerHTML* self) {
	delete self;
}

