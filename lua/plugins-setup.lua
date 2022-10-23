--

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end

	return false
end

-- true if packer was installed
local packer_bootstrap = ensure_packer()

-- reload neovim whenever this file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- don't throw any error on first use by packer
local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- colorscheme
	use("bluz71/vim-nightfly-guicolors") -- colorscheme
	use("dracula/vim", { as = "dracula" }) -- colorscheme

	use("nvim-tree/nvim-tree.lua") -- file explorer
	use("nvim-telescope/telescope.nvim") -- fuzzy finder
	use("nvim-telescope/telescope-fzf-native.nvim") -- fzf native for telescope
	use("nvim-tree/nvim-web-devicons") -- icons for nvim-tree
	use("nvim-lua/plenary.nvim") -- plenary for telescope
	use("nvim-treesitter/nvim-treesitter") -- treesitter

	use("tpope/vim-fugitive") -- git wrapper
	use("tpope/vim-rhubarb") -- git wrapper
	use("tpope/vim-commentary") -- comment text objects
	use("tpope/vim-surround") -- surround text objects

	use("vim-airline/vim-airline-themes") -- airline themes
	use("vim-airline/vim-airline") -- airline status bar
	use("vim-scripts/ReplaceWithRegister") -- replace with register

	use("christoomey/vim-tmux-navigator")
	use("szw/vim-maximizer") -- maximize current window
	use("fatih/vim-go") -- go support
	use("airblade/vim-gitgutter") -- git gutter
	use("majutsushi/tagbar") -- tagbar
	use("dense-analysis/ale") -- linting
	use("pedrohdz/vim-yaml-folds") -- yaml folds
	use("ryanoasis/vim-devicons") -- icons
	use("github/copilot.vim") -- copilot
	use("folke/which-key.nvim") -- which key
	use("davidhalter/jedi-vim") -- jedi
	use("frazrepo/vim-rainbow") -- rainbow brackets
	use("akinsho/toggleterm.nvim") -- toggle terminal
	use("vimwiki/vimwiki") -- vimwiki

	--use('Raimondi/delimitMate') -- auto close brackets
	--use('Yggdroot/indentLine') -- indent lines
	--use('wadackel/vim-dogrun') -- run code
	--use('google/vim-maktaba') -- maktaba
	--use('google/vim-codefmt') -- codefmt
	--use('google/vim-glaive') -- glaive
	--use('drewtempelmeyer/palenight.vim') -- palenight
	--use('sheerun/vim-polyglot') -- polyglot

	-- lsp servers, linters, formatters
	use("williamboman/mason.nvim") -- lsp server for Mason
	use("williamboman/mason-lspconfig.nvim") -- lspconfig for Mason
	use("neovim/nvim-lspconfig") -- lsp server config
	use("hrsh7th/cmp-nvim-lsp") -- lsp completion
	use("onsails/lspkind-nvim") -- lsp icons
	use("glepnir/lspsaga.nvim", { branch = "main" }) -- lsp saga
	use("onsails/lspkind.nvim") -- lsp icons

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion
	use("hrsh7th/cmp-buffer") -- completion
	use("hrsh7th/cmp-path") -- completion

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippets
	use("saadparwaiz1/cmp_luasnip") -- snippets
	use("rafamadriz/friendly-snippets") -- snippets

	-- formatting and linting
	use("jose-elias-alvarez/null-ls.nvim") -- null-ls
	use("jayp0521/mason-null-ls.nvim") -- null-ls for Mason

	-- auto closing
	use("windwp/nvim-autopairs") -- autopairs
	use("windwp/nvim-ts-autotag") -- autotag

	-- git signs
	use("lewis6991/gitsigns.nvim") -- gitsigns

	if packer_bootstrap then
		require("packer")
	end
end)
