return {
  "williamboman/mason-lspconfig.nvim",
 -- add opts for lazy to mark this plugin for loading
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()

    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")


    mason.setup()

    mason_lspconfig.setup({
      ensure_installed = {
        "lua_ls",
        "emmet_ls",
        "intelephense",
        "pico8_ls"
    }})

    vim.api.nvim_create_autocmd({'BufNew', 'BufEnter'}, {
      -- When run for all vim-lua files it throws tons of warning for global vim
      pattern = { '*.p8' },
      callback = function(args)
        vim.lsp.start({
            name = 'pico8-ls',
            cmd = { 'pico8-ls', '--stdio' },
            root_dir = vim.fs.dirname(vim.api.nvim_buf_get_name(args.buf)),
            -- Setup your keybinds in the on_attach function
        })
      end
    })
  end
}
