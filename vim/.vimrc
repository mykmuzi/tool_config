map R :source $MYVIMRC<CR>
let mapleader=','

":color desert
syntax on
let &t_ut=''
set number
set cursorline
set hlsearch
set incsearch
set wildmenu		" cmd menu

set foldmethod=indent   " 设置缩进折叠
set foldlevel=99        " 设置折叠层数



nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
                        " 用空格键来开关折叠
			" " 自动跳转到上次退出的位置
if has("autocmd")
     au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


noremap <LEADER><CR> :nohlsearch<CR>

noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'yggdroot/indentline'
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do':'./install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'lfv89/vim-interestingwords'
Plug 'mg979/vim-visual-multi'
Plug 'kshenoy/vim-signature'

call plug#end()

" airline config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

" nerdtree config
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
	\ '\.igt$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.pyo$', '\.svn$', '\.swp$',
	\ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.repeproject$',
	\ ]

" ctrlp config
"let g:ctrlp_map = '<c-p>'

" easymotion config
nmap ss <Plug>(easymotion-s2)

" fzf config
nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <C-i> :Buffers<CR>


" interestingwords config
" nnoremap <leader>k :


"let g:interestingWordsGUIColors = ['#8CCBEA', '#A4E57E', '#FFDB72', '#FF7272', '#FFB3FF', '#9999FF']
"let g:interestingWordsTermColors = ['154', '121', '211', '137', '214', '222']

" let g:interestingWordsRandomiseColors = 1





