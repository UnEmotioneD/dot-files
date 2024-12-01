return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			api_key_cmd = "echo $OPENAI_API_KEY",
			openai_params = {
				model = "gpt-4o",
				frequency_penalty = 0,
				presence_penalty = 0,
				max_tokens = 4095,
				temperature = 0.2,
				top_p = 0.1,
				n = 1,
			},
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},
	keys = {
		{ "<leader>go", "<cmd>ChatGPT<CR>", desc = "Open normal ChatGPT" },
		{ "<leader>ge", "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
		{ "<leader>gg", "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Correct grammer" },
		{ "<leader>gf", "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix bugs" },
	},
}
