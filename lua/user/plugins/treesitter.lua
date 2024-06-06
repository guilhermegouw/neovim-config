local M = {}

M.setup = function()
  require('nvim-treesitter.configs').setup {
    ensure_installed = {
      "bash", "c", "cpp", "css", "go", "html",
      "javascript", "json", "lua", "python",
      "typescript", "vim", "yaml",
    },
    highlight = { enable = true },
  }
end

return M

