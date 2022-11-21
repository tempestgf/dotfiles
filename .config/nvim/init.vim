"     __                                 __        ____
"    / /____  ____ ___  ____  ___  _____/ /_____ _/ __/
"   / __/ _ \/ __ `__ \/ __ \/ _ \/ ___/ __/ __ `/ /_  
"  / /_/  __/ / / / / / /_/ /  __(__  ) /_/ /_/ / __/  
"  \__/\___/_/ /_/ /_/ .___/\___/____/\__/\__, /_/     
"                   /_/                  /____/        
"
"
call plug#begin('~/.vim/plugged')
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  }, inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
END

set termguicolors
colorscheme cyberpunk
let g:airline_theme='cyberpunk'

