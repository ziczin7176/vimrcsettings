set hlsearch	"검색어 하이라이팅
set nu		"줄번호
set autoindent	"자동들여쓰기
set smartindent	
set cindent	"c style indent
set ts=4	"\t = 4
set sts=4	"tab = 4
"set softtabstop=4	"스페이스n개를 하나의 탭으로처리
set sw=1	"스크롤바 너비
set autowrite
set autoread
set bs=eol,start,indent
set history=1000
set laststatus=2	"상태바 항상 표시
set showmatch	"일치하는 괄호 하이라이팅
"set smarttab
set ruler	"커서위치 표시
set incsearch
syntax on	"형식별 구문강조
set mouse=a	"마우스 사용 가능
"set relativenumber	"커서 라인넘버 표시
set cursorline	"커서 라인 강조
set ignorecase
set smartcase	"ignore 켜져있어도 검색어에 대문자가 있다면 정확히 일치하는 문자열을 찾음
set clipboard=unnamedplus	"vim에서 복사한 내용이 +클립보드로 이동
set wrap
set nocompatible "방향키로 이동가능
set fileencodings=utf-8,euc-kr
set fencs=ucs-bom,utf-8,euc-kr
set wmnu		"tab 눌렀을 때 자동완성 가능한 목록




" vim-plug : plugin manager
call plug#begin('~/.vim/plugged')
   Plug 'scrooloose/nerdtree'    "NERDTree
   Plug 'nanotech/jellybeans.vim', { 'tag': 'v1.7' }	"jellybean
   Plug 'majutsushi/tagbar'		"tagbar
   Plug 'nathanaelkane/vim-indent-guides'	"indent guide
   Plug 'raimondi/delimitmate'	"automatically complete parentheses
call plug#end()
"""""""""""""""""""""""""""" 
 
 
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
"NERDTree toggle key F5
nnoremap <F5> :NERDTreeToggle<CR>
 
"jellybean
colorscheme jellybeans

"Tagbar toggle
nmap <F6> :TagbarToggle<CR>

"always on indent guide
let g:indent_guides_enable_on_vim_startup = 1
"indent guide size
let g:indent_guides_guide_size = 1
