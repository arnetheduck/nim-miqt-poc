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
#include <qscilexervhdl.h>
#include "gen_qscilexervhdl.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexerVHDL final : public QsciLexerVHDL {
	struct QsciLexerVHDL_VTable* vtbl;
public:

	MiqtVirtualQsciLexerVHDL(struct QsciLexerVHDL_VTable* vtbl): QsciLexerVHDL(), vtbl(vtbl) {};
	MiqtVirtualQsciLexerVHDL(struct QsciLexerVHDL_VTable* vtbl, QObject* parent): QsciLexerVHDL(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciLexerVHDL() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciLexerVHDL::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciLexerVHDL::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciLexerVHDL::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciLexerVHDL::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciLexerVHDL::qt_metacall(param1, param2, param3);
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

		return QsciLexerVHDL::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldComments(bool fold) override {
		if (vtbl->setFoldComments == 0) {
			QsciLexerVHDL::setFoldComments(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldComments(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldComments(bool fold) {

		QsciLexerVHDL::setFoldComments(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldCompact(bool fold) override {
		if (vtbl->setFoldCompact == 0) {
			QsciLexerVHDL::setFoldCompact(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldCompact(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldCompact(bool fold) {

		QsciLexerVHDL::setFoldCompact(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldAtElse(bool fold) override {
		if (vtbl->setFoldAtElse == 0) {
			QsciLexerVHDL::setFoldAtElse(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldAtElse(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldAtElse(bool fold) {

		QsciLexerVHDL::setFoldAtElse(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldAtBegin(bool fold) override {
		if (vtbl->setFoldAtBegin == 0) {
			QsciLexerVHDL::setFoldAtBegin(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldAtBegin(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldAtBegin(bool fold) {

		QsciLexerVHDL::setFoldAtBegin(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldAtParenthesis(bool fold) override {
		if (vtbl->setFoldAtParenthesis == 0) {
			QsciLexerVHDL::setFoldAtParenthesis(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldAtParenthesis(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldAtParenthesis(bool fold) {

		QsciLexerVHDL::setFoldAtParenthesis(fold);

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
			return QsciLexerVHDL::lexer();
		}


		const char* callback_return_value = vtbl->lexer(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexerVHDL::lexer();

	}

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (vtbl->lexerId == 0) {
			return QsciLexerVHDL::lexerId();
		}


		int callback_return_value = vtbl->lexerId(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexerVHDL::lexerId();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (vtbl->autoCompletionFillups == 0) {
			return QsciLexerVHDL::autoCompletionFillups();
		}


		const char* callback_return_value = vtbl->autoCompletionFillups(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexerVHDL::autoCompletionFillups();

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (vtbl->autoCompletionWordSeparators == 0) {
			return QsciLexerVHDL::autoCompletionWordSeparators();
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

		QStringList _ret = QsciLexerVHDL::autoCompletionWordSeparators();
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
			return QsciLexerVHDL::blockEnd(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockEnd(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexerVHDL::blockEnd(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (vtbl->blockLookback == 0) {
			return QsciLexerVHDL::blockLookback();
		}


		int callback_return_value = vtbl->blockLookback(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexerVHDL::blockLookback();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (vtbl->blockStart == 0) {
			return QsciLexerVHDL::blockStart(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStart(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexerVHDL::blockStart(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (vtbl->blockStartKeyword == 0) {
			return QsciLexerVHDL::blockStartKeyword(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStartKeyword(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexerVHDL::blockStartKeyword(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (vtbl->braceStyle == 0) {
			return QsciLexerVHDL::braceStyle();
		}


		int callback_return_value = vtbl->braceStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexerVHDL::braceStyle();

	}

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (vtbl->caseSensitive == 0) {
			return QsciLexerVHDL::caseSensitive();
		}


		bool callback_return_value = vtbl->caseSensitive(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexerVHDL::caseSensitive();

	}

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (vtbl->color == 0) {
			return QsciLexerVHDL::color(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->color(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexerVHDL::color(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (vtbl->eolFill == 0) {
			return QsciLexerVHDL::eolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->eolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexerVHDL::eolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (vtbl->font == 0) {
			return QsciLexerVHDL::font(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->font(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexerVHDL::font(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (vtbl->indentationGuideView == 0) {
			return QsciLexerVHDL::indentationGuideView();
		}


		int callback_return_value = vtbl->indentationGuideView(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexerVHDL::indentationGuideView();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (vtbl->keywords == 0) {
			return QsciLexerVHDL::keywords(set);
		}

		int sigval1 = set;

		const char* callback_return_value = vtbl->keywords(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexerVHDL::keywords(static_cast<int>(set));

	}

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (vtbl->defaultStyle == 0) {
			return QsciLexerVHDL::defaultStyle();
		}


		int callback_return_value = vtbl->defaultStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexerVHDL::defaultStyle();

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
			return QsciLexerVHDL::paper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->paper(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexerVHDL::paper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (vtbl->defaultColorWithStyle == 0) {
			return QsciLexerVHDL::defaultColor(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultColorWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexerVHDL::defaultColor(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (vtbl->defaultEolFill == 0) {
			return QsciLexerVHDL::defaultEolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->defaultEolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexerVHDL::defaultEolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (vtbl->defaultFontWithStyle == 0) {
			return QsciLexerVHDL::defaultFont(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->defaultFontWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexerVHDL::defaultFont(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (vtbl->defaultPaperWithStyle == 0) {
			return QsciLexerVHDL::defaultPaper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultPaperWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexerVHDL::defaultPaper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (vtbl->setEditor == 0) {
			QsciLexerVHDL::setEditor(editor);
			return;
		}

		QsciScintilla* sigval1 = editor;

		vtbl->setEditor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexerVHDL::setEditor(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (vtbl->refreshProperties == 0) {
			QsciLexerVHDL::refreshProperties();
			return;
		}


		vtbl->refreshProperties(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexerVHDL::refreshProperties();

	}

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (vtbl->styleBitsNeeded == 0) {
			return QsciLexerVHDL::styleBitsNeeded();
		}


		int callback_return_value = vtbl->styleBitsNeeded(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexerVHDL::styleBitsNeeded();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (vtbl->wordCharacters == 0) {
			return QsciLexerVHDL::wordCharacters();
		}


		const char* callback_return_value = vtbl->wordCharacters(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexerVHDL::wordCharacters();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (vtbl->setAutoIndentStyle == 0) {
			QsciLexerVHDL::setAutoIndentStyle(autoindentstyle);
			return;
		}

		int sigval1 = autoindentstyle;

		vtbl->setAutoIndentStyle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexerVHDL::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (vtbl->setColor == 0) {
			QsciLexerVHDL::setColor(c, style);
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

		QsciLexerVHDL::setColor(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (vtbl->setEolFill == 0) {
			QsciLexerVHDL::setEolFill(eoffill, style);
			return;
		}

		bool sigval1 = eoffill;
		int sigval2 = style;

		vtbl->setEolFill(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexerVHDL::setEolFill(eoffill, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (vtbl->setFont == 0) {
			QsciLexerVHDL::setFont(f, style);
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

		QsciLexerVHDL::setFont(*f, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (vtbl->setPaper == 0) {
			QsciLexerVHDL::setPaper(c, style);
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

		QsciLexerVHDL::setPaper(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (vtbl->readProperties == 0) {
			return QsciLexerVHDL::readProperties(qs, prefix);
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

		return QsciLexerVHDL::readProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (vtbl->writeProperties == 0) {
			return QsciLexerVHDL::writeProperties(qs, prefix);
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

		return QsciLexerVHDL::writeProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QsciLexerVHDL::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexerVHDL::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciLexerVHDL::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexerVHDL::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciLexerVHDL::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexerVHDL::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciLexerVHDL::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexerVHDL::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciLexerVHDL::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexerVHDL::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciLexerVHDL::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexerVHDL::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciLexerVHDL::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexerVHDL::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerVHDL::readProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerVHDL::writeProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QsciLexerVHDL::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QsciLexerVHDL::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QsciLexerVHDL::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QsciLexerVHDL::isSignalConnected(*signal);

	}

};

QsciLexerVHDL* QsciLexerVHDL_new(struct QsciLexerVHDL_VTable* vtbl) {
	return new MiqtVirtualQsciLexerVHDL(vtbl);
}

QsciLexerVHDL* QsciLexerVHDL_new2(struct QsciLexerVHDL_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQsciLexerVHDL(vtbl, parent);
}

void QsciLexerVHDL_virtbase(QsciLexerVHDL* src, QsciLexer** outptr_QsciLexer) {
	*outptr_QsciLexer = static_cast<QsciLexer*>(src);
}

QMetaObject* QsciLexerVHDL_metaObject(const QsciLexerVHDL* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciLexerVHDL_metacast(QsciLexerVHDL* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciLexerVHDL_metacall(QsciLexerVHDL* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciLexerVHDL_tr(const char* s) {
	QString _ret = QsciLexerVHDL::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerVHDL_language(const QsciLexerVHDL* self) {
	return (const char*) self->language();
}

const char* QsciLexerVHDL_lexer(const QsciLexerVHDL* self) {
	return (const char*) self->lexer();
}

int QsciLexerVHDL_braceStyle(const QsciLexerVHDL* self) {
	return self->braceStyle();
}

QColor* QsciLexerVHDL_defaultColor(const QsciLexerVHDL* self, int style) {
	return new QColor(self->defaultColor(static_cast<int>(style)));
}

bool QsciLexerVHDL_defaultEolFill(const QsciLexerVHDL* self, int style) {
	return self->defaultEolFill(static_cast<int>(style));
}

QFont* QsciLexerVHDL_defaultFont(const QsciLexerVHDL* self, int style) {
	return new QFont(self->defaultFont(static_cast<int>(style)));
}

QColor* QsciLexerVHDL_defaultPaper(const QsciLexerVHDL* self, int style) {
	return new QColor(self->defaultPaper(static_cast<int>(style)));
}

const char* QsciLexerVHDL_keywords(const QsciLexerVHDL* self, int set) {
	return (const char*) self->keywords(static_cast<int>(set));
}

struct miqt_string QsciLexerVHDL_description(const QsciLexerVHDL* self, int style) {
	QString _ret = self->description(static_cast<int>(style));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciLexerVHDL_refreshProperties(QsciLexerVHDL* self) {
	self->refreshProperties();
}

bool QsciLexerVHDL_foldComments(const QsciLexerVHDL* self) {
	return self->foldComments();
}

bool QsciLexerVHDL_foldCompact(const QsciLexerVHDL* self) {
	return self->foldCompact();
}

bool QsciLexerVHDL_foldAtElse(const QsciLexerVHDL* self) {
	return self->foldAtElse();
}

bool QsciLexerVHDL_foldAtBegin(const QsciLexerVHDL* self) {
	return self->foldAtBegin();
}

bool QsciLexerVHDL_foldAtParenthesis(const QsciLexerVHDL* self) {
	return self->foldAtParenthesis();
}

void QsciLexerVHDL_setFoldComments(QsciLexerVHDL* self, bool fold) {
	self->setFoldComments(fold);
}

void QsciLexerVHDL_setFoldCompact(QsciLexerVHDL* self, bool fold) {
	self->setFoldCompact(fold);
}

void QsciLexerVHDL_setFoldAtElse(QsciLexerVHDL* self, bool fold) {
	self->setFoldAtElse(fold);
}

void QsciLexerVHDL_setFoldAtBegin(QsciLexerVHDL* self, bool fold) {
	self->setFoldAtBegin(fold);
}

void QsciLexerVHDL_setFoldAtParenthesis(QsciLexerVHDL* self, bool fold) {
	self->setFoldAtParenthesis(fold);
}

struct miqt_string QsciLexerVHDL_tr2(const char* s, const char* c) {
	QString _ret = QsciLexerVHDL::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerVHDL_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciLexerVHDL::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QsciLexerVHDL_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_metaObject();
}

void* QsciLexerVHDL_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_metacast(param1);
}

int QsciLexerVHDL_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QsciLexerVHDL_virtualbase_setFoldComments(void* self, bool fold) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setFoldComments(fold);
}

void QsciLexerVHDL_virtualbase_setFoldCompact(void* self, bool fold) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setFoldCompact(fold);
}

void QsciLexerVHDL_virtualbase_setFoldAtElse(void* self, bool fold) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setFoldAtElse(fold);
}

void QsciLexerVHDL_virtualbase_setFoldAtBegin(void* self, bool fold) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setFoldAtBegin(fold);
}

void QsciLexerVHDL_virtualbase_setFoldAtParenthesis(void* self, bool fold) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setFoldAtParenthesis(fold);
}

const char* QsciLexerVHDL_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_lexer();
}

int QsciLexerVHDL_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_lexerId();
}

const char* QsciLexerVHDL_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_autoCompletionFillups();
}

struct miqt_array /* of struct miqt_string */  QsciLexerVHDL_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_autoCompletionWordSeparators();
}

const char* QsciLexerVHDL_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_blockEnd(style);
}

int QsciLexerVHDL_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_blockLookback();
}

const char* QsciLexerVHDL_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_blockStart(style);
}

const char* QsciLexerVHDL_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_blockStartKeyword(style);
}

int QsciLexerVHDL_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_braceStyle();
}

bool QsciLexerVHDL_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_caseSensitive();
}

QColor* QsciLexerVHDL_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_color(style);
}

bool QsciLexerVHDL_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_eolFill(style);
}

QFont* QsciLexerVHDL_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_font(style);
}

int QsciLexerVHDL_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_indentationGuideView();
}

const char* QsciLexerVHDL_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_keywords(set);
}

int QsciLexerVHDL_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_defaultStyle();
}

QColor* QsciLexerVHDL_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_paper(style);
}

QColor* QsciLexerVHDL_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexerVHDL_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_defaultEolFill(style);
}

QFont* QsciLexerVHDL_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_defaultFontWithStyle(style);
}

QColor* QsciLexerVHDL_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

void QsciLexerVHDL_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setEditor(editor);
}

void QsciLexerVHDL_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_refreshProperties();
}

int QsciLexerVHDL_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_styleBitsNeeded();
}

const char* QsciLexerVHDL_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_wordCharacters();
}

void QsciLexerVHDL_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

void QsciLexerVHDL_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setColor(c, style);
}

void QsciLexerVHDL_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setEolFill(eoffill, style);
}

void QsciLexerVHDL_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setFont(f, style);
}

void QsciLexerVHDL_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexerVHDL_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexerVHDL_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexerVHDL_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_event(event);
}

bool QsciLexerVHDL_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciLexerVHDL_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_timerEvent(event);
}

void QsciLexerVHDL_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_childEvent(event);
}

void QsciLexerVHDL_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_customEvent(event);
}

void QsciLexerVHDL_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_connectNotify(signal);
}

void QsciLexerVHDL_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerVHDL*)(self) )->virtualbase_disconnectNotify(signal);
}

bool QsciLexerVHDL_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerVHDL*)(self) )->protectedbase_readProperties(qs, prefix);
}

bool QsciLexerVHDL_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->protectedbase_writeProperties(qs, prefix);
}

QObject* QsciLexerVHDL_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->protectedbase_sender();
}

int QsciLexerVHDL_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->protectedbase_senderSignalIndex();
}

int QsciLexerVHDL_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->protectedbase_receivers(signal);
}

bool QsciLexerVHDL_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQsciLexerVHDL*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QsciLexerVHDL_staticMetaObject() { return &QsciLexerVHDL::staticMetaObject; }
void QsciLexerVHDL_delete(QsciLexerVHDL* self) {
	delete self;
}

