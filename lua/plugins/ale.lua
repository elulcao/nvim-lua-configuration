--

local setup, ale = pcall(require, "ale")
if not setup then
	return
end

ale.setup({
	ale_linters = {
		["*"] = { "ale_linters" },
		["python"] = { "flake8" },
		["sh"] = { "shellcheck" },
		["zsh"] = { "shellcheck" },
		["vim"] = { "vint" },
		["lua"] = { "luacheck" },
		["go"] = { "golint", "go vet" },
		["dockerfile"] = { "dockerfile_lint" },
	},
})
