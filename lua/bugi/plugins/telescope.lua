return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('telescope').setup{
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          horizontal = {
            preview_width = .6,
            prompt_position="bottom",
            height = vim.o.lines,
            width = vim.o.columns,
          },
        }
      }
    }
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "find files" })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "live grep" })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = "list buffers" })
    -- Disable folding in Telescope's result window.
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "show help" })
    vim.keymap.set('n', '<leader>fj', builtin.jumplist, { desc = "Show jumplist" })
    vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Show keymaps" })
    vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = "Show oldfiles" })
    vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = "Show registers" })
    
    vim.api.nvim_create_autocmd("FileType", { pattern = "TelescopeResults", command = [[setlocal nofoldenable]] })
  end
}


