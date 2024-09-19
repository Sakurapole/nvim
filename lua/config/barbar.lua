require("barbar").setup {
    animation = true,
    auto_hide = true,
    tabpages = true,
    clickable = true,
    sidebar_filetypes = {
      NvimTree = true,
      -- undotree = {
      --  text = 'NvimTree',
      --  align = 'right',
      -- },
      -- ['nvim-tree'] = { event = 'BufWipeout' },
      -- Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' }
    },
}
