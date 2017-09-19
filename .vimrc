set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'godlygeek/tabular'

Plugin 'jiangmiao/auto-pairs'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}           

Plugin 'alvan/vim-closetag'

Plugin 'pangloss/vim-javascript'

Plugin 'stanangeloff/php.vim'

call vundle#end()

filetype plugin indent on 

syntax enable

set encoding=utf-8 nobomb

set hlsearch
set cc=81
set history=20 
set cursorline

set showmatch 

set list
set listchars=tab:T_

set tabstop=4 
set shiftwidth=4
set expandtab 

highlight ColorColumn ctermbg=0
highlight CursorLine ctermbg=0
highlight LineNr ctermfg=7

set omnifunc=syntaxcomplete#Complete

autocmd BufWrite *.php !php -l %

" vim-closetag            
let g:closetag_filenames = '*.xml,*.html,*.php,*.twig'

" php.vim
function! PhpSyntaxOverride()
    hi! def link phpDocTags  phpDefine
    hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
    autocmd!
    autocmd FileType php call PhpSyntaxOverride()
augroup END

