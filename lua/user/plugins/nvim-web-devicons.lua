local M = {}

M.setup = function()
  require'nvim-web-devicons'.setup {
  -- globally enable default icons (default to false)
  -- will get overriden by `get_icons` option
    default = true;
  }
end
return M
