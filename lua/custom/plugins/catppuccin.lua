return {
  'catppuccin/nvim',
  name = 'catppuccin',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
  opts = {
    integrations = {
      cmp = true,
      fidget = true,
      gitsigns = true,
      mason = true,
      nvimtree = true,
      telescope = true,
      treesitter = true,
      treesitter_context = true,
      indent_blankline = {
        enabled = true,
      },
      native_lsp = {
        enabled = true,
      },
    },
  },
}
