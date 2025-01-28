#include <QApplication>
#include <QChildEvent>
#include <QCommonStyle>
#include <QEvent>
#include <QFontMetrics>
#include <QIcon>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPalette>
#include <QPixmap>
#include <QPoint>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyle>
#include <QStyleHintReturn>
#include <QStyleOption>
#include <QStyleOptionComplex>
#include <QTimerEvent>
#include <QWidget>
#include <qcommonstyle.h>
#include "gen_qcommonstyle.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQCommonStyle final : public QCommonStyle {
	struct QCommonStyle_VTable* vtbl;
public:

	MiqtVirtualQCommonStyle(struct QCommonStyle_VTable* vtbl): QCommonStyle(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQCommonStyle() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCommonStyle::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QCommonStyle::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCommonStyle::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QCommonStyle::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCommonStyle::qt_metacall(param1, param2, param3);
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

		return QCommonStyle::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawPrimitive(QStyle::PrimitiveElement pe, const QStyleOption* opt, QPainter* p, const QWidget* w) const override {
		if (vtbl->drawPrimitive == 0) {
			QCommonStyle::drawPrimitive(pe, opt, p, w);
			return;
		}

		QStyle::PrimitiveElement pe_ret = pe;
		int sigval1 = static_cast<int>(pe_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QPainter* sigval3 = p;
		QWidget* sigval4 = (QWidget*) w;

		vtbl->drawPrimitive(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawPrimitive(int pe, QStyleOption* opt, QPainter* p, QWidget* w) const {

		QCommonStyle::drawPrimitive(static_cast<QStyle::PrimitiveElement>(pe), opt, p, w);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawControl(QStyle::ControlElement element, const QStyleOption* opt, QPainter* p, const QWidget* w) const override {
		if (vtbl->drawControl == 0) {
			QCommonStyle::drawControl(element, opt, p, w);
			return;
		}

		QStyle::ControlElement element_ret = element;
		int sigval1 = static_cast<int>(element_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QPainter* sigval3 = p;
		QWidget* sigval4 = (QWidget*) w;

		vtbl->drawControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawControl(int element, QStyleOption* opt, QPainter* p, QWidget* w) const {

		QCommonStyle::drawControl(static_cast<QStyle::ControlElement>(element), opt, p, w);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect subElementRect(QStyle::SubElement r, const QStyleOption* opt, const QWidget* widget) const override {
		if (vtbl->subElementRect == 0) {
			return QCommonStyle::subElementRect(r, opt, widget);
		}

		QStyle::SubElement r_ret = r;
		int sigval1 = static_cast<int>(r_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) widget;

		QRect* callback_return_value = vtbl->subElementRect(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_subElementRect(int r, QStyleOption* opt, QWidget* widget) const {

		return new QRect(QCommonStyle::subElementRect(static_cast<QStyle::SubElement>(r), opt, widget));

	}

	// Subclass to allow providing a Go implementation
	virtual void drawComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex* opt, QPainter* p, const QWidget* w) const override {
		if (vtbl->drawComplexControl == 0) {
			QCommonStyle::drawComplexControl(cc, opt, p, w);
			return;
		}

		QStyle::ComplexControl cc_ret = cc;
		int sigval1 = static_cast<int>(cc_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) opt;
		QPainter* sigval3 = p;
		QWidget* sigval4 = (QWidget*) w;

		vtbl->drawComplexControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawComplexControl(int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w) const {

		QCommonStyle::drawComplexControl(static_cast<QStyle::ComplexControl>(cc), opt, p, w);

	}

	// Subclass to allow providing a Go implementation
	virtual QStyle::SubControl hitTestComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex* opt, const QPoint& pt, const QWidget* w) const override {
		if (vtbl->hitTestComplexControl == 0) {
			return QCommonStyle::hitTestComplexControl(cc, opt, pt, w);
		}

		QStyle::ComplexControl cc_ret = cc;
		int sigval1 = static_cast<int>(cc_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) opt;
		const QPoint& pt_ret = pt;
		// Cast returned reference into pointer
		QPoint* sigval3 = const_cast<QPoint*>(&pt_ret);
		QWidget* sigval4 = (QWidget*) w;

		int callback_return_value = vtbl->hitTestComplexControl(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<QStyle::SubControl>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_hitTestComplexControl(int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w) const {

		QStyle::SubControl _ret = QCommonStyle::hitTestComplexControl(static_cast<QStyle::ComplexControl>(cc), opt, *pt, w);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect subControlRect(QStyle::ComplexControl cc, const QStyleOptionComplex* opt, QStyle::SubControl sc, const QWidget* w) const override {
		if (vtbl->subControlRect == 0) {
			return QCommonStyle::subControlRect(cc, opt, sc, w);
		}

		QStyle::ComplexControl cc_ret = cc;
		int sigval1 = static_cast<int>(cc_ret);
		QStyleOptionComplex* sigval2 = (QStyleOptionComplex*) opt;
		QStyle::SubControl sc_ret = sc;
		int sigval3 = static_cast<int>(sc_ret);
		QWidget* sigval4 = (QWidget*) w;

		QRect* callback_return_value = vtbl->subControlRect(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_subControlRect(int cc, QStyleOptionComplex* opt, int sc, QWidget* w) const {

		return new QRect(QCommonStyle::subControlRect(static_cast<QStyle::ComplexControl>(cc), opt, static_cast<QStyle::SubControl>(sc), w));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeFromContents(QStyle::ContentsType ct, const QStyleOption* opt, const QSize& contentsSize, const QWidget* widget) const override {
		if (vtbl->sizeFromContents == 0) {
			return QCommonStyle::sizeFromContents(ct, opt, contentsSize, widget);
		}

		QStyle::ContentsType ct_ret = ct;
		int sigval1 = static_cast<int>(ct_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		const QSize& contentsSize_ret = contentsSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&contentsSize_ret);
		QWidget* sigval4 = (QWidget*) widget;

		QSize* callback_return_value = vtbl->sizeFromContents(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeFromContents(int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget) const {

		return new QSize(QCommonStyle::sizeFromContents(static_cast<QStyle::ContentsType>(ct), opt, *contentsSize, widget));

	}

	// Subclass to allow providing a Go implementation
	virtual int pixelMetric(QStyle::PixelMetric m, const QStyleOption* opt, const QWidget* widget) const override {
		if (vtbl->pixelMetric == 0) {
			return QCommonStyle::pixelMetric(m, opt, widget);
		}

		QStyle::PixelMetric m_ret = m;
		int sigval1 = static_cast<int>(m_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) widget;

		int callback_return_value = vtbl->pixelMetric(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_pixelMetric(int m, QStyleOption* opt, QWidget* widget) const {

		return QCommonStyle::pixelMetric(static_cast<QStyle::PixelMetric>(m), opt, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual int styleHint(QStyle::StyleHint sh, const QStyleOption* opt, const QWidget* w, QStyleHintReturn* shret) const override {
		if (vtbl->styleHint == 0) {
			return QCommonStyle::styleHint(sh, opt, w, shret);
		}

		QStyle::StyleHint sh_ret = sh;
		int sigval1 = static_cast<int>(sh_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) w;
		QStyleHintReturn* sigval4 = shret;

		int callback_return_value = vtbl->styleHint(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_styleHint(int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret) const {

		return QCommonStyle::styleHint(static_cast<QStyle::StyleHint>(sh), opt, w, shret);

	}

	// Subclass to allow providing a Go implementation
	virtual QIcon standardIcon(QStyle::StandardPixmap standardIcon, const QStyleOption* opt, const QWidget* widget) const override {
		if (vtbl->standardIcon == 0) {
			return QCommonStyle::standardIcon(standardIcon, opt, widget);
		}

		QStyle::StandardPixmap standardIcon_ret = standardIcon;
		int sigval1 = static_cast<int>(standardIcon_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) widget;

		QIcon* callback_return_value = vtbl->standardIcon(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QIcon* virtualbase_standardIcon(int standardIcon, QStyleOption* opt, QWidget* widget) const {

		return new QIcon(QCommonStyle::standardIcon(static_cast<QStyle::StandardPixmap>(standardIcon), opt, widget));

	}

	// Subclass to allow providing a Go implementation
	virtual QPixmap standardPixmap(QStyle::StandardPixmap sp, const QStyleOption* opt, const QWidget* widget) const override {
		if (vtbl->standardPixmap == 0) {
			return QCommonStyle::standardPixmap(sp, opt, widget);
		}

		QStyle::StandardPixmap sp_ret = sp;
		int sigval1 = static_cast<int>(sp_ret);
		QStyleOption* sigval2 = (QStyleOption*) opt;
		QWidget* sigval3 = (QWidget*) widget;

		QPixmap* callback_return_value = vtbl->standardPixmap(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPixmap* virtualbase_standardPixmap(int sp, QStyleOption* opt, QWidget* widget) const {

		return new QPixmap(QCommonStyle::standardPixmap(static_cast<QStyle::StandardPixmap>(sp), opt, widget));

	}

	// Subclass to allow providing a Go implementation
	virtual QPixmap generatedIconPixmap(QIcon::Mode iconMode, const QPixmap& pixmap, const QStyleOption* opt) const override {
		if (vtbl->generatedIconPixmap == 0) {
			return QCommonStyle::generatedIconPixmap(iconMode, pixmap, opt);
		}

		QIcon::Mode iconMode_ret = iconMode;
		int sigval1 = static_cast<int>(iconMode_ret);
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval2 = const_cast<QPixmap*>(&pixmap_ret);
		QStyleOption* sigval3 = (QStyleOption*) opt;

		QPixmap* callback_return_value = vtbl->generatedIconPixmap(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPixmap* virtualbase_generatedIconPixmap(int iconMode, QPixmap* pixmap, QStyleOption* opt) const {

		return new QPixmap(QCommonStyle::generatedIconPixmap(static_cast<QIcon::Mode>(iconMode), *pixmap, opt));

	}

	// Subclass to allow providing a Go implementation
	virtual int layoutSpacing(QSizePolicy::ControlType control1, QSizePolicy::ControlType control2, Qt::Orientation orientation, const QStyleOption* option, const QWidget* widget) const override {
		if (vtbl->layoutSpacing == 0) {
			return QCommonStyle::layoutSpacing(control1, control2, orientation, option, widget);
		}

		QSizePolicy::ControlType control1_ret = control1;
		int sigval1 = static_cast<int>(control1_ret);
		QSizePolicy::ControlType control2_ret = control2;
		int sigval2 = static_cast<int>(control2_ret);
		Qt::Orientation orientation_ret = orientation;
		int sigval3 = static_cast<int>(orientation_ret);
		QStyleOption* sigval4 = (QStyleOption*) option;
		QWidget* sigval5 = (QWidget*) widget;

		int callback_return_value = vtbl->layoutSpacing(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_layoutSpacing(int control1, int control2, int orientation, QStyleOption* option, QWidget* widget) const {

		return QCommonStyle::layoutSpacing(static_cast<QSizePolicy::ControlType>(control1), static_cast<QSizePolicy::ControlType>(control2), static_cast<Qt::Orientation>(orientation), option, widget);

	}

	// Subclass to allow providing a Go implementation
	virtual void polish(QPalette& param1) override {
		if (vtbl->polish == 0) {
			QCommonStyle::polish(param1);
			return;
		}

		QPalette& param1_ret = param1;
		// Cast returned reference into pointer
		QPalette* sigval1 = &param1_ret;

		vtbl->polish(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_polish(QPalette* param1) {

		QCommonStyle::polish(*param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void polish(QApplication* app) override {
		if (vtbl->polishWithApp == 0) {
			QCommonStyle::polish(app);
			return;
		}

		QApplication* sigval1 = app;

		vtbl->polishWithApp(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_polishWithApp(QApplication* app) {

		QCommonStyle::polish(app);

	}

	// Subclass to allow providing a Go implementation
	virtual void polish(QWidget* widget) override {
		if (vtbl->polishWithWidget == 0) {
			QCommonStyle::polish(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->polishWithWidget(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_polishWithWidget(QWidget* widget) {

		QCommonStyle::polish(widget);

	}

	// Subclass to allow providing a Go implementation
	virtual void unpolish(QWidget* widget) override {
		if (vtbl->unpolish == 0) {
			QCommonStyle::unpolish(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->unpolish(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_unpolish(QWidget* widget) {

		QCommonStyle::unpolish(widget);

	}

	// Subclass to allow providing a Go implementation
	virtual void unpolish(QApplication* application) override {
		if (vtbl->unpolishWithApplication == 0) {
			QCommonStyle::unpolish(application);
			return;
		}

		QApplication* sigval1 = application;

		vtbl->unpolishWithApplication(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_unpolishWithApplication(QApplication* application) {

		QCommonStyle::unpolish(application);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect itemTextRect(const QFontMetrics& fm, const QRect& r, int flags, bool enabled, const QString& text) const override {
		if (vtbl->itemTextRect == 0) {
			return QCommonStyle::itemTextRect(fm, r, flags, enabled, text);
		}

		const QFontMetrics& fm_ret = fm;
		// Cast returned reference into pointer
		QFontMetrics* sigval1 = const_cast<QFontMetrics*>(&fm_ret);
		const QRect& r_ret = r;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&r_ret);
		int sigval3 = flags;
		bool sigval4 = enabled;
		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval5 = text_ms;

		QRect* callback_return_value = vtbl->itemTextRect(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_itemTextRect(QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text) const {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		return new QRect(QCommonStyle::itemTextRect(*fm, *r, static_cast<int>(flags), enabled, text_QString));

	}

	// Subclass to allow providing a Go implementation
	virtual QRect itemPixmapRect(const QRect& r, int flags, const QPixmap& pixmap) const override {
		if (vtbl->itemPixmapRect == 0) {
			return QCommonStyle::itemPixmapRect(r, flags, pixmap);
		}

		const QRect& r_ret = r;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&r_ret);
		int sigval2 = flags;
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval3 = const_cast<QPixmap*>(&pixmap_ret);

		QRect* callback_return_value = vtbl->itemPixmapRect(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_itemPixmapRect(QRect* r, int flags, QPixmap* pixmap) const {

		return new QRect(QCommonStyle::itemPixmapRect(*r, static_cast<int>(flags), *pixmap));

	}

	// Subclass to allow providing a Go implementation
	virtual void drawItemText(QPainter* painter, const QRect& rect, int flags, const QPalette& pal, bool enabled, const QString& text, QPalette::ColorRole textRole) const override {
		if (vtbl->drawItemText == 0) {
			QCommonStyle::drawItemText(painter, rect, flags, pal, enabled, text, textRole);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		int sigval3 = flags;
		const QPalette& pal_ret = pal;
		// Cast returned reference into pointer
		QPalette* sigval4 = const_cast<QPalette*>(&pal_ret);
		bool sigval5 = enabled;
		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval6 = text_ms;
		QPalette::ColorRole textRole_ret = textRole;
		int sigval7 = static_cast<int>(textRole_ret);

		vtbl->drawItemText(vtbl, this, sigval1, sigval2, sigval3, sigval4, sigval5, sigval6, sigval7);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawItemText(QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole) const {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		QCommonStyle::drawItemText(painter, *rect, static_cast<int>(flags), *pal, enabled, text_QString, static_cast<QPalette::ColorRole>(textRole));

	}

	// Subclass to allow providing a Go implementation
	virtual void drawItemPixmap(QPainter* painter, const QRect& rect, int alignment, const QPixmap& pixmap) const override {
		if (vtbl->drawItemPixmap == 0) {
			QCommonStyle::drawItemPixmap(painter, rect, alignment, pixmap);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		int sigval3 = alignment;
		const QPixmap& pixmap_ret = pixmap;
		// Cast returned reference into pointer
		QPixmap* sigval4 = const_cast<QPixmap*>(&pixmap_ret);

		vtbl->drawItemPixmap(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawItemPixmap(QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap) const {

		QCommonStyle::drawItemPixmap(painter, *rect, static_cast<int>(alignment), *pixmap);

	}

	// Subclass to allow providing a Go implementation
	virtual QPalette standardPalette() const override {
		if (vtbl->standardPalette == 0) {
			return QCommonStyle::standardPalette();
		}


		QPalette* callback_return_value = vtbl->standardPalette(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPalette* virtualbase_standardPalette() const {

		return new QPalette(QCommonStyle::standardPalette());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCommonStyle::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QCommonStyle::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCommonStyle::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QCommonStyle::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCommonStyle::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QCommonStyle::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCommonStyle::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QCommonStyle::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCommonStyle::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QCommonStyle::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCommonStyle::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QCommonStyle::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCommonStyle::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QCommonStyle::disconnectNotify(*signal);

	}

};

QCommonStyle* QCommonStyle_new(struct QCommonStyle_VTable* vtbl) {
	return new MiqtVirtualQCommonStyle(vtbl);
}

void QCommonStyle_virtbase(QCommonStyle* src, QStyle** outptr_QStyle) {
	*outptr_QStyle = static_cast<QStyle*>(src);
}

QMetaObject* QCommonStyle_metaObject(const QCommonStyle* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCommonStyle_metacast(QCommonStyle* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCommonStyle_metacall(QCommonStyle* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCommonStyle_tr(const char* s) {
	QString _ret = QCommonStyle::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommonStyle_trUtf8(const char* s) {
	QString _ret = QCommonStyle::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCommonStyle_drawPrimitive(const QCommonStyle* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w) {
	self->drawPrimitive(static_cast<QStyle::PrimitiveElement>(pe), opt, p, w);
}

void QCommonStyle_drawControl(const QCommonStyle* self, int element, QStyleOption* opt, QPainter* p, QWidget* w) {
	self->drawControl(static_cast<QStyle::ControlElement>(element), opt, p, w);
}

QRect* QCommonStyle_subElementRect(const QCommonStyle* self, int r, QStyleOption* opt, QWidget* widget) {
	return new QRect(self->subElementRect(static_cast<QStyle::SubElement>(r), opt, widget));
}

void QCommonStyle_drawComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w) {
	self->drawComplexControl(static_cast<QStyle::ComplexControl>(cc), opt, p, w);
}

int QCommonStyle_hitTestComplexControl(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w) {
	QStyle::SubControl _ret = self->hitTestComplexControl(static_cast<QStyle::ComplexControl>(cc), opt, *pt, w);
	return static_cast<int>(_ret);
}

QRect* QCommonStyle_subControlRect(const QCommonStyle* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w) {
	return new QRect(self->subControlRect(static_cast<QStyle::ComplexControl>(cc), opt, static_cast<QStyle::SubControl>(sc), w));
}

QSize* QCommonStyle_sizeFromContents(const QCommonStyle* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget) {
	return new QSize(self->sizeFromContents(static_cast<QStyle::ContentsType>(ct), opt, *contentsSize, widget));
}

int QCommonStyle_pixelMetric(const QCommonStyle* self, int m, QStyleOption* opt, QWidget* widget) {
	return self->pixelMetric(static_cast<QStyle::PixelMetric>(m), opt, widget);
}

int QCommonStyle_styleHint(const QCommonStyle* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret) {
	return self->styleHint(static_cast<QStyle::StyleHint>(sh), opt, w, shret);
}

QIcon* QCommonStyle_standardIcon(const QCommonStyle* self, int standardIcon, QStyleOption* opt, QWidget* widget) {
	return new QIcon(self->standardIcon(static_cast<QStyle::StandardPixmap>(standardIcon), opt, widget));
}

QPixmap* QCommonStyle_standardPixmap(const QCommonStyle* self, int sp, QStyleOption* opt, QWidget* widget) {
	return new QPixmap(self->standardPixmap(static_cast<QStyle::StandardPixmap>(sp), opt, widget));
}

QPixmap* QCommonStyle_generatedIconPixmap(const QCommonStyle* self, int iconMode, QPixmap* pixmap, QStyleOption* opt) {
	return new QPixmap(self->generatedIconPixmap(static_cast<QIcon::Mode>(iconMode), *pixmap, opt));
}

int QCommonStyle_layoutSpacing(const QCommonStyle* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget) {
	return self->layoutSpacing(static_cast<QSizePolicy::ControlType>(control1), static_cast<QSizePolicy::ControlType>(control2), static_cast<Qt::Orientation>(orientation), option, widget);
}

void QCommonStyle_polish(QCommonStyle* self, QPalette* param1) {
	self->polish(*param1);
}

void QCommonStyle_polishWithApp(QCommonStyle* self, QApplication* app) {
	self->polish(app);
}

void QCommonStyle_polishWithWidget(QCommonStyle* self, QWidget* widget) {
	self->polish(widget);
}

void QCommonStyle_unpolish(QCommonStyle* self, QWidget* widget) {
	self->unpolish(widget);
}

void QCommonStyle_unpolishWithApplication(QCommonStyle* self, QApplication* application) {
	self->unpolish(application);
}

struct miqt_string QCommonStyle_tr2(const char* s, const char* c) {
	QString _ret = QCommonStyle::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommonStyle_tr3(const char* s, const char* c, int n) {
	QString _ret = QCommonStyle::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommonStyle_trUtf82(const char* s, const char* c) {
	QString _ret = QCommonStyle::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommonStyle_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QCommonStyle::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCommonStyle_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_metaObject();
}

void* QCommonStyle_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_metacast(param1);
}

int QCommonStyle_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QCommonStyle_virtualbase_drawPrimitive(const void* self, int pe, QStyleOption* opt, QPainter* p, QWidget* w) {
	( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_drawPrimitive(pe, opt, p, w);
}

void QCommonStyle_virtualbase_drawControl(const void* self, int element, QStyleOption* opt, QPainter* p, QWidget* w) {
	( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_drawControl(element, opt, p, w);
}

QRect* QCommonStyle_virtualbase_subElementRect(const void* self, int r, QStyleOption* opt, QWidget* widget) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_subElementRect(r, opt, widget);
}

void QCommonStyle_virtualbase_drawComplexControl(const void* self, int cc, QStyleOptionComplex* opt, QPainter* p, QWidget* w) {
	( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_drawComplexControl(cc, opt, p, w);
}

int QCommonStyle_virtualbase_hitTestComplexControl(const void* self, int cc, QStyleOptionComplex* opt, QPoint* pt, QWidget* w) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_hitTestComplexControl(cc, opt, pt, w);
}

QRect* QCommonStyle_virtualbase_subControlRect(const void* self, int cc, QStyleOptionComplex* opt, int sc, QWidget* w) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_subControlRect(cc, opt, sc, w);
}

QSize* QCommonStyle_virtualbase_sizeFromContents(const void* self, int ct, QStyleOption* opt, QSize* contentsSize, QWidget* widget) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_sizeFromContents(ct, opt, contentsSize, widget);
}

int QCommonStyle_virtualbase_pixelMetric(const void* self, int m, QStyleOption* opt, QWidget* widget) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_pixelMetric(m, opt, widget);
}

int QCommonStyle_virtualbase_styleHint(const void* self, int sh, QStyleOption* opt, QWidget* w, QStyleHintReturn* shret) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_styleHint(sh, opt, w, shret);
}

QIcon* QCommonStyle_virtualbase_standardIcon(const void* self, int standardIcon, QStyleOption* opt, QWidget* widget) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_standardIcon(standardIcon, opt, widget);
}

QPixmap* QCommonStyle_virtualbase_standardPixmap(const void* self, int sp, QStyleOption* opt, QWidget* widget) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_standardPixmap(sp, opt, widget);
}

QPixmap* QCommonStyle_virtualbase_generatedIconPixmap(const void* self, int iconMode, QPixmap* pixmap, QStyleOption* opt) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_generatedIconPixmap(iconMode, pixmap, opt);
}

int QCommonStyle_virtualbase_layoutSpacing(const void* self, int control1, int control2, int orientation, QStyleOption* option, QWidget* widget) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_layoutSpacing(control1, control2, orientation, option, widget);
}

void QCommonStyle_virtualbase_polish(void* self, QPalette* param1) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_polish(param1);
}

void QCommonStyle_virtualbase_polishWithApp(void* self, QApplication* app) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_polishWithApp(app);
}

void QCommonStyle_virtualbase_polishWithWidget(void* self, QWidget* widget) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_polishWithWidget(widget);
}

void QCommonStyle_virtualbase_unpolish(void* self, QWidget* widget) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_unpolish(widget);
}

void QCommonStyle_virtualbase_unpolishWithApplication(void* self, QApplication* application) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_unpolishWithApplication(application);
}

QRect* QCommonStyle_virtualbase_itemTextRect(const void* self, QFontMetrics* fm, QRect* r, int flags, bool enabled, struct miqt_string text) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_itemTextRect(fm, r, flags, enabled, text);
}

QRect* QCommonStyle_virtualbase_itemPixmapRect(const void* self, QRect* r, int flags, QPixmap* pixmap) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_itemPixmapRect(r, flags, pixmap);
}

void QCommonStyle_virtualbase_drawItemText(const void* self, QPainter* painter, QRect* rect, int flags, QPalette* pal, bool enabled, struct miqt_string text, int textRole) {
	( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_drawItemText(painter, rect, flags, pal, enabled, text, textRole);
}

void QCommonStyle_virtualbase_drawItemPixmap(const void* self, QPainter* painter, QRect* rect, int alignment, QPixmap* pixmap) {
	( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_drawItemPixmap(painter, rect, alignment, pixmap);
}

QPalette* QCommonStyle_virtualbase_standardPalette(const void* self) {
	return ( (const MiqtVirtualQCommonStyle*)(self) )->virtualbase_standardPalette();
}

bool QCommonStyle_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_event(event);
}

bool QCommonStyle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_eventFilter(watched, event);
}

void QCommonStyle_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_timerEvent(event);
}

void QCommonStyle_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_childEvent(event);
}

void QCommonStyle_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_customEvent(event);
}

void QCommonStyle_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_connectNotify(signal);
}

void QCommonStyle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQCommonStyle*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QCommonStyle_staticMetaObject() { return &QCommonStyle::staticMetaObject; }
void QCommonStyle_delete(QCommonStyle* self) {
	delete self;
}

