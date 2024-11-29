return {
	"barrett-ruth/live-server.nvim",
	build = "pnpm add -g live-server",
	cmd = { "LiveServerStart", "LiveServerStop" },
	config = true,

	keys = {
		{ "<leader><leader>lo", "<cmd>LiveServerStart<CR>", desc = "Liver Server Open" },
		{ "<leader><leader>lc", "<cmd>LiveServerStop<CR>", desc = "Liver Server Close" },
	},
}
