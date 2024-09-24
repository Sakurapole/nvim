--- @type ToggleTermConfig
require('toggleterm').setup {
  shell = 'pwsh.exe',
  insert_mappings = true,
  terminal_mappings = true,
  direction = 'float',
  persist_size = true,
  persist_mode = true,
  autochdir = true,
  shade_terminals = true,
  float_opts = {
    border = 'curved',
    title_pos = 'center',
  },
}
