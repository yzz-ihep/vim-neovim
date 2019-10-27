"安装插件位置
call plug#begin('~/.local/share/nvim/plugged')
" 安装插件位置
call plug#begin('/home/yzz/.local/share/nvim/plugged')

"注释自动生成
Plug 'vim-scripts/DoxygenToolkit.vim'

"Go语言
Plug 'fatih/vim-go'

"cmake
Plug 'rperier/vim-cmake-syntax'
Plug 'richq/vim-cmake-completion'

Plug 'Valloric/YouCompleteMe'
"YouCompleteMe:语句补全插件
autocmd InsertLeave * if pumvisible() == 0|pclose|endif		"离开插入模式后自动关闭预览窗口"
let g:YouCompleteMe#enable_at_startup=1
let g:ycm_auto_trigger=1
let g:ycm_cache_omnifunc = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_tags_files = 1           " 开启 YCM基于tags标签引擎
let g:ycm_complete_in_comments = 1                          " 在注释输入中也能补全
let g:ycm_complete_in_strings = 1                           " 在字符串输入中也能补全
let g:ycm_global_ycm_extra_conf = '~/.local/share/nvim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_key_invoke_completion=""
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']  " 映射按键,没有这个会拦截掉tab, 导致其他插件的tab不能用.
let g:ycm_key_list_stop_completion = ['<CR>']              " 停止匹配
let g:ycm_collect_identifiers_from_comments_and_strings = 1 " 注释和字符串中的文字也会被收入补全
let g:ycm_global_ycm_extra_conf = '/home/yzz/.local/share/nvim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
let g:ycm_max_diagnostics_to_display = 0
let g:ycm_min_num_of_chars_for_completion=2                 " 从第2个键入字符就开始罗列匹配项 "
let g:ycm_python_binary_path = '/home/yzz/snap/anaconda3/bin/python3'
let g:ycm_seed_identifiers_with_syntax = 1                  " 语法关键字补全
let g:ycm_show_diagnostics_ui = 0                           " 禁用语法检查
"查询ultisnips提供的代码模板补全
let g:YouCompleteMe#enable_at_startup=1
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可
let g:ycm_use_ultisnips_completer = 1
"nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>     " 跳转到定义处
"let g:syntastic_ignore_files=[".*\.py$"]
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"markdown预览
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
"markdown语法
Plug 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_conceal = 0

"if/endif补全
Plug 'tpope/vim-endwise'

"git 插件
Plug 'tpope/vim-fugitive'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"let g:airline#extensions#tabline#enabled = 1
let g:airline_extensions = ['tabline']
let g:airline_theme='papercolor'
"let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
"let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number
let g:airline#extensions#tabline#tabnr_formatter = 'tabnr'
"显示时间
let g:airline_section_b = '%{strftime("%T")}'
"显示路径
let g:airline_section_c = '%{getcwd()}'
"显示git status
let g:airline_section_x = '%{fugitive#statusline()}%y'
"unicode symbols
let g:airline_powerline_fonts = 1
let g:airline#extensions#languageclient#enabled = 1
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#buffer_nr_format = '%s: '
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_symbols_ascii = 1
let g:airline_mode_map = {
			\ '__'     : '-',
			\ 'c'      : 'C',
			\ 'i'      : 'I',
			\ 'ic'     : 'I',
			\ 'ix'     : 'I',
			\ 'n'      : 'N',
			\ 'multi'  : 'M',
			\ 'ni'     : 'N',
			\ 'no'     : 'N',
			\ 'R'      : 'R',
			\ 'Rv'     : 'R',
			\ 's'      : 'S',
			\ 'S'      : 'S',
			\ ''     : 'S',
			\ 't'      : 'T',
			\ 'v'      : 'V',
			\ 'V'      : 'V',
			\ ''     : 'V',
			\ }

"这个判断必须存在，否则下面的symbols会出现未定义
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_alt_sep = '❯'
"let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
"let g:airline_right_alt_sep = '❮'
let g:airline_right_alt_sep = '<-'
"let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '☰'
"let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

"括号自动补全
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

"彩虹括号
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

"注释插件
Plug 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 0
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 0
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"对齐
Plug 'godlygeek/tabular'
"代码对齐可视化
Plug 'yggdroot/indentline'
" Vim
let g:indentLine_color_term = 139
" GVim
"let g:indentLine_color_gui = '#A4E57E'
" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 256
"let g:indentLine_bgcolor_gui = '#FF5F00'

"代码自动 format 插件
Plug 'chiel92/vim-autoformat'
noremap <F9> :Autoformat<CR>:w<CR><CR>
let g:formatdef_my_cpp = '"astyle --style=linux --indent-classes --pad-oper"'
let g:formatters_cpp = ['my_cpp']
"let g:formatdef_allman = '"astyle --style=allman --pad-oper"'
"let g:formatexpr
"let g:formatters_cpp = ['allman']
"let g:formatters_c = ['allman']
"let g:autoformat_verbosemode=1

"nerdtree高亮
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

"文件浏览插件 nerdtree
Plug 'scrooloose/nerdtree'
"打开nerdtree
map <F7> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 显示隐藏文件
"let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let g:NERDTreeShowIgnoredStatus = 1
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos = 'left'

let g:NERDTreeIndicatorMapCustom = {
			\ "Modified"  : "✹",
			\ "Staged"    : "✚",
			\ "Untracked" : "✭",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ 'Ignored'   : '☒',
			\ "Unknown"   : "?"
			\ }

"NERDTree插件，显示git status标志
Plug 'Xuyuanp/nerdtree-git-plugin'

"文件图标
Plug 'ryanoasis/vim-devicons'

"代码检查工具
Plug 'w0rp/ale'
highlight ALEWarning ctermbg=yellow
highlight ALEError ctermbg=black
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
"let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_echo_cursor = 1
"use the quickfix list instead of the loclist
let g:ale_open_list = 1
"Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 3
let g:ale_set_quickfix = 0
let g:ale_keep_list_window_open = 0
let g:ale_set_loclist = 0
let g:ale_set_balloons = 1
let g:ale_open_list = 0
"Show 5 lines of errors (default: 10)
let g:ale_list_window_size = 3
let g:ale_set_quickfix = 1
let g:ale_keep_list_window_open = 0
let g:ale_set_loclist = 1
let g:ale_set_balloons = 0
let g:ale_completion_enabled = 0
let g:ale_c_clang_options = 'std=c17 -Wall'
let g:ale_cpp_clangcheck_option = 'std=c17 -Wall'
let g:ale_cpp_clang_gcc_options = 'std=c17 -Wall'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap sp <Plug>(ale_previous_wrap)
nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
"使用clang对c和c++进行语法检查，对python使用pylint进行语法检查
let g:ale_linters = {
			\   'cpp': ['clang'],
			\   'c': ['gcc'],
			\   'python': ['flake8'],
			\   'go': ['golint'],
			\}
let g:ale_cmakelint_executable = '/home/yzz/snap/anaconda3/bin/cmakelint'

"高亮显示复制区域
Plug 'machakann/vim-highlightedyank'


" 高亮持续时间为 1000 毫秒
let g:highlightedyank_highlight_duration = 1000

"在nerdtree中修改文件名
Plug 'pbrisbin/vim-mkdir'

"变量函数查看
Plug 'majutsushi/tagbar'
nmap <F8> :TagbarToggle<CR>
let g:tagbar_left = 0
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_show_visibility = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:tagbar_width = 25

let g:tagbar_type_go = {
			\ 'ctagstype' : 'go',
			\ 'kinds'     : [
			\ 'p:package',
			\ 'i:imports:1',
			\ 'c:constants',
			\ 'v:variables',
			\ 't:types',
			\ 'n:interfaces',
			\ 'w:fields',
			\ 'e:embedded',
			\ 'm:methods',
			\ 'r:constructor',
			\ 'f:functions'
			\ ],
			\ 'sro' : '.',
			\ 'kind2scope' : {
			\ 't' : 'ctype',
			\ 'n' : 'ntype'
			\ },
			\ 'scope2kind' : {
			\ 'ctype' : 't',
			\ 'ntype' : 'n'
			\ },
			\ 'ctagsbin'  : 'gotags',
			\ 'ctagsargs' : '-sort -silent'
			\ }

"上下移动
Plug 'matze/vim-move'

"欢迎界面
Plug 'mhinz/vim-startify'
let g:startify_change_to_dir = 1

"主题
Plug 'sjl/badwolf'
Plug 'nlknguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim'
Plug 'w0ng/vim-hybrid'
Plug 'larssmit/vim-getafe'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'jnurmine/zenburn'

Plug 'shougo/echodoc.vim'
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'
" To use a custom highlight for the float window,
" change Pmenu to your highlight group
highlight link EchoDocFloat Pmenu

call plug#end()

"colorscheme solarized
"let g:solarized_termcolors=256
"let g:solarized_contrast  = "low"
"colorscheme hybrid
"colorscheme molokai
"colorscheme zenburn
colorschem PaperColor

"对于某些主题，高亮的颜色可能看不清楚，可以在 Nvim 设置中加入
hi HighlightedyankRegion cterm=reverse gui=reverse

"键盘命令
"设置 leader 键，例子为空格键，也可以设置为其他的
let mapleader=" "

" 置快捷键，关闭一个窗口
nnoremap <leader>wq :wq<CR>
nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>
" 映射全选+复制 ctrl+a
nnoremap <C-A> ggVG
" 选中状态下 Ctrl+c 复制
vnoremap <C-c> "+y

"实用设置
"侦测文件类型
filetype on
"载入文件类型插件
filetype plugin on
"为特定文件类型载入相关缩进文件
filetype indent on
"底部不显示三种模式,不然echodoc.vim会冲突
set noshowmode
"设置当文件被改动时自动载入
set autoread
" 在接受补全后不分裂出一个窗口显示接受的项
set completeopt-=preview
set completeopt=longest,menu
"设置背景为黑色
set background=dark
"代码补全
"set completeopt=preview,menu
"共享剪贴板
set clipboard=unnamed
"自动保存
set autowrite
set ruler                   " 打开状态栏标尺
set cursorline              " 突出显示当前行
set cursorcolumn            " 突出显示当前列
set colorcolumn=81
set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
"set foldenable             " 开始折叠
set nofoldenable            "禁用折叠
" 不要使用vi的键盘模式，而是vim自己的
set nocompatible
" 语法高亮
set syntax=on
syntax enable
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
"set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set noexpandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
set numberwidth=1
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch
"行内替换
set gdefault
"编码设置
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 显示颜色
set t_Co=256
set laststatus=2
"命令行（在状态行下）的高度
set cmdheight=1
"保存全局变量
set viminfo+=!
"带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-
"字符间插入的像素行数目
set linespace=1
"增强模式中的命令行自动完成操作
set wildmenu
"使回格键（backspace）正常处理indent, eol, start等
set backspace=2
"允许backspace和光标键跨越行边界
"set whichwrap+=<,>,h,l
"可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
"高亮显示匹配的括号
set showmatch
"hi MatchParen ctermbg=blue ctermfg=white
"set matchpairs=
"显示未完成指令
set showcmd
"匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1
"光标移动到buffer的顶部和底部时保持3行距离
set scrolloff=3
"为C程序提供自动缩进
set smartindent
" 高亮显示普通txt文件（需要txt.vim脚本）
au BufRead,BufNewFile *  setfiletype txt
"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"打开shell
nmap <leader>t :vs term://$SHELL<CR>

"切换Buffer
nnoremap <TAB> :bnext<CR>
nmap<leader>1 :b1<CR>
nmap<leader>2 :b2<CR>
nmap<leader>3 :b3<CR>
nmap<leader>4 :b4<CR>
nmap<leader>5 :b5<CR>
nmap<leader>6 :b6<CR>
nmap<leader>7 :b7<CR>
nmap<leader>8 :b8<CR>
nmap<leader>9 :b9<CR>

"回到上次打开位置
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"自动设当前编辑的文件所在目录为当前工作路径
set autochdir

" 快速运行程序
"<F5>编译，<F6>运行
map <F5> :call Compile()<CR>

func! Compile()
	exec "w"
	if &filetype == 'c'
		"exec '!g++ -Wall % -o %< -std=c++11 -lpthread -lmysqlclient'
		"exec '!g++ -Wall % -o %< -std=c++11 -lpthread'
		"exec '!g++ -Wall % -o %< -std=c++11 -lmysqlclient'
		exec '!gcc -Wall % -o %<'
	elseif &filetype == 'cpp'
		exec '!g++ -Wall % -o %< -std=c++17 -lpthread -lboost_thread -lboost_system'
		"exec '!clang++ -Wall % -o %< -std=c++11 -lpthread '
		"exec '!clang++ -Wall % -o %< -std=c++11 -lmysqlcppconn'
		"exec '!g++ -Wall % -o %< -std=c++17'
	elseif &filetype == 'python'
		exec '!time python %'
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'go'
		exec 'GoBuild'
	elseif &filetype == 'java'
		exec '!javac %'
	endif
endfunc

map <F6> :call Run()<CR>
func! Run()
	exec "w"
	if &filetype == 'c'
		exec '!time ./%<'
	elseif &filetype == 'cpp'
		exec '!time ./%<'
	elseif &filetype == 'python'
		exec '!time python %'
	elseif &filetype == 'go'
		exec 'GoRun'
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'java'
		exec '!java %'
	endif
endfunc

map <F2> :make<CR>
map <F3> :make run<CR>
map <F4> :make clean<CR>
