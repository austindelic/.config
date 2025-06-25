if true then
  return {}
end
return {
  "xiyaowong/transparent.nvim",
  lazy = false, -- DO NOT lazy load, or it won't work properly
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "StatusLine", -- ← this is the top/bottom bar
        "StatusLineNC", -- ← for inactive windows
        "WinBar", -- ← if you're using winbar
        "WinBarNC",
        "TabLine",
        "TabLineFill",
        "TabLineSel",
      },
    })
  end,
}
