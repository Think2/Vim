" =============================================================================
" vim-plug插件管理
" =============================================================================
call plug#begin('~/.vim/plug')

" myself plugs-----------begin-------
Plug 'scrooloose/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
Plug 'yggdroot/leaderf'
Plug 'easymotion/vim-easymotion'
Plug 'yggdroot/indentline'
Plug 'terryma/vim-smooth-scroll'
Plug 'mhinz/vim-startify'
Plug 'vim-scripts/ctags.vim'
" -----------------------end---------

" vim中文帮助手册
"Plug 'yianwillis/vimcdoc'
" C++语法高亮增强
Plug 'octol/vim-cpp-enhanced-highlight'
" 最近打开的文件维护插件
Plug 'vim-scripts/mru.vim'
" 状态栏插件
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Taglist插件
Plug 'vim-scripts/taglist.vim', { 'on': 'TlistToggle' }
" 树形目录插件
Plug 'scrooloose/nerdtree'

" 通用函数插件
"Plug 'vim-scripts/genutils'
" 查找文件插件(依赖于genutils)
"Plug 'vim-scripts/lookupfile'

" 自动更新tags插件
Plug 'ludovicchabant/vim-gutentags'
" 自动加载切换gtags数据库
Plug 'skywind3000/gutentags_plus', { 'on': 'GscopeKill' }
" 预览 quickfix 窗口 ctrl-w z 关闭
Plug 'skywind3000/vim-preview', { 'on': 'GscopeKill' }

" 代码补齐插件
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
" 代码补齐模板
Plug 'honza/vim-snippets'

" 自动补全插件YCM
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer',
            \ 'for': ['s', 'S', 'c', 'h', 'C', 'cpp', 'cc', 'cxx', 'py', 'go', 'java', 'js', 'php', 'sh'] }

" 异步静态代码检查
Plug 'w0rp/ale', { 'for': ['s', 'S', 'c', 'h', 'C', 'cpp', 'cc', 'cxx', 'py', 'go', 'java', 'js', 'php', 'sh'] }
"Plug 'dense-analysis/ale', { 'for': ['s', 'S', 'c', 'h', 'C', 'cpp', 'cc', 'cxx', 'py', 'go', 'java', 'js', 'php', 'sh'] }
" 主题配色
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-janah'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'jpo/vim-railscasts-theme'
Plug 'tpope/vim-vividchalk'
Plug 'joshdick/onedark.vim'

call plug#end() 

" =============================================================================
" 编码相关
" =============================================================================
set termencoding=utf-8  " 设置终端显示编码
set encoding=utf-8      " 设置vim内部编码
" 菜单显示编码
set langmenu=zh_CN.UTF-8
" 设置可识别文件编码列表
set fileencodings=utf-8,gb2312,gbk,gb18030,cp936,utf-16,big5,latin1   

" =============================================================================
" 基本配置
" =============================================================================
" 开启文件类型检查,根据不同的文件类型加载不同的插件采用不同的缩进
filetype plugin indent on
syntax on               " 打开语法高亮
set t_Co=256            " 启用256色
set nocompatible        " 不与vi兼容(采用vim自己的操作命令) 
set background=dark     " 设置背景色
set cursorline          " 高亮光标所在行
" 高亮行颜色
highlight CursorLine cterm=Bold ctermbg=Black ctermfg=NONE guibg=Black guifg=NONE
"设置主题配色
"colorscheme gruvbox
"colorscheme janah
"colorscheme jellybeans
colorscheme molokai
"colorscheme railscasts
"colorscheme vividchalk
"colorscheme onedark
"colorscheme desert
"colorscheme torte
"colorscheme ron
set number              " 显示行号
set laststatus=2        " 是否显示状态栏(0,1,2)
set ruler               " 在状态栏显示当前光标坐标
set showmode            " 底行显示当前处于哪种模式
set showcmd             " 命令模式下,在底行显示键入的指令
set mouse=v             " 鼠标模式(n,v,i,c,h,a,r,A)
set scrolloff=7         " 垂直滚动时光标距离顶部/底部的行数
set sidescrolloff=7     " 水平滚动时光标距离边缘的字符数
set showmatch           " 光标遇到括号时自动高亮对应的另一个括号
set nobackup            " 不创建备份文件
set noerrorbells        " 出错时不要发出声音
"set visualbell          " 出错时发出视觉提示(通常时屏幕闪烁)
set history=1024        " 记录历史操作的数量
set autoread            " 打开文件监视,如果在编辑中的文件被外部修改则提示
set autowrite           " 跳转时自动保存
" 文件换行符检测列表
set fileformats=unix,dos,mac
set foldenable          " 默认折叠
set foldmethod=marker   " 折叠方式
set guioptions-=T       " gvim不包含工具栏
set guioptions-=m       " gvim不使用菜单栏
set guioptions-=r       " gvim不显示右边滚动条
set guioptions-=l       " gvim不显示左边滚动条
set helpheight=10       " 帮助窗口的最小高度
set helplang=cn,en      " 帮助手册语言
set hidden              " 允许在有未保存的修改时切换缓冲区
set nowrap              " 不自动折行
set helplang=cn         " 中文帮助优先
"自动向上递归查找tags文件
set tags=./tags;
"set tags=./.tags;,.tags

" =============================================================================
" 编辑相关
" =============================================================================
set tabstop=4           " 制表符宽度(Tab空格数)
set softtabstop=4       " 软制表符宽度(按Tab键和Backspace键时光标跳转的空格数)
set shiftwidth=4        " 缩进宽度(空格数)
set expandtab           " 制表符替换为空格
set autoindent          " 自动缩进
set cindent             " 特别针对C语言的自动缩进
set cinoptions=:0       " 自动缩进方案
set smartindent         " 插入新行时自动缩进
" 启用退格键删除功能
set backspace=indent,eol,start
set whichwrap=h,l       "使用指定的左右移动光标键可以移到前一行和后一行
" 自动补全模式
set complete=.,w,b,u,t,i,d
" 自动补全选项
set completeopt=longest,menuone
set pumheight=10        " 自动补全菜单显示的最多项目数
" 文件和目录名补全忽略的文件
set wildignore=*.bak,*.o,*.e,*~
set wildmenu            " 命令模式下,按Tab键补全命令
" 命令补全模式
set wildmode=longest:list,full
set hlsearch            " 查找时高亮显示匹配结果
set incsearch           " 查找输入时,每输入一个字符,自动跳转到第一个匹配结果
set ignorecase          " 查找时忽略大小写
set smartcase           " 针对只有首字母时大写的查找词不忽略大小写

" =============================================================================
" 自动命令
" =============================================================================
" 打开文件光标自动跳转到上次关闭时的位置
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif

" =============================================================================
" 快捷键
" =============================================================================
" Leader键设置
let mapleader=' '

" 使用分号进入命令模式
"nnoremap ; :
"vnoremap ; :

" 窗口切换快捷键
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l
"inoremap <C-h> <Esc><C-w>h
"inoremap <C-j> <Esc><C-w>j
"inoremap <C-k> <Esc><C-w>k
"inoremap <C-l> <Esc><C-w>l

" 窗口大小调整
"nnoremap + :resize +1<cr>
"nnoremap _ :resize -1<cr>
"nnoremap > :vertical resize +1<cr>
"nnoremap < :vertical resize -1<cr>
 
" shell命令调用函数
function! RunShell(Msg, Shell)
	echo a:Msg . '...'
	call system(a:Shell)
	echon 'done'
endfunction

" vimgrep查找字符串
nmap <leader>gr :vimgrep /<C-R>=expand("<cword>")<cr>/ **/*.c **/*.h<cr><C-o>:cw<cr>
" 生成GTAGS数据库文件快捷键
nmap <leader>gg :call RunShell("Generate GTAGS.*", 'find . -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx"> gtags.files && gtags')<cr>
" 生成tags文件快捷键 
nmap <leader>gt :call RunShell("Generate tags", "ctags -R --c-kinds=+lpxzL --c++-kinds=+lpxzLANU --fields=+niazS --extras=+q --output-format=e-ctags")<cr>
" 生成cscope数据库文件快捷键 
nmap <leader>gc :call RunShell("Generate cscope.*", 'find `pwd` -name "*.[chsS]" -o -name "*.cpp" -o -name "*.cc" -o -name "*.C", -o -name "*.cxx"> cscope.files && cscope -bkq')<cr>

" =============================================================================
" 插件配置
" =============================================================================

"-----------------------------------------------
" config  easy-motion 
nmap <leader>s <Plug>(easymotion-s2)


"--------------self begin---------------------------------
"-------------staritify-----------
let g:startify_change_to_dir = 0



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
"let g:Lf_GtagsAutoGenerate = 1
"let g:Lf_GtagsSkipUnreadable = 1
"let g:Lf_GtagsSkipSymlink = 'a'
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

nmap <leader>fr <Plug>LeaderfRgPrompt 
nmap <leader>fr <Plug>LeaderfRgCwordLiteralNoBoundary<CR>

"--------------self end---------------------------------

" mru.vim
" -----------------------------------------------------------------------------
" 打开mru快捷键F4
nmap  <leader>m :MRU<cr>

" man.vim
" -----------------------------------------------------------------------------
" 启动man插件
source $VIMRUNTIME/ftplugin/man.vim
" man 光标定位的函数
nmap <Leader>mm :Man <C-R>=expand("<cword>")<cr><cr>
" man 2 光标定位的函数
nmap <Leader>m2 :Man 2 <C-R>=expand("<cword>")<cr><cr>
" man 3 光标定位的函数
nmap <Leader>m3 :Man 3 <C-R>=expand("<cword>")<cr><cr>

" taglist.vim
" -----------------------------------------------------------------------------
" 设置打开关闭快捷键F2
nmap  <leader>t :TlistToggle<cr>
" 自动更新tags列表
let g:Tlist_Auto_Update=1
" 始终解析文件中的tag,不管taglist窗口有没有打开
let g:Tlist_Process_File_Always=1
" 当taglist窗口是最后一个窗口时退出vim
let g:Tlist_Exit_OnlyWindow=1
" 只显示一个文件的tags
let g:Tlist_Show_One_File=1
" 窗口宽度
let g:Tlist_WinWidth=30
" 只显示当前文件的tags
let g:Tlist_Enable_Fold_Column=0
" 高亮显示当前tag
let g:Tlist_Auto_Highlight_Tag=1
" 设置窗口显示在右侧
"let g:Tlist_Use_Right_Window=1
" 打开时光标定位于taglist窗口
let g:Tlist_GainFocus_On_ToggleOpen=1

" NERDTree.vim
" -----------------------------------------------------------------------------
" 设置打开关闭快捷键
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>v :NERDTreeFind<CR> 
" 窗口美化
let NERDChristmasTree=1
" 自动调整光标到窗口中心
let NERDTreeAutoCenter=1
" 指定鼠标模式(1.双击打开;2.单目录双文件;3.单击打开)
let NERDTreeMouseMode=2
" 默认显示文件
let NERDTreeShowFiles=1
" 默认显示隐藏文件
let NERDTreeShowHidden=1
" 窗口位置（'left' or 'right'）
let g:NERDTreeWinPos="right"
" 窗口宽度
let g:NERDTreeWinSize=30
" 显示行号
let g:NERDTreeShowLineNumbers=1
" 打开文件后关闭NERDTree窗口
let g:NERDTreeQuitOnOpen=1
" 高亮显示当前行目录或文件
let NERDTreeHightCursorline=1

" cscope配置
" -----------------------------------------------------------------------------
" 更新cscope数据库函数
function! UpdateCsdb(path)
	execute "cd " . a:path
    call job_start("cscope -bkq")
	execute "cd -"
	execute "silent cs reset"
endfunction

" 更新GTAGS数据库函数
function! UpdateGtags(f)
    let g:dir = fnamemodify(a:f, ':p:h')
    execute "cd " . g:dir
    call job_start("global -u")
	execute "cd -"
endfunction

if executable('cscope')
    " 获取GTAGS目录
    let s:gtfile = system('global -pq')
	" 向上递归寻找cscope.files
    let s:csfile = findfile("cscope.out", ".;")

	" 如果存在cscope.out则获取目录
    if filereadable(s:csfile)
        " 设置cscope模式标志
        let g:csflag = 0
        " 获取cscope.out目录
        let s:pathlen = strridx(s:csfile, "cscope.out")
		let g:cspath = strpart(s:csfile, 0, s:pathlen)
	" 如果存在cscope.out则获取目录
    elseif s:gtfile != ""
        " 设置cscope模式标志
        let g:csflag = 1
        " 获取GTAGS目录
		let g:gtpath = strpart(s:gtfile, 0, strlen(s:gtfile) - 1)
    " 使用gutentags_plus
    else
        " 设置cscope模式标志
        let g:csflag = 2
	endif

    " cscope程序位置
"	if !exists("g:cspath") && executable('gtags-cscope')
"        " 设置cscope映射的程序
"        set csprg=/usr/local/bin/gtags-cscope
"        if g:csflag == 1
"            " 加载GTAGS
"            execute 'silent cs add ' . g:gtpath . '/GTAGS'
"            " 保存文件后自动更新GTAGS
"            autocmd BufWritePost * call UpdateGtags(expand('<afile>'))
"        else
"            execute 'silent GscopeKill'
"        endif
"    else
"        " 设置cscope映射的程序
"        set csprg=/usr/bin/cscope
"        " 自动命令查找结果不使用quickfix窗口
"        " autocmd BufReadPost * set cscopequickfix=""
"        " 保存文件后自动更新GTAGS
"        autocmd BufWritePost * call UpdateCsdb(g:cspath)
"        " 加载cscope.out
"    	set nocsverb
"		execute 'cs add ' . s:csfile
"    endif

    " 显示添加数据库结果
    set csverb
    " 使用cstag命令代替tag命令 
    set cst
    " 优先搜索tags,失败再搜索cscope.out
    set csto=0
    " 显示文件路径全名 
    set cspc=0
endif

" cscope当前窗口直接跳转快捷键
nnoremap <Leader>cs :cs find s <C-R>=expand("<cword>")<cr><cr>
nnoremap <Leader>cg :cs find g <C-R>=expand("<cword>")<cr><cr>
nnoremap <Leader>cd :cs find d <C-R>=expand("<cword>")<cr><cr>
nnoremap <Leader>cc :cs find c <C-R>=expand("<cword>")<cr><cr>
nnoremap <Leader>ct :cs find t <C-R>=expand("<cword>")<cr><cr>
nnoremap <Leader>ce :cs find e <C-R>=expand("<cword>")<cr><cr>
nnoremap <Leader>cf :cs find f <C-R>=expand("<cfile>")<cr><cr>
nnoremap <Leader>ci :cs find i <C-R>=expand("<cfile>")<cr><cr>
nnoremap <Leader>ca :cs find a <C-R>=expand("<cword>")<cr><cr>

" cscope跳转同时新建水平分割窗口快捷键
"nnoremap <Leader>ss :scs find s <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>sg :scs find g <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>sd :scs find d <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>sc :scs find c <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>st :scs find t <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>se :scs find e <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>sf :scs find f <C-R>=expand("<cfile>")<cr><cr>
"nnoremap <Leader>si :scs find i <C-R>=expand("<cfile>")<cr><cr>
"nnoremap <Leader>sa :scs find a <C-R>=expand("<cword>")<cr><cr>

" cscope跳转同时新建垂直分割窗口快捷键
"nnoremap <Leader>vs :vert scs find s <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>vg :vert scs find g <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>vd :vert scs find d <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>vc :vert scs find c <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>vt :vert scs find t <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>ve :vert scs find e <C-R>=expand("<cword>")<cr><cr>
"nnoremap <Leader>vf :vert scs find f <C-R>=expand("<cfile>")<cr><cr>
"nnoremap <Leader>vi :vert scs find i <C-R>=expand("<cfile>")<cr><cr>
"nnoremap <Leader>va :vert scs find a <C-R>=expand("<cword>")<cr><cr>

" gutentags.vim && gutentags_plus.vim
" -----------------------------------------------------------------------------
" 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project', 'workspace', 'cscope.out', 'GTAGS', 'tags', 'filename.tags']
" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = 'tags'
" tags模式设置
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
"if g:csflag == 2 && executable('gtags-cscope')
"	let g:gutentags_modules += ['gtags_cscope']
"    " 光标定位于quickfix窗口
"    let g:gutentags_plus_switch = 1
"endif
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" 配置ctags的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+lpxzLANU']
let g:gutentags_ctags_extra_args += ['--c-kinds=+lpxzL']
" 如果使用universal ctags需要增加下面一行
"let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
" 禁用 gutentags 自动加载 gtags 数据库的行为
" 避免多个项目数据库相互干扰
" 使用plus插件解决问题
let g:gutentags_auto_add_gtags_cscope = 0
let g:gutentags_define_advanced_commands = 1

" vim-preview.vim
if g:csflag == 2 && executable('gtags-cscope')
    " p预览 大p关闭
    autocmd filetype qf nnoremap <silent><buffer> p :previewquickfix<cr>
    autocmd filetype qf nnoremap <silent><buffer> p :previewclose<cr>
    noremap <leader>u :previewscroll -1<cr> " 往上滚动预览窗口
    noremap <leader>d :previewscroll +1<cr> "  往下滚动预览窗口
endif

" YouCompleteMe.vim
" -----------------------------------------------------------------------------
" 补全配置脚本 
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

" 弹出列表时选择第1项的快捷键(默认为<TAB>和<Down>)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" 弹出列表时选择前1项的快捷键(默认为<S-TAB>和<UP>)
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" 主动补全, 默认为<C-Space>
let g:ycm_key_invoke_completion = '<C-x>'
" 停止显示补全列表(防止列表影响视野),可以按<C-Space>重新弹出
let g:ycm_key_list_stop_completion = ['<C-y>']

" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
" 从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion = 2
" 开启输入注释时补全
let g:ycm_complete_in_comments = 1
" 开启输入字符串时补全
let g:ycm_complete_in_strings = 1
" 开启注释和字符串中收集补全
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" 关闭函数预览
let g:ycm_add_preview_to_completeopt = 0
" 关闭代码诊断
let g:ycm_show_diagnostics_ui = 0
" 设置标识符补全最小字符数
let g:ycm_min_num_identifier_candidate_chars = 2
" 设置以下语言自动弹出语义补全(默认需要输入'.->::'或者按主动补全组合键)
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
" 白名单(以外的文件类型不分析补全)
let g:ycm_filetype_whitelist = { 
			\ "s":1,
			\ "S":1,
			\ "c":1,
			\ "C":1,
			\ "cc":1,
			\ "cxx":1,
			\ "cpp":1,
			\ "py":1,
			\ "go":1,
			\ "java":1, 
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }

" ALE.vim
" -----------------------------------------------------------------------------
"普通模式下警告跳转快捷键
"nmap <silent> <Leader>p <Plug>(ale_previous_wrap)
"nmap <silent> <Leader>n <Plug>(ale_next_wrap)
"<Leader>x触发/关闭语法检查
nmap <Leader>x :ALEToggle<CR>
"<Leader>y查看错误或警告的详细信息
nmap <Leader>y :ALEDetail<CR>
"始终开启标志列
"let g:ale_sign_column_always = 1
" 错误警告消息格式
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" 文件打开时不进行检查
"let g:ale_lint_on_enter = 0
" 文件修改时不进行检查
let g:ale_lint_on_text_changed = 'never'
" 文件保存时进行检查(默认)
"let g:ale_lint_on_save = 1
" 指定对应语言的检查工具
"let g:ale_linters = {
"            \   'c++': ['clang'],
"            \   'c': ['clang'],
"            \   'python': ['pylint'],
"            \   'go': ['gofmt', 'golint'],
"            \}
" 关闭补全功能
let g:ale_completion_enabled = 0
" 使能airline状态栏扩展
let g:airline#extensions#ale#enabled = 1
" 禁用高亮显示
"let g:ale_set_highlights = 0
" 自定义error和warning标志
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚡'

" airline.vim
" -----------------------------------------------------------------------------
" 设置主题
let g:airline_theme='bubblegum'
" 这个是安装字体后必须设置此项"
let g:airline_powerline_fonts = 1
" 开启标签栏
let g:airline#extensions#tabline#enabled = 1
" 显示缓冲区编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" tabline中当前buffer两端的分隔字符
"let g:airline#extensions#tabline#left_sep = ' '
" tabline中未激活buffer两端的分隔字符
"let g:airline#extensions#tabline#left_alt_sep = '|'
" 缓冲区切换快捷键
nnoremap <Leader>. :bn<cr>
nnoremap <Leader>, :bp<cr>
" 关闭状态显示空白符号计数"
let g:airline#extensions#whitespace#enabled = 0
" 状态栏显示设置
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''



