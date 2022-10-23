--

-- initial setup
require("plugins-setup")

-- core configuration
require("core.settings")
require("core.autocmd")
require("core.keybinds")
require("core.colorscheme")

-- plugin configuration
require("plugins.nvim-tree")
require("plugins.tagbar")
require("plugins.telescope")
require("plugins.copilot")
require("plugins.vim-airline")
require("plugins.vim-fugitive")
require("plugins.vim-go")
require("plugins.nvim-cmp")
require("plugins.jedi-vim")
require("plugins.treesitter")
require("plugins.autopairs")
require("plugins.gitsigns")
require("plugins.toggleterm")

-- lsp configuration
require("plugins.lsp.mason")
require("plugins.lsp.lspsaga")
require("plugins.lsp.lspconfig")
require("plugins.lsp.null-ls")
