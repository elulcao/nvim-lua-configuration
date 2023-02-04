--

local g = vim.g
local o = vim.opt

local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

local nvimwebdevicons_setup = pcall(require, "nvim-web-devicons")
if not nvimwebdevicons_setup then
	return
end

g.loaded = 1
g.loaded_netrw = 1 -- disable netrw at the very start of your init.lua (strongly advised)
g.loaded_netrwPlugin = 1
o.termguicolors = true -- set termguicolors to enable highlight groups

nvimtree.setup({
	sort_by = "case_sensitive",
	-- disables netrw completely
	disable_netrw = true,
	-- hijack netrw window on startup
	hijack_netrw = true,
	-- will not open on setup if the filetype is in this list
	ignore_ft_on_setup = {},
	-- closes neovim automatically when the tree is the last **WINDOW** in the view
	open_on_tab = false,
	-- hijack the cursor in the tree to put it at the start of the filename
	hijack_cursor = true,
	-- updates the root directory of the tree on `DirChanged` (when your run `:cd` usually)
	update_cwd = true,
	-- show lsp diagnostics in the signcolumn
	update_focused_file = {
		-- enables the feature
		enable = true,
		-- update the root directory of the tree to the one of the folder containing the file if the file is not under the current root directory
		-- only relevant when `update_focused_file.enable` is true
		update_cwd = true,
		-- list of buffer names / filetypes that will not update the cwd if the file isn't found under the current root directory
		-- only relevant when `update_focused_file.update_cwd` is true and `update_focused_file.enable` is true
		ignore_list = {},
	},
	-- configuration options for the system open command (`s` in the tree by default)
	system_open = {
		-- the command to run this, leaving nil should work in most cases
		cmd = nil,
		-- the command arguments as a list
		args = {},
	},
	view = {
		adaptive_size = true,
		mappings = {
			list = {
				{
					key = "u",
					action = "dir_up",
				},
			},
		},
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false,
		custom = {
			["node_modules"] = false,
			["__pycache__"] = false,
			["git"] = false,
		},
		exclude = {
			".gitignore",
		},
	},
})
