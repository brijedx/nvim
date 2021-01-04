gadding Paths
" --- Python 3
"End paths

" ====================================
" PLUGINS
" ====================================
"
call plug#begin('C:/Users/Kartha/AppData/Local/nvim/plugged')

" 
" ---------------------------------
"   TOOLS
" --------------------------------
"
"
Plug 'scrooloose/nerdtree' 
" by Marty Grenfell
" A tree explorer plugin for vim
" file explorer from Ben Awad's video

" vim-test - do we need it?


Plug 'tpope/vim-fugitive' "wrapper for git
" by Tim Pope
" A Git wrapper so awesome, it should be illegal.


Plug 'tpope/vim-surround'
" by Tim Pope
" Quoting/parenthesizing made simple
" surround a word or other object to surround it using some character etc. Like brakets or quotes from Ben Awad's video
"

"nerdcommenter - check if it is needed


Plug 'scrooloose/syntastic' " syntax checking
"by Marty Grenfell
"Syntax checking hacks for Vim


Plug 'airblade/vim-gitgutter'
" by Andy Stewart
" A vim plugin which shows git diff marker in the sign column. 
" It shows which lines have been added, modified or removed.
" You can also preview, stage, and undo indiviudal hunks; and stage partical
" hunks. The plugin also provide a hunk text object

Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse
" by Tim Pope
" Github extension for fugitive.vim
" require by fugitive to :Gbrowse.
"


Plug 'tpope/vim-commentary'
" by Tim Pope
" Comment stuff out.
" from vim bootstrap and Ben Awad. by Tim Pope. Commenting lines using gc


Plug 'vim-airline/vim-airline'
"by Vim Airline
" Lean and mean status/tabline for vim that's light as air


Plug 'vim-airline/vim-airline-themes' " Theme repo for Airline
" by Vim Airline
" A collection of themes for vim-airline

Plug 'jiangmiao/auto-pairs' " pairing brackets and such from Ben Awad's video

Plug 'fatih/vim-go', {'do': 'GoUpdateBinaries'}
" by Fatih Arslan
" Go development plugin for Vim.


Plug 'junegunn/vim-easy-align' " Simple easy-to-use Vim alignment plugin

Plug 'jceb/vim-orgmode'
" by Stefan Otte and Aleksandar Dimitrov
" Text outlining and task management for Vim based on Emacs Org-mode


"---------------------------------
"  Language 
"---------------------------------
"

Plug 'neoclide/coc.nvim',{'branch':'release'} " by Neoclide
" Intellisense engine for Vim8 and Neovim, full language server protocol
" support as VScode

Plug 'iamcco/markdown-preview.nvim', {'do':'cd app && yarn install'} 
"This is supposed to be for markdown review. need to check it out.

" Need to try out coc-explorer one of these days
"
"

"-----------------------------
"  Colors
"-----------------------------
"
Plug 'joshdick/onedark.vim' " by Josh Dick 
" A dark VIM/Neovim color scheme based on Flatcolor
" with colors inspired by the excellent One Dark syntax theme for the Atom
" test editor 

Plug 'iCyMind/NeoSolarized' " by Simon Lu
" A fixed solarized colorscheme for better truecolor support

Plug 'ajmwagar/vim-deus' " by Avery Wagar
 " A better color scheme for the late night coder 
 " (or a reaction to bad solarized themes)

Plug 'junegunn/seoul256.vim' " by June Gunn Choi
 " :deciduous_tree: Low-contrast Vim color scheme based on Seoul colors

Plug 'gruvbox-community/gruvbox'
" by Gruvbox
" This is the community maintained edition of the retro groove color scheme
" Looks like its original creator was Pavel Pertsev

Plug 'lifepillar/vim-gruvbox8'
" by Lifepillar
" A simplified and optimized Gruvbox colorscheme for Vim

Plug 'ayu-theme/ayu-vim'
" by Ayu theme
" Modern theme for modern Vims
"
Plug 'reedes/vim-colors-pencil'
" by Reed Esau
" Light (&dark) color scheme inspired by IA Writer
"
" Plug 'reedes/vim-thematic'
" Conveniently manage Vim's appearance to suit your task  and enviornment.
"

Plug 'NLKNguyen/papercolor-theme'
" by Nikyle Nguyen
" Light and dark color themes. Light one supposed to be great for
" presentations.
Plug 'dracula/vim', { 'as': 'dracula' } 
"
"
"---------------------------------------
"   Writing 
"---------------------------------------
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

Plug 'reedes/vim-pencil'
"
" by Reed Esau
" Rethinking Vim as a tool for writing
"
Plug 'reedes/vim-lexical'
" by Reed Esau
" Building on Vim's spell-check and thesaurus/dictionary completion
"
Plug 'kana/vim-textobj-user'
" by Kana Natsuno
" Need by textobj plugin which follows.
Plug 'reedes/vim-textobj-sentence'
" by Reed Esau
" Improving on Vim's native sentence text object and motion.
Plug 'reedes/vim-wordy' 
" by Reed Esau
" Uncover usage problems in your writing
Plug 'reedes/vim-textobj-quote'
" by Reed Esau
" Extending Vim to better support  typographic ('curly') quote characters
Plug 'dbmrq/vim-ditto'
"
Plug 'reedes/vim-litecorrect'
" by Reed Esau
" Lightweight autocorrection for Vim
"
"
call plug#end()

set nocompatible
filetype plugin indent on

" Neovim/Vim settings
set termguicolors
syntax on " highlight syntax
set number " show line numbers
set relativenumber
set noswapfile "disable the swapfile
set nohlsearch " highlight all results
set ignorecase "ignore case in search
set incsearch "show search results as you type
set tabstop=4	" Set the tabs to display as four spaces
set expandtab	" Insert spaces for tabs

" ******** Clipboard to Vim copying ********
"To copy text from Vim to the system clipboard, you can select the text
" using visual mode, then press \" * y to copy it to the system clipboard.
" Conversely, use \" * p to paste text from the system clipboard into Vim
"
"*******************************************

"Remaps
"
"Remapping ESC to jk or kj. Checking if this helps me remain on home keys
inoremap jk <ESC>
inoremap kj <ESC>

"Change Your Leader Key to `
let mapleader = "\\"

""""""""""""""""""""""""""""
" Plugin setup 
"""""""""""""""""""""""""""" 
"--------------------
" Writing
" -------------------
"  

" Goyo + limelight (focus mode)
let g:limelight_conceal_ctermfg = 240
let g:goyo_width = 75
let g:limelight_default_coefficient = 0.7
" let g:limelight_paragraph_span = 1

map <leader>gy :Goyo<CR>
map <leader>ll :Limelight!<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

"-------------------
" Language 
"-------------------
"

" Syntastic settings

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ++++++++++++++
" Coc settings
" ++++++++++++++

" TextEdit might fail if hidden is not set
set hidden

" some servers have issus with backup files.
set nobackup
set nowritebackup

" Give more space for displaying messages
set cmdheight=2

"Having longer updatetime (default is 4000ms = 4s) leads to noticeable
"delays and poor user experience
set updatetime=300

"Don't pass messages to |ins-completion-menu|.
set shortmess+=c

"Always show the signcolumn, otherwise it would shift the text each time
"diagnostics appear/become resolved.
if has("patch-8.1.1564")
        "Recently vim can merge signcolumn and number column into one
        set signcolumn=number
else
        set signcolumn=yes
endif

"Use tab for trigger completion with charactes ahead and navigate. 
" Note: Use comman ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
                        \ pumvisible() ? "\<C-n>" :
                        \ <SID>check_back_space() ? "\<TAB>" :
                        \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
        let col = col('.') - 1
        return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <c-space> to trigger completion

if has ('nvim')
        inoremap <silent><expr> <c-space> coc#refresh()
else
        inoremap <silent><expr> <c-@> coc#refresh()
endif

" <CR> can auto select but need to check if it is required so not adding the
" code for it.


"Use '[g' and ']g' to navigate diagnostics
" Use ':CocDiagnostics' to get all diagnostics of current buffer in location
" list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" there are more coc bindings to be done TOBEDONE


" ----------------------------------------------
"  Airline settings
" ----------------------------------------------
"
let g:airline#extension#tabline#enabled = 1


""""""""Prose related function for VIM-Pencil and related plugins
"""""""
"""""""
function! Prose()
  call pencil#init()
  call lexical#init()
  call litecorrect#init()
  call textobj#quote#init()
  call textobj#sentence#init()

  " manual reformatting shortcuts
  nnoremap <buffer> <silent> Q gqap
  xnoremap <buffer> <silent> Q gq
  nnoremap <buffer> <silent> <leader>Q vapJgqap

  " force top correction on most recent misspelling
  nnoremap <buffer> <c-s> [s1z=<c-o>
  inoremap <buffer> <c-s> <c-g>u<Esc>[s1z=`]A<c-g>u

  " replace common punctuation
  iabbrev <buffer> -- –
  iabbrev <buffer> --- —
  iabbrev <buffer> << «
  iabbrev <buffer> >> »

  " open most folds
  setlocal foldlevel=6

  " replace typographical quotes (reedes/vim-textobj-quote)
  map <silent> <buffer> <leader>qc <Plug>ReplaceWithCurly
  map <silent> <buffer> <leader>qs <Plug>ReplaceWithStraight

  " highlight words (reedes/vim-wordy)
  noremap <silent> <buffer> <F8> :<C-u>NextWordy<cr>
  xnoremap <silent> <buffer> <F8> :<C-u>NextWordy<cr>
  inoremap <silent> <buffer> <F8> <C-o>:NextWordy<cr>

endfunction

" automatically initialize buffer by file type
autocmd FileType markdown,mkd,text,textile call Prose()

" invoke manually by command for other file types
command! -nargs=0 Prose call Prose()

augroup textobj_sentence
  autocmd!
  autocmd FileType markdown call textobj#sentence#init()
  autocmd FileType textile call textobj#sentence#init()
augroup END
"
"
"
" """"" For Ditto  """""
" Use autocmds to check your text automatically and keep the highlighting
" up to date (easier):
au FileType markdown,text,tex DittoOn  " Turn on Ditto's autocmds
nmap <leader>di <Plug>ToggleDitto      " Turn Ditto on and off

" If you don't want the autocmds, you can also use an operator to check
" specific parts of your text:
" vmap <leader>d <Plug>Ditto	       " Call Ditto on visual selection
" nmap <leader>d <Plug>Ditto	       " Call Ditto on operator movement

nmap =d <Plug>DittoNext                " Jump to the next word
nmap -d <Plug>DittoPrev                " Jump to the previous word
nmap +d <Plug>DittoGood                " Ignore the word under the cursor
nmap _d <Plug>DittoBad                 " Stop ignoring the word under the cursor
nmap ]d <Plug>DittoMore                " Show the next matches
nmap [d <Plug>DittoLess                " Show the previous matches
"""""""""""End of Ditto config """""""""""""
"
"
"
""""""""""End of Prose and calling of Prose()""""""""""
