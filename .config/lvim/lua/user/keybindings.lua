vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
--vim.api.nvim_set_keymap('n', '<C-x>', ':q!<CR>', { noremap = true, silent = true })
lvim.keys.normal_mode["<leader>rn"] = ":lua ToggleRelativeNumber()<CR>"
