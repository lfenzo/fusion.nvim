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
  heavy_orange = "#FF9900",

  light_red = "#ff5f5f",
  heavy_red = "#FF1E08",

  light_yellow = "#ffd787",
  heavy_yellow = "#FFDC2F",

  white = "#F6F5F4",
  black = "#000000",

  grey1 = "#CED4DA",
  grey2 = "#BEC5CC",
  grey3 = "#ADB5BD",

  light_grey = "#CECECE",
  heavy_grey = "#B8B8B8",

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
hi { group = "Search", guifg = palette.black, guibg = palette.heavy_yellow, gui = "bold"} 
hi { group = "IncSearch", guifg = palette.black, guibg = palette.heavy_yellow, gui = "bold"} 
--hi { group = "Error", guifg = palette.white, gui = "bold"} -- ignore

-- statusline
hi { group = "StatusLine", guifg = palette.black, guibg = "#999999", gui='bold'}
hi { group = "StatusLineNC", guifg = "#b2b2b2", guibg = "#484848"}
hi { group = "VertSplit", guifg = "#1c1c1c", guibg = "#262626"}

-- Tabs
hi { group = "TabLineFill", guifg = "#b2b2b2", guibg = "#1e1e1e"}
hi { group = "TabLine", guifg = "#b2b2b2", guibg = "#484848", } 
hi { group = "TabLineSel", guifg = "#262626", guibg = "#999999", gui = "bold" } 

hi { group = "Folded", guifg = palette.heavy_yellow, guibg = "#343434", gui = "bold"} 
hi { group = "FoldColumn", guifg = palette.heavy_yellow, guibg = "#343434", gui = "bold"} 
-- hi FoldColumn   ctermfg=10 ctermbg=none cterm=bold
hi { group = "ColorColumn", guibg = "#343434" } 
hi { group = "SignColumn", guibg = "#1e1e1e" } 

-- line number/cursor
hi { group = "LineNr", guifg = "#737373", guibg = "#1e1e1e" } 
hi { group = "CursorLineNr", guifg = palette.white, guibg = "#444444", gui = "bold" } 
hi { group = "CursorLine", guibg = "#303030" } 
hi { group = "CursorIM", guibg = "#303030" }
hi { group = "MatchParen", guifg = palette.white, guibg = "#949494", gui = "bold"} 
hi { group = "SpecialKey", guifg = palette.heavy_green, gui = "bold"}
hi { group = "Directory", guifg = palette.light_purple, gui = "bold"}
hi { group = "Title", guifg = palette.light_red, gui = "bold"}
hi { group = "WarningMsg", guifg = palette.light_red, gui = "bold"}
hi { group = "ModeMsg", guifg = palette.white, guibg = palette.black, gui = "bold"}
hi { group = "NonText", guifg = "#595959", gui = "bold"}
hi { group = "Question", guifg = palette.yellow, gui = "bold"}

-- Menus
hi { group = "Menu", guifg = palette.grey1, guibg = "#808080", gui = "bold"}
hi { group = "WildMenu", guifg = palette.black, guibg = "#b2b2b2", gui = "bold"}
-- hi { group = "Pmenu", guifg = palette.light_red, guibg = "#4d4d4d", gui = "bold"}
hi { group = "Pmenu", guifg = palette.heavy_grey, guibg = "#484848", gui = "bold"}
hi { group = "PmenuSel", guifg = palette.black, guibg = "#999999", gui = "bold"}
hi { group = "PmenuSbar", guibg = "#969696", gui = "bold"}
hi { group = "PmenuThumb",  guibg = "#d0d0d0", gui = "bold"}


--
-- Generic syntax
--
hi { group = "Comment", guifg = "#727272", } 
hi { group = "SpecialComment", guifg = "#808080", gui = "bold" } 
hi { group = "Constant", guifg = palette.heavy_green, gui = "bold" } 
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
hi { group = "Identifier", }
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

-- Diff
hi { group = "DiffAdd", guibg = "#024e00", gui = "bold"} 
hi { group = "DiffChange", guibg = "#5c4b00", gui = "bold"} 
hi { group = "DiffDelete", guibg = "#6b0009", gui = "bold"} 

--
-- GitSigns
--
hi { group = "GitSignsAdd",  guifg = palette.git_add_green, gui = "bold" }
hi { group = "GitSignsChange",  guifg = palette.light_yellow, gui = "bold" }
hi { group = "GitSignsDelete",  guifg = palette.git_del_red, gui = "bold" }

--
-- NeoTree
--
hi { group = "NeoTreeDirectoryIcon",  guifg = palette.light_orange, gui = "bold" }
hi { group = "NeoTreeFileNameOpened",  guifg = palette.heavy_orange, gui = "bold" }
hi { group = "NeoTreeRootName",  guifg = palette.heavy_orange, gui = "bold" }
hi { group = "NeoTreeNormal", guifg = palette.grey1, guibg = "#262626", }
hi { group = "NeoTreeNormalNC", guifg = palette.grey1, guibg = "#262626", }

--
-- Telescope
--
hi { group = "TelescopeNormal", guifg = palette.heavy_grey, }
hi { group = "TelescopePromptNormal", guifg = palette.white, }
hi { group = "TelescopeTitle", guifg = palette.light_grey, gui = "bold" }
hi { group = "TelescopeBorder", guifg = "#888888", gui = "bold" }
hi { group = "TelescopeSelection", guifg = palette.white, guibg = "#636363", gui = "bold" }
hi { group = "TelescopeSelectionCaret", guifg = palette.heavy_yellow, guibg = "#636363", gui = "bold" }
hi { group = "TelescopeMatching", guifg = palette.heavy_yellow, gui = "bold" }
hi { group = "TelescopePromptPrefix", guifg = palette.heavy_orange, gui = "bold" }

--
-- UndoTree
--
hi { group = "UndotreeNode", guifg = palette.heavy_orange }
hi { group = "UndotreeNodeCurrent", guifg = palette.light_green, gui = "bold" }
hi { group = "UndotreeTimeStamp", guifg = "#7e7e7e", gui = "bold" }
hi { group = "UndotreeBranch", guifg = "#999999", gui = "bold" }
hi { group = "UndotreeFirstNode", guifg = palette.heavy_green, gui = "bold" }
hi { group = "UndotreeCurrent", guifg = palette.light_blue, gui = "bold" }
hi { group = "UndotreeNext", guifg = palette.heavy_orange, gui = "bold" }
hi { group = "UndotreeHelp", guifg = palette.heavy_orange, gui = "bold" }
hi { group = "UndotreeHelpKey", guifg = palette.light_orange, gui = "bold" }
hi { group = "UndotreeHelpTitle", guifg = palette.light_red, gui = "bold" }
hi { group = "UndotreeSavedSmall", guifg = palette.light_purple, gui = "bold" }
hi { group = "UndotreeSavedBig", guifg = palette.light_purple, gui = "bold" }
hi { group = "UndotreeHead", guifg = palette.light_red, gui = "bold" }
hi { group = "UndotreeSeq", guifg = palette.grey3, gui = "bold" }

--
-- LSP configs
--
hi { group = "CmpDocumentation", guifg = palette.light_red }
hi { group = "CmpDocumentationBorder", guifg = palette.light_red }
hi { group = "CmpItemMenu", guifg = "#888888" }
hi { group = "CmpItemAbbr", guifg = palette.grey3 }
hi { group = "CmpItemAbbrMatch", guifg = palette.heavy_yellow, gui = "bold" }
hi { group = "CmpItemAbbrMatchFuzzy", guifg = palette.heavy_yellow, gui = "bold" }
hi { group = "CmpItemKindKeyword", guifg = palette.light_blue }
hi { group = "CmpItemKindFunction", guifg = palette.heavy_orange }
hi { group = "CmpItemKindConstant", guifg = palette.heavy_green }
hi { group = "CmpItemKindClass", guifg = palette.light_red }
hi { group = "CmpItemKindStruct", guifg = palette.light_red }
hi { group = "CmpItemKindModule", guifg = palette.light_yellow }
hi { group = "CmpItemKindReference", guifg = palette.light_purple }
hi { group = "CmpItemKindVariable", guifg = palette.heavy_grey }
hi { group = "CmpItemKindOperator", guifg = palette.light_orange }


--
--
--
-- Tree-Sitter Generic Syntax
--
--
--

-- Miscellaneous
hi { group = "@comment",  guifg = "#727272", gui = "italic"}
hi { group = "@comment.todo",  guifg = "#727272", gui = "italic"}
hi { group = "@comment.note",  guifg = palette.heavy_yellow, gui = "italic"}
hi { group = "@error",  guifg = palette.light_grey, }
hi { group = "@preproc",  guifg = palette.light_red, gui = "bold"}
hi { group = "@define",  guifg = palette.light_yellow, gui = "bold"}
hi { group = "@operator",  guifg = palette.light_orange, gui = "bold"}
-- Punctuation
hi { group = "@punctuation.delimiter",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@punctuation.bracket",  guifg = palette.grey1 }
hi { group = "@punctuation.special",  guifg = palette.light_orange, gui = "bold"}
-- Literal
hi { group = "@string",  guifg = palette.light_green, gui = "bold"}
hi { group = "@string.documentation",  guifg = palette.light_green, }
hi { group = "@string.regex",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "@string.escape",  guifg = palette.heavy_purple, gui = "bold"}
hi { group = "@string.special",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "@string.special.symbol",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "@character",  guifg = palette.light_green, gui = "bold"}
hi { group = "@character.special",  guifg = palette.light_red, gui = "bold"}
hi { group = "@boolean",  guifg = palette.light_purple, gui = "bold"}
hi { group = "@number",  guifg = palette.light_purple, gui = "bold"}
hi { group = "@float",  guifg = palette.light_purple, gui = "bold"}
-- Functions
hi { group = "@function",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "@function.builtin",  guifg = palette.grey1, gui = "bold"}
hi { group = "@function.call",  guifg = palette.grey1, gui = "bold"}
hi { group = "@function.macro",  guifg = palette.heavy_purple, gui = "bold"}
hi { group = "@function.method",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "@function.method.call",  guifg = palette.grey1, gui = "bold"}
hi { group = "@constructor",  guifg = palette.grey1, gui = "bold"}
hi { group = "@parameter",  guifg = palette.grey3, gui = "bold"}
-- Keywords
hi { group = "@keyword",  guifg = palette.light_red, gui = "bold"}
hi { group = "@keyword.coroutine",  guifg = palette.light_red, gui = "bold"}
hi { group = "@keyword.function",  guifg = palette.light_red, gui = "bold"}
hi { group = "@keyword.import",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@keyword.operator",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@keyword.repeat",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@keyword.return",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@keyword.exception",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@keyword.conditional",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@keyword.conditional.ternary",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@debug",  guifg = palette.heavy_grey, gui = "bold"}
hi { group = "@label",  guifg = palette.heavy_blue, gui = "bold"}
hi { group = "@include",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@exception",  guifg = palette.light_blue, gui = "bold"}
-- Types
hi { group = "@type",  guifg = palette.heavy_blue, gui = "bold"}
hi { group = "@type.builtin",  guifg = palette.heavy_blue, gui = "bold"}
hi { group = "@type.definition",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@type.qualifier",  guifg = palette.light_red, gui = "bold"}
hi { group = "@storageclass",  guifg = palette.light_yellow, gui = "bold"}
hi { group = "@attribute",  guifg = palette.light_yellow, gui = "bold" }
hi { group = "@field",  guifg = palette.grey2, }
hi { group = "@property",  guifg = palette.grey2, }
-- Identifiers
hi { group = "@variable",  guifg = palette.grey1, }
hi { group = "@variable.builtin",  guifg = palette.heavy_purple, gui = "bold" }
hi { group = "@constant",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "@constant.builtin",  guifg = palette.light_purple, gui = "bold"}
hi { group = "@constant.macro",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@namespace",  guifg = palette.light_yellow, gui = "bold"}
-- Text
hi { group = "@text",  guifg = palette.ehite, }
hi { group = "@text.strong",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@text.emphasis",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@text.underline",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@text.strike",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@text.title",  guifg = palette.light_red, gui = "bold"}
hi { group = "@text.literal",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@text.uri",  guifg = palette.light_purple, gui = "bold"}
hi { group = "@text.math",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@text.environment",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@text.environment.name",  guifg = palette.heavy_orange, gui = "bold"}
hi { group = "@text.reference",  guifg = palette.light_orange, gui = "bold"}
hi { group = "@text.todo",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "@text.note",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "@text.warning",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "@text.danger",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "@text.diff.add",  guifg = palette.heavy_green, gui = "bold"}
hi { group = "@text.diff.delete",  guifg = palette.heavy_green, gui = "bold"}
-- Tags
hi { group = "@tag",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@tag.attribute",  guifg = palette.light_yellow, gui = "bold"}
hi { group = "@tag.delimiter",  guifg = palette.heavy_orange, gui = "bold"}
-- Locals
hi { group = "@definition",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.constant",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.function",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.method",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.var",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.parameter",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.macro",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.type",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.field",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.enum",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.namespace",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.import",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@definition.associated",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@scope",  guifg = palette.light_blue, gui = "bold"}
hi { group = "@reference",  guifg = palette.light_blue, gui = "bold"}


-- Function to get the current Git branch
function get_git_branch()
    local branch = vim.fn.systemlist("git rev-parse --abbrev-ref HEAD 2>/dev/null")[1]
    if branch == 'HEAD' then
        return ''
    else
        return branch
    end
end

-- Function to check if the current directory is a Git repository
function is_git_repo()
    local git_dir = vim.fn.systemlist("git rev-parse --is-inside-work-tree 2>/dev/null")[1]
    return git_dir == 'true'
end

vim.cmd [[highlight GitBranchColor guifg=#D0CFCC guibg=#505050 gui='bold']]
vim.cmd [[highlight ModifiedColor guifg=#000000 guibg=#FDC42C gui='bold']]

-- Update the statusline
local modified_file_status = "%#ModifiedColor#%m%*"
local git_status = ""

if is_git_repo() then
    git_status = git_status .. "%#GitBranchColor#" .. "  %{v:lua.get_git_branch()} " .. "%*"
end

vim.o.statusline = git_status .. modified_file_status .. " %F%=%p%% L: %l, C: %c "
