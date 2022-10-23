--

local setup, telescope = pcall(require, "telescope")
if not setup then
	return
end

local telescopefzfnativesetup, fzfnative = pcall(require, "telescope-fzf-native.nvim")
if not telescopefzfnativesetup then
	return
end

local plenary_setup = pcall(require, "plenary")
if not plenary_setup then
	return
end

telescope.setup()
telescope.load_extension("fzf")

fzfnative.setup({
	run = "make",
})
