return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")
    -- treesitter
    -- you need to specify treesitter compiler for c++*
    require("nvim-treesitter.install").compilers = { "gcc-12" }

      configs.setup({
          ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "php" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }
