return {
  'numToStr/Comment.nvim',
  config = function()
    require('Comment').setup {
      pre_hook = function()
        return vim.bo.commentstring
      end,
    }
  end,
  lazy = false,
  dependencies = {
    -- To be able to comment JSX
    'JoosepAlviste/nvim-ts-context-commentstring',
    'nvim-treesitter/nvim-treesitter',
  },
}
