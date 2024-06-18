vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

return {
  'stevearc/oil.nvim',
  opts = {
    skip_confirm_for_simple_edits = true,
    columns = {
      "icon",
      "size",
      "mtime"
    }
  },
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
