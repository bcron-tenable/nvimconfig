return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
    config = function(_, _)
      -- Keymaps for Markdown Preview
      local map = vim.keymap.set
      local opts = { silent = true, desc = 'Markdown Preview' }

      map('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<cr>', vim.tbl_extend('force', opts, { desc = 'Toggle Markdown Preview' }))
      map('n', '<leader>ms', '<cmd>MarkdownPreview<cr>', vim.tbl_extend('force', opts, { desc = 'Start Markdown Preview' }))
      map('n', '<leader>mq', '<cmd>MarkdownPreviewStop<cr>', vim.tbl_extend('force', opts, { desc = 'Quit Markdown Preview' }))
    end,
  },
}
