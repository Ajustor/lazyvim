-- dofile(vim.g.base46_cache .. "mason")

return {
	PATH = "prepend",

	ui = {
		icons = {
			package_pending = " ",
			package_installed = " ",
			package_uninstalled = " ",
		},
	},

	max_concurrent_installers = 10,
}
