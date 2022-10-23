--

local setup, copilot = pcall(require, "copilot")
if not setup then
	return
end

copilot.setup({
	copilot_enable = 1,
	copilot_filetypes = {
		["*"] = { "v:true" },
	},
})
