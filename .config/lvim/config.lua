-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Theme
lvim.colorscheme = "catppuccin-mocha"

-- Keymappings
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-x>', ':q!<CR>', { noremap = true, silent = true })

-- Dvorak
vim.api.nvim_command([[
  set langmap='q,\\,w,.e,pr,yt,fy,gu,ci,ro,lp,/[,=],aa,os,ed,uf,ig,dh,hj,tk,nl,s\\;,-',\\;z,qx,jc,kv,xb,bn,mm,w\\,,v.,z/,[-,]=,\"Q,<W,>E,PR,YT,FY,GU,CI,RO,LP,?{,+},AA,OS,ED,UF,IG,DH,HJ,TK,NL,S:,_\",:Z,QX,JC,KV,XB,BN,MM,W<,V>,Z?
]])

--  Additional Plugins
lvim.plugins = {
  -- colorscheme
  {"catppuccin/nvim", name = "catppuccin"},
}

-- Format for C
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = {"*.c", "*.cpp", "*.h"},
  command = "setlocal tabstop = 8 shiftwidth=8"
})

