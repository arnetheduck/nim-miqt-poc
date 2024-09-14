#include <QFont>
#include <QSizeF>
#include <QStaticText>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextOption>
#include <QTransform>
#include "qstatictext.h"
#include "gen_qstatictext.h"
#include "_cgo_export.h"

QStaticText* QStaticText_new() {
	return new QStaticText();
}

QStaticText* QStaticText_new2(struct miqt_string* text) {
	QString text_QString = QString::fromUtf8(&text->data, text->len);
	return new QStaticText(text_QString);
}

QStaticText* QStaticText_new3(QStaticText* other) {
	return new QStaticText(*other);
}

void QStaticText_OperatorAssign(QStaticText* self, QStaticText* param1) {
	self->operator=(*param1);
}

void QStaticText_Swap(QStaticText* self, QStaticText* other) {
	self->swap(*other);
}

void QStaticText_SetText(QStaticText* self, struct miqt_string* text) {
	QString text_QString = QString::fromUtf8(&text->data, text->len);
	self->setText(text_QString);
}

struct miqt_string* QStaticText_Text(const QStaticText* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	return miqt_strdup(_b.data(), _b.length());
}

void QStaticText_SetTextFormat(QStaticText* self, uintptr_t textFormat) {
	self->setTextFormat(static_cast<Qt::TextFormat>(textFormat));
}

uintptr_t QStaticText_TextFormat(const QStaticText* self) {
	Qt::TextFormat _ret = self->textFormat();
	return static_cast<uintptr_t>(_ret);
}

void QStaticText_SetTextWidth(QStaticText* self, double textWidth) {
	self->setTextWidth(static_cast<qreal>(textWidth));
}

double QStaticText_TextWidth(const QStaticText* self) {
	return self->textWidth();
}

void QStaticText_SetTextOption(QStaticText* self, QTextOption* textOption) {
	self->setTextOption(*textOption);
}

QTextOption* QStaticText_TextOption(const QStaticText* self) {
	QTextOption _ret = self->textOption();
	// Copy-construct value returned type into heap-allocated copy
	return static_cast<QTextOption*>(new QTextOption(_ret));
}

QSizeF* QStaticText_Size(const QStaticText* self) {
	QSizeF _ret = self->size();
	// Copy-construct value returned type into heap-allocated copy
	return static_cast<QSizeF*>(new QSizeF(_ret));
}

void QStaticText_Prepare(QStaticText* self) {
	self->prepare();
}

void QStaticText_SetPerformanceHint(QStaticText* self, uintptr_t performanceHint) {
	self->setPerformanceHint(static_cast<QStaticText::PerformanceHint>(performanceHint));
}

uintptr_t QStaticText_PerformanceHint(const QStaticText* self) {
	QStaticText::PerformanceHint _ret = self->performanceHint();
	return static_cast<uintptr_t>(_ret);
}

bool QStaticText_OperatorEqual(const QStaticText* self, QStaticText* param1) {
	return self->operator==(*param1);
}

bool QStaticText_OperatorNotEqual(const QStaticText* self, QStaticText* param1) {
	return self->operator!=(*param1);
}

void QStaticText_Prepare1(QStaticText* self, QTransform* matrix) {
	self->prepare(*matrix);
}

void QStaticText_Prepare2(QStaticText* self, QTransform* matrix, QFont* font) {
	self->prepare(*matrix, *font);
}

void QStaticText_Delete(QStaticText* self) {
	delete self;
}

