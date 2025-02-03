package quick

/*

#include "gen_qsgrendererinterface.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"unsafe"
)

type QSGRendererInterface__GraphicsApi int

const (
	QSGRendererInterface__Unknown       QSGRendererInterface__GraphicsApi = 0
	QSGRendererInterface__Software      QSGRendererInterface__GraphicsApi = 1
	QSGRendererInterface__OpenGL        QSGRendererInterface__GraphicsApi = 2
	QSGRendererInterface__Direct3D12    QSGRendererInterface__GraphicsApi = 3
	QSGRendererInterface__OpenVG        QSGRendererInterface__GraphicsApi = 4
	QSGRendererInterface__OpenGLRhi     QSGRendererInterface__GraphicsApi = 5
	QSGRendererInterface__Direct3D11Rhi QSGRendererInterface__GraphicsApi = 6
	QSGRendererInterface__VulkanRhi     QSGRendererInterface__GraphicsApi = 7
	QSGRendererInterface__MetalRhi      QSGRendererInterface__GraphicsApi = 8
	QSGRendererInterface__NullRhi       QSGRendererInterface__GraphicsApi = 9
)

type QSGRendererInterface__Resource int

const (
	QSGRendererInterface__DeviceResource         QSGRendererInterface__Resource = 0
	QSGRendererInterface__CommandQueueResource   QSGRendererInterface__Resource = 1
	QSGRendererInterface__CommandListResource    QSGRendererInterface__Resource = 2
	QSGRendererInterface__PainterResource        QSGRendererInterface__Resource = 3
	QSGRendererInterface__RhiResource            QSGRendererInterface__Resource = 4
	QSGRendererInterface__PhysicalDeviceResource QSGRendererInterface__Resource = 5
	QSGRendererInterface__OpenGLContextResource  QSGRendererInterface__Resource = 6
	QSGRendererInterface__DeviceContextResource  QSGRendererInterface__Resource = 7
	QSGRendererInterface__CommandEncoderResource QSGRendererInterface__Resource = 8
	QSGRendererInterface__VulkanInstanceResource QSGRendererInterface__Resource = 9
	QSGRendererInterface__RenderPassResource     QSGRendererInterface__Resource = 10
)

type QSGRendererInterface__ShaderType int

const (
	QSGRendererInterface__UnknownShadingLanguage QSGRendererInterface__ShaderType = 0
	QSGRendererInterface__GLSL                   QSGRendererInterface__ShaderType = 1
	QSGRendererInterface__HLSL                   QSGRendererInterface__ShaderType = 2
	QSGRendererInterface__RhiShader              QSGRendererInterface__ShaderType = 3
)

type QSGRendererInterface__ShaderCompilationType int

const (
	QSGRendererInterface__RuntimeCompilation QSGRendererInterface__ShaderCompilationType = 1
	QSGRendererInterface__OfflineCompilation QSGRendererInterface__ShaderCompilationType = 2
)

type QSGRendererInterface__ShaderSourceType int

const (
	QSGRendererInterface__ShaderSourceString QSGRendererInterface__ShaderSourceType = 1
	QSGRendererInterface__ShaderSourceFile   QSGRendererInterface__ShaderSourceType = 2
	QSGRendererInterface__ShaderByteCode     QSGRendererInterface__ShaderSourceType = 4
)

type QSGRendererInterface struct {
	h *C.QSGRendererInterface
}

func (this *QSGRendererInterface) cPointer() *C.QSGRendererInterface {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QSGRendererInterface) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQSGRendererInterface constructs the type using only CGO pointers.
func newQSGRendererInterface(h *C.QSGRendererInterface) *QSGRendererInterface {
	if h == nil {
		return nil
	}

	return &QSGRendererInterface{h: h}
}

// UnsafeNewQSGRendererInterface constructs the type using only unsafe pointers.
func UnsafeNewQSGRendererInterface(h unsafe.Pointer) *QSGRendererInterface {
	return newQSGRendererInterface((*C.QSGRendererInterface)(h))
}

func (this *QSGRendererInterface) GraphicsApi() QSGRendererInterface__GraphicsApi {
	return (QSGRendererInterface__GraphicsApi)(C.QSGRendererInterface_graphicsApi(this.h))
}

func (this *QSGRendererInterface) GetResource(window *QQuickWindow, resource QSGRendererInterface__Resource) unsafe.Pointer {
	return (unsafe.Pointer)(C.QSGRendererInterface_getResource(this.h, window.cPointer(), (C.int)(resource)))
}

func (this *QSGRendererInterface) GetResource2(window *QQuickWindow, resource string) unsafe.Pointer {
	resource_Cstring := C.CString(resource)
	defer C.free(unsafe.Pointer(resource_Cstring))
	return (unsafe.Pointer)(C.QSGRendererInterface_getResource2(this.h, window.cPointer(), resource_Cstring))
}

func (this *QSGRendererInterface) ShaderType() QSGRendererInterface__ShaderType {
	return (QSGRendererInterface__ShaderType)(C.QSGRendererInterface_shaderType(this.h))
}

func (this *QSGRendererInterface) ShaderCompilationType() QSGRendererInterface__ShaderCompilationType {
	return (QSGRendererInterface__ShaderCompilationType)(C.QSGRendererInterface_shaderCompilationType(this.h))
}

func (this *QSGRendererInterface) ShaderSourceType() QSGRendererInterface__ShaderSourceType {
	return (QSGRendererInterface__ShaderSourceType)(C.QSGRendererInterface_shaderSourceType(this.h))
}

func QSGRendererInterface_IsApiRhiBased(api QSGRendererInterface__GraphicsApi) bool {
	return (bool)(C.QSGRendererInterface_isApiRhiBased((C.int)(api)))
}

func (this *QSGRendererInterface) OperatorAssign(param1 *QSGRendererInterface) {
	C.QSGRendererInterface_operatorAssign(this.h, param1.cPointer())
}

// Delete this object from C++ memory.
func (this *QSGRendererInterface) Delete() {
	C.QSGRendererInterface_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QSGRendererInterface) GoGC() {
	runtime.SetFinalizer(this, func(this *QSGRendererInterface) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
