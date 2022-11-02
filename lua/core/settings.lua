--

local HOME = os.getenv("HOME")

local g = vim.g -- global variables
local o = vim.o -- general options
local b = vim.bo -- buffer-scoped options
local w = vim.wo -- window-scoped options
local opt = vim.opt -- global options

-- vim.o

o.t_Co = "256"

-- vim.opt

opt.smarttab = true -- Insert indents automatically
opt.autoread = true -- reload file if changed outside of vim
opt.mouse = "a" -- enable mouse support
opt.mousemodel = "popup"
opt.guioptions = "egmrti"
opt.gfn = "FiraCode Nerd Font:h14" -- font
opt.wildmode = "list:longest,list:full"
opt.wildignore = "wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__,.DS_Store"
opt.encoding = "utf-8" -- the encoding displayed
opt.fileencoding = "utf-8" -- the encoding written to file
opt.fileencodings = "ucs-bom,utf-8,latin1"
opt.fileformat = "unix"
opt.fileformats = "unix,dos,mac" -- fileformats
opt.backup = false -- don't create backup files
opt.writebackup = false -- don't write backup files
opt.swapfile = false -- no swap file
opt.modifiable = true -- allow to modify read-only files
opt.hidden = true -- allow hidden buffers
opt.clipboard:append("unnamedplus") -- copy/paste to system clipboard
opt.iskeyword:append({ "-", "," }) -- treat dash separated words as a word text object"
opt.colorcolumn = "79,99" -- show vertical line at 79 and 99 columns
opt.autoindent = true -- autoindent
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 2 -- number of spaces to use for autoindent
opt.tabstop = 2 -- number of spaces tabs count for
opt.softtabstop = 0 -- use spaces instead of tabs
opt.relativenumber = true -- relative line numbers
opt.number = true -- show line numbers
opt.wrap = false -- disable line wrapping
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- smart case when searching
opt.cursorline = true -- highlight the current cursor line
opt.termguicolors = true -- enable 24-bit RGB colors
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- vim.g

g.mapleader = "," -- map leader key to comma
g.session_directory = HOME .. "/.config/nvim/sessions" -- session directory
g.session_autoload = "no" -- don't load session automatically
g.session_autosave = "yes" -- save session automatically
g.session_autosave_on_exit = "yes" -- save session on exit
g.session_autosave_on_change = "yes" -- save session on change
g.session_command_aliases = 1 -- enable command aliases
g.vimwiki_list = {
	{
		path = HOME .. "/Documents/vimwiki", -- path to vimwiki
		syntax = "markdown", -- syntax highlighting
		ext = ".wiki", -- extension
		links_space_char = "_",
	},
}

-- vim cmd

vim.cmd([[
    cnoreabbrev W! w!
    cnoreabbrev W1 w!
    cnoreabbrev w1 w!
    cnoreabbrev Q! q!
    cnoreabbrev Q1 q!
    cnoreabbrev q1 q!
    cnoreabbrev Qa! qa!
    cnoreabbrev Qall! qall!
    cnoreabbrev Wa wa
    cnoreabbrev Wq wq
    cnoreabbrev wQ wq
    cnoreabbrev WQ wq
    cnoreabbrev wq1 wq!
    cnoreabbrev Wq1 wq!
    cnoreabbrev wQ1 wq!
    cnoreabbrev WQ1 wq!
    cnoreabbrev W w
    cnoreabbrev Q q
    cnoreabbrev Qa qa
    cnoreabbrev Qall qall
]])
