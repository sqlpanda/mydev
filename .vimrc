" 隱藏捲動條"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隱藏頂部標籤欄"
set showtabline=0
"設置字型"
set guifont=Monaco:h13         
syntax on    "開啟語法高亮"
set background=dark        "設置背景色"
set nowrap    "設置不折行"
set fileformat=unix    "設置以unix的格式保存檔案"
set cindent        "設置C樣式的縮進格式"
set tabstop=4    "設置table長度"
set shiftwidth=4        "同上"
set showmatch    "顯示匹配的括弧"
set scrolloff=5        "距離頂部和底部5行"
set laststatus=2    "命令行為兩行"
set fenc=utf-8      "檔案編碼"
set backspace=2
set mouse=c        "啟用滑鼠"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase        "忽略大小寫"
set incsearch
set hlsearch        "高亮搜索項"
set noexpandtab        "不允許擴展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline        "突出顯示當前行"
set cursorcolumn        "突出顯示當前列"

"Python Indentation"
set softtabstop=4
set shiftwidth=4
set textwidth=79
set autoindent


"For Vundle"
set nocompatible              " required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'gmarik/Vundle.vim'
	"Plugin 'Valloric/YouCompleteMe'
	autocmd FileType python Bundle 'Valloric/YouCompleteMe'

	" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required



