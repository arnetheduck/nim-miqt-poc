#pragma once
#ifndef MIQT_QT_NETWORK_GEN_QSSLSOCKET_H
#define MIQT_QT_NETWORK_GEN_QSSLSOCKET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractSocket;
class QChildEvent;
class QEvent;
class QIODevice;
class QMetaMethod;
class QMetaObject;
class QObject;
class QOcspResponse;
class QSslCertificate;
class QSslCipher;
class QSslConfiguration;
class QSslError;
class QSslKey;
class QSslPreSharedKeyAuthenticator;
class QSslSocket;
class QTcpSocket;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractSocket QAbstractSocket;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QOcspResponse QOcspResponse;
typedef struct QSslCertificate QSslCertificate;
typedef struct QSslCipher QSslCipher;
typedef struct QSslConfiguration QSslConfiguration;
typedef struct QSslError QSslError;
typedef struct QSslKey QSslKey;
typedef struct QSslPreSharedKeyAuthenticator QSslPreSharedKeyAuthenticator;
typedef struct QSslSocket QSslSocket;
typedef struct QTcpSocket QTcpSocket;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

struct QSslSocket_VTable {
	void (*destructor)(struct QSslSocket_VTable* vtbl, QSslSocket* self);
	QMetaObject* (*metaObject)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	void* (*metacast)(struct QSslSocket_VTable* vtbl, QSslSocket* self, const char* param1);
	int (*metacall)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int param1, int param2, void** param3);
	void (*resume)(struct QSslSocket_VTable* vtbl, QSslSocket* self);
	bool (*setSocketDescriptor)(struct QSslSocket_VTable* vtbl, QSslSocket* self, intptr_t socketDescriptor, int state, int openMode);
	void (*connectToHost)(struct QSslSocket_VTable* vtbl, QSslSocket* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol);
	void (*disconnectFromHost)(struct QSslSocket_VTable* vtbl, QSslSocket* self);
	void (*setSocketOption)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int option, QVariant* value);
	QVariant* (*socketOption)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int option);
	long long (*bytesAvailable)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	long long (*bytesToWrite)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	bool (*canReadLine)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	void (*close)(struct QSslSocket_VTable* vtbl, QSslSocket* self);
	bool (*atEnd)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	void (*setReadBufferSize)(struct QSslSocket_VTable* vtbl, QSslSocket* self, long long size);
	bool (*waitForConnected)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int msecs);
	bool (*waitForReadyRead)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int msecs);
	bool (*waitForBytesWritten)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int msecs);
	bool (*waitForDisconnected)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int msecs);
	long long (*readData)(struct QSslSocket_VTable* vtbl, QSslSocket* self, char* data, long long maxlen);
	long long (*writeData)(struct QSslSocket_VTable* vtbl, QSslSocket* self, const char* data, long long len);
	intptr_t (*socketDescriptor)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	bool (*isSequential)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	long long (*readLineData)(struct QSslSocket_VTable* vtbl, QSslSocket* self, char* data, long long maxlen);
	bool (*open)(struct QSslSocket_VTable* vtbl, QSslSocket* self, int mode);
	long long (*pos)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	long long (*size)(struct QSslSocket_VTable* vtbl, const QSslSocket* self);
	bool (*seek)(struct QSslSocket_VTable* vtbl, QSslSocket* self, long long pos);
	bool (*reset)(struct QSslSocket_VTable* vtbl, QSslSocket* self);
	bool (*event)(struct QSslSocket_VTable* vtbl, QSslSocket* self, QEvent* event);
	bool (*eventFilter)(struct QSslSocket_VTable* vtbl, QSslSocket* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSslSocket_VTable* vtbl, QSslSocket* self, QTimerEvent* event);
	void (*childEvent)(struct QSslSocket_VTable* vtbl, QSslSocket* self, QChildEvent* event);
	void (*customEvent)(struct QSslSocket_VTable* vtbl, QSslSocket* self, QEvent* event);
	void (*connectNotify)(struct QSslSocket_VTable* vtbl, QSslSocket* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSslSocket_VTable* vtbl, QSslSocket* self, QMetaMethod* signal);
};
QSslSocket* QSslSocket_new(struct QSslSocket_VTable* vtbl);
QSslSocket* QSslSocket_new2(struct QSslSocket_VTable* vtbl, QObject* parent);
void QSslSocket_virtbase(QSslSocket* src, QTcpSocket** outptr_QTcpSocket);
QMetaObject* QSslSocket_metaObject(const QSslSocket* self);
void* QSslSocket_metacast(QSslSocket* self, const char* param1);
int QSslSocket_metacall(QSslSocket* self, int param1, int param2, void** param3);
struct miqt_string QSslSocket_tr(const char* s);
struct miqt_string QSslSocket_trUtf8(const char* s);
void QSslSocket_resume(QSslSocket* self);
void QSslSocket_connectToHostEncrypted(QSslSocket* self, struct miqt_string hostName, uint16_t port);
void QSslSocket_connectToHostEncrypted2(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName);
bool QSslSocket_setSocketDescriptor(QSslSocket* self, intptr_t socketDescriptor, int state, int openMode);
void QSslSocket_connectToHost(QSslSocket* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol);
void QSslSocket_disconnectFromHost(QSslSocket* self);
void QSslSocket_setSocketOption(QSslSocket* self, int option, QVariant* value);
QVariant* QSslSocket_socketOption(QSslSocket* self, int option);
int QSslSocket_mode(const QSslSocket* self);
bool QSslSocket_isEncrypted(const QSslSocket* self);
int QSslSocket_protocol(const QSslSocket* self);
void QSslSocket_setProtocol(QSslSocket* self, int protocol);
int QSslSocket_peerVerifyMode(const QSslSocket* self);
void QSslSocket_setPeerVerifyMode(QSslSocket* self, int mode);
int QSslSocket_peerVerifyDepth(const QSslSocket* self);
void QSslSocket_setPeerVerifyDepth(QSslSocket* self, int depth);
struct miqt_string QSslSocket_peerVerifyName(const QSslSocket* self);
void QSslSocket_setPeerVerifyName(QSslSocket* self, struct miqt_string hostName);
long long QSslSocket_bytesAvailable(const QSslSocket* self);
long long QSslSocket_bytesToWrite(const QSslSocket* self);
bool QSslSocket_canReadLine(const QSslSocket* self);
void QSslSocket_close(QSslSocket* self);
bool QSslSocket_atEnd(const QSslSocket* self);
bool QSslSocket_flush(QSslSocket* self);
void QSslSocket_abort(QSslSocket* self);
void QSslSocket_setReadBufferSize(QSslSocket* self, long long size);
long long QSslSocket_encryptedBytesAvailable(const QSslSocket* self);
long long QSslSocket_encryptedBytesToWrite(const QSslSocket* self);
QSslConfiguration* QSslSocket_sslConfiguration(const QSslSocket* self);
void QSslSocket_setSslConfiguration(QSslSocket* self, QSslConfiguration* config);
void QSslSocket_setLocalCertificateChain(QSslSocket* self, struct miqt_array /* of QSslCertificate* */  localChain);
struct miqt_array /* of QSslCertificate* */  QSslSocket_localCertificateChain(const QSslSocket* self);
void QSslSocket_setLocalCertificate(QSslSocket* self, QSslCertificate* certificate);
void QSslSocket_setLocalCertificateWithFileName(QSslSocket* self, struct miqt_string fileName);
QSslCertificate* QSslSocket_localCertificate(const QSslSocket* self);
QSslCertificate* QSslSocket_peerCertificate(const QSslSocket* self);
struct miqt_array /* of QSslCertificate* */  QSslSocket_peerCertificateChain(const QSslSocket* self);
QSslCipher* QSslSocket_sessionCipher(const QSslSocket* self);
int QSslSocket_sessionProtocol(const QSslSocket* self);
struct miqt_array /* of QOcspResponse* */  QSslSocket_ocspResponses(const QSslSocket* self);
void QSslSocket_setPrivateKey(QSslSocket* self, QSslKey* key);
void QSslSocket_setPrivateKeyWithFileName(QSslSocket* self, struct miqt_string fileName);
QSslKey* QSslSocket_privateKey(const QSslSocket* self);
struct miqt_array /* of QSslCipher* */  QSslSocket_ciphers(const QSslSocket* self);
void QSslSocket_setCiphers(QSslSocket* self, struct miqt_array /* of QSslCipher* */  ciphers);
void QSslSocket_setCiphersWithCiphers(QSslSocket* self, struct miqt_string ciphers);
void QSslSocket_setDefaultCiphers(struct miqt_array /* of QSslCipher* */  ciphers);
struct miqt_array /* of QSslCipher* */  QSslSocket_defaultCiphers();
struct miqt_array /* of QSslCipher* */  QSslSocket_supportedCiphers();
bool QSslSocket_addCaCertificates(QSslSocket* self, struct miqt_string path);
void QSslSocket_addCaCertificate(QSslSocket* self, QSslCertificate* certificate);
void QSslSocket_addCaCertificatesWithCertificates(QSslSocket* self, struct miqt_array /* of QSslCertificate* */  certificates);
void QSslSocket_setCaCertificates(QSslSocket* self, struct miqt_array /* of QSslCertificate* */  certificates);
struct miqt_array /* of QSslCertificate* */  QSslSocket_caCertificates(const QSslSocket* self);
bool QSslSocket_addDefaultCaCertificates(struct miqt_string path);
void QSslSocket_addDefaultCaCertificate(QSslCertificate* certificate);
void QSslSocket_addDefaultCaCertificatesWithCertificates(struct miqt_array /* of QSslCertificate* */  certificates);
void QSslSocket_setDefaultCaCertificates(struct miqt_array /* of QSslCertificate* */  certificates);
struct miqt_array /* of QSslCertificate* */  QSslSocket_defaultCaCertificates();
struct miqt_array /* of QSslCertificate* */  QSslSocket_systemCaCertificates();
bool QSslSocket_waitForConnected(QSslSocket* self, int msecs);
bool QSslSocket_waitForEncrypted(QSslSocket* self);
bool QSslSocket_waitForReadyRead(QSslSocket* self, int msecs);
bool QSslSocket_waitForBytesWritten(QSslSocket* self, int msecs);
bool QSslSocket_waitForDisconnected(QSslSocket* self, int msecs);
struct miqt_array /* of QSslError* */  QSslSocket_sslErrors(const QSslSocket* self);
struct miqt_array /* of QSslError* */  QSslSocket_sslHandshakeErrors(const QSslSocket* self);
bool QSslSocket_supportsSsl();
long QSslSocket_sslLibraryVersionNumber();
struct miqt_string QSslSocket_sslLibraryVersionString();
long QSslSocket_sslLibraryBuildVersionNumber();
struct miqt_string QSslSocket_sslLibraryBuildVersionString();
void QSslSocket_ignoreSslErrors(QSslSocket* self, struct miqt_array /* of QSslError* */  errors);
void QSslSocket_startClientEncryption(QSslSocket* self);
void QSslSocket_startServerEncryption(QSslSocket* self);
void QSslSocket_ignoreSslErrors2(QSslSocket* self);
void QSslSocket_encrypted(QSslSocket* self);
void QSslSocket_connect_encrypted(QSslSocket* self, intptr_t slot);
void QSslSocket_peerVerifyError(QSslSocket* self, QSslError* error);
void QSslSocket_connect_peerVerifyError(QSslSocket* self, intptr_t slot);
void QSslSocket_sslErrorsWithErrors(QSslSocket* self, struct miqt_array /* of QSslError* */  errors);
void QSslSocket_connect_sslErrorsWithErrors(QSslSocket* self, intptr_t slot);
void QSslSocket_modeChanged(QSslSocket* self, int newMode);
void QSslSocket_connect_modeChanged(QSslSocket* self, intptr_t slot);
void QSslSocket_encryptedBytesWritten(QSslSocket* self, long long totalBytes);
void QSslSocket_connect_encryptedBytesWritten(QSslSocket* self, intptr_t slot);
void QSslSocket_preSharedKeyAuthenticationRequired(QSslSocket* self, QSslPreSharedKeyAuthenticator* authenticator);
void QSslSocket_connect_preSharedKeyAuthenticationRequired(QSslSocket* self, intptr_t slot);
void QSslSocket_newSessionTicketReceived(QSslSocket* self);
void QSslSocket_connect_newSessionTicketReceived(QSslSocket* self, intptr_t slot);
long long QSslSocket_readData(QSslSocket* self, char* data, long long maxlen);
long long QSslSocket_writeData(QSslSocket* self, const char* data, long long len);
struct miqt_string QSslSocket_tr2(const char* s, const char* c);
struct miqt_string QSslSocket_tr3(const char* s, const char* c, int n);
struct miqt_string QSslSocket_trUtf82(const char* s, const char* c);
struct miqt_string QSslSocket_trUtf83(const char* s, const char* c, int n);
void QSslSocket_connectToHostEncrypted3(QSslSocket* self, struct miqt_string hostName, uint16_t port, int mode);
void QSslSocket_connectToHostEncrypted4(QSslSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol);
void QSslSocket_connectToHostEncrypted42(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName, int mode);
void QSslSocket_connectToHostEncrypted5(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName, int mode, int protocol);
void QSslSocket_setLocalCertificate2(QSslSocket* self, struct miqt_string fileName, int format);
void QSslSocket_setPrivateKey2(QSslSocket* self, struct miqt_string fileName, int algorithm);
void QSslSocket_setPrivateKey3(QSslSocket* self, struct miqt_string fileName, int algorithm, int format);
void QSslSocket_setPrivateKey4(QSslSocket* self, struct miqt_string fileName, int algorithm, int format, struct miqt_string passPhrase);
bool QSslSocket_addCaCertificates2(QSslSocket* self, struct miqt_string path, int format);
bool QSslSocket_addCaCertificates3(QSslSocket* self, struct miqt_string path, int format, int syntax);
bool QSslSocket_addDefaultCaCertificates2(struct miqt_string path, int format);
bool QSslSocket_addDefaultCaCertificates3(struct miqt_string path, int format, int syntax);
bool QSslSocket_waitForEncrypted1(QSslSocket* self, int msecs);
QMetaObject* QSslSocket_virtualbase_metaObject(const void* self);
void* QSslSocket_virtualbase_metacast(void* self, const char* param1);
int QSslSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QSslSocket_virtualbase_resume(void* self);
bool QSslSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode);
void QSslSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol);
void QSslSocket_virtualbase_disconnectFromHost(void* self);
void QSslSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value);
QVariant* QSslSocket_virtualbase_socketOption(void* self, int option);
long long QSslSocket_virtualbase_bytesAvailable(const void* self);
long long QSslSocket_virtualbase_bytesToWrite(const void* self);
bool QSslSocket_virtualbase_canReadLine(const void* self);
void QSslSocket_virtualbase_close(void* self);
bool QSslSocket_virtualbase_atEnd(const void* self);
void QSslSocket_virtualbase_setReadBufferSize(void* self, long long size);
bool QSslSocket_virtualbase_waitForConnected(void* self, int msecs);
bool QSslSocket_virtualbase_waitForReadyRead(void* self, int msecs);
bool QSslSocket_virtualbase_waitForBytesWritten(void* self, int msecs);
bool QSslSocket_virtualbase_waitForDisconnected(void* self, int msecs);
long long QSslSocket_virtualbase_readData(void* self, char* data, long long maxlen);
long long QSslSocket_virtualbase_writeData(void* self, const char* data, long long len);
intptr_t QSslSocket_virtualbase_socketDescriptor(const void* self);
bool QSslSocket_virtualbase_isSequential(const void* self);
long long QSslSocket_virtualbase_readLineData(void* self, char* data, long long maxlen);
bool QSslSocket_virtualbase_open(void* self, int mode);
long long QSslSocket_virtualbase_pos(const void* self);
long long QSslSocket_virtualbase_size(const void* self);
bool QSslSocket_virtualbase_seek(void* self, long long pos);
bool QSslSocket_virtualbase_reset(void* self);
bool QSslSocket_virtualbase_event(void* self, QEvent* event);
bool QSslSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSslSocket_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSslSocket_virtualbase_childEvent(void* self, QChildEvent* event);
void QSslSocket_virtualbase_customEvent(void* self, QEvent* event);
void QSslSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSslSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QSslSocket_staticMetaObject();
void QSslSocket_delete(QSslSocket* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
