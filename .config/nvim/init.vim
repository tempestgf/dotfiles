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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'bling/vim-bufferline'
Plug 'paulfrische/reddish.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'ellisonleao/glow.nvim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'glepnir/dashboard-nvim'

call plug#end()

lua << END
require('dashboard').setup()
require('glow').setup()
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
require('telescope').setup {
   defaults = {
      vimgrep_arguments = {
         "rg",
         "--color=never",
         "--no-heading",
         "--with-filename",
         "--line-number",
         "--column",
         "--smart-case",
      },
      prompt_prefix = "   ",
      selection_caret = "  ",
      entry_prefix = "  ",
      initial_mode = "insert",
      selection_strategy = "reset",
      sorting_strategy = "ascending",
      layout_strategy = "horizontal",
      layout_config = {
         horizontal = {
            prompt_position = "top",
            preview_width = 0.55,
            results_width = 0.8,
         },
         vertical = {
            mirror = false,
         },
         width = 0.87,
         height = 0.80,
         preview_cutoff = 120,
      },
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      file_ignore_patterns = {},
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
      path_display = { "absolute" },
      winblend = 0,
      border = {},
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      color_devicons = true,
      use_less = true,
      set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      -- Developer configurations: Not meant for general override
      buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
   },
   extensions = {
      fzf = {
         fuzzy = true, -- false will only do exact matching
         override_generic_sorter = false, -- override the generic sorter
         override_file_sorter = true, -- override the file sorter
         case_mode = "smart_case", -- or "ignore_case" or "respect_case"
         -- the default case_mode is "smart_case"
      },
      media_files = {
         filetypes = { "png", "webp", "jpg", "jpeg" },
         find_cmd = "rg", -- find command (defaults to `fd`)
      },
   },
}

END

set termguicolors
colorscheme cyberpunk
let g:airline_theme='cyberpunk'

set cursorline
let g:cyberpunk_cursorline="black"
set clipboard=unnamedplus

nnoremap <C-n> :NERDTreeToggle<CR>
nmap <C-P> :Telescope git_files hidden=true <CR>
nmap <C-T> :Telescope live_grep <CR>
