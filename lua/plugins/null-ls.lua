return {
  "jose-elias-alvarez/null-ls.nvim",
  requires = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")
    local formatting = null_ls.builtins.formatting
    local diagnostics = null_ls.builtins.diagnostics

    null_ls.setup({
      debug = true, -- Enable debug logging
      sources = {
        formatting.black.with({
          command = "black",
          args = { "--fast", "-" },
        }),
        formatting.isort.with({
          command = "isort",
          args = { "--stdout", "--profile", "black", "-" },
        }),
        diagnostics.flake8.with({
          command = "flake8",
          args = { "--stdin-display-name", "$FILENAME", "-" },
        }),
        formatting.goimports.with({
          command = "goimports",
        }),
        diagnostics.golangci_lint.with({
          command = "golangci-lint",
          args = { "run", "--out-format", "json", "--issues-exit-code=1", "--timeout=3m" },
          from_stderr = false,
          format = "json",
          to_stdin = false,
        }),
      },
      on_attach = function(client, bufnr)
        if client.server_capabilities.documentFormattingProvider then
          vim.cmd([[
            augroup LspFormatting
              autocmd! * <buffer>
              autocmd BufWritePre <buffer> lua vim.lsp.buf.format({ bufnr = bufnr })
            augroup END
          ]])
        end
      end,
    })
  end,
}
