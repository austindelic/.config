-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.o.guifont = "JetBrainsMonoNL Nerd Font Mono:h12.5"
vim.keymap.set("n", "<F11>", function()
  vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
end, { desc = "Toggle Fullscreen" })
