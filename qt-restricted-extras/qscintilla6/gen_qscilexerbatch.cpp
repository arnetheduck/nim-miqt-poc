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
#include <qscilexerbatch.h>
#include "gen_qscilexerbatch.h"

#ifdef __cplusplus
extern "C" {
#endif

const char* miqt_exec_callback_QsciLexerBatch_language(const QsciLexerBatch*, intptr_t);
const char* miqt_exec_callback_QsciLexerBatch_lexer(const QsciLexerBatch*, intptr_t);
int miqt_exec_callback_QsciLexerBatch_lexerId(const QsciLexerBatch*, intptr_t);
const char* miqt_exec_callback_QsciLexerBatch_autoCompletionFillups(const QsciLexerBatch*, intptr_t);
struct miqt_array /* of struct miqt_string */  miqt_exec_callback_QsciLexerBatch_autoCompletionWordSeparators(const QsciLexerBatch*, intptr_t);
const char* miqt_exec_callback_QsciLexerBatch_blockEnd(const QsciLexerBatch*, intptr_t, int*);
int miqt_exec_callback_QsciLexerBatch_blockLookback(const QsciLexerBatch*, intptr_t);
const char* miqt_exec_callback_QsciLexerBatch_blockStart(const QsciLexerBatch*, intptr_t, int*);
const char* miqt_exec_callback_QsciLexerBatch_blockStartKeyword(const QsciLexerBatch*, intptr_t, int*);
int miqt_exec_callback_QsciLexerBatch_braceStyle(const QsciLexerBatch*, intptr_t);
bool miqt_exec_callback_QsciLexerBatch_caseSensitive(const QsciLexerBatch*, intptr_t);
QColor* miqt_exec_callback_QsciLexerBatch_color(const QsciLexerBatch*, intptr_t, int);
bool miqt_exec_callback_QsciLexerBatch_eolFill(const QsciLexerBatch*, intptr_t, int);
QFont* miqt_exec_callback_QsciLexerBatch_font(const QsciLexerBatch*, intptr_t, int);
int miqt_exec_callback_QsciLexerBatch_indentationGuideView(const QsciLexerBatch*, intptr_t);
const char* miqt_exec_callback_QsciLexerBatch_keywords(const QsciLexerBatch*, intptr_t, int);
int miqt_exec_callback_QsciLexerBatch_defaultStyle(const QsciLexerBatch*, intptr_t);
struct miqt_string miqt_exec_callback_QsciLexerBatch_description(const QsciLexerBatch*, intptr_t, int);
QColor* miqt_exec_callback_QsciLexerBatch_paper(const QsciLexerBatch*, intptr_t, int);
QColor* miqt_exec_callback_QsciLexerBatch_defaultColorWithStyle(const QsciLexerBatch*, intptr_t, int);
bool miqt_exec_callback_QsciLexerBatch_defaultEolFill(const QsciLexerBatch*, intptr_t, int);
QFont* miqt_exec_callback_QsciLexerBatch_defaultFontWithStyle(const QsciLexerBatch*, intptr_t, int);
QColor* miqt_exec_callback_QsciLexerBatch_defaultPaperWithStyle(const QsciLexerBatch*, intptr_t, int);
void miqt_exec_callback_QsciLexerBatch_setEditor(QsciLexerBatch*, intptr_t, QsciScintilla*);
void miqt_exec_callback_QsciLexerBatch_refreshProperties(QsciLexerBatch*, intptr_t);
int miqt_exec_callback_QsciLexerBatch_styleBitsNeeded(const QsciLexerBatch*, intptr_t);
const char* miqt_exec_callback_QsciLexerBatch_wordCharacters(const QsciLexerBatch*, intptr_t);
void miqt_exec_callback_QsciLexerBatch_setAutoIndentStyle(QsciLexerBatch*, intptr_t, int);
void miqt_exec_callback_QsciLexerBatch_setColor(QsciLexerBatch*, intptr_t, QColor*, int);
void miqt_exec_callback_QsciLexerBatch_setEolFill(QsciLexerBatch*, intptr_t, bool, int);
void miqt_exec_callback_QsciLexerBatch_setFont(QsciLexerBatch*, intptr_t, QFont*, int);
void miqt_exec_callback_QsciLexerBatch_setPaper(QsciLexerBatch*, intptr_t, QColor*, int);
bool miqt_exec_callback_QsciLexerBatch_readProperties(QsciLexerBatch*, intptr_t, QSettings*, struct miqt_string);
bool miqt_exec_callback_QsciLexerBatch_writeProperties(const QsciLexerBatch*, intptr_t, QSettings*, struct miqt_string);
bool miqt_exec_callback_QsciLexerBatch_event(QsciLexerBatch*, intptr_t, QEvent*);
bool miqt_exec_callback_QsciLexerBatch_eventFilter(QsciLexerBatch*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QsciLexerBatch_timerEvent(QsciLexerBatch*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QsciLexerBatch_childEvent(QsciLexerBatch*, intptr_t, QChildEvent*);
void miqt_exec_callback_QsciLexerBatch_customEvent(QsciLexerBatch*, intptr_t, QEvent*);
void miqt_exec_callback_QsciLexerBatch_connectNotify(QsciLexerBatch*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QsciLexerBatch_disconnectNotify(QsciLexerBatch*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexerBatch final : public QsciLexerBatch {
public:

	MiqtVirtualQsciLexerBatch(): QsciLexerBatch() {};
	MiqtVirtualQsciLexerBatch(QObject* parent): QsciLexerBatch(parent) {};

	virtual ~MiqtVirtualQsciLexerBatch() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__language = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* language() const override {
		if (handle__language == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_language(this, handle__language);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__lexer = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* lexer() const override {
		if (handle__lexer == 0) {
			return QsciLexerBatch::lexer();
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_lexer(this, handle__lexer);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexerBatch::lexer();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__lexerId = 0;

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (handle__lexerId == 0) {
			return QsciLexerBatch::lexerId();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerBatch_lexerId(this, handle__lexerId);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexerBatch::lexerId();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__autoCompletionFillups = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (handle__autoCompletionFillups == 0) {
			return QsciLexerBatch::autoCompletionFillups();
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_autoCompletionFillups(this, handle__autoCompletionFillups);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexerBatch::autoCompletionFillups();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__autoCompletionWordSeparators = 0;

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (handle__autoCompletionWordSeparators == 0) {
			return QsciLexerBatch::autoCompletionWordSeparators();
		}
		

		struct miqt_array /* of struct miqt_string */  callback_return_value = miqt_exec_callback_QsciLexerBatch_autoCompletionWordSeparators(this, handle__autoCompletionWordSeparators);
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

		QStringList _ret = QsciLexerBatch::autoCompletionWordSeparators();
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
			return QsciLexerBatch::blockEnd(style);
		}
		
		int* sigval1 = style;

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_blockEnd(this, handle__blockEnd, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexerBatch::blockEnd(static_cast<int*>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__blockLookback = 0;

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (handle__blockLookback == 0) {
			return QsciLexerBatch::blockLookback();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerBatch_blockLookback(this, handle__blockLookback);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexerBatch::blockLookback();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__blockStart = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (handle__blockStart == 0) {
			return QsciLexerBatch::blockStart(style);
		}
		
		int* sigval1 = style;

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_blockStart(this, handle__blockStart, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexerBatch::blockStart(static_cast<int*>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__blockStartKeyword = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (handle__blockStartKeyword == 0) {
			return QsciLexerBatch::blockStartKeyword(style);
		}
		
		int* sigval1 = style;

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_blockStartKeyword(this, handle__blockStartKeyword, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexerBatch::blockStartKeyword(static_cast<int*>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__braceStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (handle__braceStyle == 0) {
			return QsciLexerBatch::braceStyle();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerBatch_braceStyle(this, handle__braceStyle);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexerBatch::braceStyle();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__caseSensitive = 0;

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (handle__caseSensitive == 0) {
			return QsciLexerBatch::caseSensitive();
		}
		

		bool callback_return_value = miqt_exec_callback_QsciLexerBatch_caseSensitive(this, handle__caseSensitive);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexerBatch::caseSensitive();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__color = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (handle__color == 0) {
			return QsciLexerBatch::color(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerBatch_color(this, handle__color, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexerBatch::color(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eolFill = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (handle__eolFill == 0) {
			return QsciLexerBatch::eolFill(style);
		}
		
		int sigval1 = style;

		bool callback_return_value = miqt_exec_callback_QsciLexerBatch_eolFill(this, handle__eolFill, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexerBatch::eolFill(static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__font = 0;

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (handle__font == 0) {
			return QsciLexerBatch::font(style);
		}
		
		int sigval1 = style;

		QFont* callback_return_value = miqt_exec_callback_QsciLexerBatch_font(this, handle__font, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexerBatch::font(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__indentationGuideView = 0;

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (handle__indentationGuideView == 0) {
			return QsciLexerBatch::indentationGuideView();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerBatch_indentationGuideView(this, handle__indentationGuideView);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexerBatch::indentationGuideView();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keywords = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (handle__keywords == 0) {
			return QsciLexerBatch::keywords(set);
		}
		
		int sigval1 = set;

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_keywords(this, handle__keywords, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexerBatch::keywords(static_cast<int>(set));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (handle__defaultStyle == 0) {
			return QsciLexerBatch::defaultStyle();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerBatch_defaultStyle(this, handle__defaultStyle);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexerBatch::defaultStyle();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__description = 0;

	// Subclass to allow providing a Go implementation
	virtual QString description(int style) const override {
		if (handle__description == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}
		
		int sigval1 = style;

		struct miqt_string callback_return_value = miqt_exec_callback_QsciLexerBatch_description(this, handle__description, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__paper = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor paper(int style) const override {
		if (handle__paper == 0) {
			return QsciLexerBatch::paper(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerBatch_paper(this, handle__paper, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexerBatch::paper(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultColorWithStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (handle__defaultColorWithStyle == 0) {
			return QsciLexerBatch::defaultColor(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerBatch_defaultColorWithStyle(this, handle__defaultColorWithStyle, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexerBatch::defaultColor(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultEolFill = 0;

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (handle__defaultEolFill == 0) {
			return QsciLexerBatch::defaultEolFill(style);
		}
		
		int sigval1 = style;

		bool callback_return_value = miqt_exec_callback_QsciLexerBatch_defaultEolFill(this, handle__defaultEolFill, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexerBatch::defaultEolFill(static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultFontWithStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (handle__defaultFontWithStyle == 0) {
			return QsciLexerBatch::defaultFont(style);
		}
		
		int sigval1 = style;

		QFont* callback_return_value = miqt_exec_callback_QsciLexerBatch_defaultFontWithStyle(this, handle__defaultFontWithStyle, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexerBatch::defaultFont(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__defaultPaperWithStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (handle__defaultPaperWithStyle == 0) {
			return QsciLexerBatch::defaultPaper(style);
		}
		
		int sigval1 = style;

		QColor* callback_return_value = miqt_exec_callback_QsciLexerBatch_defaultPaperWithStyle(this, handle__defaultPaperWithStyle, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexerBatch::defaultPaper(static_cast<int>(style)));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setEditor = 0;

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (handle__setEditor == 0) {
			QsciLexerBatch::setEditor(editor);
			return;
		}
		
		QsciScintilla* sigval1 = editor;

		miqt_exec_callback_QsciLexerBatch_setEditor(this, handle__setEditor, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexerBatch::setEditor(editor);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__refreshProperties = 0;

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (handle__refreshProperties == 0) {
			QsciLexerBatch::refreshProperties();
			return;
		}
		

		miqt_exec_callback_QsciLexerBatch_refreshProperties(this, handle__refreshProperties);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexerBatch::refreshProperties();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__styleBitsNeeded = 0;

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (handle__styleBitsNeeded == 0) {
			return QsciLexerBatch::styleBitsNeeded();
		}
		

		int callback_return_value = miqt_exec_callback_QsciLexerBatch_styleBitsNeeded(this, handle__styleBitsNeeded);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexerBatch::styleBitsNeeded();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__wordCharacters = 0;

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (handle__wordCharacters == 0) {
			return QsciLexerBatch::wordCharacters();
		}
		

		const char* callback_return_value = miqt_exec_callback_QsciLexerBatch_wordCharacters(this, handle__wordCharacters);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexerBatch::wordCharacters();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setAutoIndentStyle = 0;

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (handle__setAutoIndentStyle == 0) {
			QsciLexerBatch::setAutoIndentStyle(autoindentstyle);
			return;
		}
		
		int sigval1 = autoindentstyle;

		miqt_exec_callback_QsciLexerBatch_setAutoIndentStyle(this, handle__setAutoIndentStyle, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexerBatch::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setColor = 0;

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (handle__setColor == 0) {
			QsciLexerBatch::setColor(c, style);
			return;
		}
		
		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;

		miqt_exec_callback_QsciLexerBatch_setColor(this, handle__setColor, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setColor(QColor* c, int style) {

		QsciLexerBatch::setColor(*c, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setEolFill = 0;

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (handle__setEolFill == 0) {
			QsciLexerBatch::setEolFill(eoffill, style);
			return;
		}
		
		bool sigval1 = eoffill;
		int sigval2 = style;

		miqt_exec_callback_QsciLexerBatch_setEolFill(this, handle__setEolFill, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexerBatch::setEolFill(eoffill, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setFont = 0;

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (handle__setFont == 0) {
			QsciLexerBatch::setFont(f, style);
			return;
		}
		
		const QFont& f_ret = f;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&f_ret);
		int sigval2 = style;

		miqt_exec_callback_QsciLexerBatch_setFont(this, handle__setFont, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setFont(QFont* f, int style) {

		QsciLexerBatch::setFont(*f, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__setPaper = 0;

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (handle__setPaper == 0) {
			QsciLexerBatch::setPaper(c, style);
			return;
		}
		
		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;

		miqt_exec_callback_QsciLexerBatch_setPaper(this, handle__setPaper, sigval1, sigval2);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_setPaper(QColor* c, int style) {

		QsciLexerBatch::setPaper(*c, static_cast<int>(style));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__readProperties = 0;

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (handle__readProperties == 0) {
			return QsciLexerBatch::readProperties(qs, prefix);
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

		bool callback_return_value = miqt_exec_callback_QsciLexerBatch_readProperties(this, handle__readProperties, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerBatch::readProperties(*qs, prefix_QString);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__writeProperties = 0;

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (handle__writeProperties == 0) {
			return QsciLexerBatch::writeProperties(qs, prefix);
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

		bool callback_return_value = miqt_exec_callback_QsciLexerBatch_writeProperties(this, handle__writeProperties, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerBatch::writeProperties(*qs, prefix_QString);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QsciLexerBatch::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QsciLexerBatch_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexerBatch::event(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QsciLexerBatch::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QsciLexerBatch_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexerBatch::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QsciLexerBatch::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QsciLexerBatch_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexerBatch::timerEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QsciLexerBatch::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QsciLexerBatch_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexerBatch::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QsciLexerBatch::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QsciLexerBatch_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexerBatch::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QsciLexerBatch::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QsciLexerBatch_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexerBatch::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QsciLexerBatch::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QsciLexerBatch_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexerBatch::disconnectNotify(*signal);

	}

};

QsciLexerBatch* QsciLexerBatch_new() {
	return new MiqtVirtualQsciLexerBatch();
}

QsciLexerBatch* QsciLexerBatch_new2(QObject* parent) {
	return new MiqtVirtualQsciLexerBatch(parent);
}

void QsciLexerBatch_virtbase(QsciLexerBatch* src, QsciLexer** outptr_QsciLexer) {
	*outptr_QsciLexer = static_cast<QsciLexer*>(src);
}

QMetaObject* QsciLexerBatch_metaObject(const QsciLexerBatch* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciLexerBatch_metacast(QsciLexerBatch* self, const char* param1) {
	return self->qt_metacast(param1);
}

struct miqt_string QsciLexerBatch_tr(const char* s) {
	QString _ret = QsciLexerBatch::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerBatch_language(const QsciLexerBatch* self) {
	return (const char*) self->language();
}

const char* QsciLexerBatch_lexer(const QsciLexerBatch* self) {
	return (const char*) self->lexer();
}

const char* QsciLexerBatch_wordCharacters(const QsciLexerBatch* self) {
	return (const char*) self->wordCharacters();
}

bool QsciLexerBatch_caseSensitive(const QsciLexerBatch* self) {
	return self->caseSensitive();
}

QColor* QsciLexerBatch_defaultColor(const QsciLexerBatch* self, int style) {
	return new QColor(self->defaultColor(static_cast<int>(style)));
}

bool QsciLexerBatch_defaultEolFill(const QsciLexerBatch* self, int style) {
	return self->defaultEolFill(static_cast<int>(style));
}

QFont* QsciLexerBatch_defaultFont(const QsciLexerBatch* self, int style) {
	return new QFont(self->defaultFont(static_cast<int>(style)));
}

QColor* QsciLexerBatch_defaultPaper(const QsciLexerBatch* self, int style) {
	return new QColor(self->defaultPaper(static_cast<int>(style)));
}

const char* QsciLexerBatch_keywords(const QsciLexerBatch* self, int set) {
	return (const char*) self->keywords(static_cast<int>(set));
}

struct miqt_string QsciLexerBatch_description(const QsciLexerBatch* self, int style) {
	QString _ret = self->description(static_cast<int>(style));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerBatch_tr2(const char* s, const char* c) {
	QString _ret = QsciLexerBatch::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerBatch_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciLexerBatch::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QsciLexerBatch_override_virtual_language(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__language = slot;
	return true;
}

bool QsciLexerBatch_override_virtual_lexer(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__lexer = slot;
	return true;
}

const char* QsciLexerBatch_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_lexer();
}

bool QsciLexerBatch_override_virtual_lexerId(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__lexerId = slot;
	return true;
}

int QsciLexerBatch_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_lexerId();
}

bool QsciLexerBatch_override_virtual_autoCompletionFillups(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__autoCompletionFillups = slot;
	return true;
}

const char* QsciLexerBatch_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_autoCompletionFillups();
}

bool QsciLexerBatch_override_virtual_autoCompletionWordSeparators(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__autoCompletionWordSeparators = slot;
	return true;
}

struct miqt_array /* of struct miqt_string */  QsciLexerBatch_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_autoCompletionWordSeparators();
}

bool QsciLexerBatch_override_virtual_blockEnd(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockEnd = slot;
	return true;
}

const char* QsciLexerBatch_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_blockEnd(style);
}

bool QsciLexerBatch_override_virtual_blockLookback(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockLookback = slot;
	return true;
}

int QsciLexerBatch_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_blockLookback();
}

bool QsciLexerBatch_override_virtual_blockStart(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockStart = slot;
	return true;
}

const char* QsciLexerBatch_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_blockStart(style);
}

bool QsciLexerBatch_override_virtual_blockStartKeyword(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__blockStartKeyword = slot;
	return true;
}

const char* QsciLexerBatch_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_blockStartKeyword(style);
}

bool QsciLexerBatch_override_virtual_braceStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__braceStyle = slot;
	return true;
}

int QsciLexerBatch_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_braceStyle();
}

bool QsciLexerBatch_override_virtual_caseSensitive(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__caseSensitive = slot;
	return true;
}

bool QsciLexerBatch_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_caseSensitive();
}

bool QsciLexerBatch_override_virtual_color(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__color = slot;
	return true;
}

QColor* QsciLexerBatch_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_color(style);
}

bool QsciLexerBatch_override_virtual_eolFill(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eolFill = slot;
	return true;
}

bool QsciLexerBatch_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_eolFill(style);
}

bool QsciLexerBatch_override_virtual_font(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__font = slot;
	return true;
}

QFont* QsciLexerBatch_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_font(style);
}

bool QsciLexerBatch_override_virtual_indentationGuideView(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__indentationGuideView = slot;
	return true;
}

int QsciLexerBatch_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_indentationGuideView();
}

bool QsciLexerBatch_override_virtual_keywords(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keywords = slot;
	return true;
}

const char* QsciLexerBatch_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_keywords(set);
}

bool QsciLexerBatch_override_virtual_defaultStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultStyle = slot;
	return true;
}

int QsciLexerBatch_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_defaultStyle();
}

bool QsciLexerBatch_override_virtual_description(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__description = slot;
	return true;
}

bool QsciLexerBatch_override_virtual_paper(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__paper = slot;
	return true;
}

QColor* QsciLexerBatch_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_paper(style);
}

bool QsciLexerBatch_override_virtual_defaultColorWithStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultColorWithStyle = slot;
	return true;
}

QColor* QsciLexerBatch_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexerBatch_override_virtual_defaultEolFill(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultEolFill = slot;
	return true;
}

bool QsciLexerBatch_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_defaultEolFill(style);
}

bool QsciLexerBatch_override_virtual_defaultFontWithStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultFontWithStyle = slot;
	return true;
}

QFont* QsciLexerBatch_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_defaultFontWithStyle(style);
}

bool QsciLexerBatch_override_virtual_defaultPaperWithStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__defaultPaperWithStyle = slot;
	return true;
}

QColor* QsciLexerBatch_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

bool QsciLexerBatch_override_virtual_setEditor(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setEditor = slot;
	return true;
}

void QsciLexerBatch_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_setEditor(editor);
}

bool QsciLexerBatch_override_virtual_refreshProperties(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__refreshProperties = slot;
	return true;
}

void QsciLexerBatch_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_refreshProperties();
}

bool QsciLexerBatch_override_virtual_styleBitsNeeded(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__styleBitsNeeded = slot;
	return true;
}

int QsciLexerBatch_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_styleBitsNeeded();
}

bool QsciLexerBatch_override_virtual_wordCharacters(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__wordCharacters = slot;
	return true;
}

const char* QsciLexerBatch_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_wordCharacters();
}

bool QsciLexerBatch_override_virtual_setAutoIndentStyle(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setAutoIndentStyle = slot;
	return true;
}

void QsciLexerBatch_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

bool QsciLexerBatch_override_virtual_setColor(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setColor = slot;
	return true;
}

void QsciLexerBatch_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_setColor(c, style);
}

bool QsciLexerBatch_override_virtual_setEolFill(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setEolFill = slot;
	return true;
}

void QsciLexerBatch_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_setEolFill(eoffill, style);
}

bool QsciLexerBatch_override_virtual_setFont(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setFont = slot;
	return true;
}

void QsciLexerBatch_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_setFont(f, style);
}

bool QsciLexerBatch_override_virtual_setPaper(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__setPaper = slot;
	return true;
}

void QsciLexerBatch_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexerBatch_override_virtual_readProperties(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__readProperties = slot;
	return true;
}

bool QsciLexerBatch_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexerBatch_override_virtual_writeProperties(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__writeProperties = slot;
	return true;
}

bool QsciLexerBatch_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexerBatch_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QsciLexerBatch_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_event(event);
}

bool QsciLexerBatch_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QsciLexerBatch_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QsciLexerBatch_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QsciLexerBatch_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_timerEvent(event);
}

bool QsciLexerBatch_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QsciLexerBatch_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_childEvent(event);
}

bool QsciLexerBatch_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QsciLexerBatch_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_customEvent(event);
}

bool QsciLexerBatch_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QsciLexerBatch_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_connectNotify(signal);
}

bool QsciLexerBatch_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQsciLexerBatch* self_cast = dynamic_cast<MiqtVirtualQsciLexerBatch*>( (QsciLexerBatch*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QsciLexerBatch_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerBatch*)(self) )->virtualbase_disconnectNotify(signal);
}

void QsciLexerBatch_delete(QsciLexerBatch* self) {
	delete self;
}

