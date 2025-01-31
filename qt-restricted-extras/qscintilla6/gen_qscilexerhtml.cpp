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

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexerHTML final : public QsciLexerHTML {
	struct QsciLexerHTML_VTable* vtbl;
public:

	MiqtVirtualQsciLexerHTML(struct QsciLexerHTML_VTable* vtbl): QsciLexerHTML(), vtbl(vtbl) {};
	MiqtVirtualQsciLexerHTML(struct QsciLexerHTML_VTable* vtbl, QObject* parent): QsciLexerHTML(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciLexerHTML() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciLexerHTML::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciLexerHTML::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciLexerHTML::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciLexerHTML::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciLexerHTML::qt_metacall(param1, param2, param3);
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

		return QsciLexerHTML::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldCompact(bool fold) override {
		if (vtbl->setFoldCompact == 0) {
			QsciLexerHTML::setFoldCompact(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldCompact(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldCompact(bool fold) {

		QsciLexerHTML::setFoldCompact(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldPreprocessor(bool fold) override {
		if (vtbl->setFoldPreprocessor == 0) {
			QsciLexerHTML::setFoldPreprocessor(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldPreprocessor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldPreprocessor(bool fold) {

		QsciLexerHTML::setFoldPreprocessor(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setCaseSensitiveTags(bool sens) override {
		if (vtbl->setCaseSensitiveTags == 0) {
			QsciLexerHTML::setCaseSensitiveTags(sens);
			return;
		}

		bool sigval1 = sens;

		vtbl->setCaseSensitiveTags(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setCaseSensitiveTags(bool sens) {

		QsciLexerHTML::setCaseSensitiveTags(sens);

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
			return QsciLexerHTML::lexer();
		}


		const char* callback_return_value = vtbl->lexer(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexerHTML::lexer();

	}

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (vtbl->lexerId == 0) {
			return QsciLexerHTML::lexerId();
		}


		int callback_return_value = vtbl->lexerId(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexerHTML::lexerId();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (vtbl->autoCompletionFillups == 0) {
			return QsciLexerHTML::autoCompletionFillups();
		}


		const char* callback_return_value = vtbl->autoCompletionFillups(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexerHTML::autoCompletionFillups();

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (vtbl->autoCompletionWordSeparators == 0) {
			return QsciLexerHTML::autoCompletionWordSeparators();
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

	// Subclass to allow providing a Go implementation
	virtual const char* blockEnd(int* style) const override {
		if (vtbl->blockEnd == 0) {
			return QsciLexerHTML::blockEnd(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockEnd(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexerHTML::blockEnd(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (vtbl->blockLookback == 0) {
			return QsciLexerHTML::blockLookback();
		}


		int callback_return_value = vtbl->blockLookback(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexerHTML::blockLookback();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (vtbl->blockStart == 0) {
			return QsciLexerHTML::blockStart(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStart(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexerHTML::blockStart(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (vtbl->blockStartKeyword == 0) {
			return QsciLexerHTML::blockStartKeyword(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStartKeyword(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexerHTML::blockStartKeyword(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (vtbl->braceStyle == 0) {
			return QsciLexerHTML::braceStyle();
		}


		int callback_return_value = vtbl->braceStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexerHTML::braceStyle();

	}

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (vtbl->caseSensitive == 0) {
			return QsciLexerHTML::caseSensitive();
		}


		bool callback_return_value = vtbl->caseSensitive(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexerHTML::caseSensitive();

	}

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (vtbl->color == 0) {
			return QsciLexerHTML::color(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->color(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexerHTML::color(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (vtbl->eolFill == 0) {
			return QsciLexerHTML::eolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->eolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexerHTML::eolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (vtbl->font == 0) {
			return QsciLexerHTML::font(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->font(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexerHTML::font(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (vtbl->indentationGuideView == 0) {
			return QsciLexerHTML::indentationGuideView();
		}


		int callback_return_value = vtbl->indentationGuideView(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexerHTML::indentationGuideView();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (vtbl->keywords == 0) {
			return QsciLexerHTML::keywords(set);
		}

		int sigval1 = set;

		const char* callback_return_value = vtbl->keywords(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexerHTML::keywords(static_cast<int>(set));

	}

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (vtbl->defaultStyle == 0) {
			return QsciLexerHTML::defaultStyle();
		}


		int callback_return_value = vtbl->defaultStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexerHTML::defaultStyle();

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
			return QsciLexerHTML::paper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->paper(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexerHTML::paper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (vtbl->defaultColorWithStyle == 0) {
			return QsciLexerHTML::defaultColor(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultColorWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexerHTML::defaultColor(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (vtbl->defaultEolFill == 0) {
			return QsciLexerHTML::defaultEolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->defaultEolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexerHTML::defaultEolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (vtbl->defaultFontWithStyle == 0) {
			return QsciLexerHTML::defaultFont(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->defaultFontWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexerHTML::defaultFont(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (vtbl->defaultPaperWithStyle == 0) {
			return QsciLexerHTML::defaultPaper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultPaperWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexerHTML::defaultPaper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (vtbl->setEditor == 0) {
			QsciLexerHTML::setEditor(editor);
			return;
		}

		QsciScintilla* sigval1 = editor;

		vtbl->setEditor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexerHTML::setEditor(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (vtbl->refreshProperties == 0) {
			QsciLexerHTML::refreshProperties();
			return;
		}


		vtbl->refreshProperties(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexerHTML::refreshProperties();

	}

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (vtbl->styleBitsNeeded == 0) {
			return QsciLexerHTML::styleBitsNeeded();
		}


		int callback_return_value = vtbl->styleBitsNeeded(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexerHTML::styleBitsNeeded();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (vtbl->wordCharacters == 0) {
			return QsciLexerHTML::wordCharacters();
		}


		const char* callback_return_value = vtbl->wordCharacters(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexerHTML::wordCharacters();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (vtbl->setAutoIndentStyle == 0) {
			QsciLexerHTML::setAutoIndentStyle(autoindentstyle);
			return;
		}

		int sigval1 = autoindentstyle;

		vtbl->setAutoIndentStyle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexerHTML::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (vtbl->setColor == 0) {
			QsciLexerHTML::setColor(c, style);
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

		QsciLexerHTML::setColor(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (vtbl->setEolFill == 0) {
			QsciLexerHTML::setEolFill(eoffill, style);
			return;
		}

		bool sigval1 = eoffill;
		int sigval2 = style;

		vtbl->setEolFill(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexerHTML::setEolFill(eoffill, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (vtbl->setFont == 0) {
			QsciLexerHTML::setFont(f, style);
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

		QsciLexerHTML::setFont(*f, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (vtbl->setPaper == 0) {
			QsciLexerHTML::setPaper(c, style);
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

		QsciLexerHTML::setPaper(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (vtbl->readProperties == 0) {
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

		bool callback_return_value = vtbl->readProperties(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerHTML::readProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (vtbl->writeProperties == 0) {
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

		bool callback_return_value = vtbl->writeProperties(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerHTML::writeProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QsciLexerHTML::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexerHTML::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciLexerHTML::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexerHTML::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciLexerHTML::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexerHTML::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciLexerHTML::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexerHTML::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciLexerHTML::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexerHTML::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciLexerHTML::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexerHTML::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciLexerHTML::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexerHTML::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerHTML::readProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerHTML::writeProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QsciLexerHTML::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QsciLexerHTML::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QsciLexerHTML::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QsciLexerHTML::isSignalConnected(*signal);

	}

};

QsciLexerHTML* QsciLexerHTML_new(struct QsciLexerHTML_VTable* vtbl) {
	return new MiqtVirtualQsciLexerHTML(vtbl);
}

QsciLexerHTML* QsciLexerHTML_new2(struct QsciLexerHTML_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQsciLexerHTML(vtbl, parent);
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

QMetaObject* QsciLexerHTML_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_metaObject();
}

void* QsciLexerHTML_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_metacast(param1);
}

int QsciLexerHTML_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QsciLexerHTML_virtualbase_setFoldCompact(void* self, bool fold) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setFoldCompact(fold);
}

void QsciLexerHTML_virtualbase_setFoldPreprocessor(void* self, bool fold) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setFoldPreprocessor(fold);
}

void QsciLexerHTML_virtualbase_setCaseSensitiveTags(void* self, bool sens) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setCaseSensitiveTags(sens);
}

const char* QsciLexerHTML_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_lexer();
}

int QsciLexerHTML_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_lexerId();
}

const char* QsciLexerHTML_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_autoCompletionFillups();
}

struct miqt_array /* of struct miqt_string */  QsciLexerHTML_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_autoCompletionWordSeparators();
}

const char* QsciLexerHTML_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockEnd(style);
}

int QsciLexerHTML_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockLookback();
}

const char* QsciLexerHTML_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockStart(style);
}

const char* QsciLexerHTML_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_blockStartKeyword(style);
}

int QsciLexerHTML_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_braceStyle();
}

bool QsciLexerHTML_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_caseSensitive();
}

QColor* QsciLexerHTML_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_color(style);
}

bool QsciLexerHTML_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_eolFill(style);
}

QFont* QsciLexerHTML_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_font(style);
}

int QsciLexerHTML_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_indentationGuideView();
}

const char* QsciLexerHTML_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_keywords(set);
}

int QsciLexerHTML_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultStyle();
}

QColor* QsciLexerHTML_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_paper(style);
}

QColor* QsciLexerHTML_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexerHTML_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultEolFill(style);
}

QFont* QsciLexerHTML_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultFontWithStyle(style);
}

QColor* QsciLexerHTML_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

void QsciLexerHTML_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setEditor(editor);
}

void QsciLexerHTML_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_refreshProperties();
}

int QsciLexerHTML_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_styleBitsNeeded();
}

const char* QsciLexerHTML_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_wordCharacters();
}

void QsciLexerHTML_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

void QsciLexerHTML_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setColor(c, style);
}

void QsciLexerHTML_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setEolFill(eoffill, style);
}

void QsciLexerHTML_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setFont(f, style);
}

void QsciLexerHTML_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexerHTML_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexerHTML_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexerHTML_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_event(event);
}

bool QsciLexerHTML_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciLexerHTML_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_timerEvent(event);
}

void QsciLexerHTML_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_childEvent(event);
}

void QsciLexerHTML_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_customEvent(event);
}

void QsciLexerHTML_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_connectNotify(signal);
}

void QsciLexerHTML_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerHTML*)(self) )->virtualbase_disconnectNotify(signal);
}

bool QsciLexerHTML_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerHTML*)(self) )->protectedbase_readProperties(qs, prefix);
}

bool QsciLexerHTML_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->protectedbase_writeProperties(qs, prefix);
}

QObject* QsciLexerHTML_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->protectedbase_sender();
}

int QsciLexerHTML_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->protectedbase_senderSignalIndex();
}

int QsciLexerHTML_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->protectedbase_receivers(signal);
}

bool QsciLexerHTML_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQsciLexerHTML*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QsciLexerHTML_staticMetaObject() { return &QsciLexerHTML::staticMetaObject; }
void QsciLexerHTML_delete(QsciLexerHTML* self) {
	delete self;
}

