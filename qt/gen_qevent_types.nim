import gen_qcoreevent_types
export gen_qcoreevent_types
type QInputEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QEnterEvent*  = object of gen_qcoreevent_types.QEvent
type QMouseEvent*  = object of QInputEvent
type QHoverEvent*  = object of QInputEvent
type QWheelEvent*  = object of QInputEvent
type QTabletEvent*  = object of QInputEvent
type QNativeGestureEvent*  = object of QInputEvent
type QKeyEvent*  = object of QInputEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QFocusEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QPaintEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QMoveEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QExposeEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QPlatformSurfaceEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QResizeEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QCloseEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QIconDragEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QShowEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QHideEvent*  = object of gen_qcoreevent_types.QEvent
type QContextMenuEvent*  = object of QInputEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QInputMethodEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QInputMethodQueryEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QDropEvent*  = object of gen_qcoreevent_types.QEvent
type QDragMoveEvent*  = object of QDropEvent
type QDragEnterEvent*  = object of QDragMoveEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QDragLeaveEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QHelpEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QStatusTipEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QWhatsThisClickedEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QActionEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QFileOpenEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QToolBarChangeEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QShortcutEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QWindowStateChangeEvent*  = object of gen_qcoreevent_types.QEvent
type QPointingDeviceUniqueId* {.inheritable, pure.} = object
  h*: pointer
type QTouchEvent*  = object of QInputEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QScrollPrepareEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QScrollEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QScreenOrientationChangeEvent*  = object of gen_qcoreevent_types.QEvent
import gen_qcoreevent_types
export gen_qcoreevent_types
type QApplicationStateChangeEvent*  = object of gen_qcoreevent_types.QEvent
type QInputMethodEventAttribute* {.inheritable, pure.} = object
  h*: pointer
type QTouchEventTouchPoint* {.inheritable, pure.} = object
  h*: pointer

