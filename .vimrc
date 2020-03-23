call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-scripts/taglist.vim'
Plug 'wesleyche/trinity'
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'yggdroot/leaderf'
Plug 'easymotion/vim-easymotion'
"Plug 'scrooloose/syntastic'
Plug 'mhinz/vim-startify'
Plug 'yggdroot/indentline'
Plug 'w0ng/vim-hybrid'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-smooth-scroll'
call plug#end()


"----------------------------------------------
"----------configs key map----------------------------
let mapleader=" "

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
map <c-n> :NERDTreeToggle<CR>
map <leader>v :NERDTreeFind<CR>
map <leader>m :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" 将 NERDTree 的窗口设置在 vim 窗口的右侧（默认为左侧）
let NERDTreeWinPos="right"
"  当打开 NERDTree 窗口时，自动显示 Bookmarks
let NERDTreeShowBookmarks=1
" 在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）


"-----------------------------------------------
" config  ctrlp
"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"-----------------------------------------------
" config  syntastic
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


"-----------------------------------------------
" config  easy-motion 
nmap <leader>s <Plug>(easymotion-s2)



"-----------------------------------------------
" config smooth_scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

"-----------------------------------------------
" config leaderf 
let g:Lf_WindowHeight=0.3
let g:Lf_MruFileExclude = ['*.so','.git']
let g:Lf_CtagsFuncOpts = {
                        \ 'c': '--c++-kinds=+p --fields=+iaS --extra=+q' 
                        \ }
let g:Lf_PreviewCode = 1
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_GtagsSkipUnreadable = 1
let g:Lf_GtagsSkipSymlink = 'a'
"let Lf_WindowPosition = 'popup'
"let g:Lf_PreviewInPopup = 1
"let g:Lf_PopupHeight = 0.75
"let g:Lf_PopupHeight = 0.75
nmap <leader>ff :LeaderfFile<CR>
nmap <leader>fb :LeaderfBuffer<CR>
nmap <leader>fm :LeaderfMru<CR>
nmap <leader>ft :LeaderfTag<CR>
nmap <leader>fd :LeaderfFunction<CR>
nmap <leader>fh :LeaderfHistorySearch<CR>

"nmap <leader>fr <Plug>LeaderfRgPrompt <cword><CR>
nmap <leader>fr <Plug>LeaderfRgCwordLiteralNoBoundary<CR>
" ------------------------------------configs--------------------------------------------
set nocompatible

"打开鼠标功能
"set mouse=a
syntax on "配色
syntax enable "语法高亮
" 设置取消备份，禁止临时文件生成  
set nobackup
set noswapfile

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

set backspace=indent,eol,start

filetype on "检测文件类型
filetype indent on "针对不同文件采用不同的缩进方式
filetype plugin on "允许插件
set showmatch "设置代码匹配，包括括号匹配情况

"----------configs key map----------------------------

