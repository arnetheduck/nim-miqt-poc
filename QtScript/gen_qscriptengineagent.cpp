#include <QScriptEngine>
#include <QScriptEngineAgent>
#include <QScriptValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QVariant>
#include <qscriptengineagent.h>
#include "gen_qscriptengineagent.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQScriptEngineAgent final : public QScriptEngineAgent {
	struct QScriptEngineAgent_VTable* vtbl;
public:

	MiqtVirtualQScriptEngineAgent(struct QScriptEngineAgent_VTable* vtbl, QScriptEngine* engine): QScriptEngineAgent(engine), vtbl(vtbl) {};

	virtual ~MiqtVirtualQScriptEngineAgent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void scriptLoad(qint64 id, const QString& program, const QString& fileName, int baseLineNumber) override {
		if (vtbl->scriptLoad == 0) {
			QScriptEngineAgent::scriptLoad(id, program, fileName, baseLineNumber);
			return;
		}

		qint64 id_ret = id;
		long long sigval1 = static_cast<long long>(id_ret);
		const QString program_ret = program;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray program_b = program_ret.toUtf8();
		struct miqt_string program_ms;
		program_ms.len = program_b.length();
		program_ms.data = static_cast<char*>(malloc(program_ms.len));
		memcpy(program_ms.data, program_b.data(), program_ms.len);
		struct miqt_string sigval2 = program_ms;
		const QString fileName_ret = fileName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray fileName_b = fileName_ret.toUtf8();
		struct miqt_string fileName_ms;
		fileName_ms.len = fileName_b.length();
		fileName_ms.data = static_cast<char*>(malloc(fileName_ms.len));
		memcpy(fileName_ms.data, fileName_b.data(), fileName_ms.len);
		struct miqt_string sigval3 = fileName_ms;
		int sigval4 = baseLineNumber;

		vtbl->scriptLoad(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scriptLoad(long long id, struct miqt_string program, struct miqt_string fileName, int baseLineNumber) {
		QString program_QString = QString::fromUtf8(program.data, program.len);
		QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);

		QScriptEngineAgent::scriptLoad(static_cast<qint64>(id), program_QString, fileName_QString, static_cast<int>(baseLineNumber));

	}

	// Subclass to allow providing a Go implementation
	virtual void scriptUnload(qint64 id) override {
		if (vtbl->scriptUnload == 0) {
			QScriptEngineAgent::scriptUnload(id);
			return;
		}

		qint64 id_ret = id;
		long long sigval1 = static_cast<long long>(id_ret);

		vtbl->scriptUnload(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scriptUnload(long long id) {

		QScriptEngineAgent::scriptUnload(static_cast<qint64>(id));

	}

	// Subclass to allow providing a Go implementation
	virtual void contextPush() override {
		if (vtbl->contextPush == 0) {
			QScriptEngineAgent::contextPush();
			return;
		}


		vtbl->contextPush(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextPush() {

		QScriptEngineAgent::contextPush();

	}

	// Subclass to allow providing a Go implementation
	virtual void contextPop() override {
		if (vtbl->contextPop == 0) {
			QScriptEngineAgent::contextPop();
			return;
		}


		vtbl->contextPop(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextPop() {

		QScriptEngineAgent::contextPop();

	}

	// Subclass to allow providing a Go implementation
	virtual void functionEntry(qint64 scriptId) override {
		if (vtbl->functionEntry == 0) {
			QScriptEngineAgent::functionEntry(scriptId);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);

		vtbl->functionEntry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_functionEntry(long long scriptId) {

		QScriptEngineAgent::functionEntry(static_cast<qint64>(scriptId));

	}

	// Subclass to allow providing a Go implementation
	virtual void functionExit(qint64 scriptId, const QScriptValue& returnValue) override {
		if (vtbl->functionExit == 0) {
			QScriptEngineAgent::functionExit(scriptId, returnValue);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		const QScriptValue& returnValue_ret = returnValue;
		// Cast returned reference into pointer
		QScriptValue* sigval2 = const_cast<QScriptValue*>(&returnValue_ret);

		vtbl->functionExit(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_functionExit(long long scriptId, QScriptValue* returnValue) {

		QScriptEngineAgent::functionExit(static_cast<qint64>(scriptId), *returnValue);

	}

	// Subclass to allow providing a Go implementation
	virtual void positionChange(qint64 scriptId, int lineNumber, int columnNumber) override {
		if (vtbl->positionChange == 0) {
			QScriptEngineAgent::positionChange(scriptId, lineNumber, columnNumber);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		int sigval2 = lineNumber;
		int sigval3 = columnNumber;

		vtbl->positionChange(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_positionChange(long long scriptId, int lineNumber, int columnNumber) {

		QScriptEngineAgent::positionChange(static_cast<qint64>(scriptId), static_cast<int>(lineNumber), static_cast<int>(columnNumber));

	}

	// Subclass to allow providing a Go implementation
	virtual void exceptionThrow(qint64 scriptId, const QScriptValue& exception, bool hasHandler) override {
		if (vtbl->exceptionThrow == 0) {
			QScriptEngineAgent::exceptionThrow(scriptId, exception, hasHandler);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		const QScriptValue& exception_ret = exception;
		// Cast returned reference into pointer
		QScriptValue* sigval2 = const_cast<QScriptValue*>(&exception_ret);
		bool sigval3 = hasHandler;

		vtbl->exceptionThrow(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_exceptionThrow(long long scriptId, QScriptValue* exception, bool hasHandler) {

		QScriptEngineAgent::exceptionThrow(static_cast<qint64>(scriptId), *exception, hasHandler);

	}

	// Subclass to allow providing a Go implementation
	virtual void exceptionCatch(qint64 scriptId, const QScriptValue& exception) override {
		if (vtbl->exceptionCatch == 0) {
			QScriptEngineAgent::exceptionCatch(scriptId, exception);
			return;
		}

		qint64 scriptId_ret = scriptId;
		long long sigval1 = static_cast<long long>(scriptId_ret);
		const QScriptValue& exception_ret = exception;
		// Cast returned reference into pointer
		QScriptValue* sigval2 = const_cast<QScriptValue*>(&exception_ret);

		vtbl->exceptionCatch(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_exceptionCatch(long long scriptId, QScriptValue* exception) {

		QScriptEngineAgent::exceptionCatch(static_cast<qint64>(scriptId), *exception);

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsExtension(QScriptEngineAgent::Extension extension) const override {
		if (vtbl->supportsExtension == 0) {
			return QScriptEngineAgent::supportsExtension(extension);
		}

		QScriptEngineAgent::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);

		bool callback_return_value = vtbl->supportsExtension(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsExtension(int extension) const {

		return QScriptEngineAgent::supportsExtension(static_cast<QScriptEngineAgent::Extension>(extension));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant extension(QScriptEngineAgent::Extension extension, const QVariant& argument) override {
		if (vtbl->extension == 0) {
			return QScriptEngineAgent::extension(extension, argument);
		}

		QScriptEngineAgent::Extension extension_ret = extension;
		int sigval1 = static_cast<int>(extension_ret);
		const QVariant& argument_ret = argument;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&argument_ret);

		QVariant* callback_return_value = vtbl->extension(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_extension(int extension, QVariant* argument) {

		return new QVariant(QScriptEngineAgent::extension(static_cast<QScriptEngineAgent::Extension>(extension), *argument));

	}

};

QScriptEngineAgent* QScriptEngineAgent_new(struct QScriptEngineAgent_VTable* vtbl, QScriptEngine* engine) {
	return new MiqtVirtualQScriptEngineAgent(vtbl, engine);
}

void QScriptEngineAgent_scriptLoad(QScriptEngineAgent* self, long long id, struct miqt_string program, struct miqt_string fileName, int baseLineNumber) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->scriptLoad(static_cast<qint64>(id), program_QString, fileName_QString, static_cast<int>(baseLineNumber));
}

void QScriptEngineAgent_scriptUnload(QScriptEngineAgent* self, long long id) {
	self->scriptUnload(static_cast<qint64>(id));
}

void QScriptEngineAgent_contextPush(QScriptEngineAgent* self) {
	self->contextPush();
}

void QScriptEngineAgent_contextPop(QScriptEngineAgent* self) {
	self->contextPop();
}

void QScriptEngineAgent_functionEntry(QScriptEngineAgent* self, long long scriptId) {
	self->functionEntry(static_cast<qint64>(scriptId));
}

void QScriptEngineAgent_functionExit(QScriptEngineAgent* self, long long scriptId, QScriptValue* returnValue) {
	self->functionExit(static_cast<qint64>(scriptId), *returnValue);
}

void QScriptEngineAgent_positionChange(QScriptEngineAgent* self, long long scriptId, int lineNumber, int columnNumber) {
	self->positionChange(static_cast<qint64>(scriptId), static_cast<int>(lineNumber), static_cast<int>(columnNumber));
}

void QScriptEngineAgent_exceptionThrow(QScriptEngineAgent* self, long long scriptId, QScriptValue* exception, bool hasHandler) {
	self->exceptionThrow(static_cast<qint64>(scriptId), *exception, hasHandler);
}

void QScriptEngineAgent_exceptionCatch(QScriptEngineAgent* self, long long scriptId, QScriptValue* exception) {
	self->exceptionCatch(static_cast<qint64>(scriptId), *exception);
}

bool QScriptEngineAgent_supportsExtension(const QScriptEngineAgent* self, int extension) {
	return self->supportsExtension(static_cast<QScriptEngineAgent::Extension>(extension));
}

QVariant* QScriptEngineAgent_extension(QScriptEngineAgent* self, int extension, QVariant* argument) {
	return new QVariant(self->extension(static_cast<QScriptEngineAgent::Extension>(extension), *argument));
}

QScriptEngine* QScriptEngineAgent_engine(const QScriptEngineAgent* self) {
	return self->engine();
}

void QScriptEngineAgent_virtualbase_scriptLoad(void* self, long long id, struct miqt_string program, struct miqt_string fileName, int baseLineNumber) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_scriptLoad(id, program, fileName, baseLineNumber);
}

void QScriptEngineAgent_virtualbase_scriptUnload(void* self, long long id) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_scriptUnload(id);
}

void QScriptEngineAgent_virtualbase_contextPush(void* self) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_contextPush();
}

void QScriptEngineAgent_virtualbase_contextPop(void* self) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_contextPop();
}

void QScriptEngineAgent_virtualbase_functionEntry(void* self, long long scriptId) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_functionEntry(scriptId);
}

void QScriptEngineAgent_virtualbase_functionExit(void* self, long long scriptId, QScriptValue* returnValue) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_functionExit(scriptId, returnValue);
}

void QScriptEngineAgent_virtualbase_positionChange(void* self, long long scriptId, int lineNumber, int columnNumber) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_positionChange(scriptId, lineNumber, columnNumber);
}

void QScriptEngineAgent_virtualbase_exceptionThrow(void* self, long long scriptId, QScriptValue* exception, bool hasHandler) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_exceptionThrow(scriptId, exception, hasHandler);
}

void QScriptEngineAgent_virtualbase_exceptionCatch(void* self, long long scriptId, QScriptValue* exception) {
	( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_exceptionCatch(scriptId, exception);
}

bool QScriptEngineAgent_virtualbase_supportsExtension(const void* self, int extension) {
	return ( (const MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_supportsExtension(extension);
}

QVariant* QScriptEngineAgent_virtualbase_extension(void* self, int extension, QVariant* argument) {
	return ( (MiqtVirtualQScriptEngineAgent*)(self) )->virtualbase_extension(extension, argument);
}

void QScriptEngineAgent_delete(QScriptEngineAgent* self) {
	delete self;
}

