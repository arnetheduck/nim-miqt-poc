package qt

/*

#include "gen_qaction.h"
#include <stdlib.h>

*/
import "C"

import (
	"runtime"
	"runtime/cgo"
	"unsafe"
)

type QAction__MenuRole int

const (
	QAction__NoRole                  QAction__MenuRole = 0
	QAction__TextHeuristicRole       QAction__MenuRole = 1
	QAction__ApplicationSpecificRole QAction__MenuRole = 2
	QAction__AboutQtRole             QAction__MenuRole = 3
	QAction__AboutRole               QAction__MenuRole = 4
	QAction__PreferencesRole         QAction__MenuRole = 5
	QAction__QuitRole                QAction__MenuRole = 6
)

type QAction__Priority int

const (
	QAction__LowPriority    QAction__Priority = 0
	QAction__NormalPriority QAction__Priority = 128
	QAction__HighPriority   QAction__Priority = 256
)

type QAction__ActionEvent int

const (
	QAction__Trigger QAction__ActionEvent = 0
	QAction__Hover   QAction__ActionEvent = 1
)

type QAction struct {
	h *C.QAction
	*QObject
}

func (this *QAction) cPointer() *C.QAction {
	if this == nil {
		return nil
	}
	return this.h
}

func (this *QAction) UnsafePointer() unsafe.Pointer {
	if this == nil {
		return nil
	}
	return unsafe.Pointer(this.h)
}

// newQAction constructs the type using only CGO pointers.
func newQAction(h *C.QAction) *QAction {
	if h == nil {
		return nil
	}
	var outptr_QObject *C.QObject = nil
	C.QAction_virtbase(h, &outptr_QObject)

	return &QAction{h: h,
		QObject: newQObject(outptr_QObject)}
}

// UnsafeNewQAction constructs the type using only unsafe pointers.
func UnsafeNewQAction(h unsafe.Pointer) *QAction {
	return newQAction((*C.QAction)(h))
}

// NewQAction constructs a new QAction object.
func NewQAction() *QAction {

	return newQAction(C.QAction_new())
}

// NewQAction2 constructs a new QAction object.
func NewQAction2(text string) *QAction {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))

	return newQAction(C.QAction_new2(text_ms))
}

// NewQAction3 constructs a new QAction object.
func NewQAction3(icon *QIcon, text string) *QAction {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))

	return newQAction(C.QAction_new3(icon.cPointer(), text_ms))
}

// NewQAction4 constructs a new QAction object.
func NewQAction4(parent *QObject) *QAction {

	return newQAction(C.QAction_new4(parent.cPointer()))
}

// NewQAction5 constructs a new QAction object.
func NewQAction5(text string, parent *QObject) *QAction {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))

	return newQAction(C.QAction_new5(text_ms, parent.cPointer()))
}

// NewQAction6 constructs a new QAction object.
func NewQAction6(icon *QIcon, text string, parent *QObject) *QAction {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))

	return newQAction(C.QAction_new6(icon.cPointer(), text_ms, parent.cPointer()))
}

func (this *QAction) MetaObject() *QMetaObject {
	return newQMetaObject(C.QAction_metaObject(this.h))
}

func (this *QAction) Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))
	return (unsafe.Pointer)(C.QAction_metacast(this.h, param1_Cstring))
}

func (this *QAction) Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {
	return (int)(C.QAction_metacall(this.h, (C.int)(param1), (C.int)(param2), param3))
}

func QAction_Tr(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QAction_tr(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAction_TrUtf8(s string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	var _ms C.struct_miqt_string = C.QAction_trUtf8(s_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAction) SetActionGroup(group *QActionGroup) {
	C.QAction_setActionGroup(this.h, group.cPointer())
}

func (this *QAction) ActionGroup() *QActionGroup {
	return newQActionGroup(C.QAction_actionGroup(this.h))
}

func (this *QAction) SetIcon(icon *QIcon) {
	C.QAction_setIcon(this.h, icon.cPointer())
}

func (this *QAction) Icon() *QIcon {
	_goptr := newQIcon(C.QAction_icon(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QAction) SetText(text string) {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))
	C.QAction_setText(this.h, text_ms)
}

func (this *QAction) Text() string {
	var _ms C.struct_miqt_string = C.QAction_text(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAction) SetIconText(text string) {
	text_ms := C.struct_miqt_string{}
	text_ms.data = C.CString(text)
	text_ms.len = C.size_t(len(text))
	defer C.free(unsafe.Pointer(text_ms.data))
	C.QAction_setIconText(this.h, text_ms)
}

func (this *QAction) IconText() string {
	var _ms C.struct_miqt_string = C.QAction_iconText(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAction) SetToolTip(tip string) {
	tip_ms := C.struct_miqt_string{}
	tip_ms.data = C.CString(tip)
	tip_ms.len = C.size_t(len(tip))
	defer C.free(unsafe.Pointer(tip_ms.data))
	C.QAction_setToolTip(this.h, tip_ms)
}

func (this *QAction) ToolTip() string {
	var _ms C.struct_miqt_string = C.QAction_toolTip(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAction) SetStatusTip(statusTip string) {
	statusTip_ms := C.struct_miqt_string{}
	statusTip_ms.data = C.CString(statusTip)
	statusTip_ms.len = C.size_t(len(statusTip))
	defer C.free(unsafe.Pointer(statusTip_ms.data))
	C.QAction_setStatusTip(this.h, statusTip_ms)
}

func (this *QAction) StatusTip() string {
	var _ms C.struct_miqt_string = C.QAction_statusTip(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAction) SetWhatsThis(what string) {
	what_ms := C.struct_miqt_string{}
	what_ms.data = C.CString(what)
	what_ms.len = C.size_t(len(what))
	defer C.free(unsafe.Pointer(what_ms.data))
	C.QAction_setWhatsThis(this.h, what_ms)
}

func (this *QAction) WhatsThis() string {
	var _ms C.struct_miqt_string = C.QAction_whatsThis(this.h)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAction) SetPriority(priority QAction__Priority) {
	C.QAction_setPriority(this.h, (C.int)(priority))
}

func (this *QAction) Priority() QAction__Priority {
	return (QAction__Priority)(C.QAction_priority(this.h))
}

func (this *QAction) Menu() *QMenu {
	return newQMenu(C.QAction_menu(this.h))
}

func (this *QAction) SetMenu(menu *QMenu) {
	C.QAction_setMenu(this.h, menu.cPointer())
}

func (this *QAction) SetSeparator(b bool) {
	C.QAction_setSeparator(this.h, (C.bool)(b))
}

func (this *QAction) IsSeparator() bool {
	return (bool)(C.QAction_isSeparator(this.h))
}

func (this *QAction) SetShortcut(shortcut *QKeySequence) {
	C.QAction_setShortcut(this.h, shortcut.cPointer())
}

func (this *QAction) Shortcut() *QKeySequence {
	_goptr := newQKeySequence(C.QAction_shortcut(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QAction) SetShortcuts(shortcuts []QKeySequence) {
	shortcuts_CArray := (*[0xffff]*C.QKeySequence)(C.malloc(C.size_t(8 * len(shortcuts))))
	defer C.free(unsafe.Pointer(shortcuts_CArray))
	for i := range shortcuts {
		shortcuts_CArray[i] = shortcuts[i].cPointer()
	}
	shortcuts_ma := C.struct_miqt_array{len: C.size_t(len(shortcuts)), data: unsafe.Pointer(shortcuts_CArray)}
	C.QAction_setShortcuts(this.h, shortcuts_ma)
}

func (this *QAction) SetShortcutsWithShortcuts(shortcuts QKeySequence__StandardKey) {
	C.QAction_setShortcutsWithShortcuts(this.h, (C.int)(shortcuts))
}

func (this *QAction) Shortcuts() []QKeySequence {
	var _ma C.struct_miqt_array = C.QAction_shortcuts(this.h)
	_ret := make([]QKeySequence, int(_ma.len))
	_outCast := (*[0xffff]*C.QKeySequence)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_lv_goptr := newQKeySequence(_outCast[i])
		_lv_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
		_ret[i] = *_lv_goptr
	}
	return _ret
}

func (this *QAction) SetShortcutContext(context ShortcutContext) {
	C.QAction_setShortcutContext(this.h, (C.int)(context))
}

func (this *QAction) ShortcutContext() ShortcutContext {
	return (ShortcutContext)(C.QAction_shortcutContext(this.h))
}

func (this *QAction) SetAutoRepeat(autoRepeat bool) {
	C.QAction_setAutoRepeat(this.h, (C.bool)(autoRepeat))
}

func (this *QAction) AutoRepeat() bool {
	return (bool)(C.QAction_autoRepeat(this.h))
}

func (this *QAction) SetFont(font *QFont) {
	C.QAction_setFont(this.h, font.cPointer())
}

func (this *QAction) Font() *QFont {
	_goptr := newQFont(C.QAction_font(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QAction) SetCheckable(checkable bool) {
	C.QAction_setCheckable(this.h, (C.bool)(checkable))
}

func (this *QAction) IsCheckable() bool {
	return (bool)(C.QAction_isCheckable(this.h))
}

func (this *QAction) Data() *QVariant {
	_goptr := newQVariant(C.QAction_data(this.h))
	_goptr.GoGC() // Qt uses pass-by-value semantics for this type. Mimic with finalizer
	return _goptr
}

func (this *QAction) SetData(varVal *QVariant) {
	C.QAction_setData(this.h, varVal.cPointer())
}

func (this *QAction) IsChecked() bool {
	return (bool)(C.QAction_isChecked(this.h))
}

func (this *QAction) IsEnabled() bool {
	return (bool)(C.QAction_isEnabled(this.h))
}

func (this *QAction) IsVisible() bool {
	return (bool)(C.QAction_isVisible(this.h))
}

func (this *QAction) Activate(event QAction__ActionEvent) {
	C.QAction_activate(this.h, (C.int)(event))
}

func (this *QAction) ShowStatusText() bool {
	return (bool)(C.QAction_showStatusText(this.h))
}

func (this *QAction) SetMenuRole(menuRole QAction__MenuRole) {
	C.QAction_setMenuRole(this.h, (C.int)(menuRole))
}

func (this *QAction) MenuRole() QAction__MenuRole {
	return (QAction__MenuRole)(C.QAction_menuRole(this.h))
}

func (this *QAction) SetIconVisibleInMenu(visible bool) {
	C.QAction_setIconVisibleInMenu(this.h, (C.bool)(visible))
}

func (this *QAction) IsIconVisibleInMenu() bool {
	return (bool)(C.QAction_isIconVisibleInMenu(this.h))
}

func (this *QAction) SetShortcutVisibleInContextMenu(show bool) {
	C.QAction_setShortcutVisibleInContextMenu(this.h, (C.bool)(show))
}

func (this *QAction) IsShortcutVisibleInContextMenu() bool {
	return (bool)(C.QAction_isShortcutVisibleInContextMenu(this.h))
}

func (this *QAction) ParentWidget() *QWidget {
	return newQWidget(C.QAction_parentWidget(this.h))
}

func (this *QAction) AssociatedWidgets() []*QWidget {
	var _ma C.struct_miqt_array = C.QAction_associatedWidgets(this.h)
	_ret := make([]*QWidget, int(_ma.len))
	_outCast := (*[0xffff]*C.QWidget)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = newQWidget(_outCast[i])
	}
	return _ret
}

func (this *QAction) AssociatedGraphicsWidgets() []*QGraphicsWidget {
	var _ma C.struct_miqt_array = C.QAction_associatedGraphicsWidgets(this.h)
	_ret := make([]*QGraphicsWidget, int(_ma.len))
	_outCast := (*[0xffff]*C.QGraphicsWidget)(unsafe.Pointer(_ma.data)) // hey ya
	for i := 0; i < int(_ma.len); i++ {
		_ret[i] = newQGraphicsWidget(_outCast[i])
	}
	return _ret
}

func (this *QAction) Trigger() {
	C.QAction_trigger(this.h)
}

func (this *QAction) Hover() {
	C.QAction_hover(this.h)
}

func (this *QAction) SetChecked(checked bool) {
	C.QAction_setChecked(this.h, (C.bool)(checked))
}

func (this *QAction) Toggle() {
	C.QAction_toggle(this.h)
}

func (this *QAction) SetEnabled(enabled bool) {
	C.QAction_setEnabled(this.h, (C.bool)(enabled))
}

func (this *QAction) SetDisabled(b bool) {
	C.QAction_setDisabled(this.h, (C.bool)(b))
}

func (this *QAction) SetVisible(visible bool) {
	C.QAction_setVisible(this.h, (C.bool)(visible))
}

func (this *QAction) Changed() {
	C.QAction_changed(this.h)
}
func (this *QAction) OnChanged(slot func()) {
	C.QAction_connect_changed(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAction_changed
func miqt_exec_callback_QAction_changed(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QAction) Triggered() {
	C.QAction_triggered(this.h)
}
func (this *QAction) OnTriggered(slot func()) {
	C.QAction_connect_triggered(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAction_triggered
func miqt_exec_callback_QAction_triggered(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QAction) Hovered() {
	C.QAction_hovered(this.h)
}
func (this *QAction) OnHovered(slot func()) {
	C.QAction_connect_hovered(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAction_hovered
func miqt_exec_callback_QAction_hovered(cb C.intptr_t) {
	gofunc, ok := cgo.Handle(cb).Value().(func())
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	gofunc()
}

func (this *QAction) Toggled(param1 bool) {
	C.QAction_toggled(this.h, (C.bool)(param1))
}
func (this *QAction) OnToggled(slot func(param1 bool)) {
	C.QAction_connect_toggled(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAction_toggled
func miqt_exec_callback_QAction_toggled(cb C.intptr_t, param1 C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(param1 bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(param1)

	gofunc(slotval1)
}

func QAction_Tr2(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAction_tr2(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAction_Tr3(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAction_tr3(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAction_TrUtf82(s string, c string) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAction_trUtf82(s_Cstring, c_Cstring)
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func QAction_TrUtf83(s string, c string, n int) string {
	s_Cstring := C.CString(s)
	defer C.free(unsafe.Pointer(s_Cstring))
	c_Cstring := C.CString(c)
	defer C.free(unsafe.Pointer(c_Cstring))
	var _ms C.struct_miqt_string = C.QAction_trUtf83(s_Cstring, c_Cstring, (C.int)(n))
	_ret := C.GoStringN(_ms.data, C.int(int64(_ms.len)))
	C.free(unsafe.Pointer(_ms.data))
	return _ret
}

func (this *QAction) ShowStatusText1(widget *QWidget) bool {
	return (bool)(C.QAction_showStatusText1(this.h, widget.cPointer()))
}

func (this *QAction) Triggered1(checked bool) {
	C.QAction_triggered1(this.h, (C.bool)(checked))
}
func (this *QAction) OnTriggered1(slot func(checked bool)) {
	C.QAction_connect_triggered1(this.h, C.intptr_t(cgo.NewHandle(slot)))
}

//export miqt_exec_callback_QAction_triggered1
func miqt_exec_callback_QAction_triggered1(cb C.intptr_t, checked C.bool) {
	gofunc, ok := cgo.Handle(cb).Value().(func(checked bool))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (bool)(checked)

	gofunc(slotval1)
}

func (this *QAction) callVirtualBase_MetaObject() *QMetaObject {

	return newQMetaObject(C.QAction_virtualbase_metaObject(unsafe.Pointer(this.h)))

}
func (this *QAction) OnMetaObject(slot func(super func() *QMetaObject) *QMetaObject) {
	ok := C.QAction_override_virtual_metaObject(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_metaObject
func miqt_exec_callback_QAction_metaObject(self *C.QAction, cb C.intptr_t) *C.QMetaObject {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func() *QMetaObject) *QMetaObject)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	virtualReturn := gofunc((&QAction{h: self}).callVirtualBase_MetaObject)

	return virtualReturn.cPointer()

}

func (this *QAction) callVirtualBase_Metacast(param1 string) unsafe.Pointer {
	param1_Cstring := C.CString(param1)
	defer C.free(unsafe.Pointer(param1_Cstring))

	return (unsafe.Pointer)(C.QAction_virtualbase_metacast(unsafe.Pointer(this.h), param1_Cstring))

}
func (this *QAction) OnMetacast(slot func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer) {
	ok := C.QAction_override_virtual_metacast(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_metacast
func miqt_exec_callback_QAction_metacast(self *C.QAction, cb C.intptr_t, param1 *C.const_char) unsafe.Pointer {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 string) unsafe.Pointer, param1 string) unsafe.Pointer)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	param1_ret := param1
	slotval1 := C.GoString(param1_ret)

	virtualReturn := gofunc((&QAction{h: self}).callVirtualBase_Metacast, slotval1)

	return virtualReturn

}

func (this *QAction) callVirtualBase_Metacall(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int {

	return (int)(C.QAction_virtualbase_metacall(unsafe.Pointer(this.h), (C.int)(param1), (C.int)(param2), param3))

}
func (this *QAction) OnMetacall(slot func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int) {
	ok := C.QAction_override_virtual_metacall(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_metacall
func miqt_exec_callback_QAction_metacall(self *C.QAction, cb C.intptr_t, param1 C.int, param2 C.int, param3 unsafe.Pointer) C.int {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int, param1 QMetaObject__Call, param2 int, param3 unsafe.Pointer) int)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := (QMetaObject__Call)(param1)

	slotval2 := (int)(param2)

	slotval3 := (unsafe.Pointer)(param3)

	virtualReturn := gofunc((&QAction{h: self}).callVirtualBase_Metacall, slotval1, slotval2, slotval3)

	return (C.int)(virtualReturn)

}

func (this *QAction) callVirtualBase_Event(param1 *QEvent) bool {

	return (bool)(C.QAction_virtualbase_event(unsafe.Pointer(this.h), param1.cPointer()))

}
func (this *QAction) OnEvent(slot func(super func(param1 *QEvent) bool, param1 *QEvent) bool) {
	ok := C.QAction_override_virtual_event(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_event
func miqt_exec_callback_QAction_event(self *C.QAction, cb C.intptr_t, param1 *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(param1 *QEvent) bool, param1 *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(param1)

	virtualReturn := gofunc((&QAction{h: self}).callVirtualBase_Event, slotval1)

	return (C.bool)(virtualReturn)

}

func (this *QAction) callVirtualBase_EventFilter(watched *QObject, event *QEvent) bool {

	return (bool)(C.QAction_virtualbase_eventFilter(unsafe.Pointer(this.h), watched.cPointer(), event.cPointer()))

}
func (this *QAction) OnEventFilter(slot func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool) {
	ok := C.QAction_override_virtual_eventFilter(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_eventFilter
func miqt_exec_callback_QAction_eventFilter(self *C.QAction, cb C.intptr_t, watched *C.QObject, event *C.QEvent) C.bool {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(watched *QObject, event *QEvent) bool, watched *QObject, event *QEvent) bool)
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQObject(watched)

	slotval2 := newQEvent(event)

	virtualReturn := gofunc((&QAction{h: self}).callVirtualBase_EventFilter, slotval1, slotval2)

	return (C.bool)(virtualReturn)

}

func (this *QAction) callVirtualBase_TimerEvent(event *QTimerEvent) {

	C.QAction_virtualbase_timerEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QAction) OnTimerEvent(slot func(super func(event *QTimerEvent), event *QTimerEvent)) {
	ok := C.QAction_override_virtual_timerEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_timerEvent
func miqt_exec_callback_QAction_timerEvent(self *C.QAction, cb C.intptr_t, event *C.QTimerEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QTimerEvent), event *QTimerEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQTimerEvent(event)

	gofunc((&QAction{h: self}).callVirtualBase_TimerEvent, slotval1)

}

func (this *QAction) callVirtualBase_ChildEvent(event *QChildEvent) {

	C.QAction_virtualbase_childEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QAction) OnChildEvent(slot func(super func(event *QChildEvent), event *QChildEvent)) {
	ok := C.QAction_override_virtual_childEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_childEvent
func miqt_exec_callback_QAction_childEvent(self *C.QAction, cb C.intptr_t, event *C.QChildEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QChildEvent), event *QChildEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQChildEvent(event)

	gofunc((&QAction{h: self}).callVirtualBase_ChildEvent, slotval1)

}

func (this *QAction) callVirtualBase_CustomEvent(event *QEvent) {

	C.QAction_virtualbase_customEvent(unsafe.Pointer(this.h), event.cPointer())

}
func (this *QAction) OnCustomEvent(slot func(super func(event *QEvent), event *QEvent)) {
	ok := C.QAction_override_virtual_customEvent(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_customEvent
func miqt_exec_callback_QAction_customEvent(self *C.QAction, cb C.intptr_t, event *C.QEvent) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(event *QEvent), event *QEvent))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQEvent(event)

	gofunc((&QAction{h: self}).callVirtualBase_CustomEvent, slotval1)

}

func (this *QAction) callVirtualBase_ConnectNotify(signal *QMetaMethod) {

	C.QAction_virtualbase_connectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QAction) OnConnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QAction_override_virtual_connectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_connectNotify
func miqt_exec_callback_QAction_connectNotify(self *C.QAction, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QAction{h: self}).callVirtualBase_ConnectNotify, slotval1)

}

func (this *QAction) callVirtualBase_DisconnectNotify(signal *QMetaMethod) {

	C.QAction_virtualbase_disconnectNotify(unsafe.Pointer(this.h), signal.cPointer())

}
func (this *QAction) OnDisconnectNotify(slot func(super func(signal *QMetaMethod), signal *QMetaMethod)) {
	ok := C.QAction_override_virtual_disconnectNotify(unsafe.Pointer(this.h), C.intptr_t(cgo.NewHandle(slot)))
	if !ok {
		panic("miqt: can only override virtual methods for directly constructed types")
	}
}

//export miqt_exec_callback_QAction_disconnectNotify
func miqt_exec_callback_QAction_disconnectNotify(self *C.QAction, cb C.intptr_t, signal *C.QMetaMethod) {
	gofunc, ok := cgo.Handle(cb).Value().(func(super func(signal *QMetaMethod), signal *QMetaMethod))
	if !ok {
		panic("miqt: callback of non-callback type (heap corruption?)")
	}

	// Convert all CABI parameters to Go parameters
	slotval1 := newQMetaMethod(signal)

	gofunc((&QAction{h: self}).callVirtualBase_DisconnectNotify, slotval1)

}

// Delete this object from C++ memory.
func (this *QAction) Delete() {
	C.QAction_delete(this.h)
}

// GoGC adds a Go Finalizer to this pointer, so that it will be deleted
// from C++ memory once it is unreachable from Go memory.
func (this *QAction) GoGC() {
	runtime.SetFinalizer(this, func(this *QAction) {
		this.Delete()
		runtime.KeepAlive(this.h)
	})
}
