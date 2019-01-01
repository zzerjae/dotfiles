" plugin start

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'iCyMind/NeoSolarized'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'shougo/vimshell.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'Yggdroot/indentLine'
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
" ----- For deoplete autocomplete -----
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-zsh'
Plug 'Shougo/neco-syntax'
Plug 'Shougo/neco-vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' } "https://github.com/carlitux/deoplete-ternjs
Plug 'davidhalter/jedi-vim'
" ----- end -----
" Plug 'Rip-Rip/clang_complete'
Plug 'antlypls/vim-colors-codeschool'
Plug 'dracula/vim',{'as':'dracula'}

call plug#end()

" User deoplete
let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#ternjs#filetypes = [
            \'vue',
            \ ]

let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm/7.0.0/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/opt/llvm/lib/clang'
call deoplete#custom#option('deople-options-ignore_case', 'true')



" 단축키
map <F2> :NERDTreeToggle<CR>
map <F3> :TagbarToggle<CR>
map <F4> :VimShell<CR>

" NERDTR E
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" plugin end
" python 파일일 경우 tab 설정, 폴딩설정
au BufRead,BufNewFile *.py set expandtab
au BufRead,BufNewFile *.py setlocal foldmethod=indent

set smarttab

set expandtab           " 탭을 스페이스 처리
set tabstop=4           " 탭당 4개 스페이스
set softtabstop=4
set shiftwidth=4        " Auto indent에서 스페이스 개수
set autoindent          " Auto indent
set smartindent
set cursorline

" 백스페이스 강화
set backspace=indent,eol,start

set ruler               " show line and column number
set showcmd             " show (partial) command in status line

" Syntax Highlighting
if has("syntax")
    syntax on
    endif

    set nu                  " 라이번호
    set hlsearch            " 검색어 하이라이팅
    set showmatch           " 일치하는 괄호 하이라이팅

    " Set line number width
    set numberwidth=5
    " Set 100 column guideline
    set colorcolumn=100


    " 마지막 편집 위치 복원 기능
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "norm g`\"" |
	\ endif

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

color dracula
"set termguicolors
"set background=dark

" NERDCommenter 설정
let NERDSpaceDelims=1

" ctags
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_1/bin/ctags'

" ycm
"
"let g:ycm_server_python_interpreter = '/usr/bin/python2'

"indentLine
let g:indentLine_char = '│'
let g:indentLine_color_term = 239

" clang_complete
set completeopt-=preview
highlight LineNr ctermfg=black ctermbg=DarkGrey
