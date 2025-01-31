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
#include <qscilexercss.h>
#include "gen_qscilexercss.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexerCSS final : public QsciLexerCSS {
	struct QsciLexerCSS_VTable* vtbl;
public:

	MiqtVirtualQsciLexerCSS(struct QsciLexerCSS_VTable* vtbl): QsciLexerCSS(), vtbl(vtbl) {};
	MiqtVirtualQsciLexerCSS(struct QsciLexerCSS_VTable* vtbl, QObject* parent): QsciLexerCSS(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciLexerCSS() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciLexerCSS::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciLexerCSS::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciLexerCSS::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciLexerCSS::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciLexerCSS::qt_metacall(param1, param2, param3);
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

		return QsciLexerCSS::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldComments(bool fold) override {
		if (vtbl->setFoldComments == 0) {
			QsciLexerCSS::setFoldComments(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldComments(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldComments(bool fold) {

		QsciLexerCSS::setFoldComments(fold);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldCompact(bool fold) override {
		if (vtbl->setFoldCompact == 0) {
			QsciLexerCSS::setFoldCompact(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldCompact(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldCompact(bool fold) {

		QsciLexerCSS::setFoldCompact(fold);

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
			return QsciLexerCSS::lexer();
		}


		const char* callback_return_value = vtbl->lexer(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexerCSS::lexer();

	}

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (vtbl->lexerId == 0) {
			return QsciLexerCSS::lexerId();
		}


		int callback_return_value = vtbl->lexerId(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexerCSS::lexerId();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (vtbl->autoCompletionFillups == 0) {
			return QsciLexerCSS::autoCompletionFillups();
		}


		const char* callback_return_value = vtbl->autoCompletionFillups(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexerCSS::autoCompletionFillups();

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (vtbl->autoCompletionWordSeparators == 0) {
			return QsciLexerCSS::autoCompletionWordSeparators();
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

		QStringList _ret = QsciLexerCSS::autoCompletionWordSeparators();
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
			return QsciLexerCSS::blockEnd(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockEnd(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexerCSS::blockEnd(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (vtbl->blockLookback == 0) {
			return QsciLexerCSS::blockLookback();
		}


		int callback_return_value = vtbl->blockLookback(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexerCSS::blockLookback();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (vtbl->blockStart == 0) {
			return QsciLexerCSS::blockStart(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStart(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexerCSS::blockStart(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (vtbl->blockStartKeyword == 0) {
			return QsciLexerCSS::blockStartKeyword(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStartKeyword(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexerCSS::blockStartKeyword(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (vtbl->braceStyle == 0) {
			return QsciLexerCSS::braceStyle();
		}


		int callback_return_value = vtbl->braceStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexerCSS::braceStyle();

	}

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (vtbl->caseSensitive == 0) {
			return QsciLexerCSS::caseSensitive();
		}


		bool callback_return_value = vtbl->caseSensitive(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexerCSS::caseSensitive();

	}

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (vtbl->color == 0) {
			return QsciLexerCSS::color(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->color(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexerCSS::color(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (vtbl->eolFill == 0) {
			return QsciLexerCSS::eolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->eolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexerCSS::eolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (vtbl->font == 0) {
			return QsciLexerCSS::font(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->font(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexerCSS::font(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (vtbl->indentationGuideView == 0) {
			return QsciLexerCSS::indentationGuideView();
		}


		int callback_return_value = vtbl->indentationGuideView(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexerCSS::indentationGuideView();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (vtbl->keywords == 0) {
			return QsciLexerCSS::keywords(set);
		}

		int sigval1 = set;

		const char* callback_return_value = vtbl->keywords(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexerCSS::keywords(static_cast<int>(set));

	}

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (vtbl->defaultStyle == 0) {
			return QsciLexerCSS::defaultStyle();
		}


		int callback_return_value = vtbl->defaultStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexerCSS::defaultStyle();

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
			return QsciLexerCSS::paper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->paper(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexerCSS::paper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (vtbl->defaultColorWithStyle == 0) {
			return QsciLexerCSS::defaultColor(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultColorWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexerCSS::defaultColor(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (vtbl->defaultEolFill == 0) {
			return QsciLexerCSS::defaultEolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->defaultEolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexerCSS::defaultEolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (vtbl->defaultFontWithStyle == 0) {
			return QsciLexerCSS::defaultFont(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->defaultFontWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexerCSS::defaultFont(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (vtbl->defaultPaperWithStyle == 0) {
			return QsciLexerCSS::defaultPaper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultPaperWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexerCSS::defaultPaper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (vtbl->setEditor == 0) {
			QsciLexerCSS::setEditor(editor);
			return;
		}

		QsciScintilla* sigval1 = editor;

		vtbl->setEditor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexerCSS::setEditor(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (vtbl->refreshProperties == 0) {
			QsciLexerCSS::refreshProperties();
			return;
		}


		vtbl->refreshProperties(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexerCSS::refreshProperties();

	}

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (vtbl->styleBitsNeeded == 0) {
			return QsciLexerCSS::styleBitsNeeded();
		}


		int callback_return_value = vtbl->styleBitsNeeded(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexerCSS::styleBitsNeeded();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (vtbl->wordCharacters == 0) {
			return QsciLexerCSS::wordCharacters();
		}


		const char* callback_return_value = vtbl->wordCharacters(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexerCSS::wordCharacters();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (vtbl->setAutoIndentStyle == 0) {
			QsciLexerCSS::setAutoIndentStyle(autoindentstyle);
			return;
		}

		int sigval1 = autoindentstyle;

		vtbl->setAutoIndentStyle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexerCSS::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (vtbl->setColor == 0) {
			QsciLexerCSS::setColor(c, style);
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

		QsciLexerCSS::setColor(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (vtbl->setEolFill == 0) {
			QsciLexerCSS::setEolFill(eoffill, style);
			return;
		}

		bool sigval1 = eoffill;
		int sigval2 = style;

		vtbl->setEolFill(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexerCSS::setEolFill(eoffill, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (vtbl->setFont == 0) {
			QsciLexerCSS::setFont(f, style);
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

		QsciLexerCSS::setFont(*f, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (vtbl->setPaper == 0) {
			QsciLexerCSS::setPaper(c, style);
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

		QsciLexerCSS::setPaper(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (vtbl->readProperties == 0) {
			return QsciLexerCSS::readProperties(qs, prefix);
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

		return QsciLexerCSS::readProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (vtbl->writeProperties == 0) {
			return QsciLexerCSS::writeProperties(qs, prefix);
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

		return QsciLexerCSS::writeProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QsciLexerCSS::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexerCSS::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciLexerCSS::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexerCSS::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciLexerCSS::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexerCSS::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciLexerCSS::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexerCSS::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciLexerCSS::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexerCSS::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciLexerCSS::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexerCSS::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciLexerCSS::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexerCSS::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_readProperties(QSettings* qs, struct miqt_string prefix) {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerCSS::readProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_writeProperties(QSettings* qs, struct miqt_string prefix) const {
		QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);

		return QsciLexerCSS::writeProperties(*qs, prefix_QString);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QsciLexerCSS::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QsciLexerCSS::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QsciLexerCSS::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QsciLexerCSS::isSignalConnected(*signal);

	}

};

QsciLexerCSS* QsciLexerCSS_new(struct QsciLexerCSS_VTable* vtbl) {
	return new MiqtVirtualQsciLexerCSS(vtbl);
}

QsciLexerCSS* QsciLexerCSS_new2(struct QsciLexerCSS_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQsciLexerCSS(vtbl, parent);
}

void QsciLexerCSS_virtbase(QsciLexerCSS* src, QsciLexer** outptr_QsciLexer) {
	*outptr_QsciLexer = static_cast<QsciLexer*>(src);
}

QMetaObject* QsciLexerCSS_metaObject(const QsciLexerCSS* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciLexerCSS_metacast(QsciLexerCSS* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciLexerCSS_metacall(QsciLexerCSS* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciLexerCSS_tr(const char* s) {
	QString _ret = QsciLexerCSS::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerCSS_trUtf8(const char* s) {
	QString _ret = QsciLexerCSS::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerCSS_language(const QsciLexerCSS* self) {
	return (const char*) self->language();
}

const char* QsciLexerCSS_lexer(const QsciLexerCSS* self) {
	return (const char*) self->lexer();
}

const char* QsciLexerCSS_blockEnd(const QsciLexerCSS* self) {
	return (const char*) self->blockEnd();
}

const char* QsciLexerCSS_blockStart(const QsciLexerCSS* self) {
	return (const char*) self->blockStart();
}

const char* QsciLexerCSS_wordCharacters(const QsciLexerCSS* self) {
	return (const char*) self->wordCharacters();
}

QColor* QsciLexerCSS_defaultColor(const QsciLexerCSS* self, int style) {
	return new QColor(self->defaultColor(static_cast<int>(style)));
}

QFont* QsciLexerCSS_defaultFont(const QsciLexerCSS* self, int style) {
	return new QFont(self->defaultFont(static_cast<int>(style)));
}

const char* QsciLexerCSS_keywords(const QsciLexerCSS* self, int set) {
	return (const char*) self->keywords(static_cast<int>(set));
}

struct miqt_string QsciLexerCSS_description(const QsciLexerCSS* self, int style) {
	QString _ret = self->description(static_cast<int>(style));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciLexerCSS_refreshProperties(QsciLexerCSS* self) {
	self->refreshProperties();
}

bool QsciLexerCSS_foldComments(const QsciLexerCSS* self) {
	return self->foldComments();
}

bool QsciLexerCSS_foldCompact(const QsciLexerCSS* self) {
	return self->foldCompact();
}

void QsciLexerCSS_setHSSLanguage(QsciLexerCSS* self, bool enabled) {
	self->setHSSLanguage(enabled);
}

bool QsciLexerCSS_HSSLanguage(const QsciLexerCSS* self) {
	return self->HSSLanguage();
}

void QsciLexerCSS_setLessLanguage(QsciLexerCSS* self, bool enabled) {
	self->setLessLanguage(enabled);
}

bool QsciLexerCSS_LessLanguage(const QsciLexerCSS* self) {
	return self->LessLanguage();
}

void QsciLexerCSS_setSCSSLanguage(QsciLexerCSS* self, bool enabled) {
	self->setSCSSLanguage(enabled);
}

bool QsciLexerCSS_SCSSLanguage(const QsciLexerCSS* self) {
	return self->SCSSLanguage();
}

void QsciLexerCSS_setFoldComments(QsciLexerCSS* self, bool fold) {
	self->setFoldComments(fold);
}

void QsciLexerCSS_setFoldCompact(QsciLexerCSS* self, bool fold) {
	self->setFoldCompact(fold);
}

struct miqt_string QsciLexerCSS_tr2(const char* s, const char* c) {
	QString _ret = QsciLexerCSS::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerCSS_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciLexerCSS::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerCSS_trUtf82(const char* s, const char* c) {
	QString _ret = QsciLexerCSS::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerCSS_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QsciLexerCSS::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerCSS_blockEnd1(const QsciLexerCSS* self, int* style) {
	return (const char*) self->blockEnd(static_cast<int*>(style));
}

const char* QsciLexerCSS_blockStart1(const QsciLexerCSS* self, int* style) {
	return (const char*) self->blockStart(static_cast<int*>(style));
}

QMetaObject* QsciLexerCSS_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_metaObject();
}

void* QsciLexerCSS_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_metacast(param1);
}

int QsciLexerCSS_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QsciLexerCSS_virtualbase_setFoldComments(void* self, bool fold) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setFoldComments(fold);
}

void QsciLexerCSS_virtualbase_setFoldCompact(void* self, bool fold) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setFoldCompact(fold);
}

const char* QsciLexerCSS_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_lexer();
}

int QsciLexerCSS_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_lexerId();
}

const char* QsciLexerCSS_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_autoCompletionFillups();
}

struct miqt_array /* of struct miqt_string */  QsciLexerCSS_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_autoCompletionWordSeparators();
}

const char* QsciLexerCSS_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_blockEnd(style);
}

int QsciLexerCSS_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_blockLookback();
}

const char* QsciLexerCSS_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_blockStart(style);
}

const char* QsciLexerCSS_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_blockStartKeyword(style);
}

int QsciLexerCSS_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_braceStyle();
}

bool QsciLexerCSS_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_caseSensitive();
}

QColor* QsciLexerCSS_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_color(style);
}

bool QsciLexerCSS_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_eolFill(style);
}

QFont* QsciLexerCSS_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_font(style);
}

int QsciLexerCSS_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_indentationGuideView();
}

const char* QsciLexerCSS_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_keywords(set);
}

int QsciLexerCSS_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_defaultStyle();
}

QColor* QsciLexerCSS_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_paper(style);
}

QColor* QsciLexerCSS_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexerCSS_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_defaultEolFill(style);
}

QFont* QsciLexerCSS_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_defaultFontWithStyle(style);
}

QColor* QsciLexerCSS_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

void QsciLexerCSS_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setEditor(editor);
}

void QsciLexerCSS_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_refreshProperties();
}

int QsciLexerCSS_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_styleBitsNeeded();
}

const char* QsciLexerCSS_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_wordCharacters();
}

void QsciLexerCSS_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

void QsciLexerCSS_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setColor(c, style);
}

void QsciLexerCSS_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setEolFill(eoffill, style);
}

void QsciLexerCSS_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setFont(f, style);
}

void QsciLexerCSS_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexerCSS_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexerCSS_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexerCSS_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_event(event);
}

bool QsciLexerCSS_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciLexerCSS_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_timerEvent(event);
}

void QsciLexerCSS_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_childEvent(event);
}

void QsciLexerCSS_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_customEvent(event);
}

void QsciLexerCSS_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_connectNotify(signal);
}

void QsciLexerCSS_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerCSS*)(self) )->virtualbase_disconnectNotify(signal);
}

bool QsciLexerCSS_protectedbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerCSS*)(self) )->protectedbase_readProperties(qs, prefix);
}

bool QsciLexerCSS_protectedbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->protectedbase_writeProperties(qs, prefix);
}

QObject* QsciLexerCSS_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->protectedbase_sender();
}

int QsciLexerCSS_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->protectedbase_senderSignalIndex();
}

int QsciLexerCSS_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->protectedbase_receivers(signal);
}

bool QsciLexerCSS_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQsciLexerCSS*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QsciLexerCSS_staticMetaObject() { return &QsciLexerCSS::staticMetaObject; }
void QsciLexerCSS_delete(QsciLexerCSS* self) {
	delete self;
}

