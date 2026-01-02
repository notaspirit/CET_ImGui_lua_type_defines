---@meta
---@diagnostic disable

---@alias float number
---@alias bool boolean
---@alias int integer
---@alias double number
---@alias void nil

---@class ImDrawList
---@class ImFont
---@class ImGuiTableSortSpecs

---@class ImVec2
---@field x float
---@field y float
ImVec2 = {}

---@param x? float
---@param y? float
---@return ImVec2
function ImVec2.new(x, y) end

---@class ImVec4
---@field x float
---@field y float
---@field z float
---@field w float
ImVec4 = {}

---@param x? float
---@param y? float
---@param z? float
---@param w? float
---@return ImVec4
function ImVec4.new(x, y, z, w) end

---@class ImGuiStyle
---@field Alpha                         float
---@field DisabledAlpha                 float
---@field WindowPadding                 ImVec2
---@field WindowRounding                float
---@field WindowBorderSize              float
---@field WindowMinSize                 ImVec2
---@field WindowTitleAlign              ImVec2
---@field WindowMenuButtonPosition      ImGuiDir
---@field ChildRounding                 float
---@field ChildBorderSize               float
---@field PopupRounding                 float
---@field PopupBorderSize               float
---@field FramePadding                  ImVec2
---@field FrameRounding                 float
---@field FrameBorderSize               float
---@field ItemSpacing                   ImVec2
---@field ItemInnerSpacing              ImVec2
---@field CellPadding                   ImVec2
---@field TouchExtraPadding             ImVec2
---@field IndentSpacing                 float
---@field ColumnsMinSpacing             float
---@field ScrollbarSize                 float
---@field ScrollbarRounding             float
---@field GrabMinSize                   float
---@field GrabRounding                  float
---@field LogSliderDeadzone             float
---@field TabRounding                   float
---@field TabBorderSize                 float
---@field TabMinWidthForCloseButton     float
---@field ColorButtonPosition           ImGuiDir
---@field ButtonTextAlign               ImVec2
---@field SelectableTextAlign           ImVec2
---@field DisplayWindowPadding          ImVec2
---@field DisplaySafeAreaPadding        ImVec2
---@field MouseCursorScale              float
---@field AntiAliasedLines              bool
---@field AntiAliasedLinesUseTex        bool
---@field AntiAliasedFill               bool
---@field CurveTessellationTol          float
---@field CircleTessellationMaxError    float
---@field ScaleAllSizes                 fun(scale_factor: float)
ImGuiStyle = {}

---@class ImguiTexture
---@field size                          ImVec2
---@field Release                       fun(): void

---@enum ImGuiWindowFlags
ImGuiWindowFlags = {
    None                          = 0,
    NoTitleBar                    = 1,
    NoResize                      = 2,
    NoMove                        = 3,
    NoScrollbar                   = 4,
    NoScrollWithMouse             = 5,
    NoCollapse                    = 6,
    AlwaysAutoResize              = 7,
    NoBackground                  = 8,
    NoSavedSettings               = 9,
    NoMouseInputs                 = 10,
    MenuBar                       = 11,
    HorizontalScrollbar           = 12,
    NoFocusOnAppearing            = 13,
    NoBringToFrontOnFocus         = 14,
    AlwaysVerticalScrollbar       = 15,
    AlwaysHorizontalScrollbar     = 16,
    AlwaysUseWindowPadding        = 17,
    NoNavInputs                   = 18,
    NoNavFocus                    = 19,
    UnsavedDocument               = 20,
    NoNav                         = 21,
    NoDecoration                  = 22,
    NoInputs                      = 23,
    NavFlattened                  = 24,
    ChildWindow                   = 25,
    Tooltip                       = 26,
    Popup                         = 27,
    Modal                         = 28,
    ChildMenu                     = 29,
    NoDocking                     = 30,
}

---@enum ImGuiFocusedFlags
ImGuiFocusedFlags = {
    None                          = 0,
    ChildWindows                  = 1,
    RootWindow                    = 2,
    AnyWindow                     = 3,
    RootAndChildWindows           = 4,
}

---@enum ImGuiHoveredFlags
ImGuiHoveredFlags = {
    None                          = 0,
    ChildWindows                  = 1,
    RootWindow                    = 2,
    AnyWindow                     = 3,
    AllowWhenBlockedByPopup       = 4,
    AllowWhenBlockedByActiveItem  = 5,
    AllowWhenOverlapped           = 6,
    AllowWhenDisabled             = 7,
    RectOnly                      = 8,
    RootAndChildWindows           = 9,
}

---@enum ImGuiCond
ImGuiCond = {
    None                          = 0,
    Always                        = 1,
    Once                          = 2,
    FirstUseEver                  = 3,
    Appearing                     = 4,
}

---@enum ImGuiCol
ImGuiCol = {
    Text                          = 0,
    TextDisabled                  = 1,
    WindowBg                      = 2,
    ChildBg                       = 3,
    PopupBg                       = 4,
    Border                        = 5,
    BorderShadow                  = 6,
    FrameBg                       = 7,
    FrameBgHovered                = 8,
    FrameBgActive                 = 9,
    TitleBg                       = 10,
    TitleBgActive                 = 11,
    TitleBgCollapsed              = 12,
    MenuBarBg                     = 13,
    ScrollbarBg                   = 14,
    ScrollbarGrab                 = 15,
    ScrollbarGrabHovered          = 16,
    ScrollbarGrabActive           = 17,
    CheckMark                     = 18,
    SliderGrab                    = 19,
    SliderGrabActive              = 20,
    Button                        = 21,
    ButtonHovered                 = 22,
    ButtonActive                  = 23,
    Header                        = 24,
    HeaderHovered                 = 25,
    HeaderActive                  = 26,
    Separator                     = 27,
    SeparatorHovered              = 28,
    SeparatorActive               = 29,
    ResizeGrip                    = 30,
    ResizeGripHovered             = 31,
    ResizeGripActive              = 32,
    Tab                           = 33,
    TabHovered                    = 34,
    TabActive                     = 35,
    TabUnfocused                  = 36,
    TabUnfocusedActive            = 37,
    PlotLines                     = 38,
    PlotLinesHovered              = 39,
    PlotHistogram                 = 40,
    PlotHistogramHovered          = 41,
    TableHeaderBg                 = 42,
    TableBorderStrong             = 43,
    TableBorderLight              = 44,
    TableRowBg                    = 45,
    TableRowBgAlt                 = 46,
    TextSelectedBg                = 47,
    DragDropTarget                = 48,
    NavHighlight                  = 49,
    NavWindowingHighlight         = 50,
    NavWindowingDimBg             = 51,
    ModalWindowDimBg              = 52,
    COUNT                         = 53,
}

---@enum ImGuiStyleVar
ImGuiStyleVar = {
    Alpha                         = 0,
    DisabledAlpha                 = 1,
    WindowPadding                 = 2,
    WindowRounding                = 3,
    WindowBorderSize              = 4,
    WindowMinSize                 = 5,
    WindowTitleAlign              = 6,
    ChildRounding                 = 7,
    ChildBorderSize               = 8,
    PopupRounding                 = 9,
    PopupBorderSize               = 10,
    FramePadding                  = 11,
    FrameRounding                 = 12,
    FrameBorderSize               = 13,
    ItemSpacing                   = 14,
    ItemInnerSpacing              = 15,
    IndentSpacing                 = 16,
    CellPadding                   = 17,
    ScrollbarSize                 = 18,
    ScrollbarRounding             = 19,
    GrabMinSize                   = 20,
    GrabRounding                  = 21,
    TabRounding                   = 22,
    SelectableTextAlign           = 23,
    ButtonTextAlign               = 24,
    COUNT                         = 25,
}

---@enum ImGuiDir
ImGuiDir = {
    None                          = 0,
    Left                          = 1,
    Right                         = 2,
    Up                            = 3,
    Down                          = 4,
    COUNT                         = 5,
}

---@enum ImGuiComboFlags
ImGuiComboFlags = {
    None                          = 0,
    PopupAlignLeft                = 1,
    HeightSmall                   = 2,
    HeightRegular                 = 3,
    HeightLarge                   = 4,
    HeightLargest                 = 5,
    NoArrowButton                 = 6,
    NoPreview                     = 7,
    HeightMask                    = 8,
}

---@enum ImGuiInputTextFlags
ImGuiInputTextFlags = {
    None                          = 0,
    CharsDecimal                  = 1,
    CharsHexadecimal              = 2,
    CharsUppercase                = 3,
    CharsNoBlank                  = 4,
    AutoSelectAll                 = 5,
    EnterReturnsTrue              = 6,
    CallbackCompletion            = 7,
    CallbackHistory               = 8,
    CallbackAlways                = 9,
    CallbackCharFilter            = 10,
    AllowTabInput                 = 11,
    CtrlEnterForNewLine           = 12,
    NoHorizontalScroll            = 13,
    AlwaysOverwrite               = 14,
    ReadOnly                      = 15,
    Password                      = 16,
    NoUndoRedo                    = 17,
    CharsScientific               = 18,
    CallbackResize                = 19,
    CallbackEdit                  = 20,
}

---@enum ImGuiSliderFlags
ImGuiSliderFlags = {
    None                          = 0,
    ClampOnInput                  = 1,
    Logarithmic                   = 2,
    NoRoundToFormat               = 3,
    NoInput                       = 4,
}

---@enum ImGuiColorEditFlags
ImGuiColorEditFlags = {
    None                          = 0,
    NoAlpha                       = 1,
    NoPicker                      = 2,
    NoOptions                     = 3,
    NoSmallPreview                = 4,
    NoInputs                      = 5,
    NoTooltip                     = 6,
    NoLabel                       = 7,
    NoSidePreview                 = 8,
    NoDragDrop                    = 9,
    NoBorder                      = 10,
    AlphaBar                      = 11,
    AlphaPreview                  = 12,
    AlphaPreviewHalf              = 13,
    HDR                           = 14,
    DisplayRGB                    = 15,
    DisplayHSV                    = 16,
    DisplayHex                    = 17,
    Uint8                         = 18,
    Float                         = 19,
    PickerHueBar                  = 20,
    PickerHueWheel                = 21,
    InputRGB                      = 22,
    InputHSV                      = 23,
    _OptionsDefault               = 24,
    _DisplayMask                  = 25,
    _DataTypeMask                 = 26,
    _PickerMask                   = 27,
    _InputMask                    = 28,
}

---@enum ImGuiTreeNodeFlags
ImGuiTreeNodeFlags = {
    None                          = 0,
    Selected                      = 1,
    Framed                        = 2,
    AllowItemOverlap              = 3,
    NoTreePushOnOpen              = 4,
    NoAutoOpenOnLog               = 5,
    DefaultOpen                   = 6,
    OpenOnDoubleClick             = 7,
    OpenOnArrow                   = 8,
    Leaf                          = 9,
    Bullet                        = 10,
    FramePadding                  = 11,
    SpanAvailWidth                = 12,
    SpanFullWidth                 = 13,
    NavLeftJumpsBackHere          = 14,
    CollapsingHeader              = 15,
}

---@enum ImGuiSelectableFlags
ImGuiSelectableFlags = {
    None                          = 0,
    DontClosePopups               = 1,
    SpanAllColumns                = 2,
    AllowDoubleClick              = 3,
    Disabled                      = 4,
    AllowItemOverlap              = 5,
}

---@enum ImGuiPopupFlags
ImGuiPopupFlags = {
    None                          = 0,
    MouseButtonLeft               = 1,
    MouseButtonRight              = 2,
    MouseButtonMiddle             = 3,
    MouseButtonMask_              = 4,
    MouseButtonDefault_           = 5,
    NoOpenOverExistingPopup       = 6,
    NoOpenOverItems               = 7,
    AnyPopupId                    = 8,
    AnyPopupLevel                 = 9,
    AnyPopup                      = 10,
}

---@enum ImGuiTableFlags
ImGuiTableFlags = {
    None                          = 0,
    Resizable                     = 1,
    Reorderable                   = 2,
    Hideable                      = 3,
    Sortable                      = 4,
    NoSavedSettings               = 5,
    ContextMenuInBody             = 6,
    RowBg                         = 7,
    BordersInnerH                 = 8,
    BordersOuterH                 = 9,
    BordersInnerV                 = 10,
    BordersOuterV                 = 11,
    BordersH                      = 12,
    BordersV                      = 13,
    BordersInner                  = 14,
    BordersOuter                  = 15,
    Borders                       = 16,
    NoBordersInBody               = 17,
    NoBordersInBodyUntilResize    = 18,
    SizingFixedFit                = 19,
    SizingFixedSame               = 20,
    SizingStretchProp             = 21,
    SizingStretchSame             = 22,
    NoHostExtendX                 = 23,
    NoHostExtendY                 = 24,
    NoKeepColumnsVisible          = 25,
    PreciseWidths                 = 26,
    NoClip                        = 27,
    PadOuterX                     = 28,
    NoPadOuterX                   = 29,
    NoPadInnerX                   = 30,
    ScrollX                       = 31,
    ScrollY                       = 32,
    SortMulti                     = 33,
    SortTristate                  = 34,
    SizingMask                    = 35,
}

---@enum ImGuiTableColumnFlags
ImGuiTableColumnFlags = {
    None                          = 0,
    Disabled                      = 1,
    DefaultHide                   = 2,
    DefaultSort                   = 3,
    WidthStretch                  = 4,
    WidthFixed                    = 5,
    NoResize                      = 6,
    NoReorder                     = 7,
    NoHide                        = 8,
    NoClip                        = 9,
    NoSort                        = 10,
    NoSortAscending               = 11,
    NoSortDescending              = 12,
    NoHeaderLabel                 = 13,
    NoHeaderWidth                 = 14,
    PreferSortAscending           = 15,
    PreferSortDescending          = 16,
    IndentEnable                  = 17,
    IndentDisable                 = 18,
    IsEnabled                     = 19,
    IsVisible                     = 20,
    IsSorted                      = 21,
    IsHovered                     = 22,
    WidthMask_                    = 23,
    IndentMask_                   = 24,
    StatusMask_                   = 25,
    NoDirectResize_               = 26,
}

---@enum ImGuiTableRowFlags
ImGuiTableRowFlags = {
    None                          = 0,
    Headers                       = 1,
}

---@enum ImGuiTableBgTarget
ImGuiTableBgTarget = {
    None                          = 0,
    RowBg0                        = 1,
    RowBg1                        = 2,
    CellBg                        = 3,
}

---@enum ImDrawFlags
ImDrawFlags = {
    None                               = 0,
    Closed                             = 1,
    ImDrawFlags_RoundCornersTopLeft    = 2,
    RoundCornersTopRight               = 3,
    RoundCornersBottomLeft             = 4,
    RoundCornersBottomRight            = 5,
    RoundCornersNone                   = 6,
    RoundCornersTop                    = 7,
    RoundCornersBottom                 = 8,
    RoundCornersLeft                   = 9,
    RoundCornersRight                  = 10,
    RoundCornersAll                    = 11,
}

---@enum ImGuiTabBarFlags
ImGuiTabBarFlags = {
    None                          = 0,
    Reorderable                   = 1,
    AutoSelectNewTabs             = 2,
    TabListPopupButton            = 3,
    NoCloseWithMiddleMouseButton  = 4,
    NoTabListScrollingButtons     = 5,
    NoTooltip                     = 6,
    FittingPolicyResizeDown       = 7,
    FittingPolicyScroll           = 8,
    FittingPolicyMask_            = 9,
    FittingPolicyDefault_         = 10,
}

---@enum ImGuiTabItemFlags
ImGuiTabItemFlags = {
    None                          = 0,
    UnsavedDocument               = 1,
    SetSelected                   = 2,
    NoCloseWithMiddleMouseButton  = 3,
    NoPushId                      = 4,
    NoTooltip                     = 5,
    NoReorder                     = 6,
    Leading                       = 7,
    Trailing                      = 8,
}

---@enum ImGuiMouseButton
ImGuiMouseButton = {
    Left                          = 0,
    Right                         = 1,
    Middle                        = 2,
    COUNT                         = 3,
}

---@enum ImDrawCornerFlags
ImDrawCornerFlags = {
    None                          = 0,
    TopLeft                       = 1,
    TopRight                      = 2,
    BotLeft                       = 3,
    BotRight                      = 4,
    Top                           = 5,
    Bot                           = 6,
    Left                          = 7,
    Right                         = 8,
    All                           = 9,
}

---@class ImGui
---@field Begin fun(name: string): bool || fun(name: string, flags: ImGuiWindowFlags): bool || fun(name: string, open: bool): bool, bool || fun(name: string, open: bool, flags: ImGuiWindowFlags): bool, bool
---@field End fun(): void
---@field BeginChild fun(name: string): bool || fun(name: string, sizeX: float): bool || fun(name: string, sizeX: float, sizeY: float): bool || fun(name: string, sizeX: float, sizeY: float, border: bool): bool || fun(name: string, sizeX: float, sizeY: float, border: bool, flags: ImGuiWindowFlags): bool
---@field EndChild fun(): void
---@field IsWindowAppearing fun(): bool
---@field IsWindowCollapsed fun(): bool
---@field IsWindowFocused fun(): bool || fun(flags: ImGuiFocusedFlags): bool
---@field IsWindowHovered fun(): bool || fun(flags: ImGuiHoveredFlags): bool
---@field GetWindowDrawList fun(): ImDrawList
---@field GetWindowPos fun(): float, float
---@field GetWindowSize fun(): float, float
---@field GetWindowWidth fun(): float
---@field GetWindowHeight fun(): float
---@field SetNextWindowPos fun(posX: float, posY: float): void || fun(posX: float, posY: float, cond: ImGuiCond): void || fun(posX: float, posY: float, cond: ImGuiCond, pivotX: float, pivotY: float): void
---@field SetNextWindowSize fun(sizeX: float, sizeY: float): void || fun(sizeX: float, sizeY: float, cond: ImGuiCond): void
---@field SetNextWindowSizeConstraints fun(minX: float, minY: float, maxX: float, maxY: float): void
---@field SetNextWindowContentSize fun(sizeX: float, sizeY: float): void
---@field SetNextWindowCollapsed fun(collapsed: bool): void || fun(collapsed: bool, cond: ImGuiCond): void
---@field SetNextWindowFocus fun(): void
---@field SetNextWindowBgAlpha fun(alpha: float): void
---@field SetWindowPos fun(posX: float, posY: float): void || fun(posX: float, posY: float, cond: ImGuiCond): void || fun(name: string, posX: float, posY: float): void || fun(name: string, posX: float, posY: float, cond: ImGuiCond): void
---@field SetWindowSize fun(sizeX: float, sizeY: float): void || fun(sizeX: float, sizeY: float, cond: ImGuiCond): void || fun(name: string, sizeX: float, sizeY: float): void || fun(name: string, sizeX: float, sizeY: float, cond: ImGuiCond): void
---@field SetWindowCollapsed fun(collapsed: bool): void || fun(collapsed: bool, cond: ImGuiCond): void || fun(name: string, collapsed: bool): void || fun(name: string, collapsed: bool, cond: ImGuiCond): void
---@field SetWindowFocus fun(): void || fun(name: string): void
---@field SetWindowFontScale fun(scale: float): void
---@field GetContentRegionMax fun(): float, float
---@field GetContentRegionAvail fun(): float, float
---@field GetWindowContentRegionMin fun(): float, float
---@field GetWindowContentRegionMax fun(): float, float
---@field GetWindowContentRegionWidth fun(): float
---@field GetScrollX fun(): float
---@field GetScrollY fun(): float
---@field GetScrollMaxX fun(): float
---@field GetScrollMaxY fun(): float
---@field SetScrollX fun(scrollX: float): void
---@field SetScrollY fun(scrollY: float): void
---@field SetScrollHereX fun(): void || fun(centerXRatio: float): void
---@field SetScrollHereY fun(): void || fun(centerYRatio: float): void
---@field SetScrollFromPosX fun(localX: float): void || fun(localX: float, centerXRatio: float): void
---@field SetScrollFromPosY fun(localY: float): void || fun(localY: float, centerYRatio: float): void
---@field PushFont fun(pFont: ImFont): void
---@field PopFont fun(): void
---@field PushStyleColor fun(idx: ImGuiCol, col: int): void || fun(idx: ImGuiCol, colR: float, colG: float, colB: float, colA: float): void
---@field PopStyleColor fun(): void || fun(count: int): void
---@field PushStyleVar fun(idx: ImGuiStyleVar, val: float): void || fun(idx: ImGuiStyleVar, valX: float, valY: float): void
---@field PopStyleVar fun(): void || fun(count: int): void
---@field GetStyleColorVec4 fun(idx: ImGuiCol): float, float, float, float
---@field GetFont fun(): ImFont
---@field GetFontSize fun(): float
---@field GetFontTexUvWhitePixel fun(): float, float
---@field GetColorU32 fun(idx: ImGuiCol, alphaMul: float): int || fun(colR: float, colG: float, colB: float, colA: float): int || fun(col: int): int
---@field PushItemWidth fun(itemWidth: float): void
---@field PopItemWidth fun(): void
---@field SetNextItemWidth fun(itemWidth: float): void
---@field CalcItemWidth fun(): float
---@field PushTextWrapPos fun(): void || fun(wrapLocalPosX: float): void
---@field PopTextWrapPos fun(): void
---@field PushAllowKeyboardFocus fun(allowKeyboardFocus: bool): void
---@field PopAllowKeyboardFocus fun(): void
---@field PushButtonRepeat fun(repeat: bool): void
---@field PopButtonRepeat fun(): void
---@field Separator fun(): void
---@field SameLine fun(): void || fun(offsetFromStartX: float): void || fun(offsetFromStartX: float, spacing: float): void
---@field NewLine fun(): void
---@field Spacing fun(): void
---@field Dummy fun(sizeX: float, sizeY: float): void
---@field Indent fun(): void || fun(indentW: float): void
---@field Unindent fun(): void || fun(indentW: float): void
---@field BeginGroup fun(): void
---@field EndGroup fun(): void
---@field GetCursorPos fun(): float, float
---@field GetCursorPosX fun(): float
---@field GetCursorPosY fun(): float
---@field SetCursorPos fun(localX: float, localY: float): void
---@field SetCursorPosX fun(localX: float): void
---@field SetCursorPosY fun(localY: float): void
---@field GetCursorStartPos fun(): float, float
---@field GetCursorScreenPos fun(): float, float
---@field SetCursorScreenPos fun(posX: float, posY: float): void
---@field AlignTextToFramePadding fun(): void
---@field GetTextLineHeight fun(): float
---@field GetTextLineHeightWithSpacing fun(): float
---@field GetFrameHeight fun(): float
---@field GetFrameHeightWithSpacing fun(): float
---@field PushID fun(stringID: string): void || fun(intID: int): void
---@field PopID fun(): void
---@field GetID fun(stringID: string): int
---@field TextUnformatted fun(text: string): void
---@field Text fun(text: string)
---@field TextColored fun(colR: float, colG: float, colB: float, colA: float, text: string): void
---@field TextDisabled fun(text: string): void
---@field TextWrapped fun(text: string): void
---@field LabelText fun(label: string, text: string): void
---@field BulletText fun(text: string): void
---@field Button fun(label: string): bool || fun(label: string, sizeX: float, sizeY: float): bool
---@field SmallButton fun(label: string): bool
---@field InvisibleButton fun(stringID: string, sizeX: float, sizeY: float): bool
---@field ArrowButton fun(stringID: string, dir: ImGuiDir): bool
---@field Checkbox fun(label: string, v: bool): bool, bool
---@field RadioButton fun(label: string, active: bool): bool || fun(label: string, v: int, vButton: int): int, bool
---@field ProgressBar fun(fraction: float): void || fun(fraction: float, sizeX: float, sizeY: float): void || fun(fraction: float, sizeX: float, sizeY: float, overlay: string): void
---@field Bullet fun(): void
---@field BeginCombo fun(label: string, previewValue: string): bool || fun(label: string, previewValue: string, flags: ImGuiComboFlags): bool
---@field EndCombo fun(): void
---@field Combo fun(label: string, currentItem: int, items: string[], itemsCount: int): int, bool || fun(label: string, currentItem: int, items: string[], itemsCount: int, popupMaxHeightInItems: int): int, bool || fun(label: string, currentItem: int, itemsSeparatedByZeros: string): int, bool || fun(label: string, currentItem: int, itemsSeparatedByZeros: string, popupMaxHeightInItems: int): int, bool
---@field DragFloat fun(label: string, v: float): float, bool || fun(label: string, v: float, v_speed: float): float, bool || fun(label: string, v: float, v_speed: float, v_min: float): float, bool || fun(label: string, v: float, v_speed: float, v_min: float, v_max: float): float, bool || fun(label: string, v: float, v_speed: float, v_min: float, v_max: float, format: string): float, bool || fun(label: string, v: float, v_speed: float, v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float, bool
---@field DragFloat2 fun(label: string, v: number[]): float[], bool || fun(label: string, v: number[], v_speed: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float, format: string): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float[], bool
---@field DragFloat3 fun(label: string, v: number[]): float[], bool || fun(label: string, v: number[], v_speed: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float, format: string): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float[], bool
---@field DragFloat4 fun(label: string, v: number[]): float[], bool || fun(label: string, v: number[], v_speed: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float, format: string): float[], bool || fun(label: string, v: number[], v_speed: float, v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float[], bool
---@field DragInt fun(label: string, v: int): int, bool || fun(label: string, v: int, v_speed: float): int, bool || fun(label: string, v: int, v_speed: float, v_min: int): int, bool || fun(label: string, v: int, v_speed: float, v_min: int, v_max: int): int, bool || fun(label: string, v: int, v_speed: float, v_min: int, v_max: int, format: string): int, bool || fun(label: string, v: int, v_speed: float, v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int, bool
---@field DragInt2 fun(label: string, v: number[]): int[], bool || fun(label: string, v: number[], v_speed: float): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int, format: string): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int[], bool
---@field DragInt3 fun(label: string, v: number[]): int[], bool || fun(label: string, v: number[], v_speed: float): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int, format: string): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int[], bool
---@field DragInt4 fun(label: string, v: number[]): int[], bool || fun(label: string, v: number[], v_speed: float): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int, format: string): int[], bool || fun(label: string, v: number[], v_speed: float, v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int[], bool
---@field SliderFloat fun(label: string, v: float, v_min: float, v_max: float): float, bool || fun(label: string, v: float, v_min: float, v_max: float, format: string): float, bool || fun(label: string, v: float, v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float, bool
---@field SliderFloat2 fun(label: string, v: number[], v_min: float, v_max: float): float[], bool || fun(label: string, v: number[], v_min: float, v_max: float, format: string): float[], bool || fun(label: string, v: number[], v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float[], bool
---@field SliderFloat3 fun(label: string, v: number[], v_min: float, v_max: float): float[], bool || fun(label: string, v: number[], v_min: float, v_max: float, format: string): float[], bool || fun(label: string, v: number[], v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float[], bool
---@field SliderFloat4 fun(label: string, v: number[], v_min: float, v_max: float): float[], bool || fun(label: string, v: number[], v_min: float, v_max: float, format: string): float[], bool || fun(label: string, v: number[], v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float[], bool
---@field SliderAngle fun(label: string, v_rad: float): float, bool || fun(label: string, v_rad: float, v_degrees_min: float): float, bool || fun(label: string, v_rad: float, v_degrees_min: float, v_degrees_max: float): float, bool || fun(label: string, v_rad: float, v_degrees_min: float, v_degrees_max: float, format: string): float, bool || fun(label: string, v_rad: float, v_degrees_min: float, v_degrees_max: float, format: string, flags: ImGuiSliderFlags): float, bool
---@field SliderInt fun(label: string, v: int, v_min: int, v_max: int): int, bool || fun(label: string, v: int, v_min: int, v_max: int, format: string): int, bool || fun(label: string, v: int, v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int, bool
---@field SliderInt2 fun(label: string, v: number[], v_min: int, v_max: int): int[], bool || fun(label: string, v: number[], v_min: int, v_max: int, format: string): int[], bool || fun(label: string, v: number[], v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int[], bool
---@field SliderInt3 fun(label: string, v: number[], v_min: int, v_max: int): int[], bool || fun(label: string, v: number[], v_min: int, v_max: int, format: string): int[], bool || fun(label: string, v: number[], v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int[], bool
---@field SliderInt4 fun(label: string, v: number[], v_min: int, v_max: int): int[], bool || fun(label: string, v: number[], v_min: int, v_max: int, format: string): int[], bool || fun(label: string, v: number[], v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int[], bool
---@field VSliderFloat fun(label: string, sizeX: float, sizeY: float, v: float, v_min: float, v_max: float): float, bool || fun(label: string, sizeX: float, sizeY: float, v: float, v_min: float, v_max: float, format: string): float, bool || fun(label: string, sizeX: float, sizeY: float, v: float, v_min: float, v_max: float, format: string, flags: ImGuiSliderFlags): float, bool
---@field VSliderInt fun(label: string, sizeX: float, sizeY: float, v: int, v_min: int, v_max: int): int, bool || fun(label: string, sizeX: float, sizeY: float, v: int, v_min: int, v_max: int, format: string): int, bool || fun(label: string, sizeX: float, sizeY: float, v: int, v_min: int, v_max: int, format: string, flags: ImGuiSliderFlags): int, bool
---@field InputText fun(label: string, text: string, buf_size: int): string, bool || fun(label: string, text: string, buf_size: int, flags: ImGuiInputTextFlags): string, bool
---@field InputTextMultiline fun(label: string, text: string, buf_size: int): string, bool || fun(label: string, text: string, buf_size: int, sizeX: float, sizeY: float): string, bool || fun(label: string, text: string, buf_size: int, sizeX: float, sizeY: float, flags: ImGuiInputTextFlags): string, bool
---@field InputTextWithHint fun(label: string, hint: string, text: string, buf_size: int): string, bool || fun(label: string, hint: string, text: string, buf_size: int, flags: ImGuiInputTextFlags): string, bool
---@field InputFloat fun(label: string, v: float): float, bool || fun(label: string, v: float, step: float): float, bool || fun(label: string, v: float, step: float, step_fast: float): float, bool || fun(label: string, v: float, step: float, step_fast: float, format: string): float, bool || fun(label: string, v: float, step: float, step_fast: float, format: string, flags: ImGuiInputTextFlags): float, bool
---@field InputFloat2 fun(label: string, v: number[]): float[], bool || fun(label: string, v: number[], format: string): float[], bool || fun(label: string, v: number[], format: string, flags: ImGuiInputTextFlags): float[], bool
---@field InputFloat3 fun(label: string, v: number[]): float[], bool || fun(label: string, v: number[], format: string): float[], bool || fun(label: string, v: number[], format: string, flags: ImGuiInputTextFlags): float[], bool
---@field InputFloat4 fun(label: string, v: number[]): float[], bool || fun(label: string, v: number[], format: string): float[], bool || fun(label: string, v: number[], format: string, flags: ImGuiInputTextFlags): float[], bool
---@field InputInt fun(label: string, v: int): int, bool || fun(label: string, v: int, step: int): int, bool || fun(label: string, v: int, step: int, step_fast: int): int, bool || fun(label: string, v: int, step: int, step_fast: int, flags: ImGuiInputTextFlags): int, bool
---@field InputInt2 fun(label: string, v: number[]): int[], bool || fun(label: string, v: number[], flags: ImGuiInputTextFlags): int[], bool
---@field InputInt3 fun(label: string, v: number[]): int[], bool || fun(label: string, v: number[], flags: ImGuiInputTextFlags): int[], bool
---@field InputInt4 fun(label: string, v: number[]): int[], bool || fun(label: string, v: number[], flags: ImGuiInputTextFlags): int[], bool
---@field InputDouble fun(label: string, v: double): double, bool || fun(label: string, v: double, step: double): double, bool || fun(label: string, v: double, step: double, step_fast: double): double, bool || fun(label: string, v: double, step: double, step_fast: double, format: string): double, bool || fun(label: string, v: double, step: double, step_fast: double, format: string, flags: ImGuiInputTextFlags): double, bool
---@field ColorEdit3 fun(label: string, col: number[]): float[], bool || fun(label: string, col: number[], flags: ImGuiColorEditFlags): float[], bool
---@field ColorEdit4 fun(label: string, col: number[]): float[], bool || fun(label: string, col: number[], flags: ImGuiColorEditFlags): float[], bool
---@field ColorPicker3 fun(label: string, col: number[]): float[], bool || fun(label: string, col: number[], flags: ImGuiColorEditFlags): float[], bool
---@field ColorPicker4 fun(label: string, col: number[]): float[], bool || fun(label: string, col: number[], flags: ImGuiColorEditFlags): float[], bool
---@field ColorButton fun(desc_id: string, col: number[]): bool || fun(desc_id: string, col: number[], flags: ImGuiColorEditFlags): bool || fun(desc_id: string, col: number[], flags: ImGuiColorEditFlags, sizeX: float, sizeY: float): bool
---@field SetColorEditOptions fun(flags: ImGuiColorEditFlags): void
---@field TreeNode fun(label: string): bool || fun(label: string, fmt: string): bool
---@field TreeNodeEx fun(label: string): bool || fun(label: string, flags: ImGuiTreeNodeFlags): bool || fun(label: string, flags: ImGuiTreeNodeFlags, fmt: string): bool
---@field TreePush fun(str_id: string): void
---@field TreePop fun(): void
---@field GetTreeNodeToLabelSpacing fun(): float
---@field CollapsingHeader fun(label: string): bool || fun(label: string, flags: ImGuiTreeNodeFlags): bool || fun(label: string, open: bool): bool, bool || fun(label: string, open: bool, flags: ImGuiTreeNodeFlags): bool, bool
---@field SetNextItemOpen fun(is_open: bool): void || fun(is_open: bool, cond: ImGuiCond): void
---@field Selectable fun(label: string): bool || fun(label: string, selected: bool): bool || fun(label: string, selected: bool, flags: ImGuiSelectableFlags): bool || fun(label: string, selected: bool, flags: ImGuiSelectableFlags, sizeX: float, sizeY: float): bool
---@field ListBox fun(label: string, current_item: int, items: string[], items_count: int): int, bool || fun(label: string, current_item: int, items: string[], items_count: int, height_in_items: int): int, bool
---@field BeginListBox fun(label: string): bool || fun(label: string, sizeX: float, sizeY: float): bool
---@field EndListBox fun(): void
---@field Value fun(prefix: string, b: bool): void || fun(prefix: string, v: int): void || fun(prefix: string, v: int): void || fun(prefix: string, v: float): void || fun(prefix: string, v: float, float_format: string): void
---@field BeginMenuBar fun(): bool
---@field EndMenuBar fun(): void
---@field BeginMainMenuBar fun(): bool
---@field EndMainMenuBar fun(): void
---@field BeginMenu fun(label: string): bool || fun(label: string, enabled: bool): bool
---@field EndMenu fun(): void
---@field MenuItem fun(label: string): bool || fun(label: string, shortcut: string): bool || fun(label: string, shortcut: string, selected: bool): bool, bool || fun(label: string, shortcut: string, selected: bool, enabled: bool): bool, bool
---@field BeginTooltip fun(): void
---@field EndTooltip fun(): void
---@field SetTooltip fun(fmt: string): void
---@field BeginPopup fun(str_id: string): bool || fun(str_id: string, flags: ImGuiWindowFlags): bool
---@field BeginPopupModal fun(name: string): bool || fun(name: string, flags: ImGuiWindowFlags): bool || fun(name: string, open: bool): bool || fun(name: string, open: bool, flags: ImGuiWindowFlags): bool
---@field EndPopup fun(): void
---@field OpenPopup fun(str_id: string): void || fun(str_id: string, popup_flags: ImGuiPopupFlags): void
---@field CloseCurrentPopup fun(): void
---@field BeginPopupContextItem fun(): bool || fun(str_id: string): bool || fun(str_id: string, popup_flags: ImGuiPopupFlags): bool
---@field BeginPopupContextWindow fun(): bool || fun(str_id: string): bool || fun(str_id: string, popup_flags: ImGuiPopupFlags): bool
---@field BeginPopupContextVoid fun(): bool || fun(str_id: string): bool || fun(str_id: string, popup_flags: ImGuiPopupFlags): bool
---@field IsPopupOpen fun(str_id: string): bool || fun(str_id: string, popup_flags: ImGuiPopupFlags): bool
---@field BeginTable fun(str_id: string, columns: int): bool || fun(str_id: string, columns: int, flags: ImGuiTableFlags): bool || fun(str_id: string, columns: int, flags: ImGuiTableFlags, outer_sizeX: float, outer_sizeY: float): bool || fun(str_id: string, columns: int, flags: ImGuiTableFlags, outer_sizeX: float, outer_sizeY: float, inner_width: float): bool
---@field EndTable fun(): void
---@field TableNextRow fun(): void || fun(flags: ImGuiTableRowFlags): void || fun(flags: ImGuiTableRowFlags, min_row_height: float): void
---@field TableNextColumn fun(): bool
---@field TableSetColumnIndex fun(column_n: int): bool
---@field TableSetupColumn fun(label: string): void || fun(label: string, flags: ImGuiTableColumnFlags): void || fun(label: string, flags: ImGuiTableColumnFlags, init_width_or_weight: float): void || fun(label: string, flags: ImGuiTableColumnFlags, init_width_or_weight: float, user_id: int): void
---@field TableSetupScrollFreeze fun(cols: int, rows: int): void
---@field TableHeadersRow fun(): void
---@field TableHeader fun(label: string): void
---@field TableGetSortSpecs fun(): ImGuiTableSortSpecs
---@field TableGetColumnCount fun(): int
---@field TableGetColumnIndex fun(): int
---@field TableGetRowIndex fun(): int
---@field TableGetColumnName fun(): string || fun(column_n: int): string
---@field TableGetColumnFlags fun(): ImGuiTableColumnFlags || fun(column_n: int): ImGuiTableColumnFlags
---@field TableSetBgColor fun(target: ImGuiTableBgTarget, color: int): void || fun(target: ImGuiTableBgTarget, colR: float, colG: float, colB: float, colA: float): void || fun(target: ImGuiTableBgTarget, color: int, column_n: int): void || fun(target: ImGuiTableBgTarget, colR: float, colG: float, colB: float, colA: float, column_n: int): void
---@field Columns fun(): void || fun(count: int): void || fun(count: int, id: string): void || fun(count: int, id: string, border: bool): void
---@field NextColumn fun(): void
---@field GetColumnIndex fun(): int
---@field GetColumnWidth fun(): float || fun(column_index: int): float
---@field SetColumnWidth fun(column_index: int, width: float): void
---@field GetColumnOffset fun(): float || fun(column_index: int): float
---@field SetColumnOffset fun(column_index: int, offset_x: float): void
---@field GetColumnsCount fun(): int
---@field BeginTabBar fun(str_id: string): bool || fun(str_id: string, flags: ImGuiTabBarFlags): bool
---@field EndTabBar fun(): void
---@field BeginTabItem fun(label: string): bool || fun(label: string, flags: ImGuiTabItemFlags): bool || fun(label: string, open: bool): bool, bool || fun(label: string, open: bool, flags: ImGuiTabItemFlags): bool, bool
---@field EndTabItem fun(): void
---@field SetTabItemClosed fun(tab_or_docked_window_label: string): void
---@field BeginDisabled fun(): void || fun(disabled: bool): void
---@field EndDisabled fun(): void
---@field PushClipRect fun(min_x: float, min_y: float, max_x: float, max_y: float, intersect_current: bool): void
---@field PopClipRect fun(): void
---@field SetItemDefaultFocus fun(): void
---@field SetKeyboardFocusHere fun(): void || fun(offset: int): void
---@field IsItemHovered fun(): bool || fun(flags: ImGuiHoveredFlags): bool
---@field IsItemActive fun(): bool
---@field IsItemFocused fun(): bool
---@field IsItemClicked fun(): bool || fun(target: ImGuiMouseButton): bool
---@field IsItemVisible fun(): bool
---@field IsItemEdited fun(): bool
---@field IsItemActivated fun(): bool
---@field IsItemDeactivated fun(): bool
---@field IsItemDeactivatedAfterEdit fun(): bool
---@field IsItemToggledOpen fun(): bool
---@field IsAnyItemHovered fun(): bool
---@field IsAnyItemActive fun(): bool
---@field IsAnyItemFocused fun(): bool
---@field GetItemRectMin fun(): float, float
---@field GetItemRectMax fun(): float, float
---@field GetItemRectSize fun(): float, float
---@field SetItemAllowOverlap fun(): void
---@field IsRectVisible fun(sizeX: float, sizeY: float): bool || fun(minX: float, minY: float, maxX: float, maxY: float): bool
---@field GetTime fun(): double
---@field GetFrameCount fun(): int
---@field GetBackgroundDrawList fun(): ImDrawList
---@field GetForegroundDrawList fun(): ImDrawList
---@field GetStyleColorName fun(idx: ImGuiCol): string
---@field BeginChildFrame fun(id: int, sizeX: float, sizeY: float): bool || fun(id: int, sizeX: float, sizeY: float, flags: ImGuiWindowFlags): bool
---@field EndChildFrame fun(): void
---@field GetStyle fun(): ImGuiStyle
---@field CalcTextSize fun(text: string): float, float || fun(text: string, hide_text_after_double_hash: bool): float, float || fun(text: string, hide_text_after_double_hash: bool, wrap_width: float): float, float
---@field ColorConvertU32ToFloat4 fun(in: int): float[]
---@field ColorConvertFloat4ToU32 fun(rgba: number[]): int
---@field ColorConvertRGBtoHSV fun(r: float, g: float, b: float): float, float, float
---@field ColorConvertHSVtoRGB fun(h: float, s: float, v: float): float, float, float
---@field IsMouseHoveringRect fun(min_x: float, min_y: float, max_x: float, max_y: float): bool || fun(min_x: float, min_y: float, max_x: float, max_y: float, clip: bool): bool
---@field GetMousePos fun(): float, float
---@field GetMousePosOnOpeningCurrentPopup fun(): float, float
---@field IsMouseDragging fun(button: ImGuiMouseButton): bool || fun(button: ImGuiMouseButton, lock_threshold: float): bool
---@field GetMouseDragDelta fun(): float, float || fun(button: ImGuiMouseButton): float, float || fun(button: ImGuiMouseButton, lock_threshold: float): float, float
---@field ResetMouseDragDelta fun(): void || fun(button: ImGuiMouseButton): void
---@field GetClipboardText fun(): string
---@field SetClipboardText fun(text: string): void
---@field ImDrawListAddLine fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, col: int): void || fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, col: int, thickness: float): void
---@field ImDrawListAddRect fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col: int): void || fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col: int, rounding: float): void || fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col: int, rounding: float, flags: ImDrawFlags): void || fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col: int, rounding: float, flags: ImDrawFlags, thickness: float): void
---@field ImDrawListAddRectFilled fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col: int): void || fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col: int, rounding: float): void || fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col: int, rounding: float, flags: ImDrawFlags): void
---@field ImDrawListAddRectFilledMultiColor fun(drawlist: ImDrawList, p_minX: float, p_minY: float, p_maxX: float, p_maxY: float, col_upr_left: int, col_upr_right: int, col_bot_right: int, col_bot_left: int): void
---@field ImDrawListAddQuad fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, p4X: float, p4Y: float, col: int): void || fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, p4X: float, p4Y: float, col: int, thickness: float): void
---@field ImDrawListAddQuadFilled fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, p4X: float, p4Y: float, col: int): void
---@field ImDrawListAddTriangle fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, col: int): void || fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, col: int, thickness: float): void
---@field ImDrawListAddTriangleFilled fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, col: int): void
---@field ImDrawListAddCircle fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int): void || fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int, num_segments: int): void || fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int, num_segments: int, thickness: float): void
---@field ImDrawListAddCircleFilled fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int): void || fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int, num_segments: int): void
---@field ImDrawListAddNgon fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int, num_segments: int): void || fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int, num_segments: int, thickness: float): void
---@field ImDrawListAddNgonFilled fun(drawlist: ImDrawList, centerX: float, centerY: float, radius: float, col: int, num_segments: int): void
---@field ImDrawListAddText fun(drawlist: ImDrawList, posX: float, posY: float, col: int, text_begin: string): void || fun(drawlist: ImDrawList, font_size: float, posX: float, posY: float, col: int, text_begin: string): void || fun(drawlist: ImDrawList, font_size: float, posX: float, posY: float, col: int, text_begin: string, wrap_width: float): void
---@field ImDrawListAddBezierCubic fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, p4X: float, p4Y: float, col: int, thickness: float): void || fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, p4X: float, p4Y: float, col: int, thickness: float, num_segments: int): void
---@field ImDrawListAddBezierQuadratic fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, col: int, thickness: float): void || fun(drawlist: ImDrawList, p1X: float, p1Y: float, p2X: float, p2Y: float, p3X: float, p3Y: float, col: int, thickness: float, num_segments: int): void
---@field LoadTexture fun(path: string): ImguiTexture
---@field Image fun(texture: ImguiTexture, size: ImVec2?, uv0: ImVec2?, uv1: ImVec2?, tint_col: ImVec4?, border_col: ImVec4?): void
ImGui = {}

---Helper: Manually clip large list of items.
---
---If you have lots evenly spaced items and you have random access to the list, you can perform coarse
---clipping based on visibility to only submit items that are in view.
---
---The clipper calculates the range of visible items and advance the cursor to compensate for the non-visible items we have skipped.
---
---(Dear ImGui already clip items based on their bounds but: it needs to first layout the item to do so, and generally
--- fetching/submitting your own data incurs additional cost. Coarse clipping using ImGuiListClipper allows you to easily
--- scale using lists with tens of thousands of items without a problem)
---
---Usage:
---```
---local clipper = ImGuiListClipper.new();
---clipper:Begin(linesCount, -1); -- (arguments number of lines and line height with -1 calculating the height from first item drawn)
---while (clipper:Step()) do
---  for i = clipper.DisplayStart, clipper.DisplayEnd, 1 do
---    -- draw lines, use i as index of what needs drawing
---  end
---end
---```
---Generally what happens is:
---- Clipper lets you process the first element (DisplayStart = 0, DisplayEnd = 1) regardless of it being visible or not.
---- User code submit that one element.
---- Clipper can measure the height of the first element
---- Clipper calculate the actual range of elements to display based on the current clipping rectangle, position the cursor before the first visible element.
---- User code submit visible elements.
---- The clipper also handles various subtleties related to keyboard/gamepad navigation, wrapping etc.
---@class ImGuiListClipper
---@field DisplayStart int
---@field DisplayEnd int
ImGuiListClipper = {}

---@return ImGuiListClipper
function ImGuiListClipper.new() end

---@param items_count int
---@param items_height float?
---@return void
function ImGuiListClipper:Begin(items_count, items_height) end

---Automatically called on the last call of Step() that returns false.
---@return void
function ImGuiListClipper:End() end

---Call until it returns false. The DisplayStart/DisplayEnd fields will be set and you can process/draw those items.
---@return void
function ImGuiListClipper:Step() end

