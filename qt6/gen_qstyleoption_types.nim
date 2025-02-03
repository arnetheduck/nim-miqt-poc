type QStyleOption* {.inheritable, pure.} = object
  h*: pointer
type QStyleOptionFocusRect*  = object of QStyleOption
type QStyleOptionFrame*  = object of QStyleOption
type QStyleOptionTabWidgetFrame*  = object of QStyleOption
type QStyleOptionTabBarBase*  = object of QStyleOption
type QStyleOptionHeader*  = object of QStyleOption
type QStyleOptionHeaderV2*  = object of QStyleOptionHeader
type QStyleOptionButton*  = object of QStyleOption
type QStyleOptionTab*  = object of QStyleOption
type QStyleOptionToolBar*  = object of QStyleOption
type QStyleOptionProgressBar*  = object of QStyleOption
type QStyleOptionMenuItem*  = object of QStyleOption
type QStyleOptionDockWidget*  = object of QStyleOption
type QStyleOptionViewItem*  = object of QStyleOption
type QStyleOptionToolBox*  = object of QStyleOption
type QStyleOptionRubberBand*  = object of QStyleOption
type QStyleOptionComplex*  = object of QStyleOption
type QStyleOptionSlider*  = object of QStyleOptionComplex
type QStyleOptionSpinBox*  = object of QStyleOptionComplex
type QStyleOptionToolButton*  = object of QStyleOptionComplex
type QStyleOptionComboBox*  = object of QStyleOptionComplex
type QStyleOptionTitleBar*  = object of QStyleOptionComplex
type QStyleOptionGroupBox*  = object of QStyleOptionComplex
type QStyleOptionSizeGrip*  = object of QStyleOptionComplex
type QStyleOptionGraphicsItem*  = object of QStyleOption
type QStyleHintReturn* {.inheritable, pure.} = object
  h*: pointer
type QStyleHintReturnMask*  = object of QStyleHintReturn
type QStyleHintReturnVariant*  = object of QStyleHintReturn

