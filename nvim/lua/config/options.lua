-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.lazyredraw = true
-- vim.opt.ttyfast = true
vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

-- vim.opt.guicursor = table.concat({
--   "n-v-c-sm:block", -- Block in Normal/Visual/Command modes
--   "i-ci-ve:ver25", -- Vertical bar in Insert/Insert-like modes
--   "r-cr:hor20", -- Horizontal bar in Replace mode
--   "o:hor50", -- Thicker underline in Operator-pending
-- }, ",")
vim.g.snacks_animate = false
