return {
  {
      "vhyrro/luarocks.nvim",
      priority = 1000,
      config = true,
  },
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    version = "*",
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
          ["core.integrations.nvim-cmp"] = {},
        },
      }

      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
      vim.keymap.set("n","<leader>ni","<cmd>Neorg index<CR>",{ desc = "Neorg index"})
      vim.keymap.set("n","<leader>nj","<cmd>Neorg journal<CR>",{ desc = "Neorg journal"})

    end,
  }
}
