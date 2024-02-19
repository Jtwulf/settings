"番号を表示
set number

"フォントサイズ
set guifont=Monaco:h15

"自動インデント
set smartindent

"カーソルライン
set cursorline

:syntax on

"カラースキーム
"colorscheme spring-night


"透明感
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

set clipboard+=unnamed
set showmatch
set backspace=indent,eol,start
set wrap
set laststatus=2
set virtualedit=onemore
set hlsearch
set ruler
set showcmd
set showmode
set title

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
"空白部分の可視化
NeoBundle 'bronson/vim-trailing-whitespace'
" コードの自動補完
NeoBundle 'Shougo/neocomplete.vim'
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
"NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'
"NERDTreeを起動した時に開く
"autocmd vimenter * NERDTree
"ステータスラインの情報を強化
NeoBundle 'itchyny/lightline.vim'
"インデント可視化
NeoBundle 'Yggdroot/indentLine'
autocmd FileType python setlocal completeopt-=preview
"syntasticのインストール
NeoBundle 'scrooloose/syntastic'
"括弧の自動補完
"NeoBundle 'cohama/lexima.vim'
"インデントの可視化:
NeoBundle 'nathanaelkane/vim-indent-guides'
"processing
NeoBundle 'sophacles/vim-processing'
"一気にコメントアウトする"
NeoBundle "tyru/caw.vim.git"
nmap <C-K> <Plug>(caw:i:toggle)
vmap <C-K> <Plug>(caw:i:toggle)
"クイックランの設定
NeoBundle 'thinca/vim-quickrun'
let g:quickrun_config = {'*': {'hook/time/enable': '1'},}
let g:syntastic_python_checkers = ['pyflakes', 'pep8']
"markdownのプレビュー
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
"mdファイルもmarkdownとして読み込むよう設定
au BufRead,BufNewFile *.md set filetype=markdown
call neobundle#end()
" Required:
filetype plugin indent on
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
"-------------------------
" End Neobundle Settings.
"-------------------------

"括弧等の自動補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"NERDTreeのショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR>

"マウスクリック有効
if has("mouse") " Enable the use of the mouse in all modes
  set mouse=a
endif

nnoremap <Tab> <C-w>w
inoremap <silent> jj <ESC>

