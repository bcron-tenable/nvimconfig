return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 15, -- height if horizontal split
      open_mapping = [[<C-\>]], -- default toggle key
      direction = 'horizontal', -- you can also set "float" or "vertical"
      shade_terminals = true,
    }
  end,
}
