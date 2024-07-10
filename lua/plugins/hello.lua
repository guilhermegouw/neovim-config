return {
  dir = "~/dev_env/neovim-plugin-hello",
  config = function()
    vim.cmd("source ~/dev_env/neovim-plugin-hello/plugin/hello.vim")
    vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>Hello<cr>", { noremap = true, silent = true })
  end,
}
