--

local setup, vimfugitive = pcall(require, "vim-fugitive")
if not setup then
	return
end

local vimrhubarb_setup = pcall(require, "vim-rhubarb")
if not vimrhubarb_setup then
	return
end

vimfugitive.setup()
