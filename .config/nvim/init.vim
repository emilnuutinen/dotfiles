" Plugins
call plug#begin(stdpath('data') . '/plugged')
Plug 'preservim/vim-markdown'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'voldikss/vim-floaterm'
Plug 'windwp/nvim-autopairs'
Plug 'lukas-reineke/indent-blankline.nvim'

" Completion framework:
Plug 'hrsh7th/nvim-cmp' 

" LSP completion source:
Plug 'hrsh7th/cmp-nvim-lsp'

" Useful completion sources:
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/vim-vsnip'

" Inlay hints
Plug 'lvimuser/lsp-inlayhints.nvim'

" Themes
Plug 'sainnhe/gruvbox-material'

call plug#end()

let $NVIM_TUI_ENABLE_TRUE_COLOR=1 
set termguicolors

set completeopt=menu,menuone,noselect,noinsert

" Lua things
lua require ("extras")

let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_autoclose = 2

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fc <cmd>Telescope git_commits<cr>
nnoremap <leader>fr <cmd>Telescope spell_suggest<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>

" More natural movement
noremap ; l
noremap l k
noremap k j
noremap j h

" More natural window movement
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

nnoremap <CR> :noh<CR><CR>

" Map arrow keys to move naturally
imap <silent> <Down> <C-o>gj
imap <silent> <Up> <C-o>gk
nmap <silent> <Down> gj
nmap <silent> <Up> gk

" Enable use of the mouse for all modes
set mouse=a

" map leader to Space
nnoremap <SPACE> <Nop>
map <SPACE> <Leader>

" Disable cursor changing in insert mode
set guicursor=

" Use system clipboard
set clipboard+=unnamedplus

" Insert bolded text with a timestamp and subject in markdown
imap <silent> <F1> <C-R>=strftime("**[%H:%M]** ")<CR><C-o>:cal cursor(0,13)<CR>
nmap <silent> <F1> i<C-R>=strftime("**[%H:%M]** ")<CR><C-o>:cal cursor(0,13)<CR>

" Insert a new todo template
imap <silent> <F2> <C-R>="- [ ] "<CR><C-o>:cal cursor(0,10)<CR>
nmap <silent> <F2> i<C-R>="- [ ] "<CR><C-o>:cal cursor(0,12)<CR>

" Insert heading with todays date in markdown
imap <silent> <F3> <C-R>=strftime("### %d-%m-%Y")<CR>
nmap <silent> <F3> i<C-R>=strftime("### %d-%m-%Y")<CR>

" 1 tab is 2 spaces
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab

" Python tabbing (PEP 8)
au BufNewFile,BufRead *.py set filetype=python 
autocmd filetype python setlocal tabstop=4
autocmd filetype python setlocal softtabstop=4
autocmd filetype python setlocal shiftwidth=4
autocmd filetype python setlocal textwidth=79
autocmd filetype python setlocal expandtab
autocmd filetype python setlocal autoindent
autocmd filetype python setlocal fileformat=unix

" Go tabbing
au BufNewFile,BufRead *.go set filetype=go
autocmd filetype go setlocal tabstop=4
autocmd filetype go setlocal softtabstop=4
autocmd filetype go setlocal shiftwidth=4
autocmd filetype go setlocal expandtab


" Use spaces instead of tabs
set expandtab

" Hide foldcolumn
set foldcolumn=0
highlight FoldColumn guibg=0
" disable folding
set nofoldenable

" Colorcolumn
set colorcolumn=80

" Highlight current line number
set cursorline
set cursorlineopt=number

" Turn backup off
set nobackup
set nowb
set noswapfile

set si "Smart indent
set wrap "Wrap lines

" Set utf8 as standard encoding
set encoding=utf-8

" Ignore casing of normal letters
set ignorecase

" Ignore casing when using lowercase letters only
set smartcase

set breakindent
set linebreak

" Scroll past lastline
set display+=lastline

" Show line nubmers
set number

" Set theme
set background=dark
let g:gruvbox_material_background='hard'
let g:gruvbox_material_foreground='original'
let g:gruvbox_material_transparent_background='2'
let g:gruvbox_material_diagnostic_line_highlight='1'
let g:gruvbox_material_diagnostic_virtual_text='colored'
let g:gruvbox_material_spell_foreground='colored'
let g:gruvbox_material_enable_italic='1'
let g:gruvbox_material_enable_bold='1'
let g:gruvbox_material_disable_terminal_colors=1
function! s:gruvbox_material_custom() abort
    highlight! link TSString String
    highlight! link CocSymbolString String
    highlight! link javascriptPropertyNameString String
    highlight! link typescriptStringProperty String
    highlight! link cmakeKWstring String
    highlight! link mkdHeading Yellow
    highlight! link mkdListItem Fg
    highlight! link mkdBold Fg 
    highlight! link mkdCodeDelimiter Green
    highlight! link mkdListItemCheckbox Fg

    let l:palette = gruvbox_material#get_palette('hard', 'original', {'bg0': ['#171513', '0']})

    call gruvbox_material#highlight('String', l:palette.green, l:palette.none)
    call gruvbox_material#highlight('markdownH1', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('markdownH2', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('markdownH3', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('markdownH4', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('markdownH5', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('markdownH6', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('htmlH1', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('htmlH2', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('htmlH3', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('htmlH4', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('htmlH5', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('htmlH6', l:palette.yellow, l:palette.none, 'bold')
    call gruvbox_material#highlight('SpellBad', l:palette.red, l:palette.none)
    call gruvbox_material#highlight('SpellCap', l:palette.blue, l:palette.none)
    call gruvbox_material#highlight('SpellLocal', l:palette.aqua, l:palette.none)
    call gruvbox_material#highlight('SpellRare', l:palette.purple, l:palette.none)
    call gruvbox_material#highlight('Comment', l:palette.bg5, l:palette.none, 'italic')
    call gruvbox_material#highlight('NormalFloat', l:palette.fg1, l:palette.bg0,)
    call gruvbox_material#highlight('FloatBorder', l:palette.bg5, l:palette.bg0,)
    call gruvbox_material#highlight('PMenu', l:palette.fg1, l:palette.bg0,)
endfunction
    
augroup GruvboxMaterialCustom
    autocmd!
    autocmd ColorScheme gruvbox-material call s:gruvbox_material_custom()
augroup END
colorscheme gruvbox-material

" Split windows
set fillchars=vert:\│
set splitright
set splitbelow
nnoremap <Leader>=  <C-W>=

" enable setting title
set title

" configure title only show filename and flags
set titlestring=%t\ %r%m titlelen=50

" Statusline colors
hi User1 guibg=NONE guifg=#b8bb26
hi User2 guibg=NONE guifg=#fabd2f
hi User3 guibg=NONE guifg=#fb4934
hi StatusLineTermNC guifg=NONE guibg=NONE

" Always display the status line, even if only one window is displayed
set laststatus=3

" Normal statusline
set statusline=%1*                  " change colors
set statusline+=[%{GetMode()}]      " show mode
set statusline+=%2*                 " change colors
set statusline+=\ %t                " file name
set statusline+=%3*                 " change colors
set statusline+=\ %m                " modified flag
set statusline+=%2*                 " change colors
set statusline+=%=                  " split alignment to right from here
set statusline+=%c/%l               " col/line
set statusline+=\ %y                " show filetype

" statusline for markdown files
function StatuslineMD()
    set statusline=%1*              " change colors
    set statusline+=[%{GetMode()}]  " show mode
    set statusline+=%2*             " change colors
    set statusline+=\ %t            " file name
    set statusline+=%3*             " change colors
    set statusline+=\ %m            " modified flag
    set statusline+=%2*             " change colors
    set statusline+=%=              " split alignment to right from here
    set statusline+=%c:%l/%L        " line X of Y
    set statusline+=\ (%{wordcount().words}\ words)   " Get word count
endfunction

" Get current mode
function! GetMode()
    let l:mode=mode()
    if l:mode==#"n"
      return "NORMAL"
    elseif l:mode==?"v"
      return "VISUAL"
    elseif l:mode==#"i"
      return "INSERT"
    elseif l:mode==#"R"
      return "REPLACE"
    elseif l:mode==?"s"
      return "SELECT"
    elseif l:mode==#"t"
      return "TERMINAL"
    elseif l:mode==#"c"
      return "COMMAND"
    elseif l:mode==#"!"
      return "SHELL"
    endif
endfunction

" Filetype spesific settings
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd filetype markdown setlocal nonumber
autocmd filetype netrw setlocal statusline=%1*%=%l/%L
autocmd filetype markdown setlocal statusline=%{StatuslineMD()}
autocmd filetype markdown setlocal spell spelllang=en
autocmd filetype markdown set textwidth=80
autocmd filetype markdown set colorcolumn=
autocmd filetype markdown set nolist
" Fix wrapping lists with gq
autocmd FileType markdown set comments=fb:*,fb:+,fb:-,n:> indentexpr=

" Config for vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_new_list_item_indent = 0
let g:vim_markdown_auto_insert_bullets = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1

" File explorer
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_winsize=20

" Format on save
autocmd BufWritePre * lua vim.lsp.buf.format()
