#include <QPagedPaintDevice>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPoint>
#include <QPrinter>
#include <QRect>
#include <QSizeF>
#include <qsciprinter.h>
#include "gen_qsciprinter.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciPrinter final : public QsciPrinter {
	struct QsciPrinter_VTable* vtbl;
public:

	MiqtVirtualQsciPrinter(struct QsciPrinter_VTable* vtbl): QsciPrinter(), vtbl(vtbl) {};
	MiqtVirtualQsciPrinter(struct QsciPrinter_VTable* vtbl, QPrinter::PrinterMode mode): QsciPrinter(mode), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciPrinter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void formatPage(QPainter& painter, bool drawing, QRect& area, int pagenr) override {
		if (vtbl->formatPage == 0) {
			QsciPrinter::formatPage(painter, drawing, area, pagenr);
			return;
		}

		QPainter& painter_ret = painter;
		// Cast returned reference into pointer
		QPainter* sigval1 = &painter_ret;
		bool sigval2 = drawing;
		QRect& area_ret = area;
		// Cast returned reference into pointer
		QRect* sigval3 = &area_ret;
		int sigval4 = pagenr;

		vtbl->formatPage(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_formatPage(QPainter* painter, bool drawing, QRect* area, int pagenr) {

		QsciPrinter::formatPage(*painter, drawing, *area, static_cast<int>(pagenr));

	}

	// Subclass to allow providing a Go implementation
	virtual void setMagnification(int magnification) override {
		if (vtbl->setMagnification == 0) {
			QsciPrinter::setMagnification(magnification);
			return;
		}

		int sigval1 = magnification;

		vtbl->setMagnification(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMagnification(int magnification) {

		QsciPrinter::setMagnification(static_cast<int>(magnification));

	}

	// Subclass to allow providing a Go implementation
	virtual int printRange(QsciScintillaBase* qsb, QPainter& painter, int from, int to) override {
		if (vtbl->printRange == 0) {
			return QsciPrinter::printRange(qsb, painter, from, to);
		}

		QsciScintillaBase* sigval1 = qsb;
		QPainter& painter_ret = painter;
		// Cast returned reference into pointer
		QPainter* sigval2 = &painter_ret;
		int sigval3 = from;
		int sigval4 = to;

		int callback_return_value = vtbl->printRange(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_printRange(QsciScintillaBase* qsb, QPainter* painter, int from, int to) {

		return QsciPrinter::printRange(qsb, *painter, static_cast<int>(from), static_cast<int>(to));

	}

	// Subclass to allow providing a Go implementation
	virtual int printRange(QsciScintillaBase* qsb, int from, int to) override {
		if (vtbl->printRange2 == 0) {
			return QsciPrinter::printRange(qsb, from, to);
		}

		QsciScintillaBase* sigval1 = qsb;
		int sigval2 = from;
		int sigval3 = to;

		int callback_return_value = vtbl->printRange2(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_printRange2(QsciScintillaBase* qsb, int from, int to) {

		return QsciPrinter::printRange(qsb, static_cast<int>(from), static_cast<int>(to));

	}

	// Subclass to allow providing a Go implementation
	virtual void setWrapMode(QsciScintilla::WrapMode wmode) override {
		if (vtbl->setWrapMode == 0) {
			QsciPrinter::setWrapMode(wmode);
			return;
		}

		QsciScintilla::WrapMode wmode_ret = wmode;
		int sigval1 = static_cast<int>(wmode_ret);

		vtbl->setWrapMode(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setWrapMode(int wmode) {

		QsciPrinter::setWrapMode(static_cast<QsciScintilla::WrapMode>(wmode));

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QsciPrinter::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QsciPrinter::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setPageSize(QPagedPaintDevice::PageSize pageSize) override {
		if (vtbl->setPageSize == 0) {
			QsciPrinter::setPageSize(pageSize);
			return;
		}

		QPagedPaintDevice::PageSize pageSize_ret = pageSize;
		int sigval1 = static_cast<int>(pageSize_ret);

		vtbl->setPageSize(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setPageSize(int pageSize) {

		QsciPrinter::setPageSize(static_cast<QPagedPaintDevice::PageSize>(pageSize));

	}

	// Subclass to allow providing a Go implementation
	virtual void setPageSizeMM(const QSizeF& size) override {
		if (vtbl->setPageSizeMM == 0) {
			QsciPrinter::setPageSizeMM(size);
			return;
		}

		const QSizeF& size_ret = size;
		// Cast returned reference into pointer
		QSizeF* sigval1 = const_cast<QSizeF*>(&size_ret);

		vtbl->setPageSizeMM(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setPageSizeMM(QSizeF* size) {

		QsciPrinter::setPageSizeMM(*size);

	}

	// Subclass to allow providing a Go implementation
	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return QsciPrinter::newPage();
		}


		bool callback_return_value = vtbl->newPage(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_newPage() {

		return QsciPrinter::newPage();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QsciPrinter::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QsciPrinter::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void setMargins(const QPagedPaintDevice::Margins& m) override {
		if (vtbl->setMargins == 0) {
			QsciPrinter::setMargins(m);
			return;
		}

		const QPagedPaintDevice::Margins& m_ret = m;
		// Cast returned reference into pointer
		QPagedPaintDevice__Margins* sigval1 = const_cast<QPagedPaintDevice::Margins*>(&m_ret);

		vtbl->setMargins(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setMargins(QPagedPaintDevice__Margins* m) {

		QsciPrinter::setMargins(*m);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QsciPrinter::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QsciPrinter::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QsciPrinter::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QsciPrinter::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QsciPrinter::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QsciPrinter::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QsciPrinter::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QsciPrinter::sharedPainter();

	}

	// Wrapper to allow calling protected method
	void protectedbase_setEngines(QPrintEngine* printEngine, QPaintEngine* paintEngine) {

		QsciPrinter::setEngines(printEngine, paintEngine);

	}

	// Wrapper to allow calling protected method
	QPageLayout* protectedbase_devicePageLayout() const {

		return new QPageLayout(QsciPrinter::devicePageLayout());

	}

};

QsciPrinter* QsciPrinter_new(struct QsciPrinter_VTable* vtbl) {
	return new MiqtVirtualQsciPrinter(vtbl);
}

QsciPrinter* QsciPrinter_new2(struct QsciPrinter_VTable* vtbl, int mode) {
	return new MiqtVirtualQsciPrinter(vtbl, static_cast<QPrinter::PrinterMode>(mode));
}

void QsciPrinter_virtbase(QsciPrinter* src, QPrinter** outptr_QPrinter) {
	*outptr_QPrinter = static_cast<QPrinter*>(src);
}

void QsciPrinter_formatPage(QsciPrinter* self, QPainter* painter, bool drawing, QRect* area, int pagenr) {
	self->formatPage(*painter, drawing, *area, static_cast<int>(pagenr));
}

int QsciPrinter_magnification(const QsciPrinter* self) {
	return self->magnification();
}

void QsciPrinter_setMagnification(QsciPrinter* self, int magnification) {
	self->setMagnification(static_cast<int>(magnification));
}

int QsciPrinter_printRange(QsciPrinter* self, QsciScintillaBase* qsb, QPainter* painter, int from, int to) {
	return self->printRange(qsb, *painter, static_cast<int>(from), static_cast<int>(to));
}

int QsciPrinter_printRange2(QsciPrinter* self, QsciScintillaBase* qsb, int from, int to) {
	return self->printRange(qsb, static_cast<int>(from), static_cast<int>(to));
}

int QsciPrinter_wrapMode(const QsciPrinter* self) {
	QsciScintilla::WrapMode _ret = self->wrapMode();
	return static_cast<int>(_ret);
}

void QsciPrinter_setWrapMode(QsciPrinter* self, int wmode) {
	self->setWrapMode(static_cast<QsciScintilla::WrapMode>(wmode));
}

void QsciPrinter_virtualbase_formatPage(void* self, QPainter* painter, bool drawing, QRect* area, int pagenr) {
	( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_formatPage(painter, drawing, area, pagenr);
}

void QsciPrinter_virtualbase_setMagnification(void* self, int magnification) {
	( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_setMagnification(magnification);
}

int QsciPrinter_virtualbase_printRange(void* self, QsciScintillaBase* qsb, QPainter* painter, int from, int to) {
	return ( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_printRange(qsb, painter, from, to);
}

int QsciPrinter_virtualbase_printRange2(void* self, QsciScintillaBase* qsb, int from, int to) {
	return ( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_printRange2(qsb, from, to);
}

void QsciPrinter_virtualbase_setWrapMode(void* self, int wmode) {
	( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_setWrapMode(wmode);
}

int QsciPrinter_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQsciPrinter*)(self) )->virtualbase_devType();
}

void QsciPrinter_virtualbase_setPageSize(void* self, int pageSize) {
	( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_setPageSize(pageSize);
}

void QsciPrinter_virtualbase_setPageSizeMM(void* self, QSizeF* size) {
	( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_setPageSizeMM(size);
}

bool QsciPrinter_virtualbase_newPage(void* self) {
	return ( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_newPage();
}

QPaintEngine* QsciPrinter_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQsciPrinter*)(self) )->virtualbase_paintEngine();
}

void QsciPrinter_virtualbase_setMargins(void* self, QPagedPaintDevice__Margins* m) {
	( (MiqtVirtualQsciPrinter*)(self) )->virtualbase_setMargins(m);
}

int QsciPrinter_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQsciPrinter*)(self) )->virtualbase_metric(param1);
}

void QsciPrinter_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQsciPrinter*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QsciPrinter_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQsciPrinter*)(self) )->virtualbase_redirected(offset);
}

QPainter* QsciPrinter_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQsciPrinter*)(self) )->virtualbase_sharedPainter();
}

void QsciPrinter_protectedbase_setEngines(void* self, QPrintEngine* printEngine, QPaintEngine* paintEngine) {
	( (MiqtVirtualQsciPrinter*)(self) )->protectedbase_setEngines(printEngine, paintEngine);
}

QPageLayout* QsciPrinter_protectedbase_devicePageLayout(const void* self) {
	return ( (const MiqtVirtualQsciPrinter*)(self) )->protectedbase_devicePageLayout();
}

void QsciPrinter_delete(QsciPrinter* self) {
	delete self;
}

