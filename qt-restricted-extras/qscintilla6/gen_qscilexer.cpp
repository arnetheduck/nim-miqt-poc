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
#include <qscilexer.h>
#include "gen_qscilexer.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QsciLexer_colorChanged(intptr_t, QColor*, int);
void miqt_exec_callback_QsciLexer_eolFillChanged(intptr_t, bool, int);
void miqt_exec_callback_QsciLexer_fontChanged(intptr_t, QFont*, int);
void miqt_exec_callback_QsciLexer_paperChanged(intptr_t, QColor*, int);
void miqt_exec_callback_QsciLexer_propertyChanged(intptr_t, const char*, const char*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciLexer final : public QsciLexer {
	struct QsciLexer_VTable* vtbl;
public:

	MiqtVirtualQsciLexer(struct QsciLexer_VTable* vtbl): QsciLexer(), vtbl(vtbl) {};
	MiqtVirtualQsciLexer(struct QsciLexer_VTable* vtbl, QObject* parent): QsciLexer(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciLexer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciLexer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciLexer::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciLexer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciLexer::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciLexer::qt_metacall(param1, param2, param3);
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

		return QsciLexer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

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
			return QsciLexer::lexer();
		}


		const char* callback_return_value = vtbl->lexer(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_lexer() const {

		return (const char*) QsciLexer::lexer();

	}

	// Subclass to allow providing a Go implementation
	virtual int lexerId() const override {
		if (vtbl->lexerId == 0) {
			return QsciLexer::lexerId();
		}


		int callback_return_value = vtbl->lexerId(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_lexerId() const {

		return QsciLexer::lexerId();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* autoCompletionFillups() const override {
		if (vtbl->autoCompletionFillups == 0) {
			return QsciLexer::autoCompletionFillups();
		}


		const char* callback_return_value = vtbl->autoCompletionFillups(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_autoCompletionFillups() const {

		return (const char*) QsciLexer::autoCompletionFillups();

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList autoCompletionWordSeparators() const override {
		if (vtbl->autoCompletionWordSeparators == 0) {
			return QsciLexer::autoCompletionWordSeparators();
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

		QStringList _ret = QsciLexer::autoCompletionWordSeparators();
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
			return QsciLexer::blockEnd(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockEnd(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockEnd(int* style) const {

		return (const char*) QsciLexer::blockEnd(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int blockLookback() const override {
		if (vtbl->blockLookback == 0) {
			return QsciLexer::blockLookback();
		}


		int callback_return_value = vtbl->blockLookback(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_blockLookback() const {

		return QsciLexer::blockLookback();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStart(int* style) const override {
		if (vtbl->blockStart == 0) {
			return QsciLexer::blockStart(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStart(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStart(int* style) const {

		return (const char*) QsciLexer::blockStart(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual const char* blockStartKeyword(int* style) const override {
		if (vtbl->blockStartKeyword == 0) {
			return QsciLexer::blockStartKeyword(style);
		}

		int* sigval1 = style;

		const char* callback_return_value = vtbl->blockStartKeyword(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_blockStartKeyword(int* style) const {

		return (const char*) QsciLexer::blockStartKeyword(static_cast<int*>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual int braceStyle() const override {
		if (vtbl->braceStyle == 0) {
			return QsciLexer::braceStyle();
		}


		int callback_return_value = vtbl->braceStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_braceStyle() const {

		return QsciLexer::braceStyle();

	}

	// Subclass to allow providing a Go implementation
	virtual bool caseSensitive() const override {
		if (vtbl->caseSensitive == 0) {
			return QsciLexer::caseSensitive();
		}


		bool callback_return_value = vtbl->caseSensitive(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_caseSensitive() const {

		return QsciLexer::caseSensitive();

	}

	// Subclass to allow providing a Go implementation
	virtual QColor color(int style) const override {
		if (vtbl->color == 0) {
			return QsciLexer::color(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->color(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_color(int style) const {

		return new QColor(QsciLexer::color(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eolFill(int style) const override {
		if (vtbl->eolFill == 0) {
			return QsciLexer::eolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->eolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eolFill(int style) const {

		return QsciLexer::eolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont font(int style) const override {
		if (vtbl->font == 0) {
			return QsciLexer::font(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->font(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_font(int style) const {

		return new QFont(QsciLexer::font(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual int indentationGuideView() const override {
		if (vtbl->indentationGuideView == 0) {
			return QsciLexer::indentationGuideView();
		}


		int callback_return_value = vtbl->indentationGuideView(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_indentationGuideView() const {

		return QsciLexer::indentationGuideView();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* keywords(int set) const override {
		if (vtbl->keywords == 0) {
			return QsciLexer::keywords(set);
		}

		int sigval1 = set;

		const char* callback_return_value = vtbl->keywords(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_keywords(int set) const {

		return (const char*) QsciLexer::keywords(static_cast<int>(set));

	}

	// Subclass to allow providing a Go implementation
	virtual int defaultStyle() const override {
		if (vtbl->defaultStyle == 0) {
			return QsciLexer::defaultStyle();
		}


		int callback_return_value = vtbl->defaultStyle(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_defaultStyle() const {

		return QsciLexer::defaultStyle();

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
			return QsciLexer::paper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->paper(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_paper(int style) const {

		return new QColor(QsciLexer::paper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultColor(int style) const override {
		if (vtbl->defaultColorWithStyle == 0) {
			return QsciLexer::defaultColor(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultColorWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultColorWithStyle(int style) const {

		return new QColor(QsciLexer::defaultColor(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool defaultEolFill(int style) const override {
		if (vtbl->defaultEolFill == 0) {
			return QsciLexer::defaultEolFill(style);
		}

		int sigval1 = style;

		bool callback_return_value = vtbl->defaultEolFill(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_defaultEolFill(int style) const {

		return QsciLexer::defaultEolFill(static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual QFont defaultFont(int style) const override {
		if (vtbl->defaultFontWithStyle == 0) {
			return QsciLexer::defaultFont(style);
		}

		int sigval1 = style;

		QFont* callback_return_value = vtbl->defaultFontWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QFont* virtualbase_defaultFontWithStyle(int style) const {

		return new QFont(QsciLexer::defaultFont(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual QColor defaultPaper(int style) const override {
		if (vtbl->defaultPaperWithStyle == 0) {
			return QsciLexer::defaultPaper(style);
		}

		int sigval1 = style;

		QColor* callback_return_value = vtbl->defaultPaperWithStyle(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QColor* virtualbase_defaultPaperWithStyle(int style) const {

		return new QColor(QsciLexer::defaultPaper(static_cast<int>(style)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEditor(QsciScintilla* editor) override {
		if (vtbl->setEditor == 0) {
			QsciLexer::setEditor(editor);
			return;
		}

		QsciScintilla* sigval1 = editor;

		vtbl->setEditor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditor(QsciScintilla* editor) {

		QsciLexer::setEditor(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void refreshProperties() override {
		if (vtbl->refreshProperties == 0) {
			QsciLexer::refreshProperties();
			return;
		}


		vtbl->refreshProperties(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_refreshProperties() {

		QsciLexer::refreshProperties();

	}

	// Subclass to allow providing a Go implementation
	virtual int styleBitsNeeded() const override {
		if (vtbl->styleBitsNeeded == 0) {
			return QsciLexer::styleBitsNeeded();
		}


		int callback_return_value = vtbl->styleBitsNeeded(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleBitsNeeded() const {

		return QsciLexer::styleBitsNeeded();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* wordCharacters() const override {
		if (vtbl->wordCharacters == 0) {
			return QsciLexer::wordCharacters();
		}


		const char* callback_return_value = vtbl->wordCharacters(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_wordCharacters() const {

		return (const char*) QsciLexer::wordCharacters();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAutoIndentStyle(int autoindentstyle) override {
		if (vtbl->setAutoIndentStyle == 0) {
			QsciLexer::setAutoIndentStyle(autoindentstyle);
			return;
		}

		int sigval1 = autoindentstyle;

		vtbl->setAutoIndentStyle(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAutoIndentStyle(int autoindentstyle) {

		QsciLexer::setAutoIndentStyle(static_cast<int>(autoindentstyle));

	}

	// Subclass to allow providing a Go implementation
	virtual void setColor(const QColor& c, int style) override {
		if (vtbl->setColor == 0) {
			QsciLexer::setColor(c, style);
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

		QsciLexer::setColor(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setEolFill(bool eoffill, int style) override {
		if (vtbl->setEolFill == 0) {
			QsciLexer::setEolFill(eoffill, style);
			return;
		}

		bool sigval1 = eoffill;
		int sigval2 = style;

		vtbl->setEolFill(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEolFill(bool eoffill, int style) {

		QsciLexer::setEolFill(eoffill, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setFont(const QFont& f, int style) override {
		if (vtbl->setFont == 0) {
			QsciLexer::setFont(f, style);
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

		QsciLexer::setFont(*f, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual void setPaper(const QColor& c, int style) override {
		if (vtbl->setPaper == 0) {
			QsciLexer::setPaper(c, style);
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

		QsciLexer::setPaper(*c, static_cast<int>(style));

	}

	// Subclass to allow providing a Go implementation
	virtual bool readProperties(QSettings& qs, const QString& prefix) override {
		if (vtbl->readProperties == 0) {
			return QsciLexer::readProperties(qs, prefix);
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

		return QsciLexer::readProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool writeProperties(QSettings& qs, const QString& prefix) const override {
		if (vtbl->writeProperties == 0) {
			return QsciLexer::writeProperties(qs, prefix);
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

		return QsciLexer::writeProperties(*qs, prefix_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QsciLexer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciLexer::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciLexer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciLexer::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciLexer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciLexer::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciLexer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciLexer::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciLexer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciLexer::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciLexer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciLexer::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciLexer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciLexer::disconnectNotify(*signal);

	}

};

QsciLexer* QsciLexer_new(struct QsciLexer_VTable* vtbl) {
	return new MiqtVirtualQsciLexer(vtbl);
}

QsciLexer* QsciLexer_new2(struct QsciLexer_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQsciLexer(vtbl, parent);
}

void QsciLexer_virtbase(QsciLexer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QsciLexer_metaObject(const QsciLexer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciLexer_metacast(QsciLexer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciLexer_metacall(QsciLexer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciLexer_tr(const char* s) {
	QString _ret = QsciLexer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const char* QsciLexer_language(const QsciLexer* self) {
	return (const char*) self->language();
}

const char* QsciLexer_lexer(const QsciLexer* self) {
	return (const char*) self->lexer();
}

int QsciLexer_lexerId(const QsciLexer* self) {
	return self->lexerId();
}

QsciAbstractAPIs* QsciLexer_apis(const QsciLexer* self) {
	return self->apis();
}

const char* QsciLexer_autoCompletionFillups(const QsciLexer* self) {
	return (const char*) self->autoCompletionFillups();
}

struct miqt_array /* of struct miqt_string */  QsciLexer_autoCompletionWordSeparators(const QsciLexer* self) {
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

int QsciLexer_autoIndentStyle(QsciLexer* self) {
	return self->autoIndentStyle();
}

const char* QsciLexer_blockEnd(const QsciLexer* self, int* style) {
	return (const char*) self->blockEnd(static_cast<int*>(style));
}

int QsciLexer_blockLookback(const QsciLexer* self) {
	return self->blockLookback();
}

const char* QsciLexer_blockStart(const QsciLexer* self, int* style) {
	return (const char*) self->blockStart(static_cast<int*>(style));
}

const char* QsciLexer_blockStartKeyword(const QsciLexer* self, int* style) {
	return (const char*) self->blockStartKeyword(static_cast<int*>(style));
}

int QsciLexer_braceStyle(const QsciLexer* self) {
	return self->braceStyle();
}

bool QsciLexer_caseSensitive(const QsciLexer* self) {
	return self->caseSensitive();
}

QColor* QsciLexer_color(const QsciLexer* self, int style) {
	return new QColor(self->color(static_cast<int>(style)));
}

bool QsciLexer_eolFill(const QsciLexer* self, int style) {
	return self->eolFill(static_cast<int>(style));
}

QFont* QsciLexer_font(const QsciLexer* self, int style) {
	return new QFont(self->font(static_cast<int>(style)));
}

int QsciLexer_indentationGuideView(const QsciLexer* self) {
	return self->indentationGuideView();
}

const char* QsciLexer_keywords(const QsciLexer* self, int set) {
	return (const char*) self->keywords(static_cast<int>(set));
}

int QsciLexer_defaultStyle(const QsciLexer* self) {
	return self->defaultStyle();
}

struct miqt_string QsciLexer_description(const QsciLexer* self, int style) {
	QString _ret = self->description(static_cast<int>(style));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QColor* QsciLexer_paper(const QsciLexer* self, int style) {
	return new QColor(self->paper(static_cast<int>(style)));
}

QColor* QsciLexer_defaultColor(const QsciLexer* self) {
	return new QColor(self->defaultColor());
}

QColor* QsciLexer_defaultColorWithStyle(const QsciLexer* self, int style) {
	return new QColor(self->defaultColor(static_cast<int>(style)));
}

bool QsciLexer_defaultEolFill(const QsciLexer* self, int style) {
	return self->defaultEolFill(static_cast<int>(style));
}

QFont* QsciLexer_defaultFont(const QsciLexer* self) {
	return new QFont(self->defaultFont());
}

QFont* QsciLexer_defaultFontWithStyle(const QsciLexer* self, int style) {
	return new QFont(self->defaultFont(static_cast<int>(style)));
}

QColor* QsciLexer_defaultPaper(const QsciLexer* self) {
	return new QColor(self->defaultPaper());
}

QColor* QsciLexer_defaultPaperWithStyle(const QsciLexer* self, int style) {
	return new QColor(self->defaultPaper(static_cast<int>(style)));
}

QsciScintilla* QsciLexer_editor(const QsciLexer* self) {
	return self->editor();
}

void QsciLexer_setAPIs(QsciLexer* self, QsciAbstractAPIs* apis) {
	self->setAPIs(apis);
}

void QsciLexer_setDefaultColor(QsciLexer* self, QColor* c) {
	self->setDefaultColor(*c);
}

void QsciLexer_setDefaultFont(QsciLexer* self, QFont* f) {
	self->setDefaultFont(*f);
}

void QsciLexer_setDefaultPaper(QsciLexer* self, QColor* c) {
	self->setDefaultPaper(*c);
}

void QsciLexer_setEditor(QsciLexer* self, QsciScintilla* editor) {
	self->setEditor(editor);
}

bool QsciLexer_readSettings(QsciLexer* self, QSettings* qs) {
	return self->readSettings(*qs);
}

void QsciLexer_refreshProperties(QsciLexer* self) {
	self->refreshProperties();
}

int QsciLexer_styleBitsNeeded(const QsciLexer* self) {
	return self->styleBitsNeeded();
}

const char* QsciLexer_wordCharacters(const QsciLexer* self) {
	return (const char*) self->wordCharacters();
}

bool QsciLexer_writeSettings(const QsciLexer* self, QSettings* qs) {
	return self->writeSettings(*qs);
}

void QsciLexer_setAutoIndentStyle(QsciLexer* self, int autoindentstyle) {
	self->setAutoIndentStyle(static_cast<int>(autoindentstyle));
}

void QsciLexer_setColor(QsciLexer* self, QColor* c, int style) {
	self->setColor(*c, static_cast<int>(style));
}

void QsciLexer_setEolFill(QsciLexer* self, bool eoffill, int style) {
	self->setEolFill(eoffill, static_cast<int>(style));
}

void QsciLexer_setFont(QsciLexer* self, QFont* f, int style) {
	self->setFont(*f, static_cast<int>(style));
}

void QsciLexer_setPaper(QsciLexer* self, QColor* c, int style) {
	self->setPaper(*c, static_cast<int>(style));
}

void QsciLexer_colorChanged(QsciLexer* self, QColor* c, int style) {
	self->colorChanged(*c, static_cast<int>(style));
}

void QsciLexer_connect_colorChanged(QsciLexer* self, intptr_t slot) {
	MiqtVirtualQsciLexer::connect(self, static_cast<void (QsciLexer::*)(const QColor&, int)>(&QsciLexer::colorChanged), self, [=](const QColor& c, int style) {
		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;
		miqt_exec_callback_QsciLexer_colorChanged(slot, sigval1, sigval2);
	});
}

void QsciLexer_eolFillChanged(QsciLexer* self, bool eolfilled, int style) {
	self->eolFillChanged(eolfilled, static_cast<int>(style));
}

void QsciLexer_connect_eolFillChanged(QsciLexer* self, intptr_t slot) {
	MiqtVirtualQsciLexer::connect(self, static_cast<void (QsciLexer::*)(bool, int)>(&QsciLexer::eolFillChanged), self, [=](bool eolfilled, int style) {
		bool sigval1 = eolfilled;
		int sigval2 = style;
		miqt_exec_callback_QsciLexer_eolFillChanged(slot, sigval1, sigval2);
	});
}

void QsciLexer_fontChanged(QsciLexer* self, QFont* f, int style) {
	self->fontChanged(*f, static_cast<int>(style));
}

void QsciLexer_connect_fontChanged(QsciLexer* self, intptr_t slot) {
	MiqtVirtualQsciLexer::connect(self, static_cast<void (QsciLexer::*)(const QFont&, int)>(&QsciLexer::fontChanged), self, [=](const QFont& f, int style) {
		const QFont& f_ret = f;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&f_ret);
		int sigval2 = style;
		miqt_exec_callback_QsciLexer_fontChanged(slot, sigval1, sigval2);
	});
}

void QsciLexer_paperChanged(QsciLexer* self, QColor* c, int style) {
	self->paperChanged(*c, static_cast<int>(style));
}

void QsciLexer_connect_paperChanged(QsciLexer* self, intptr_t slot) {
	MiqtVirtualQsciLexer::connect(self, static_cast<void (QsciLexer::*)(const QColor&, int)>(&QsciLexer::paperChanged), self, [=](const QColor& c, int style) {
		const QColor& c_ret = c;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&c_ret);
		int sigval2 = style;
		miqt_exec_callback_QsciLexer_paperChanged(slot, sigval1, sigval2);
	});
}

void QsciLexer_propertyChanged(QsciLexer* self, const char* prop, const char* val) {
	self->propertyChanged(prop, val);
}

void QsciLexer_connect_propertyChanged(QsciLexer* self, intptr_t slot) {
	MiqtVirtualQsciLexer::connect(self, static_cast<void (QsciLexer::*)(const char*, const char*)>(&QsciLexer::propertyChanged), self, [=](const char* prop, const char* val) {
		const char* sigval1 = (const char*) prop;
		const char* sigval2 = (const char*) val;
		miqt_exec_callback_QsciLexer_propertyChanged(slot, sigval1, sigval2);
	});
}

struct miqt_string QsciLexer_tr2(const char* s, const char* c) {
	QString _ret = QsciLexer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciLexer_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciLexer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QsciLexer_readSettings2(QsciLexer* self, QSettings* qs, const char* prefix) {
	return self->readSettings(*qs, prefix);
}

bool QsciLexer_writeSettings2(const QsciLexer* self, QSettings* qs, const char* prefix) {
	return self->writeSettings(*qs, prefix);
}

QMetaObject* QsciLexer_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_metaObject();
}

void* QsciLexer_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciLexer*)(self) )->virtualbase_metacast(param1);
}

int QsciLexer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciLexer*)(self) )->virtualbase_metacall(param1, param2, param3);
}

const char* QsciLexer_virtualbase_lexer(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_lexer();
}

int QsciLexer_virtualbase_lexerId(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_lexerId();
}

const char* QsciLexer_virtualbase_autoCompletionFillups(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_autoCompletionFillups();
}

struct miqt_array /* of struct miqt_string */  QsciLexer_virtualbase_autoCompletionWordSeparators(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_autoCompletionWordSeparators();
}

const char* QsciLexer_virtualbase_blockEnd(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_blockEnd(style);
}

int QsciLexer_virtualbase_blockLookback(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_blockLookback();
}

const char* QsciLexer_virtualbase_blockStart(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_blockStart(style);
}

const char* QsciLexer_virtualbase_blockStartKeyword(const void* self, int* style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_blockStartKeyword(style);
}

int QsciLexer_virtualbase_braceStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_braceStyle();
}

bool QsciLexer_virtualbase_caseSensitive(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_caseSensitive();
}

QColor* QsciLexer_virtualbase_color(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_color(style);
}

bool QsciLexer_virtualbase_eolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_eolFill(style);
}

QFont* QsciLexer_virtualbase_font(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_font(style);
}

int QsciLexer_virtualbase_indentationGuideView(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_indentationGuideView();
}

const char* QsciLexer_virtualbase_keywords(const void* self, int set) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_keywords(set);
}

int QsciLexer_virtualbase_defaultStyle(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_defaultStyle();
}

QColor* QsciLexer_virtualbase_paper(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_paper(style);
}

QColor* QsciLexer_virtualbase_defaultColorWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_defaultColorWithStyle(style);
}

bool QsciLexer_virtualbase_defaultEolFill(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_defaultEolFill(style);
}

QFont* QsciLexer_virtualbase_defaultFontWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_defaultFontWithStyle(style);
}

QColor* QsciLexer_virtualbase_defaultPaperWithStyle(const void* self, int style) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_defaultPaperWithStyle(style);
}

void QsciLexer_virtualbase_setEditor(void* self, QsciScintilla* editor) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_setEditor(editor);
}

void QsciLexer_virtualbase_refreshProperties(void* self) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_refreshProperties();
}

int QsciLexer_virtualbase_styleBitsNeeded(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_styleBitsNeeded();
}

const char* QsciLexer_virtualbase_wordCharacters(const void* self) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_wordCharacters();
}

void QsciLexer_virtualbase_setAutoIndentStyle(void* self, int autoindentstyle) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_setAutoIndentStyle(autoindentstyle);
}

void QsciLexer_virtualbase_setColor(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_setColor(c, style);
}

void QsciLexer_virtualbase_setEolFill(void* self, bool eoffill, int style) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_setEolFill(eoffill, style);
}

void QsciLexer_virtualbase_setFont(void* self, QFont* f, int style) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_setFont(f, style);
}

void QsciLexer_virtualbase_setPaper(void* self, QColor* c, int style) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_setPaper(c, style);
}

bool QsciLexer_virtualbase_readProperties(void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (MiqtVirtualQsciLexer*)(self) )->virtualbase_readProperties(qs, prefix);
}

bool QsciLexer_virtualbase_writeProperties(const void* self, QSettings* qs, struct miqt_string prefix) {
	return ( (const MiqtVirtualQsciLexer*)(self) )->virtualbase_writeProperties(qs, prefix);
}

bool QsciLexer_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciLexer*)(self) )->virtualbase_event(event);
}

bool QsciLexer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciLexer*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciLexer_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_timerEvent(event);
}

void QsciLexer_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_childEvent(event);
}

void QsciLexer_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_customEvent(event);
}

void QsciLexer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_connectNotify(signal);
}

void QsciLexer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciLexer*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QsciLexer_staticMetaObject() { return &QsciLexer::staticMetaObject; }
void QsciLexer_delete(QsciLexer* self) {
	delete self;
}

