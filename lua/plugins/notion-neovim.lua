return {
  dir = "/home/guilherme/dev_env/notion_neovim/nvim-plugin",
  config = function()
    -- Ensure the plugin's Vimscript file is sourced
    vim.cmd("source /home/guilherme/dev_env/notion_neovim/nvim-plugin/plugin/notion.vim")
    -- Require the Lua module to load it
    require("notion")
  end,
}
