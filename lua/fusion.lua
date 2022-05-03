vim.cmd [[
  highlight clear
  syntax reset
]]

vim.g.colors_name = "fusion"

local fusion0  = "#232323"
local fusion1  = "#FF1E08"
local fusion2  = "#69E10B"
local fusion3  = "#FFB900"
local fusion4  = "#3586FF"
local fusion5  = "#9C65E8"
local fusion6  = "#00D8EB"
local fusion7  = "#D0CFCC"
local fusion8  = "#949494"
local fusion9  = "#FF3C4D"
local fusion10 = "#9FEF28"
local fusion11 = "#FFD242"
local fusion12 = "#5997FF"
local fusion13 = "#CA95FF"
local fusion14 = "#67FFF0"
local fusion15 = "#FFFFFF"

local palette = {
   background = "#1c1c1c",
   search = "",
   visual_selection = "",
   error_message = "",

   black        = "#232323",
   white        = "#FFFFFF",
   blue         = "#5c83f7",
   orange       = "#ff875f",
   red          = "#FF1E08",
   green        = "#5eae86",
   purple       = "#ae5efe",
   yellow       = "#ffd809",
   grey         = "#545454",

   light_blue   = "#7fa4ee",
   light_grey   = "#d0d0d0",
   light_orange = "#f7aa5d",
   light_red    = "#f75c5c",
   light_green  = "#82cf82",
   light_purple = "#ac85fb",
}

-- Neovim Terminal Colors
vim.g.terminal_color_0  = fusion0 
vim.g.terminal_color_1  = fusion1 
vim.g.terminal_color_2  = fusion2 
vim.g.terminal_color_3  = fusion3 
vim.g.terminal_color_4  = fusion4 
vim.g.terminal_color_5  = fusion5 
vim.g.terminal_color_6  = fusion6 
vim.g.terminal_color_7  = fusion7 
vim.g.terminal_color_8  = fusion8 
vim.g.terminal_color_9  = fusion9 
vim.g.terminal_color_10 = fusion10
vim.g.terminal_color_11 = fusion11
vim.g.terminal_color_12 = fusion12
vim.g.terminal_color_13 = fusion13
vim.g.terminal_color_14 = fusion14
vim.g.terminal_color_15 = fusion15

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

hi { group = "Normal", guibg = palette.background }
hi { group = "ErrorMsg", guibg = palette.fusion1 }
-- hi { group = "visual", guibg = palette.visual }
hi { group = "Todo", guifg = palette.black, guibg = palette.yellow, } 
hi { group = "Search", guifg = palette.black, guibg = palette.yellow, } 
hi { group = "IncSearch", guibg = palette.yellow, } 


hi { group = "TSComment", guifg = palette.light_blue, } 
hi { group = "TSAnnotation", guifg = palette.light_blue, } 
hi { group = "TSAttribute", guifg = palette.light_blue, } 
hi { group = "TSConstructor", guifg = palette.light_blue, } 
hi { group = "TSType", guifg = palette.blue, gui = "bold" } 
hi { group = "TSTypeBuiltin", guifg = palette.blue, gui = "bold" } 
hi { group = "TSRepeat", guifg = palette.light_blue, gui = "bold" } 
hi { group = "TSOperator", guifg = palette.light_orange, gui = "bold" } 
hi { group = "TSFloat", guifg = palette.light_purple, gui = "bold" } 
hi { group = "TSNumber", guifg = palette.light_purple, gui = "bold" } 
hi { group = "TSBoolean", guifg = palette.light_purple, gui = "bold" } 
hi { group = "TSConditional ", guifg = palette.light_blue, gui = "bold" } 
hi { group = "TSString ", guifg = palette.light_green, gui = "bold" } 
hi { group = "TSException", guifg = palette.light_blue, gui = "bold" } 
hi { group = "TSKeyword", guifg = palette.light_blue, gui = "bold" } 
hi { group = "TSFunction", guifg = palette.orange, gui = "bold" } 
hi { group = "TSMethod", guifg = palette.white, gui = "bold" } 
hi { group = "TSInclude", guifg = palette.light_blue, gui = "bold" } 
hi { group = "TSKeywordReturn", guifg = palette.light_blue, gui = "bold" } 
hi { group = "TSKeywordFunction ", guifg = palette.light_blue, gui = "bold" } 
hi { group = "TSPunctBracket", guifg = palette.white } 
hi { group = "TSPunctSpecial", guifg = palette.red } 
hi { group = "TSPunctDelimiter", guifg = palette.light_orange } 
hi { group = "TSVariable", guifg = palette.white } 
hi { group = "TSParameter", guifg = palette.white } 
hi { group = "TSParameterReference", guifg = palette.white } 
hi { group = "TSKeywordOperator", guifg = palette.light_orange } 
hi { group = "TSConstMacro", guifg = palette.white } 
hi { group = "TSFuncMacro", guifg = palette.purple, gui = "bold" } 
hi { group = "TSConstant", guifg = palette.light_purple, gui = "bold" } 
hi { group = "TSStringRegex", guifg = palette.orange, gui = "bold" } 
hi { group = "TSConstBuiltin", guifg = palette.light_purple, gui = "bold" } 
hi { group = "TSNamespace", guifg = palette.green, gui = "bold" } 
hi { group = "TSLabel", guifg = palette.red, gui = "bold" } 
hi { group = "TSVariableBuiltin", guifg = palette.purple, gui = "bold" } 
hi { group = "TSFuncBuiltin", guifg = palette.white, gui = "bold" } 
hi { group = "TSProperty", guifg = palette.orange, gui = "bold" } 
hi { group = "TSField", guifg = palette.white, } 
hi { group = "TSSymbol", guifg = palette.orange} 
hi { group = "TSTagDelimiter", guifg = palette.orange } 
hi { group = "TSTag", guifg = palette.light_blue } 
hi { group = "TSCharacter", guifg = palette.light_green } 
hi { group = "TSTitle", guifg = palette.light_green, gui = "bold" } 
hi { group = "TSStructure", guifg = palette.red, gui = "bold" } 
hi { group = "TSText", guifg = palette.light_green, gui = "bold" } 
hi { group = "TSTagAttribute", guifg = palette.light_orange, gui = "bold" } 
hi { group = "TSStringEscape", guifg = palette.orange, gui = "bold" } 

--		TSError = {fg = C.error_red, },
--		TSEmphasis = {style = "italic", },
--		TSUnderline = {style = "underline", },
--		TSLiteral = {fg = C.orange, },
--		TSURI = {fg = C.orange, style = "underline", },
--		TSStrong = {fg = C.blue, style = "bold", },
--		TSQueryLinterError = {fg = C.warning_orange, },
--		TreesitterContext = {bg = C.tree_gray, },
