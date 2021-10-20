local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = { 'NvimTree', 'term', 'terminal', 'TelescopePrompt' },
    lower = true,
  },
  sections = {
    lualine_a = {{'mode', lower = false}},
    lualine_b = {'branch'},
    lualine_c = {
      {'filename', file_status = true, path = 1},
      {
        'diff',
        colored = true,
        color_added = colors.green,
        color_modified = colors.orange,
        color_removed = colors.red,
        symbols = { added = ' ', modified = '柳 ', removed = ' '}
      }

    },
    lualine_x = {'encoding', 'fileformat', {'filetype', colored = true}},
    lualine_y = {
      'diagnostics',
      sources = nvim_lsp,
      sections = {'error', 'warn', 'info', 'hint'},
      -- all colors are in format #rrggbb
      color_error = colors.red,
      color_warn = colors.orange,
      color_info = colors.blue,
      color_hint = colors.magenta,
      symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}
    },
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {'fzf', 'fugitive', 'quickfix'}
}
