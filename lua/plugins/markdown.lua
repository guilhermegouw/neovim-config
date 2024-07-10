return {
  {
    "davidgranstrom/nvim-markdown-preview",
    ft = "markdown",
    config = function()
      vim.g.nvim_markdown_preview_github = 1
      -- Set keybindings inside the config function
      vim.api.nvim_set_keymap("n", "<leader>mdp", ":MarkdownPreview<CR>", { noremap = true, silent = true })
      vim.api.nvim_set_keymap("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { noremap = true, silent = true })
    end,
  },
}
