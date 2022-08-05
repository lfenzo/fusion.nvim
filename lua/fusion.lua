vim.cmd [[
  highlight clear
  syntax reset
]]

vim.g.colors_name = "fusion"

palette = {

  light_blue = "#87AFFF",
  heavy_blue = "#6A8FF6",

  light_green = "#82CF82",
  heavy_green = "#5FAFAF",

  light_purple = "#AC85FB",
  heavy_purple = "#AF65FE",

  light_orange = "#FFAF5F",
  heavy_orange = "#FF875F",

  light_red = "#FF5F5F",
  heavy_red = "#FF1E08",
  
  --light_yellow = "#FFEA84",
  lighthest_yellow = "#FFD571",
  light_yellow = "#ffd787",
  heavy_yellow = "#FFDC2F",

  white = "#F6F5F4",
  black = "#000000",

  light_grey = "#EDEDED",
  medium_grey = "#DADADA",
  heavy_grey = "#C4C4C4",

  git_add_green = "#00D787",
  git_del_red = "#FF3C4D",
}

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

--
--
-- Interface
--
--
hi { group = "Normal", guibg = palette.background }
hi { group = "ErrorMsg", guifg = palette.light_red, gui = "bold"}
hi { group = "MoreMsg", guifg = palette.fusion9, gui = "bold"}
hi { group = "MsgArea", guifg = palette.white, }
hi { group = "Visual", guibg = "#636363" }
hi { group = "Todo", guifg = palette.black, guibg = palette.heavy_yellow, gui = "bold"} 
hi { group = "Note", guifg = palette.black, guibg = palette.heavy_yellow, gui = "bold"} 
hi { group = "Search", guifg = palette.black, guibg = palette.heavy_yellow, } 
hi { group = "IncSearch", guifg = palette.black, guibg = palette.heavy_yellow, gui = "bold"} 
--hi { group = "Error", guifg = palette.white, gui = "bold"} -- ignore

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

hi { group = "SpecialKey", guifg = palette.heavy_green, gui = "bold"}
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
hi { group = "Special", guifg = palette.light_orange, gui = "bold" } 
hi { group = "SpecialChar", guifg = palette.purple, gui = "bold" } 
hi { group = "Debug", guifg = palette.purple, gui = "bold" } 
hi { group = "Tag", guifg = palette.purple, gui = "bold" } 
hi { group = "Delimiter", guifg = palette.light_red, gui = "bold" } 
hi { group = "Identifier", guifg = palette.heavy_green, gui = "bold" } 
hi { group = "Function", guifg = palette.heavy_orange, gui = "bold" } 
hi { group = "Operator", guifg = palette.light_orange, gui = "bold" } 
hi { group = "Statement", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Conditional", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Repeat", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Label", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Keyword", guifg = palette.light_red, gui = "bold" } 
hi { group = "Exeption", guifg = palette.light_red, gui = "bold" } 
hi { group = "Type", guifg = palette.heavy_blue, gui = "bold" } 
hi { group = "StorageClass", guifg = palette.light_orange, gui = "bold" } 
hi { group = "Structure", guifg = palette.light_red, gui = "bold" } 
hi { group = "Typedef", guifg = palette.light_orange, gui = "bold" } 
hi { group = "PreCondit", guifg = palette.light_red, gui = "bold" } 
hi { group = "PreProc", guifg = palette.light_red, gui = "bold" } 
hi { group = "Include", guifg = palette.light_blue, gui = "bold" } 
hi { group = "Define", guifg = palette.white, gui = "bold" } 
hi { group = "Macro", guifg = palette.heavy_green, gui = "bold" } 

--
--
-- Tree-Sitter Generic Syntax
--
--
hi { group = "TSAttribute",  guifg = palette.medium_grey, }
hi { group = "TSBoolean",  guifg = palette.light_purple, gui = "bold"}
hi { group = "TSCharacter",  guifg = palette.light_green, gui = "bold"}
hi { group = "TSCharacterSpecial",  guifg = palette.light_red, gui = "bold"}
-- hi { group = "TSComment",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSConditional",  guifg = palette.light_blue, gui = "bold"}
hi { group = "TSConstant",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "TSConstBuiltin",  guifg = palette.light_purple, gui = "bold"}
hi { group = "TSConstMacro",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSConstructor",  guifg = palette.white, gui = "bold"}
-- hi { group = "TSDebug",  guifg = palette.white, gui = "bold"}
hi { group = "TSDefine",  guifg = palette.light_red, gui = "bold"}
-- hi { group = "TSError",  guibg = palette.light_yellow, gui = "bold"}
hi { group = "TSException",  guifg = palette.light_blue, gui = "bold"}
hi { group = "TSField",  guifg = palette.medium_grey, }
hi { group = "TSFloat",  guifg = palette.light_purple, gui = "bold"}
hi { group = "TSFunction",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "TSFunctionCall",  guifg = palette.white, gui = "bold"}
hi { group = "TSFuncBuiltin",  guifg = palette.white, gui = "bold"}
hi { group = "TSFuncMacro",  guifg = palette.heavy_purple, gui = "bold"}
hi { group = "TSInclude",  guifg = palette.light_blue, gui = "bold"}
hi { group = "TSKeyword",  guifg = palette.light_blue, gui = "bold"}
hi { group = "TSKeywordFunction",  guifg = palette.light_red, gui = "bold"}
hi { group = "TSKeywordOperator",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSKeywordReturn",  guifg = palette.light_blue, gui = "bold"}
hi { group = "TSLabel",  guifg = palette.heavy_blue, gui = "bold"}
hi { group = "TSMethod",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "TSMethodCall",  guifg = palette.white, gui = "bold"}
hi { group = "TSNamespace",  guifg = palette.light_yellow, gui = "bold"}
hi { group = "TSNumber",  guifg = palette.light_purple, gui = "bold"}
hi { group = "TSOperator",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSParameter",  guifg = palette.heavy_grey, gui = "bold"}
hi { group = "TSParameterReference",  guifg = palette.white }
hi { group = "TSPreProc",  guifg = palette.light_red, gui = "bold"}
hi { group = "TSProperty",  guifg = palette.medium_grey, }
hi { group = "TSPunctDelimiter",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSPunctBracket",  guifg = palette.white }
hi { group = "TSPunctSpecial",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSRepeat",  guifg = palette.light_blue, gui = "bold"}
hi { group = "TSStorageClass",  guifg = palette.light_red, gui = "bold"}
hi { group = "TSString",  guifg = palette.light_green, gui = "bold"}
hi { group = "TSStringRegex",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "TSStringEscape",  guifg = palette.heavy_purple, gui = "bold"}
hi { group = "TSStringSpecial",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "TSSymbol",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "TSTag",  guifg = palette.ligth_blue, gui = "bold"}
hi { group = "TSTagAttribute",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSTagDelimiter",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "TSText",  guifg = palette.ehite, }
-- -- hi { group = "TSStrong",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSEmphasis",  guifg = palette.light_orange, gui = "bold"}
-- -- hi { group = "TSUnderline",  guifg = palette.light_orange, gui = "bold"}
-- -- hi { group = "TSStrike",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSTitle",  guifg = palette.light_red, gui = "bold"}
-- hi { group = "TSLiteral",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSURI",  guifg = palette.light_purple, gui = "bold"}
hi { group = "TSMath",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSTextReference",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSEnvironment",  guifg = palette.light_blue, gui = "bold"}
hi { group = "TSEnvironmentName",  guifg = palette.heavy_orange, gui = "bold"}
-- -- hi { group = "TSNote",  guifg = palette.light_orange, gui = "bold"}
-- -- hi { group = "TSWarning",  guifg = palette.light_orange, gui = "bold"}
-- -- hi { group = "TSDanger",  guifg = palette.light_orange, gui = "bold"}
hi { group = "TSTodo",  guifg = palette.black, guibg = palette.heavy_yellow, gui = "bold"}
hi { group = "TSType",  guifg = palette.heavy_blue, gui = "bold"}
hi { group = "TSTypeBuiltin",  guifg = palette.heavy_blue, gui = "bold"}
hi { group = "TSTypeQualifier",  guifg = palette.heavy_blue, gui = "bold"}
hi { group = "TSTypeDefinition",  guifg = palette.light_blue, gui = "bold"}
-- hi { group = "TSVariable",  guifg = palette.white}
hi { group = "TSVariableBuiltIn",  guifg = palette.heavy_purple, gui = "bold" }

--
-- GitSigns
--
hi { group = "GitSignsAdd",  guifg = palette.git_add_green, gui = "bold" }
hi { group = "GitSignsChange",  guifg = palette.light_yellow, gui = "bold" }
hi { group = "GitSignsDelete",  guifg = palette.git_del_red, gui = "bold" }

--
-- Nvim Tree
--
hi { group = "NvimTreeFolderName",  guifg = palette.light_purple, gui = "bold" }
hi { group = "NvimTreeRootFolder",  guifg = palette.heavy_orange, gui = "bold" }
hi { group = "NvimTreeOpenedFolderName",  guifg = palette.light_purple, gui = "bold" }
hi { group = "NvimTreeFolderIcon",  guifg = palette.light_orange, gui = "bold" }
hi { group = "NvimTreeGitDirty",  guifg = palette.light_orange, gui = "bold" }
hi { group = "NvimTreeGitNew",  guifg = palette.git_add_green, gui = "bold" }
hi { group = "NvimTreeFileIcon",  guifg = palette.light_blue, gui = "bold" }
hi { group = "NvimTreeExecFile",  guifg = palette.medium_grey, }
hi { group = "NvimTreeOpenedFile",  guifg = palette.medium_grey, }
hi { group = "NvimTreeImageFile",  guifg = palette.medium_grey, }
hi { group = "NvimTreeSpecialFile",  guifg = palette.medium_grey, }
hi { group = "NvimTreeImageFile",  guifg = palette.medium_grey, }


