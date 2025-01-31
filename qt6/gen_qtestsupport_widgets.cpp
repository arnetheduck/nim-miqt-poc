#include <QPoint>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventSequence
#define WORKAROUND_INNER_CLASS_DEFINITION_QTest__QTouchEventWidgetSequence
#include <QWidget>
#include <qtestsupport_widgets.h>
#include "gen_qtestsupport_widgets.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTestQTouchEventWidgetSequence final : public QTest::QTouchEventWidgetSequence {
	struct QTest::QTouchEventWidgetSequence_VTable* vtbl;
public:

	MiqtVirtualQTestQTouchEventWidgetSequence(struct QTest::QTouchEventWidgetSequence_VTable* vtbl, const QTest::QTouchEventWidgetSequence& param1): QTest::QTouchEventWidgetSequence(param1), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTestQTouchEventWidgetSequence() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTest::QTouchEventWidgetSequence& stationary(int touchId) override {
		if (vtbl->stationary == 0) {
			return QTest__QTouchEventWidgetSequence::stationary(touchId);
		}

		int sigval1 = touchId;

		QTest__QTouchEventWidgetSequence* callback_return_value = vtbl->stationary(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QTest__QTouchEventWidgetSequence* virtualbase_stationary(int touchId) {

		QTest::QTouchEventWidgetSequence& _ret = QTest__QTouchEventWidgetSequence::stationary(static_cast<int>(touchId));
		// Cast returned reference into pointer
		return &_ret;

	}

	// Subclass to allow providing a Go implementation
	virtual bool commit(bool processEvents) override {
		if (vtbl->commit == 0) {
			return QTest__QTouchEventWidgetSequence::commit(processEvents);
		}

		bool sigval1 = processEvents;

		bool callback_return_value = vtbl->commit(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_commit(bool processEvents) {

		return QTest__QTouchEventWidgetSequence::commit(processEvents);

	}

	// Wrapper to allow calling protected method
	QEventPoint* protectedbase_point(int touchId) {

		QEventPoint& _ret = QTest__QTouchEventWidgetSequence::point(static_cast<int>(touchId));
		// Cast returned reference into pointer
		return &_ret;

	}

	// Wrapper to allow calling protected method
	QEventPoint* protectedbase_pointOrPreviousPoint(int touchId) {

		QEventPoint& _ret = QTest__QTouchEventWidgetSequence::pointOrPreviousPoint(static_cast<int>(touchId));
		// Cast returned reference into pointer
		return &_ret;

	}

};

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_new(struct QTest::QTouchEventWidgetSequence_VTable* vtbl, QTest__QTouchEventWidgetSequence* param1) {
	return new MiqtVirtualQTestQTouchEventWidgetSequence(vtbl, *param1);
}

void QTest__QTouchEventWidgetSequence_virtbase(QTest__QTouchEventWidgetSequence* src, QTest::QTouchEventSequence** outptr_QTest__QTouchEventSequence) {
	*outptr_QTest__QTouchEventSequence = static_cast<QTest::QTouchEventSequence*>(src);
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->press(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->move(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt) {
	QTest::QTouchEventWidgetSequence& _ret = self->release(static_cast<int>(touchId), *pt);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_stationary(QTest__QTouchEventWidgetSequence* self, int touchId) {
	QTest::QTouchEventWidgetSequence& _ret = self->stationary(static_cast<int>(touchId));
	// Cast returned reference into pointer
	return &_ret;
}

bool QTest__QTouchEventWidgetSequence_commit(QTest__QTouchEventWidgetSequence* self, bool processEvents) {
	return self->commit(processEvents);
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_press3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->press(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_move3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->move(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_release3(QTest__QTouchEventWidgetSequence* self, int touchId, QPoint* pt, QWidget* widget) {
	QTest::QTouchEventWidgetSequence& _ret = self->release(static_cast<int>(touchId), *pt, widget);
	// Cast returned reference into pointer
	return &_ret;
}

QTest__QTouchEventWidgetSequence* QTest__QTouchEventWidgetSequence_virtualbase_stationary(void* self, int touchId) {
	return ( (MiqtVirtualQTestQTouchEventWidgetSequence*)(self) )->virtualbase_stationary(touchId);
}

bool QTest__QTouchEventWidgetSequence_virtualbase_commit(void* self, bool processEvents) {
	return ( (MiqtVirtualQTestQTouchEventWidgetSequence*)(self) )->virtualbase_commit(processEvents);
}

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_point(void* self, int touchId) {
	return ( (MiqtVirtualQTestQTouchEventWidgetSequence*)(self) )->protectedbase_point(touchId);
}

QEventPoint* QTest__QTouchEventWidgetSequence_protectedbase_pointOrPreviousPoint(void* self, int touchId) {
	return ( (MiqtVirtualQTestQTouchEventWidgetSequence*)(self) )->protectedbase_pointOrPreviousPoint(touchId);
}

void QTest__QTouchEventWidgetSequence_delete(QTest__QTouchEventWidgetSequence* self) {
	delete self;
}

