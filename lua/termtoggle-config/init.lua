local status, ttg = pcall(require, "toggleterm")
if (not status) then
  return
end

ttg.setup {
  size = 13,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  shade_terminals = true,
  start_in_insert = true,
  persist_size = true,
  direction = 'horizontal',
}


