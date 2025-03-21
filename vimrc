call plug#begin()
"智能补全引擎"
Plug 'neoclide/coc.vim', {'branch':'release'}
"模糊搜索"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"文件系统导航"
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
"Git集成"
Plug 'tpope/vim-fugitive'
Plug 'w0rp/ale'
Plug 'brookhong/cscope.vim'
Plug 'Yggdroot/indentLine'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'lvht/tagbar-markdown'
Plug 'ferrine/md-img-paste.vim'
Plug 'lervag/vimtex'
"主题方案"
Plug 'altercation/vim - colors - solarized'
"Plug 'sirver/ultisnips'
call plug#end()
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
"#######################个性化配置区#################"
"注释掉高亮设置段后common插件配置正常
source ~/.vim/self/common.vim
source ~/.vim/self/files.vim
source ~/.vim/self/nerdtree.vim
source ~/.vim/self/cscope.vim
source ~/.vim/self/tags.vim
"状态栏美化"
source ~/.vim/self/airline.vim
"代码缩进线"
source ~/.vim/self/indentline.vim
