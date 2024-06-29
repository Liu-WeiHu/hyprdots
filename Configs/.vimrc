if has('mouse') 
    set mouse-=a 
endif

" 启用语法高亮
syntax on

" 设置默认颜色方案
colorscheme gruvbox

" 启用文件类型检测和插件
filetype plugin indent on

" 插件管理设置
call plug#begin('~/.vim/plugged')

" 插件列表
Plug 'sheerun/vim-polyglot'      " 语法高亮插件，支持多种语言
Plug 'morhetz/gruvbox'           " 受欢迎的颜色方案

call plug#end()

" 自定义高亮颜色
highlight Comment ctermfg=red

" 其他常用设置
set number                       " 显示行号
set relativenumber               " 显示相对行号
set tabstop=4                    " 设置 Tab 宽度为 4 个空格
set shiftwidth=4                 " 设置缩进宽度为 4 个空格
set expandtab                    " 用空格代替 Tab
set autoindent                   " 自动缩进

" git clone https://github.com/sheerun/vim-polyglot.git
" git clone https://github.com/morhetz/gruvbox.git
" mkdir -p ~/.vim/pack/plugins/start/
" cp -r vim-polyglot ~/.vim/pack/plugins/start/
" cp -r gruvbox ~/.vim/pack/plugins/start/
