set shell=/bin/bash
set rnu
set nu
set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

" Add plugins here
" Plug 'scrooloose/nerdtree'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'davidhalter/jedi-vim'
" Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'nanotech/jellybeans.vim'
" Plug 'therubymug/vim-pyte'

call plug#end()

" colorscheme pyte
" highlight Normal ctermbg=White
" highlight NonText ctermbg=White
" map <C-o> :NERDTreeToggle<CR>
colo jellybeans

" let g:ale_completion_enabled = 0
" let g:ale_sign_error = '>'
" let g:ale_sign_warning = '-'
" let g:ale_lint_on_enter = 0
" let g:ale_linters = {'python': ['flake8', 'pylint']}
" "let g:ale_linters_ignore = {'python': ['pylint']}
" 
" hi ALEError ctermbg=darkred guibg=#400000
" hi ALEWarning ctermbg=darkyellow guibg=#423D00
" let g:airline#extensions#ale#enabled = 0 
" " hi clear ALEStyleError
" " hi clear ALEStyleWarning
" " hi clear ALEInfoLine
" " hi clear ALEErrorLine
" " hi clear ALEWarningLine
" let g:ale_warn_about_trailing_blank_lines = 0
" let g:ale_warn_about_trailing_whitespace = 0
" 
" function! LinterStatus() abort
"     let l:counts = ale#statusline#Count(bufnr(''))
"     let l:all_errors = l:counts.error + l:counts.style_error
"     let l:all_non_errors = l:counts.total - l:all_errors
"     return l:counts.total == 0 ? 'OK' : printf(
"     \   '%dW %dE',
"     \   all_non_errors,
"     \   all_errors
"     \)
" endfunction
" 
" set statusline=%{LinterStatus()}
