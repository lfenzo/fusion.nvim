vim.cmd [[
  highlight clear
  syntax reset
]]

vim.g.colors_name = "fusion"

 palette = {

   fusion0  = "#232323",
   fusion1  = "#FF1E08",
   fusion2  = "#69E10B",
   fusion3  = "#FFB900",
   fusion4  = "#3586FF",
   fusion5  = "#9C65E8",
   fusion6  = "#00D8EB",
   fusion7  = "#D0CFCC",
   fusion8  = "#949494",
   fusion9  = "#FF3C4D",
   fusion10 = "#9FEF28",
   fusion11 = "#FFD242",
   fusion12 = "#5997FF",
   fusion13 = "#CA95FF",
   fusion14 = "#67FFF0",
   fusion15 = "#FFFFFF",

   black   = "#232323",
   white   = "#FFFFFF",
   blue    = "#5c83f7",
   orange  = "#ff875f",
   red     = "#FF1E08",
   green   = "#5fafaf",
   purple  = "#ae5efe",
   yellow  = "#ffd809",

   light_blue   = "#7fa4ee",
   light_orange = "#f7aa5d",
   light_red    = "#f75c5c",
   light_green  = "#82cf82",
   light_purple = "#ac85fb",
}

-- Neovim Terminal Colors
vim.g.terminal_color_0  = palette.fusion0 
vim.g.terminal_color_1  = palette.fusion1 
vim.g.terminal_color_2  = palette.fusion2 
vim.g.terminal_color_3  = palette.fusion3 
vim.g.terminal_color_4  = palette.fusion4 
vim.g.terminal_color_5  = palette.fusion5 
vim.g.terminal_color_6  = palette.fusion6 
vim.g.terminal_color_7  = palette.fusion7 
vim.g.terminal_color_8  = palette.fusion8 
vim.g.terminal_color_9  = palette.fusion9 
vim.g.terminal_color_10 = palette.fusion10
vim.g.terminal_color_11 = palette.fusion11
vim.g.terminal_color_12 = palette.fusion12
vim.g.terminal_color_13 = palette.fusion13
vim.g.terminal_color_14 = palette.fusion14
vim.g.terminal_color_15 = palette.fusion15

local hi = function(opts)
  vim.cmd(
    string.format("hi %s guifg=%s guibg=%s gui=%s guisp=%s", 
      opts.group, 
      opts.guifg or "NONE", 
      opts.guibg or "NONE", 
      opts.gui   or "NONE", 
      opts.guisp or "NONE"
    )
  )
end

local link = function(from, to)
  vim.cmd(string.format("hi! link %s %s", from, to))
end

-- // ------------------------------------------------- // 
-- // ------------------------------------------------- // 
-- // ------------------------------------------------- // 

--
--
-- Interface
--
--
hi { group = "Normal", guibg = palette.background }
hi { group = "ErrorMsg", guifg = palette.fusion9, gui = "bold"}
hi { group = "MoreMsg", guifg = palette.fusion9, gui = "bold"}
hi { group = "MsgArea", guifg = palette.white, }
hi { group = "Visual", guibg = "#636363" }
hi { group = "Todo", guifg = palette.black, guibg = palette.yellow, gui = "bold"} 
hi { group = "Note", guifg = palette.black, guibg = palette.yellow, gui = "bold"} 
hi { group = "Search", guifg = palette.black, guibg = palette.yellow, } 
hi { group = "IncSearch", guifg = palette.black, guibg = palette.yellow, } 
hi { group = "Error", } -- ignore

-- statusline
hi { group = "StatusLine", guifg = palette.black, guibg = "#d0d0d0", gui = "bold"} 
hi { group = "StatusLineNC", guifg = "#b2b2b2", guibg = "#484848"} 
hi { group = "VertSplit", guifg = "#b2b2b2", guibg = "#262626"} 

-- Tabs
hi { group = "TabLineFill", guifg = "#b2b2b2", guibg = "#1e1e1e"} 
hi { group = "TabLine", guifg = "#b2b2b2", guibg = "#484848", } 
hi { group = "TabLineSel", guifg = palette.black, guibg = "#d0d0d0", gui = "bold" } 

-- hi Folded       ctermfg=10 ctermbg=none cterm=bold
-- hi FoldColumn   ctermfg=10 ctermbg=none cterm=bold
hi { group = "ColorColumn", guibg = "#343434" } 
hi { group = "SignColumn", guibg = "#1c1c1c" } 

-- line number/cursor
hi { group = "LineNr", guifg = "#939393" } 
hi { group = "CursorLineNr", guifg = palette.white, guibg = "#444444", gui = "bold" } 
hi { group = "CursorLine", guibg = "#303030" } 
hi { group = "CursorIM", guibg = "#303030" }
hi { group = "MatchParen", guifg = palette.white, guibg = "#949494", gui = "bold"} 

hi { group = "SpecialKey", guifg = palette.purple, gui = "bold"}
hi { group = "Directory", guifg = palette.light_purple, gui = "bold"}
hi { group = "Title", guifg = palette.light_red, gui = "bold"}
hi { group = "WarningMsg", guifg = palette.light_red, gui = "bold"}
hi { group = "ModeMsg", guifg = palette.white, guibg = palette.black, gui = "bold"}
hi { group = "NonText", guifg = "#808080", gui = "bold"}
hi { group = "Question", guifg = palette.yellow, gui = "bold"}

-- Menus
hi { group = "Menu", guifg = palette.white, guibg = "#808080", gui = "bold"}
hi { group = "WildMenu", guifg = palette.white, guibg = "#b2b2b2", gui = "bold"}
hi { group = "Pmenu", guifg = palette.white, guibg = "#808080", gui = "bold"}
hi { group = "PmenuSel", guifg = palette.black, guibg = "#d0d0d0", gui = "bold"}
hi { group = "PmenuSbar", guibg = "#969696", gui = "bold"}
hi { group = "PmenuThumb",  guibg = "#d0d0d0", gui = "bold"}


--
-- Generic syntax
--
hi { group = "Comment", guifg = "#808080", } 
hi { group = "SpecialComment", guifg = "#808080", gui = "bold" } 
hi { group = "Constant", guifg = palette.light_purple, gui = "bold" } 
hi { group = "String", guifg = palette.light_green, gui = "bold" } 
hi { group = "Character", guifg = palette.light_green, gui = "bold" } 
hi { group = "Number", guifg = palette.light_purple, gui = "bold" } 
hi { group = "Float", guifg = palette.light_purple, gui = "bold" } 
hi { group = "Boolean", guifg = palette.light_purple, gui = "bold" } 
hi { group = "Special", guifg = palette.orange, gui = "bold" } 
hi { group = "SpecialChar", guifg = palette.purple, gui = "bold" } 
hi { group = "Debug", guifg = palette.purple, gui = "bold" } 
hi { group = "Tag", guifg = palette.purple, gui = "bold" } 
hi { group = "Delimiter", guifg = palette.light_red, gui = "bold" } 
hi { group = "Identifier", guifg = palette.green, gui = "bold" } 
hi { group = "Function", guifg = palette.orange, gui = "bold" } 
hi { group = "Operator", guifg = palette.light_orange, gui = "bold" } 
hi { group = "Statement", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Conditional", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Repeat", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Label", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Keyword", guifg = palette.light_red, gui = "bold" } 
hi { group = "Exeption", guifg = palette.orange, gui = "bold" } 
hi { group = "Type", guifg = palette.blue, gui = "bold" } 
hi { group = "StorageClass", guifg = palette.light_orange, gui = "bold" } 
hi { group = "Structure", guifg = palette.light_red, gui = "bold" } 
hi { group = "Typedef", guifg = palette.orange, gui = "bold" } 
hi { group = "PreCondit", guifg = palette.light_red, gui = "bold" } 
hi { group = "PreProc", guifg = palette.light_red, gui = "bold" } 
hi { group = "Include", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Define", guifg = palette.white, gui = "bold" } 
hi { group = "Macro", guifg = palette.green, gui = "bold" } 

--
-- Python-specific syntax
--
hi { group = "pythonClassVar", guifg = palette.purple, gui = "bold" } 
hi { group = "pythonFunctionCall", guifg = palette.white, gui = "bold" } 
hi { group = "pythonBuiltinObj", guifg = palette.blue, gui = "bold" } 
hi { group = "pythonBuiltinFunc", guifg = palette.blue, gui = "bold" } 
hi { group = "pythonDecorator", guifg = palette.light_red, gui = "bold" } 

--
-- Julia-specific syntax 
--
hi { group = "juliaParDelim", guifg = palette.white, } 
hi { group = "juliaSemicolon", guifg = palette.white, gui = "bold"} 
hi { group = "juliaComma", guifg = palette.white } 
hi { group = "juliaFunctionCall", guifg = palette.white, gui = "bold" } 
hi { group = "juliaColon", guifg = palette.light_orange, gui = "bold" } 
hi { group = "juliaFunctionName", guifg = palette.orange, gui = "bold"} 
hi { group = "juliaFunctionName1", guifg = palette.orange, gui = "bold"} 
hi { group = "juliaMacroName", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaKeyword", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaWhereKeyword", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaInfixKeyword", guifg = palette.light_orange, gui = "bold"} 
hi { group = "juliaIsaKeyword", guifg = palette.light_orange, gui = "bold"} 
hi { group = "juliaAsKeyword", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaRepKeyword", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaBlKeyword", guifg = palette.light_red, gui = "bold"} 
hi { group = "juliaConditional", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaRepeat", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaException", guifg = palette.light_blue, gui = "bold"} 
hi { group = "juliaOuter", guifg = palette.light_blue, gui = "bold"} 

-- Types
hi { group = "juliaBaseTypeBasic", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeNum", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeC", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeError", guifg = palette.light_red, gui = "bold"} 
hi { group = "juliaBaseTypeIter", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeString", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeArray", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeDict", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeSet", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeIO", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeProcess", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeRange", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeRegex", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeFact", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeSort", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeRound", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeSpecial", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeRandom", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeDisplay", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeTime", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaBaseTypeOther", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaType", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaParamTope", guifg = palette.blue, gui = "bold"} 
hi { group = "juliaTypeOperatorR1", guifg = palette.white, gui = "bold" } 

hi { group = "juliaConstNum", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaEuler", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaConstEnv", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaConstC", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaConstLimits", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaConstGeneric", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaRangeKeyword", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaConstBool", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaConstIO", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaComprehensionFor", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaComprehensionIf", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaDollarVar", guifg = palette.orange, gui = "bold" } 
hi { group = "juliaFunction", guifg = palette.light_red, gui = "bold" } 
hi { group = "juliaMacro", guifg = palette.purple, gui = "bold" } 
hi { group = "juliaSymbol", guifg = palette.green, gui = "bold" } 
hi { group = "juliaSymbolS", guifg = palette.green, gui = "bold" } 
hi { group = "juliaQParDelim", guifg = palette.green, gui = "bold" } 
hi { group = "juliaQuotedQMarkPar", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaQuotedQMark", guifg = palette.light_red, gui = "bold" } 
hi { group = "juliaNumber", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaFloat", guifg = palette.light_purple, gui = "bold" } 
hi { group = "juliaComplexUnit", guifg = palette.light_orange, gui = "bold" } 
hi { group = "juliaChar", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaStringPrefixed", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliabString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliasString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliavString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliarString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaipString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliabigString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaMIMEString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliarawString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliatestString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliahtmlString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaint128String", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaPrintfString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaShellString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaDocString", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaDocStringM", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaDocStringMRaw", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaStringDelim", guifg = palette.green, gui = "bold" } 
hi { group = "juliaDocStringDelim", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaStringVarsPla", guifg = palette.orange, gui = "bold" } 
hi { group = "juliaStringVarDelim", guifg = palette.orange, gui = "bold" } 
hi { group = "juliaRegEx", guifg = palette.light_green, gui = "bold" } 
hi { group = "juliaSpecialChar", guifg = palette.purple, gui = "bold" } 
hi { group = "juliaOctalEscapeChar", guifg = palette.purple, gui = "bold" } 
hi { group = "juliaHexEscapeChar", guifg = palette.purple, gui = "bold" } 
hi { group = "juliaUniCharSmall", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaUniCharLarge", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaDoubleBackslash", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaEscapedQuote", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaPrintfFmt", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaOperatorHL", guifg = palette.light_orange, gui = "bold" } 
hi { group = "juliaOperator", guifg = palette.light_orange, gui = "bold" } 
hi { group = "juliaRangeOperator", guifg = palette.light_blue, gui = "bold" } 
hi { group = "juliaCTransOperator", guifg = palette.light_orange, gui = "bold" } 
hi { group = "juliaTernaryOperator", guifg = palette.light_orange, gui = "bold" } 

--
-- Latex-spacific syntax
--
hi { group = "texDocType", guifg = palette.blue, gui = "bold" } 
hi { group = "texDocTypeArgs", guifg = palette.light_purple, gui = "bold" } 
hi { group = "texInputFile", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texInputFileOpt", guifg = palette.light_purple, gui = "bold" } 
hi { group = "texMathMatcher", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathSymbol", guifg = palette.light_green, gui = "bold" } 
hi { group = "texMathZoneA", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathZoneV", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathZoneW", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathZoneX", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathZoneY", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathZoneV", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathZoneZ", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texMathZoneAS", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texCite", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texSection", guifg = palette.light_red, gui = "bold" } 
hi { group = "texSectionTitle", guifg = palette.light_green, gui = "bold" } 
hi { group = "texStatement", guifg = palette.light_blue, gui = "bold" } 
hi { group = "texTypeSize", guifg = palette.light_orange, gui = "bold" } 
hi { group = "texTypeStyle", guifg = palette.light_blue, gui = "bold" } 

--
--Markdown Syntax
--
hi { group = "mkdBlockquote", guifg = palette.light_orange, gui = "bold" } 
hi { group = "mkdCodeStart", guifg = palette.light_red, gui = "bold" } 
hi { group = "mkdCodeEnd", guifg = palette.light_red, gui = "bold" } 
hi { group = "mkdCode", guifg = palette.light_orange, gui = "bold" } 
hi { group = "mkdIndentCode", guifg = palette.light_blue, gui = "bold" } 
hi { group = "mdkCodeDelimiter", guifg = palette.orange, gui = "bold" } 
hi { group = "mkdListItem", guifg = palette.orange, gui = "bold" } 
hi { group = "mkdLinkTitle", guifg = palette.light_blue, gui = "bold" } 
hi { group = "mkdRule", guifg = palette.light_red, gui = "bold" } 
hi { group = "mkdLink", guifg = palette.light_blue, gui = "bold" } 
hi { group = "mkdURL", guifg = palette.light_purple, gui = "bold" } 

--
-- C-plus=plus Syntax
--
hi { group = "cppAccess", guifg = palette.light_blue, gui = "bold" } 
hi { group = "cppCast", guifg = palette.red, gui = "bold" } 
hi { group = "cppModifier", guifg = palette.blue, gui = "bold" } 
hi { group = "cppOperator", guifg = palette.light_orange, gui = "bold" } 


--
-- Javascript syntax 
--
hi { group = "jsFuncCall", guifg = palette.white, gui = "bold" } 
hi { group = "jsThis", guifg = palette.purple, gui = "bold" } 
hi { group = "jsSuper", guifg = palette.purple, gui = "bold" } 
hi { group = "jsClassProperty", guifg = palette.green, gui = "bold" } 
hi { group = "jsObjectShorthandProp", guifg = palette.green, gui = "bold" } 
hi { group = "jsModuleComma", guifg = palette.white } 
hi { group = "jsNull", guifg = palette.light_purple, gui = "bold" } 
hi { group = "jsBuiltins", guifg = palette.blue, gui = "bold" } 
hi { group = "jsFuncName", guifg = palette.orange, gui = "bold" } 
hi { group = "jsArrowFuncArgs", guifg = palette.orange, gui = "bold" } 
hi { group = "jsFunction", guifg = palette.light_red, gui = "bold" } 
hi { group = "jsArrowFunction", guifg = palette.light_orange, gui = "bold" } 
hi { group = "jsNull", guifg = palette.light_purple, gui = "bold" } 
hi { group = "jsHtmlElemAttrs", guifg = palette.light_purple, gui = "bold" } 

--
-- Telescope syntax
--
hi { group = "TelescopeSelection", guifg = palette.light_orange, gui = "bold" } 
hi { group = "TelescopeMatching",  guifg = palette.black, guibg = palette.yellow, gui = "bold" } 
hi { group = "TelescopeBorder", guifg = palette.white, gui = "bold" } 
hi { group = "TelescopeSelectionCaret", guifg = palette.orange, gui = "bold" } 

--
-- Java
--
hi { group = "javaTypedef", guifg = palette.purple, gui = "bold" } 
hi { group = "javaStorageClass", guifg = palette.orange, gui = "bold" } 
hi { group = "javaScopeDecl", guifg = palette.light_red, gui = "bold" } 
hi { group = "javaExternal", guifg = palette.light_blue, gui = "bold" } 
hi { group = "javaError", guifg = palette.light_blue, gui = "bold" } 
hi { group = "javaAnnotation", guifg = palette.blue, gui = "bold" } 
hi { group = "javaClassDecl", guifg = palette.orange, gui = "bold" } 
hi { group = "javaMethodDecl", guifg = palette.orange, gui = "bold" } 
hi { group = "javaOperator", guifg = palette.light_orange, gui = "bold" } 


--
-- Mardkdown-syntax
--
hi { group = "mkdBlockquote", guifg = palette.light_orange, gui = "bold" } 
hi { group = "mkdCodeStart", guifg = palette.green, gui = "bold" } 
hi { group = "mkdHeaderTitle", guifg = palette.green, gui = "bold" } 
hi { group = "mkdCodeEnd", guifg = palette.green, gui = "bold" } 
hi { group = "mkdCode", guifg = palette.light_orange, gui = "bold" } 
hi { group = "mkdIndentCode", guifg = palette.light_blue, gui = "bold" } 
hi { group = "mdkCodeDelimiter", guifg = palette.orange, gui = "bold" } 
hi { group = "mkdListItem", guifg = palette.orange, gui = "bold" } 
hi { group = "mkdLinkTitle", guifg = palette.light_blue, gui = "bold" } 
hi { group = "mkdRule", guifg = palette.orange, gui = "bold" } 
hi { group = "mkdLink", guifg = palette.light_blue, gui = "bold" } 
hi { group = "mkdURL", guifg = palette.light_purple, gui = "bold" } 
