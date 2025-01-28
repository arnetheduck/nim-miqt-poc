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
#include <qscilexeryaml.h>
#include "gen_qscilexeryaml.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexerYAML final : public QsciLexerYAML {
	struct QsciLexerYAML_VTable* vtbl;
public:

	MiqtVirtualQsciLexerYAML(struct QsciLexerYAML_VTable* vtbl): QsciLexerYAML(), vtbl(vtbl) {};
	MiqtVirtualQsciLexerYAML(struct QsciLexerYAML_VTable* vtbl, QObject* parent): QsciLexerYAML(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciLexerYAML() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciLexerYAML::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciLexerYAML::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciLexerYAML::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciLexerYAML::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciLexerYAML::qt_metacall(param1, param2, param3);
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

		return QsciLexerYAML::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setFoldComments(bool fold) override {
		if (vtbl->setFoldComments == 0) {
			QsciLexerYAML::setFoldComments(fold);
			return;
		}

		bool sigval1 = fold;

		vtbl->setFoldComments(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setFoldComments(bool fold) {

		QsciLexerYAML::setFoldComments(fold);

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
			return QsciLexerYAML::lexer();
		}


		const char* callback_return_value = vtbl->lexer(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexerYAML::lexer();

	}

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (vtbl->lexerId == 0) {
			return QsciLexerYAML::lexerId();
		}


		int callback_return_value = vtbl->lexerId(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexerYAML::lexerId();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (vtbl->autoCompletionFillups == 0) {
			return QsciLexerYAML::autoCompletionFillups();
		}


		const char* callback_return_value = vtbl->autoCompletionFillups(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexerYAML::autoCompletionFillups();

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (vtbl->autoCompletionWordSeparators == 0) {
			return QsciLexerYAML::autoCompletionWordSeparators();
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

		QStringList _ret = QsciLexerYAML::autoCompletionWordSeparators();
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
			return QsciLexerYAML::blockEnd(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockEnd(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexerYAML::blockEnd(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (vtbl->blockLookback == 0) {
			return QsciLexerYAML::blockLookback();
		}


		int callback_return_value = vtbl->blockLookback(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexerYAML::blockLookback();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (vtbl->blockStart == 0) {
			return QsciLexerYAML::blockStart(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStart(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexerYAML::blockStart(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (vtbl->blockStartKeyword == 0) {
			return QsciLexerYAML::blockStartKeyword(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStartKeyword(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexerYAML::blockStartKeyword(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (vtbl->braceStyle == 0) {
			return QsciLexerYAML::braceStyle();
		}


		int callback_return_value = vtbl->braceStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexerYAML::braceStyle();

	}

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (vtbl->caseSensitive == 0) {
			return QsciLexerYAML::caseSensitive();
		}


		bool callback_return_value = vtbl->caseSensitive(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexerYAML::caseSensitive();

	}

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (vtbl->color == 0) {
			return QsciLexerYAML::color(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->color(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexerYAML::color(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (vtbl->eolFill == 0) {
			return QsciLexerYAML::eolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->eolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexerYAML::eolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (vtbl->font == 0) {
			return QsciLexerYAML::font(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->font(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexerYAML::font(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (vtbl->indentationGuideView == 0) {
			return QsciLexerYAML::indentationGuideView();
		}


		int callback_return_value = vtbl->indentationGuideView(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexerYAML::indentationGuideView();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (vtbl->keywords == 0) {
			return QsciLexerYAML::keywords(set);
		}

		int sigval1 = set;

		const char* callback_return_value = vtbl->keywords(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexerYAML::keywords(static_cast<int>(set));

	}

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (vtbl->defaultStyle == 0) {
			return QsciLexerYAML::defaultStyle();
		}


		int callback_return_value = vtbl->defaultStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexerYAML::defaultStyle();

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
			return QsciLexerYAML::paper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->paper(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexerYAML::paper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (vtbl->defaultColorWithStyle == 0) {
			return QsciLexerYAML::defaultColor(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultColorWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexerYAML::defaultColor(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (vtbl->defaultEolFill == 0) {
			return QsciLexerYAML::defaultEolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->defaultEolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexerYAML::defaultEolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (vtbl->defaultFontWithStyle == 0) {
			return QsciLexerYAML::defaultFont(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->defaultFontWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexerYAML::defaultFont(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (vtbl->defaultPaperWithStyle == 0) {
			return QsciLexerYAML::defaultPaper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultPaperWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexerYAML::defaultPaper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (vtbl->setEditor == 0) {
			QsciLexerYAML::setEditor(editor);
			return;
		}

		QsciScintilla* sigval1 = editor;

		vtbl->setEditor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexerYAML::setEditor(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (vtbl->refreshProperties == 0) {
			QsciLexerYAML::refreshProperties();
			return;
		}


		vtbl->refreshProperties(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexerYAML::refreshProperties();

	}

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (vtbl->styleBitsNeeded == 0) {
			return QsciLexerYAML::styleBitsNeeded();
		}


		int callback_return_value = vtbl->styleBitsNeeded(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexerYAML::styleBitsNeeded();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (vtbl->wordCharacters == 0) {
			return QsciLexerYAML::wordCharacters();
		}


		const char* callback_return_value = vtbl->wordCharacters(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexerYAML::wordCharacters();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (vtbl->setAutoIndentStyle == 0) {
			QsciLexerYAML::setAutoIndentStyle(autoindentstyle);
			return;
		}

		int sigval1 = autoindentstyle;

		vtbl->setAutoIndentStyle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexerYAML::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (vtbl->setColor == 0) {
			QsciLexerYAML::setColor(c, style);
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

		QsciLexerYAML::setColor(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (vtbl->setEolFill == 0) {
			QsciLexerYAML::setEolFill(eoffill, style);
			return;
		}

		bool sigval1 = eoffill;
		int sigval2 = style;

		vtbl->setEolFill(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexerYAML::setEolFill(eoffill, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (vtbl->setFont == 0) {
			QsciLexerYAML::setFont(f, style);
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

		QsciLexerYAML::setFont(*f, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (vtbl->setPaper == 0) {
			QsciLexerYAML::setPaper(c, style);
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

		QsciLexerYAML::setPaper(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (vtbl->readProperties == 0) {
			return QsciLexerYAML::readProperties(qs, prefix);
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

		return QsciLexerYAML::readProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (vtbl->writeProperties == 0) {
			return QsciLexerYAML::writeProperties(qs, prefix);
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

		return QsciLexerYAML::writeProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QsciLexerYAML::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexerYAML::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciLexerYAML::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexerYAML::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciLexerYAML::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexerYAML::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciLexerYAML::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexerYAML::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciLexerYAML::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexerYAML::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciLexerYAML::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexerYAML::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciLexerYAML::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexerYAML::disconnectNotify(*signal);

	}

};

QsciLexerYAML* QsciLexerYAML_new(struct QsciLexerYAML_VTable* vtbl) {
	return new MiqtVirtualQsciLexerYAML(vtbl);
}

QsciLexerYAML* QsciLexerYAML_new2(struct QsciLexerYAML_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQsciLexerYAML(vtbl, parent);
}

void QsciLexerYAML_virtbase(QsciLexerYAML* src, QsciLexer** outptr_QsciLexer) {
	*outptr_QsciLexer = static_cast<QsciLexer*>(src);
}

QMetaObject* QsciLexerYAML_metaObject(const QsciLexerYAML* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciLexerYAML_metacast(QsciLexerYAML* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciLexerYAML_metacall(QsciLexerYAML* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciLexerYAML_tr(const char* s) {
	QString _ret = QsciLexerYAML::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerYAML_trUtf8(const char* s) {
	QString _ret = QsciLexerYAML::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexerYAML_language(const QsciLexerYAML* self) {
	return (const char*) self->language();
}

const char* QsciLexerYAML_lexer(const QsciLexerYAML* self) {
	return (const char*) self->lexer();
}

QColor* QsciLexerYAML_defaultColor(const QsciLexerYAML* self, int style) {
	return new QColor(self->defaultColor(static_cast<int>(style)));
}

bool QsciLexerYAML_defaultEolFill(const QsciLexerYAML* self, int style) {
	return self->defaultEolFill(static_cast<int>(style));
}

QFont* QsciLexerYAML_defaultFont(const QsciLexerYAML* self, int style) {
	return new QFont(self->defaultFont(static_cast<int>(style)));
}

QColor* QsciLexerYAML_defaultPaper(const QsciLexerYAML* self, int style) {
	return new QColor(self->defaultPaper(static_cast<int>(style)));
}

const char* QsciLexerYAML_keywords(const QsciLexerYAML* self, int set) {
	return (const char*) self->keywords(static_cast<int>(set));
}

struct miqt_string QsciLexerYAML_description(const QsciLexerYAML* self, int style) {
	QString _ret = self->description(static_cast<int>(style));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciLexerYAML_refreshProperties(QsciLexerYAML* self) {
	self->refreshProperties();
}

bool QsciLexerYAML_foldComments(const QsciLexerYAML* self) {
	return self->foldComments();
}

void QsciLexerYAML_setFoldComments(QsciLexerYAML* self, bool fold) {
	self->setFoldComments(fold);
}

struct miqt_string QsciLexerYAML_tr2(const char* s, const char* c) {
	QString _ret = QsciLexerYAML::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerYAML_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciLexerYAML::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerYAML_trUtf82(const char* s, const char* c) {
	QString _ret = QsciLexerYAML::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexerYAML_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QsciLexerYAML::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QsciLexerYAML_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_metaObject();
}

void* QsciLexerYAML_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_metacast(param1);
}

int QsciLexerYAML_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QsciLexerYAML_virtualbase_setFoldComments(void* self, bool fold) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_setFoldComments(fold);
}

const char* QsciLexerYAML_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_lexer();
}

int QsciLexerYAML_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_lexerId();
}

const char* QsciLexerYAML_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_autoCompletionFillups();
}

struct miqt_array /* of struct miqt_string */  QsciLexerYAML_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_autoCompletionWordSeparators();
}

const char* QsciLexerYAML_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_blockEnd(style);
}

int QsciLexerYAML_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_blockLookback();
}

const char* QsciLexerYAML_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_blockStart(style);
}

const char* QsciLexerYAML_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_blockStartKeyword(style);
}

int QsciLexerYAML_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_braceStyle();
}

bool QsciLexerYAML_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_caseSensitive();
}

QColor* QsciLexerYAML_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_color(style);
}

bool QsciLexerYAML_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_eolFill(style);
}

QFont* QsciLexerYAML_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_font(style);
}

int QsciLexerYAML_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_indentationGuideView();
}

const char* QsciLexerYAML_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_keywords(set);
}

int QsciLexerYAML_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_defaultStyle();
}

QColor* QsciLexerYAML_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_paper(style);
}

QColor* QsciLexerYAML_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexerYAML_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_defaultEolFill(style);
}

QFont* QsciLexerYAML_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_defaultFontWithStyle(style);
}

QColor* QsciLexerYAML_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

void QsciLexerYAML_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_setEditor(editor);
}

void QsciLexerYAML_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_refreshProperties();
}

int QsciLexerYAML_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_styleBitsNeeded();
}

const char* QsciLexerYAML_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_wordCharacters();
}

void QsciLexerYAML_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

void QsciLexerYAML_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_setColor(c, style);
}

void QsciLexerYAML_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_setEolFill(eoffill, style);
}

void QsciLexerYAML_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_setFont(f, style);
}

void QsciLexerYAML_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexerYAML_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexerYAML_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexerYAML_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_event(event);
}

bool QsciLexerYAML_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciLexerYAML_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_timerEvent(event);
}

void QsciLexerYAML_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_childEvent(event);
}

void QsciLexerYAML_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_customEvent(event);
}

void QsciLexerYAML_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_connectNotify(signal);
}

void QsciLexerYAML_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexerYAML*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QsciLexerYAML_staticMetaObject() { return &QsciLexerYAML::staticMetaObject; }
void QsciLexerYAML_delete(QsciLexerYAML* self) {
	delete self;
}

