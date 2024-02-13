return {
	{
		"folke/zen-mode.nvim",
		opts = {},
    config = function()
			vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>", {})
    end
	}
}
