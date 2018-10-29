
filetype plugin on
let g:python_host_prog="C:/Python37/python.exe"

"-----PackageManagement----------------------------------------
packadd minpac

if exists('*minpac#init')
    call minpac#init()
    call minpac#add('k-takata/minpac', {'type': 'opt'})
    call minpac#add('KeitaNakamura/neodark.vim')
    call minpac#add('vim-airline/vim-airline')
    call minpac#add('tpope/vim-unimpaired')
endif

command! PackUpdate packadd minpac | source "$VIMCONFIG/init.vim" | call minpac#update('', {'do': 'call minpac#status()'})
command! PackClean  packadd minpac | source "$VIMCONFIG/init.vim" |call minpac#clean()
command! PackStatus packadd minpac | source "$VIMCONFIG/init.vim" | call minpac#status()

"-----ColorScheme--------------------------------------
set termguicolors
colorscheme neodark
let g:neodark#use_256color = 1
let g:neodark#solid_vertsplit = 1

"-----WindowSplits-------------------------------------
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-J> <C-W><C-J>