vim.g.copilot_no_tab_map = true
vim.g.copilot_node_command = "~/.nvm/versions/node/v18.20.3/bin/node"
vim.g.copilot_filetypes = {
  gitcommit = true
}

vim.api.nvim_set_keymap('i', '<c-j>', 'copilot#Accept("\\<CR>")', { silent = true, script = true, expr = true })

-- return { }

return {
  "github/copilot.vim",
}
