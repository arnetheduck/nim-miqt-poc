#include <QEvent>
#include <QGesture>
#include <QGestureRecognizer>
#include <QObject>
#include <qgesturerecognizer.h>
#include "gen_qgesturerecognizer.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGestureRecognizer final : public QGestureRecognizer {
	struct QGestureRecognizer_VTable* vtbl;
public:

	MiqtVirtualQGestureRecognizer(struct QGestureRecognizer_VTable* vtbl): QGestureRecognizer(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGestureRecognizer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QGesture* create(QObject* target) override {
		if (vtbl->create == 0) {
			return QGestureRecognizer::create(target);
		}

		QObject* sigval1 = target;

		QGesture* callback_return_value = vtbl->create(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QGesture* virtualbase_create(QObject* target) {

		return QGestureRecognizer::create(target);

	}

	// Subclass to allow providing a Go implementation
	virtual QGestureRecognizer::Result recognize(QGesture* state, QObject* watched, QEvent* event) override {
		if (vtbl->recognize == 0) {
			return QGestureRecognizer::Result(); // Pure virtual, there is no base we can call
		}

		QGesture* sigval1 = state;
		QObject* sigval2 = watched;
		QEvent* sigval3 = event;

		int callback_return_value = vtbl->recognize(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<QGestureRecognizer::Result>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual void reset(QGesture* state) override {
		if (vtbl->reset == 0) {
			QGestureRecognizer::reset(state);
			return;
		}

		QGesture* sigval1 = state;

		vtbl->reset(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reset(QGesture* state) {

		QGestureRecognizer::reset(state);

	}

};

QGestureRecognizer* QGestureRecognizer_new(struct QGestureRecognizer_VTable* vtbl) {
	return new MiqtVirtualQGestureRecognizer(vtbl);
}

QGesture* QGestureRecognizer_create(QGestureRecognizer* self, QObject* target) {
	return self->create(target);
}

int QGestureRecognizer_recognize(QGestureRecognizer* self, QGesture* state, QObject* watched, QEvent* event) {
	QGestureRecognizer::Result _ret = self->recognize(state, watched, event);
	return static_cast<int>(_ret);
}

void QGestureRecognizer_reset(QGestureRecognizer* self, QGesture* state) {
	self->reset(state);
}

int QGestureRecognizer_registerRecognizer(QGestureRecognizer* recognizer) {
	Qt::GestureType _ret = QGestureRecognizer::registerRecognizer(recognizer);
	return static_cast<int>(_ret);
}

void QGestureRecognizer_unregisterRecognizer(int type) {
	QGestureRecognizer::unregisterRecognizer(static_cast<Qt::GestureType>(type));
}

void QGestureRecognizer_operatorAssign(QGestureRecognizer* self, QGestureRecognizer* param1) {
	self->operator=(*param1);
}

QGesture* QGestureRecognizer_virtualbase_create(void* self, QObject* target) {
	return ( (MiqtVirtualQGestureRecognizer*)(self) )->virtualbase_create(target);
}

void QGestureRecognizer_virtualbase_reset(void* self, QGesture* state) {
	( (MiqtVirtualQGestureRecognizer*)(self) )->virtualbase_reset(state);
}

void QGestureRecognizer_delete(QGestureRecognizer* self) {
	delete self;
}

