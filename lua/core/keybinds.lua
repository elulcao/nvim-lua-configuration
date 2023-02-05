--

vim.cmd("noremap <C-b> :noh<CR>:call clearmatches()<CR>") -- clear matches Ctrl+b

local function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

local function nmap(shortcut, command)
	map("n", shortcut, command)
end

local function vmap(shortcut, command)
	map("v", shortcut, command)
end

local function imap(shortcut, command)
	map("i", shortcut, command)
end

local function cmap(shortcut, command)
	map("c", shortcut, command)
end

local function tmap(shortcut, command)
	map("t", shortcut, command)
end

-- nnoremap
nmap("n", "nzzzv")
nmap("N", "Nzzzv")

nmap("<F4>", "<cmd>NvimTreeToggle<CR>")
nmap("<F5>", "<cmd>WhichKey ,<CR>")
nmap("<F6>", "<cmd>WhichKey<CR>")
nmap("<F7>", "<cmd>TagbarToggle<CR>")
nmap("<F8>", "<cmd>set nonumber! norelativenumber!<CR>")
nmap("<F9>", "<cmd>set invpaste paste?<CR>")

-- split
nmap("<leader>h", "<cmd>split<CR>")
nmap("<leader>v", "<cmd>vsplit<CR>")

-- git
-- nmap("<leader>gs", "<cmd>Git<CR>")
-- nmap("<leader>gc", "<cmd>Git commit --verbose<CR>")
-- nmap("<leader>gp", "<cmd>Git push<CR>")
-- nmap("<leader>gl", "<cmd>Git pull<CR>")
-- nmap("<leader>gd", "<cmd>Git diff<CR>")
-- nmap("<leader>gb", "<cmd>Git blame<CR>")
-- nmap("<leader>gf", "<cmd>Git fetch<CR>")
-- nmap("<leader>go", "<cmd>Git checkout<CR>")
-- nmap("<leader>gj", "<cmd>Git log<CR>")
-- nmap("<leader>gm", "<cmd>Git merge<CR>")
-- nmap("<leader>gr", "<cmd>Git rebase<CR>")
-- nmap("<leader>gt", "<cmd>Git tag<CR>")
-- nmap("<leader>gS", "<cmd>Git stash<CR>")
-- nmap("<leader>gP", "<cmd>Git stash pop<CR>")
-- nmap("<leader>gD", "<cmd>Git stash drop<CR>")
-- nmap("<leader>gL", "<cmd>Git stash list<CR>")
-- nmap("<leader>gC", "<cmd>Git commit --verbose --amend<CR>")
-- nmap("<leader>gR", "<cmd>Git reset<CR>")
-- nmap("<leader>gA", "<cmd>Git add --all<CR>")
-- nmap("<leader>gU", "<cmd>Git reset --hard<CR>")
-- nmap("<leader>gB", "<cmd>Git branch<CR>")

-- GitHub
nmap("<leader>o", "<cmd>GBrowse<CR>")

-- vim
nmap("<leader>nvs", "<cmd>source ~/.config/nvim/init.lua<CR>")
nmap("<leader>nvr", "<cmd>source ~/.config/nvim/init.lua<CR>:e<CR>")

-- tabs
nmap("<leader>tn", "<cmd>tabnew<CR>")
nmap("<leader>tc", "<cmd>tabclose<CR>")
nmap("<leader>to", "<cmd>tabonly<CR>")
nmap("<leader>tm", "<cmd>tabmove<CR>")
nmap("<leader>ts", "<cmd>tabsnext<CR>")
nmap("<leader>tp", "<cmd>tabprevious<CR>")

-- working directory
nmap("<leader>wd", "<cmd>lcd %:p:h<CR>:pwd<CR>")

-- history
nmap("<leader>y", "<cmd>history<CR>", { noremap = false })

-- telescope
nmap("<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "[S]earch [F]iles" })
nmap("<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "[S]earch by [G]rep" })
nmap("<leader>fw", "<cmd>Telescope grep_string<CR>", { desc = "[S]earch current [W]ord" })
nmap("<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "[ ] Find existing buffers" })
nmap("<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "[S]earch [H]elp" })
nmap("<leader>fd", "<cmd>Telescope diagnostics<CR>", { desc = "[S]earch [D]iagnostics" })
nmap("<leader>?", "<cmd>Telescope oldfiles<CR>", { desc = "[?] Find recently opened files" })

-- vim-maximizer
nmap("<leader>z", "<cmd>MaximizerToggle!<CR>")
