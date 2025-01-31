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
#include <qscilexercpp.h>
#include "gen_qscilexercpp.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexerCPP final : public QsciLexerCPP {
	struct QsciLexerCPP_VTable* vtbl;
public:

	MiqtVirtualQsciLexerCPP(struct QsciLexerCPP_VTable* vtbl): QsciLexerCPP(), vtbl(vtbl) {};
	MiqtVirtualQsciLexerCPP(struct QsciLexerCPP_VTable* vtbl, QObject* parent): QsciLexerCPP(parent), vtbl(vtbl) {};
	MiqtVirtualQsciLexerCPP(struct QsciLexerCPP_VTable* vtbl, QObject* parent, bool caseInsensitiveKeywords): QsciLexerCPP(parent, caseInsensitiveKeywords), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciLexerCPP() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciLexerCPP::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciLexerCPP::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciLexerCPP::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciLexerCPP::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciLexerCPP::qt_metacall(param1, param2, param3);
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

		return QsciLexerCPP::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldAtElse(bool fold) override {
		if (vtbl->setFoldAtElse == 0) {
			QsciLexerCPP::setFoldAtElse(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldAtElse(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldAtElse(bool fold) {

		QsciLexerCPP::setFoldAtElse(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldComments(bool fold) override {
		if (vtbl->setFoldComments == 0) {
			QsciLexerCPP::setFoldComments(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldComments(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldComments(bool fold) {

		QsciLexerCPP::setFoldComments(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldCompact(bool fold) override {
		if (vtbl->setFoldCompact == 0) {
			QsciLexerCPP::setFoldCompact(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldCompact(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldCompact(bool fold) {

		QsciLexerCPP::setFoldCompact(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldPreprocessor(bool fold) override {
		if (vtbl->setFoldPreprocessor == 0) {
			QsciLexerCPP::setFoldPreprocessor(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldPreprocessor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldPreprocessor(bool fold) {

		QsciLexerCPP::setFoldPreprocessor(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setStylePreprocessor(bool style) override {
		if (vtbl->setStylePreprocessor == 0) {
			QsciLexerCPP::setStylePreprocessor(style);
			return;
		}

		bool sigval1 = style;

		vtbl->setStylePreprocessor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setStylePreprocessor(bool style) {

		QsciLexerCPP::setStylePreprocessor(style);

	}

	// Subclass to allow providing a Go implementation
	virtual const char* language() const override {
		if (vtbl->language == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}


		const char* callback_return_value = vtbl->language(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual const char* lexer() const override {
		if (vtbl->lexer == 0) {
			return QsciLexerCPP::lexer();
		}


		const char* callback_return_value = vtbl->lexer(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexerCPP::lexer();

	}

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (vtbl->lexerId == 0) {
			return QsciLexerCPP::lexerId();
		}


		int callback_return_value = vtbl->lexerId(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexerCPP::lexerId();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (vtbl->autoCompletionFillups == 0) {
			return QsciLexerCPP::autoCompletionFillups();
		}


		const char* callback_return_value = vtbl->autoCompletionFillups(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexerCPP::autoCompletionFillups();

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (vtbl->autoCompletionWordSeparators == 0) {
			return QsciLexerCPP::autoCompletionWordSeparators();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->autoCompletionWordSeparators(vtbl, this);
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

		QStringList _ret = QsciLexerCPP::autoCompletionWordSeparators();
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
	virtual const char* blockEnd(int* style) const override {
		if (vtbl->blockEnd == 0) {
			return QsciLexerCPP::blockEnd(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockEnd(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexerCPP::blockEnd(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (vtbl->blockLookback == 0) {
			return QsciLexerCPP::blockLookback();
		}


		int callback_return_value = vtbl->blockLookback(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexerCPP::blockLookback();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (vtbl->blockStart == 0) {
			return QsciLexerCPP::blockStart(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStart(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexerCPP::blockStart(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (vtbl->blockStartKeyword == 0) {
			return QsciLexerCPP::blockStartKeyword(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStartKeyword(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexerCPP::blockStartKeyword(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (vtbl->braceStyle == 0) {
			return QsciLexerCPP::braceStyle();
		}


		int callback_return_value = vtbl->braceStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexerCPP::braceStyle();

	}

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (vtbl->caseSensitive == 0) {
			return QsciLexerCPP::caseSensitive();
		}


		bool callback_return_value = vtbl->caseSensitive(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexerCPP::caseSensitive();

	}

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (vtbl->color == 0) {
			return QsciLexerCPP::color(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->color(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexerCPP::color(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (vtbl->eolFill == 0) {
			return QsciLexerCPP::eolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->eolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexerCPP::eolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (vtbl->font == 0) {
			return QsciLexerCPP::font(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->font(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexerCPP::font(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (vtbl->indentationGuideView == 0) {
			return QsciLexerCPP::indentationGuideView();
		}


		int callback_return_value = vtbl->indentationGuideView(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexerCPP::indentationGuideView();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (vtbl->keywords == 0) {
			return QsciLexerCPP::keywords(set);
		}

		int sigval1 = set;

		const char* callback_return_value = vtbl->keywords(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexerCPP::keywords(static_cast<int>(set));

	}

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (vtbl->defaultStyle == 0) {
			return QsciLexerCPP::defaultStyle();
		}


		int callback_return_value = vtbl->defaultStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexerCPP::defaultStyle();

	}

	// Subclass to allow providing a Go implementation
	virtual QString description(int style) const override {
		if (vtbl->description == 0) {
			return QString(); // Pure virtual, there is no base we can call
		}

		int sigval1 = style;

		struct miqt_string callback_return_value = vtbl->description(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Subclass to allow providing a Go implementation
	virtual QColor paper(int style) const override {
		if (vtbl->paper == 0) {
			return QsciLexerCPP::paper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->paper(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexerCPP::paper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (vtbl->defaultColorWithStyle == 0) {
			return QsciLexerCPP::defaultColor(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultColorWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexerCPP::defaultColor(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (vtbl->defaultEolFill == 0) {
			return QsciLexerCPP::defaultEolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->defaultEolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexerCPP::defaultEolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (vtbl->defaultFontWithStyle == 0) {
			return QsciLexerCPP::defaultFont(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->defaultFontWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexerCPP::defaultFont(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (vtbl->defaultPaperWithStyle == 0) {
			return QsciLexerCPP::defaultPaper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultPaperWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexerCPP::defaultPaper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (vtbl->setEditor == 0) {
			QsciLexerCPP::setEditor(editor);
			return;
		}

		QsciScintilla* sigval1 = editor;

		vtbl->setEditor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexerCPP::setEditor(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (vtbl->refreshProperties == 0) {
			QsciLexerCPP::refreshProperties();
			return;
		}


		vtbl->refreshProperties(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexerCPP::refreshProperties();

	}

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (vtbl->styleBitsNeeded == 0) {
			return QsciLexerCPP::styleBitsNeeded();
		}


		int callback_return_value = vtbl->styleBitsNeeded(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexerCPP::styleBitsNeeded();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (vtbl->wordCharacters == 0) {
			return QsciLexerCPP::wordCharacters();
		}


		const char* callback_return_value = vtbl->wordCharacters(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexerCPP::wordCharacters();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (vtbl->setAutoIndentStyle == 0) {
			QsciLexerCPP::setAutoIndentStyle(autoindentstyle);
			return;
		}

		int sigval1 = autoindentstyle;

		vtbl->setAutoIndentStyle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexerCPP::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (vtbl->setColor == 0) {
			QsciLexerCPP::setColor(c, style);
			return;
		}

		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;

		vtbl->setColor(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setColor(QColor* c, int style) {

		QsciLexerCPP::setColor(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (vtbl->setEolFill == 0) {
			QsciLexerCPP::setEolFill(eoffill, style);
			return;
		}

		bool sigval1 = eoffill;
		int sigval2 = style;

		vtbl->setEolFill(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexerCPP::setEolFill(eoffill, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (vtbl->setFont == 0) {
			QsciLexerCPP::setFont(f, style);
			return;
		}

		const QFont& f_ret = f;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&f_ret);
		int sigval2 = style;

		vtbl->setFont(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFont(QFont* f, int style) {

		QsciLexerCPP::setFont(*f, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (vtbl->setPaper == 0) {
			QsciLexerCPP::setPaper(c, style);
			return;
		}

		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;

		vtbl->setPaper(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setPaper(QColor* c, int style) {

		QsciLexerCPP::setPaper(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (vtbl->readProperties == 0) {
			return QsciLexerCPP::readProperties(qs, prefix);
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

		bool callback_return_value = vtbl->readProperties(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerCPP::readProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (vtbl->writeProperties == 0) {
			return QsciLexerCPP::writeProperties(qs, prefix);
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

		bool callback_return_value = vtbl->writeProperties(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerCPP::writeProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QsciLexerCPP::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexerCPP::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciLexerCPP::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexerCPP::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciLexerCPP::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexerCPP::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciLexerCPP::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexerCPP::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciLexerCPP::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexerCPP::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciLexerCPP::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexerCPP::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciLexerCPP::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexerCPP::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerCPP::readProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerCPP::writeProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QsciLexerCPP::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QsciLexerCPP::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QsciLexerCPP::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QsciLexerCPP::isSignalConnected(*signal);

	}

};

QsciLexerCPP* QsciLexerCPP_new(struct QsciLexerCPP_VTable* vtbl) {
	return new MiqtVirtualQsciLexerCPP(vtbl);
}

QsciLexerCPP* QsciLexerCPP_new2(struct QsciLexerCPP_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQsciLexerCPP(vtbl, parent);
}

QsciLexerCPP* QsciLexerCPP_new3(struct QsciLexerCPP_VTable* vtbl, QObject* parent, bool caseInsensitiveKeywords) {
	return new MiqtVirtualQsciLexerCPP(vtbl, parent, caseInsensitiveKeywords);
}

void QsciLexerCPP_virtbase(QsciLexerCPP* src, QsciLexer** outptr_QsciLexer) {
	*outptr_QsciLexer = static_cast<QsciLexer*>(src);
}

QMetaObject* QsciLexerCPP_metaObject(const QsciLexerCPP* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciLexerCPP_metacast(QsciLexerCPP* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciLexerCPP_metacall(QsciLexerCPP* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciLexerCPP_tr(const char* s) {
	QString _ret = QsciLexerCPP::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerCPP_language(const QsciLexerCPP* self) {
	return (const char*) self->language();
}

const char* QsciLexerCPP_lexer(const QsciLexerCPP* self) {
	return (const char*) self->lexer();
}

struct miqt_array /* of struct miqt_string */  QsciLexerCPP_autoCompletionWordSeparators(const QsciLexerCPP* self) {
	QStringList _ret = self->autoCompletionWordSeparators();
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

const char* QsciLexerCPP_blockEnd(const QsciLexerCPP* self) {
	return (const char*) self->blockEnd();
}

const char* QsciLexerCPP_blockStart(const QsciLexerCPP* self) {
	return (const char*) self->blockStart();
}

const char* QsciLexerCPP_blockStartKeyword(const QsciLexerCPP* self) {
	return (const char*) self->blockStartKeyword();
}

int QsciLexerCPP_braceStyle(const QsciLexerCPP* self) {
	return self->braceStyle();
}

const char* QsciLexerCPP_wordCharacters(const QsciLexerCPP* self) {
	return (const char*) self->wordCharacters();
}

QColor* QsciLexerCPP_defaultColor(const QsciLexerCPP* self, int style) {
	return new QColor(self->defaultColor(static_cast<int>(style)));
}

bool QsciLexerCPP_defaultEolFill(const QsciLexerCPP* self, int style) {
	return self->defaultEolFill(static_cast<int>(style));
}

QFont* QsciLexerCPP_defaultFont(const QsciLexerCPP* self, int style) {
	return new QFont(self->defaultFont(static_cast<int>(style)));
}

QColor* QsciLexerCPP_defaultPaper(const QsciLexerCPP* self, int style) {
	return new QColor(self->defaultPaper(static_cast<int>(style)));
}

const char* QsciLexerCPP_keywords(const QsciLexerCPP* self, int set) {
	return (const char*) self->keywords(static_cast<int>(set));
}

struct miqt_string QsciLexerCPP_description(const QsciLexerCPP* self, int style) {
	QString _ret = self->description(static_cast<int>(style));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciLexerCPP_refreshProperties(QsciLexerCPP* self) {
	self->refreshProperties();
}

bool QsciLexerCPP_foldAtElse(const QsciLexerCPP* self) {
	return self->foldAtElse();
}

bool QsciLexerCPP_foldComments(const QsciLexerCPP* self) {
	return self->foldComments();
}

bool QsciLexerCPP_foldCompact(const QsciLexerCPP* self) {
	return self->foldCompact();
}

bool QsciLexerCPP_foldPreprocessor(const QsciLexerCPP* self) {
	return self->foldPreprocessor();
}

bool QsciLexerCPP_stylePreprocessor(const QsciLexerCPP* self) {
	return self->stylePreprocessor();
}

void QsciLexerCPP_setDollarsAllowed(QsciLexerCPP* self, bool allowed) {
	self->setDollarsAllowed(allowed);
}

bool QsciLexerCPP_dollarsAllowed(const QsciLexerCPP* self) {
	return self->dollarsAllowed();
}

void QsciLexerCPP_setHighlightTripleQuotedStrings(QsciLexerCPP* self, bool enabled) {
	self->setHighlightTripleQuotedStrings(enabled);
}

bool QsciLexerCPP_highlightTripleQuotedStrings(const QsciLexerCPP* self) {
	return self->highlightTripleQuotedStrings();
}

void QsciLexerCPP_setHighlightHashQuotedStrings(QsciLexerCPP* self, bool enabled) {
	self->setHighlightHashQuotedStrings(enabled);
}

bool QsciLexerCPP_highlightHashQuotedStrings(const QsciLexerCPP* self) {
	return self->highlightHashQuotedStrings();
}

void QsciLexerCPP_setHighlightBackQuotedStrings(QsciLexerCPP* self, bool enabled) {
	self->setHighlightBackQuotedStrings(enabled);
}

bool QsciLexerCPP_highlightBackQuotedStrings(const QsciLexerCPP* self) {
	return self->highlightBackQuotedStrings();
}

void QsciLexerCPP_setHighlightEscapeSequences(QsciLexerCPP* self, bool enabled) {
	self->setHighlightEscapeSequences(enabled);
}

bool QsciLexerCPP_highlightEscapeSequences(const QsciLexerCPP* self) {
	return self->highlightEscapeSequences();
}

void QsciLexerCPP_setVerbatimStringEscapeSequencesAllowed(QsciLexerCPP* self, bool allowed) {
	self->setVerbatimStringEscapeSequencesAllowed(allowed);
}

bool QsciLexerCPP_verbatimStringEscapeSequencesAllowed(const QsciLexerCPP* self) {
	return self->verbatimStringEscapeSequencesAllowed();
}

void QsciLexerCPP_setFoldAtElse(QsciLexerCPP* self, bool fold) {
	self->setFoldAtElse(fold);
}

void QsciLexerCPP_setFoldComments(QsciLexerCPP* self, bool fold) {
	self->setFoldComments(fold);
}

void QsciLexerCPP_setFoldCompact(QsciLexerCPP* self, bool fold) {
	self->setFoldCompact(fold);
}

void QsciLexerCPP_setFoldPreprocessor(QsciLexerCPP* self, bool fold) {
	self->setFoldPreprocessor(fold);
}

void QsciLexerCPP_setStylePreprocessor(QsciLexerCPP* self, bool style) {
	self->setStylePreprocessor(style);
}

struct miqt_string QsciLexerCPP_tr2(const char* s, const char* c) {
	QString _ret = QsciLexerCPP::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerCPP_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciLexerCPP::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerCPP_blockEnd1(const QsciLexerCPP* self, int* style) {
	return (const char*) self->blockEnd(static_cast<int*>(style));
}

const char* QsciLexerCPP_blockStart1(const QsciLexerCPP* self, int* style) {
	return (const char*) self->blockStart(static_cast<int*>(style));
}

const char* QsciLexerCPP_blockStartKeyword1(const QsciLexerCPP* self, int* style) {
	return (const char*) self->blockStartKeyword(static_cast<int*>(style));
}

QMetaObject* QsciLexerCPP_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_metaObject();
}

void* QsciLexerCPP_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_metacast(param1);
}

int QsciLexerCPP_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QsciLexerCPP_virtualbase_setFoldAtElse(void* self, bool fold) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setFoldAtElse(fold);
}

void QsciLexerCPP_virtualbase_setFoldComments(void* self, bool fold) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setFoldComments(fold);
}

void QsciLexerCPP_virtualbase_setFoldCompact(void* self, bool fold) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setFoldCompact(fold);
}

void QsciLexerCPP_virtualbase_setFoldPreprocessor(void* self, bool fold) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setFoldPreprocessor(fold);
}

void QsciLexerCPP_virtualbase_setStylePreprocessor(void* self, bool style) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setStylePreprocessor(style);
}

const char* QsciLexerCPP_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_lexer();
}

int QsciLexerCPP_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_lexerId();
}

const char* QsciLexerCPP_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_autoCompletionFillups();
}

struct miqt_array /* of struct miqt_string */  QsciLexerCPP_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_autoCompletionWordSeparators();
}

const char* QsciLexerCPP_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_blockEnd(style);
}

int QsciLexerCPP_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_blockLookback();
}

const char* QsciLexerCPP_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_blockStart(style);
}

const char* QsciLexerCPP_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_blockStartKeyword(style);
}

int QsciLexerCPP_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_braceStyle();
}

bool QsciLexerCPP_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_caseSensitive();
}

QColor* QsciLexerCPP_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_color(style);
}

bool QsciLexerCPP_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_eolFill(style);
}

QFont* QsciLexerCPP_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_font(style);
}

int QsciLexerCPP_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_indentationGuideView();
}

const char* QsciLexerCPP_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_keywords(set);
}

int QsciLexerCPP_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_defaultStyle();
}

QColor* QsciLexerCPP_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_paper(style);
}

QColor* QsciLexerCPP_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexerCPP_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_defaultEolFill(style);
}

QFont* QsciLexerCPP_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_defaultFontWithStyle(style);
}

QColor* QsciLexerCPP_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

void QsciLexerCPP_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setEditor(editor);
}

void QsciLexerCPP_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_refreshProperties();
}

int QsciLexerCPP_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_styleBitsNeeded();
}

const char* QsciLexerCPP_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_wordCharacters();
}

void QsciLexerCPP_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

void QsciLexerCPP_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setColor(c, style);
}

void QsciLexerCPP_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setEolFill(eoffill, style);
}

void QsciLexerCPP_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setFont(f, style);
}

void QsciLexerCPP_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexerCPP_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexerCPP_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexerCPP_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_event(event);
}

bool QsciLexerCPP_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciLexerCPP_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_timerEvent(event);
}

void QsciLexerCPP_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_childEvent(event);
}

void QsciLexerCPP_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_customEvent(event);
}

void QsciLexerCPP_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_connectNotify(signal);
}

void QsciLexerCPP_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerCPP*)(self) )->virtualbase_disconnectNotify(signal);
}

bool QsciLexerCPP_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerCPP*)(self) )->protectedbase_readProperties(qs, prefix);
}

bool QsciLexerCPP_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->protectedbase_writeProperties(qs, prefix);
}

QObject* QsciLexerCPP_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->protectedbase_sender();
}

int QsciLexerCPP_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->protectedbase_senderSignalIndex();
}

int QsciLexerCPP_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->protectedbase_receivers(signal);
}

bool QsciLexerCPP_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQsciLexerCPP*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QsciLexerCPP_staticMetaObject() { return &QsciLexerCPP::staticMetaObject; }
void QsciLexerCPP_delete(QsciLexerCPP* self) {
	delete self;
}

