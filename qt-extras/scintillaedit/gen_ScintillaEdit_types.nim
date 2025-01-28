type ScintillaInternalPoint* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalInterval* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalPRectangle* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalColourRGBA* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalStroke* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalFill* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalFillStroke* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalColourStop* {.inheritable, pure.} = object
  h*: pointer
type ScintillaCharacterRange* {.inheritable, pure.} = object
  h*: pointer
type ScintillaCharacterRangeFull* {.inheritable, pure.} = object
  h*: pointer
type ScintillaTextRange* {.inheritable, pure.} = object
  h*: pointer
type ScintillaTextRangeFull* {.inheritable, pure.} = object
  h*: pointer
type ScintillaTextToFind* {.inheritable, pure.} = object
  h*: pointer
type ScintillaTextToFindFull* {.inheritable, pure.} = object
  h*: pointer
type ScintillaRectangle* {.inheritable, pure.} = object
  h*: pointer
type ScintillaRangeToFormat* {.inheritable, pure.} = object
  h*: pointer
type ScintillaRangeToFormatFull* {.inheritable, pure.} = object
  h*: pointer
type ScintillaNotifyHeader* {.inheritable, pure.} = object
  h*: pointer
type ScintillaNotificationData* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalFontParameters* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalFont* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalIScreenLine* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalIScreenLineLayout* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalSurfaceMode* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalSurface* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalWindow* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalListBoxEvent* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalIListBoxDelegate* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalListOptions* {.inheritable, pure.} = object
  h*: pointer
type ScintillaInternalListBox* = object of ScintillaInternalWindow
type ScintillaInternalMenu* {.inheritable, pure.} = object
  h*: pointer
type Sci_CharacterRange* {.inheritable, pure.} = object
  h*: pointer
type Sci_CharacterRangeFull* {.inheritable, pure.} = object
  h*: pointer
type Sci_TextRange* {.inheritable, pure.} = object
  h*: pointer
type Sci_TextRangeFull* {.inheritable, pure.} = object
  h*: pointer
type Sci_TextToFind* {.inheritable, pure.} = object
  h*: pointer
type Sci_TextToFindFull* {.inheritable, pure.} = object
  h*: pointer
type Sci_Rectangle* {.inheritable, pure.} = object
  h*: pointer
type Sci_RangeToFormat* {.inheritable, pure.} = object
  h*: pointer
type Sci_RangeToFormatFull* {.inheritable, pure.} = object
  h*: pointer
type Sci_NotifyHeader* {.inheritable, pure.} = object
  h*: pointer
type SCNotification* {.inheritable, pure.} = object
  h*: pointer
import gen_qabstractscrollarea_types
export gen_qabstractscrollarea_types

type ScintillaEditBase* = object of gen_qabstractscrollarea_types.QAbstractScrollArea
import gen_qobject_types
export gen_qobject_types

type ScintillaDocument* = object of gen_qobject_types.QObject
type ScintillaEdit* = object of ScintillaEditBase
