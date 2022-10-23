--

local setup, nvimautopairs = pcall(require, "nvim-autopairs")
if not setup then
	return
end

nvimautopairs.setup({
	check_ts = true, -- check treesitter
	ts_config = {
		lua = { "string" }, -- don't add a pair on that treesitter node
		javascript = { "template_string" }, -- don't add pairs in javascript
		java = false, -- don't check treesitter on java
	},
})

-- import nvim-autopairs completion functionality safely
local autopairssetup, cmpautopairs = pcall(require, "nvim-autopairs.completion.cmp")
if not autopairssetup then
	return
end

-- import cvim-cmp plugin safely
local cmpsetup, cmp = pcall(require, "cmp")
if not cmpsetup then
	return
end

-- make autipairs and completion work together
cmp.event:on("confirm_done", cmpautopairs.on_confirm_done())
