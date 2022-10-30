--

local HOME = os.getenv("HOME")

local g = vim.g
local o = vim.o
local b = vim.bo
local w = vim.wo

-- vim.o

o.runtimepath = vim.fn.stdpath("data") .. "/site/pack/*/start/*," .. o.runtimepath
o.number = true
o.relativenumber = true
o.smarttab = true
o.autoread = true
o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"
o.mouse = "a"
o.mousemodel = "popup"
o.t_Co = "256"
o.guioptions = "egmrti"
o.gfn = "FiraCode Nerd Font:h14"
o.wildmode = "list:longest,list:full"
o.wildignore = "wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__,.DS_Store"
o.encoding = "utf-8"
o.fileencoding = "utf-8"
o.fileencodings = "ucs-bom,utf-8,latin1"
o.fileformat = "unix"
o.fileformats = "unix,dos,mac"
o.backup = false
o.writebackup = false
o.swapfile = false
o.backspace = "indent,eol,start"
o.tabstop = 2
o.softtabstop = 0
o.shiftwidth = 2
o.expandtab = true
o.ignorecase = true
o.smartcase = true
o.colorcolumn = "99"
o.cursorline = true
-- o.modifiable = true
o.splitbelow = true
o.splitright = true
o.clipboard = o.clipboard .. "unnamedplus"
--o.iskeyword = o.iskeyword .. "-"
o.hidden = true

-- vim.g

g.mapleader = ","
g.session_directory = HOME .. "/.config/nvim/sessions"
g.session_autoload = "no"
g.session_autosave = "yes"
g.session_autosave_on_exit = "yes"
g.session_autosave_on_change = "yes"
g.session_command_aliases = 1
g.vimwiki_list = {
	{
		path = HOME .. "/Documents/vimwiki",
		syntax = "markdown",
		ext = ".wiki",
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
