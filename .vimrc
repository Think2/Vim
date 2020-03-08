call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'wesleyche/trinity'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
call plug#end()

"-----------------------------------------------

"Trinity
nmap <F8>  :TrinityToggleAll<CR> 
" Open and close the Source Explorer separately 
nmap <F9>  :TrinityToggleSourceExplorer<CR> 
" Open and close the Taglist separately 
nmap <F10> :TrinityToggleTagList<CR> 
" Open and close the NERD Tree separately 
nmap <F11> :TrinityToggleNERDTree<CR> 

"-----------------------------------------------

" Tlist的配置
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
" 用ctrl+f1代替 :Tlist并且不需要回车确认
" Tlist 的快捷键
map <F2> :Tlist <CR>

"-----------------------------------------------

" ctags的配置 ctrl+f12快速生成tags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" vim支持cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-


"-----------------------------------------------
"cscope 的配置
if has("cscope")
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
"add any database in current directory

if filereadable("cscope.out")
	cs add cscope.out
"else add database pointed to by environment
elseif $CSCOPE_DB != ""
	cs add $CSCOPE_DB
endif

set csverb
endif

"-----------------------------------------------

" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="right"
"  当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）



" ------------------------------------configs--------------------------------------------
set nocompatible

"打开鼠标功能
"set mouse=a
syntax on "配色
syntax enable "语法高亮
" 设置取消备份，禁止临时文件生成  
set nobackup
"set noswapfile

" 设置C/C++方式自动对齐  
set autoindent
set cindent
set smartindent
" 设置编码方式  
set encoding=utf-8

set number "显示行号
set tabstop=4  "tab宽度
set shiftwidth=4  "设置自动对齐空格数
set showcmd

" config searches ...
set hlsearch
set ignorecase
set smartcase
set incsearch


filetype on "检测文件类型
filetype indent on "针对不同文件采用不同的缩进方式
"filetype plugin on "允许插件
"set showmatch "设置代码匹配，包括括号匹配情况

