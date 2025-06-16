-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

local function open_neo_tree(data)
  -- buffer is a [No Name]
  local no_name = data.file == '' and vim.bo[data.buf].buftype == ''

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- open the tree
  vim.cmd 'Neotree toggle'
end

vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_neo_tree })

return {
  'nvim-neo-tree/neo-tree.nvim',
  lazy = false,
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
  },
  opts = {
    open_files_do_not_replace_types = { 'copilot-chat' },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['/'] = 'noop',
          ['z'] = 'noop',
          ['#'] = 'fuzzy_finder',
          ['Z'] = 'expand_all_nodes',
          ['C'] = 'close_all_nodes',
        },
      },
    },
    event_handlers = {
      {
        event = 'neo_tree_buffer_enter',
        handler = function(arg)
          vim.cmd [[
          setlocal relativenumber
        ]]
        end,
      },
    },
  },
}
