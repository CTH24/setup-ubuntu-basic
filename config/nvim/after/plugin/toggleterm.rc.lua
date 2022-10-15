local status, toggleterm = pcall(require, "toggleterm")
if (not status) then return end

toggleterm.setup({
  open_mapping = [[<C-k><C-k>]],
  size = 80,
  direction = "vertical",
  winblend = 1,
})
