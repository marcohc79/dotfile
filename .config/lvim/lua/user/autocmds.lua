vim.cmd([[
  autocmd FileType org setlocal omnifunc=v:lua.vim.lsp.omnifunc
]])
