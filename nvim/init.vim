call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Yggdroot/indentLine'

" ===== for deoplete default =====
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


" ===== for deoplete settings =====
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-zsh'
Plug 'Shougo/neco-syntax'
Plug 'davidhalter/jedi-vim'

Plug 'dracula/vim',{'as':'dracula'}

call plug#end()

" use deoplete
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('deople-options-ignore_case', 'true')

" 탭 관련
set smarttab
set expandtab           " 탭을 스페이스 처리
set tabstop=2           " 탭당 4개 스페이스
set softtabstop=2
set shiftwidth=2       " Auto indent에서 스페이스 개수
set autoindent          " Auto indent
set smartindent

" 인덴트 라인
let g:indentLine_char = '│'
let g:indentLine_color_term = 239

" 커서 라인
set cursorline
highlight LineNr ctermfg=black ctermbg=DarkGrey

" 라인 넘버
set ruler               " show line and column number
set showcmd             " show (partial) command in status line

" 백스페이스 강화
set backspace=indent,eol,start

" 상태바 표시
set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" dracula 테마
" "color dracula

" 마지막 편집 위치 복원 기능
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\ exe "norm g`\"" |
	\ endif

" Syntax Highlighting
if has("syntax")
    syntax on
endif

set nu                  " 라인 번호
set hlsearch            " 검색어 하이라이팅
set showmatch           " 일치하는 괄호 하이라이팅

" Set line number width
set numberwidth=5
" Set 100 column guideline
set colorcolumn=100
