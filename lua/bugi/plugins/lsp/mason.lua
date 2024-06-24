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
    }})

  end
}
