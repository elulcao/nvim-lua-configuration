--

local setup, copilot = pcall(require, "copilot")
if not setup then
	return
end

copilot.setup({
	cmp = {
		enabled = true,
		method = "getCompletionsCycling",
	},
	panel = {
		enabled = true,
	},
	server_opts_overrides = {
		-- trace = "verbose",
		settings = {
			advanced = {
				-- listCount = 10, -- # completions for panel
				inlineSuggestCount = 3, -- # completions for getCompletions
			},
		},
	},
	-- filetypes = {
	-- ["*"] = { "v:true" },
	-- yaml = { "v:true" },
	-- yml = { "v:true" },
	-- },
})
