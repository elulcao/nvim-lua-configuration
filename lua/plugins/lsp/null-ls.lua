--

local setup, nullls = pcall(require, "null-ls")
if not setup then
	return
end

local formatting = nullls.builtins.formatting
local diagnostics = nullls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nullls.setup({
	sources = {
		formatting.prettier,
		formatting.stylua,
		formatting.eslint_d,
		formatting.shfmt,
		formatting.lua_format,
		formatting.gofumpt,
		formatting.gofmt,
		formatting.rustfmt,
		formatting.goimports,
		diagnostics.shellcheck,
		diagnostics.luacheck,
		diagnostics.golangci_lint,
	},
	-- configure on save
	on_attach = function(current_client, bufnr)
		if current_client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						filter = function(client)
							-- only format on save if the client supports formatting
							return client.name == "null-ls"
						end,
						bufnr = bufnr,
					})
				end,
			})
		end
	end,
})
