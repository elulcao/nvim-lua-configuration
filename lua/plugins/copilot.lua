--

local setup, copilot = pcall(require, "copilot")
if not setup then
	return
end

copilot.setup({
	-- copilot_enable = 1,
	-- copilot_filetypes = {
	-- ["*"] = { "v:true" },
	-- },
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
				-- listCount = 10, -- #completions for panel
				inlineSuggestCount = 3, -- #completions for getCompletions
			},
		},
	},
	filetypes = {
		["*"] = { "v:true" },
	},
})
