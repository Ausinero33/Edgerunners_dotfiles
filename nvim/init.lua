vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.wo.number = true
vim.wo.relativenumber = true
vim.bo.autoindent = true
vim.smarttab = true
vim.mouse = true

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'https://github.com/Mofiqul/dracula.nvim'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = 'TSUpdate'})
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('neoclide/coc.nvim', {['branch'] = 'release'})
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lifepillar/vim-colortemplate'

vim.call('plug#end')

require('telescope_keys')

require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "all",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- List of parsers to ignore installing
  -- ignore_install = { "javascript" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    --disable = { "c", "rust" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

vim.cmd[[source /home/gonzalo/.config/nvim/coc.vim]]

vim.cmd[[nnoremap <silent> <C-k><C-B> :NERDTreeToggle<CR>]]

-- customize dracula color palette
local dracula = require("dracula")
dracula.setup({
    colors = {
        bg = "#0D1F2D",
        fg = "#EAF0FC",
        selection = "#EC4C5E",
        comment = "#6272A4",
        red = "#F00038",
        orange = "#F74E75",
        yellow = "#F6F14F",
        green = "#5DFF10",
        purple = "#5645AA",
        cyan = "#00FFFF",
        pink = "#FF10CA",
        bright_red = "#F1315E",
        bright_green = "#7DFF3E",
        bright_yellow = "#FFFB74",
        bright_blue = "#7465C0",
        bright_magenta = "#FF3ED4",
        bright_cyan = "#60FDFD",
        bright_white = "#EAF0FC",
        menu = "#21222C",
        visual = "#3E4452",
        gutter_fg = "#4B5263",
        nontext = "#3B4048",
        white = "#C5D3EF",
        black = "#282A2E",
    },
      -- show the '~' characters after the end of buffers
      show_end_of_buffer = true, -- default false
      -- use transparent background
      transparent_bg = true, -- default false
      -- set custom lualine background color
      lualine_bg_color = "#44475a", -- default nil
      -- set italic comment
      italic_comment = true, -- default false
})

vim.cmd[[colorscheme dracula]]
