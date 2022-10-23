--

local status, _ = pcall(vim.cmd, "colorscheme dracula") -- dracula, nightfly
if not status then
	print("colorscheme not found!")
	return
end
