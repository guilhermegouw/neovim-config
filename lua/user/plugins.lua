return {
    -- Lazy.nvim can manage itself
    "folke/lazy.nvim", -- Which-key for keybindings
    "folke/which-key.nvim", -- Treesitter for better syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        config = function() require("user.plugins.treesitter").setup() end
    }, {
        'nvim-tree/nvim-web-devicons',
        config = function() require('nvim-web-devicons').setup() end
    }, -- ALE Minimal Python and Lua
    {
        'dense-analysis/ale',
        config = function()
            -- Enable ALE for Python and Lua
            vim.g.ale_linters = {python = {'flake8'}, lua = {'luacheck'}}

            -- Enable ALE fixers for Python and Lua
            vim.g.ale_fixers = {
                python = {'black', 'isort'},
                lua = {'lua-format'}
            }
            vim.g.ale_python_black_use_virtualenv = 1
            vim.g.ale_python_isort_use_virtualenv = 1

            -- Run fixers on save
            vim.g.ale_fix_on_save = 1

            -- Enable ALE completion
            vim.g.ale_completion_enabled = 1

            -- Key mappings for code navigation
            vim.api.nvim_set_keymap('n', 'gd', ':ALEGoToDefinition<CR>',
                                    {noremap = true, silent = true})
            vim.api.nvim_set_keymap('n', 'gr', ':ALEFindReferences<CR>',
                                    {noremap = true, silent = true})
            vim.api.nvim_set_keymap('n', 'K', ':ALEHover<CR>',
                                    {noremap = true, silent = true})
        end
    }, -- LSP Config for Python and Lua
    {
        'neovim/nvim-lspconfig',
        config = function()
            -- Python LSP setup
            require('lspconfig').pylsp.setup {
                on_attach = function(_, bufnr)
                    local function buf_set_keymap(...)
                        vim.api.nvim_buf_set_keymap(bufnr, ...)
                    end

                    local opts = {noremap = true, silent = true}

                    -- Mappings.
                    buf_set_keymap('n', 'gd',
                                   '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
                    buf_set_keymap('n', 'gr',
                                   '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
                    buf_set_keymap('n', 'gi',
                                   '<Cmd>lua vim.lsp.buf.implementation()<CR>',
                                   opts)
                    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>',
                                   opts)
                end
            }

            -- Lua LSP setup
            require('lspconfig').lua_ls.setup {
                cmd = {
                    "/home/guilherme/lua-language-server/bin/lua-language-server"
                }, -- Update this path
                on_attach = function(_, bufnr)
                    local function buf_set_keymap(...)
                        vim.api.nvim_buf_set_keymap(bufnr, ...)
                    end
                    local function buf_set_option(...)
                        vim.api.nvim_buf_set_option(bufnr, ...)
                    end

                    -- Enable completion triggered by <c-x><c-o>
                    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

                    -- Mappings.
                    local opts = {noremap = true, silent = true}

                    -- See `:help vim.lsp.*` for documentation on any of the below functions
                    buf_set_keymap('n', 'gd',
                                   '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
                    buf_set_keymap('n', 'gr',
                                   '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
                    buf_set_keymap('n', 'gi',
                                   '<Cmd>lua vim.lsp.buf.implementation()<CR>',
                                   opts)
                    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>',
                                   opts)
                end,
                settings = {
                    Lua = {
                        runtime = {
                            -- Tell the language server which version of Lua you're using (LuaJIT in the case of Neovim)
                            version = 'LuaJIT'
                        },
                        diagnostics = {
                            -- Get the language server to recognize the `vim` global
                            globals = {'vim'}
                        },
                        workspace = {
                            -- Make the server aware of Neovim runtime files
                            library = vim.api.nvim_get_runtime_file("", true)
                        },
                        telemetry = {enable = false}
                    }
                }
            }
        end
    }, -- File explorer
    {
        "kyazdani42/nvim-tree.lua",
        requires = {"nvim-tree/nvim-web-devicons"},
        config = function() require("user.plugins.nvimtree").setup() end
    }, -- Fuzzy finder
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {{'nvim-lua/plenary.nvim'}},
        config = function() require("user.plugins.telescope").setup() end
    }, -- Codeium
    {'Exafunction/codeium.vim', event = 'BufEnter'}, -- Color Scheme
    {
        "navarasu/onedark.nvim",
        lazy = false, -- load the colorscheme immediately
        priority = 1000, -- ensure it loads first
        config = function()
            require('onedark').setup {
                style = 'dark' -- Set the theme style (darker, deep, warm, warmer)
            }
            require('onedark').load()
        end
    }
    -- Add more plugins as needed
}

