--

local setup, mason = pcall(require, "mason")
if not setup then
    return
end

local masonlspconfigsetup, masonlspconfig = pcall(require, "mason-lspconfig")
if not masonlspconfigsetup then
    return
end

local masonnulllssetup, masonnullls = pcall(require, "mason-null-ls")
if not masonnulllssetup then
    return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

masonlspconfig.setup({
    ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "jsonls",
        "bashls",
        "vimls",
        "pyright",
        "rust_analyzer",
        "gopls",
        "golangci_lint_ls",
        "sumneko_lua",
    },
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true, -- not the same as ensure_installed
})

masonnullls.setup({
    sources = {
        "prettier",
        "eslint",
        "shellcheck",
        "luacheck",
        "golangci_lint",
        "rustfmt",
        "rust_analyzer",
        "gofumpt",
        "gopls",
        "goimports",
        "golangci_lint",
    },
    -- auto-install configured servers (with lspconfig)
    automatic_installation = true,
})
