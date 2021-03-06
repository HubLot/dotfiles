scriptencoding utf-8

"==============
" VIM Perso
"==============

" Mode non compatible avec Vi
set nocompatible 

"Numerotation
set number

"Definition tabulation
set tabstop=4

"Auto-indentation

filetype plugin on

syntax enable

"supprime les tabulations et met des espaces
set  expandtab  

" Le backspace
set backspace=indent,eol,start

" Activer la sauvegarde
"set backup

" un historique raisonnable
set history=100

" undo, pour revenir en arrière
set undolevels=150


" Suffixes à cacher
set suffixes=.jpg,.png,.jpeg,.gif,.bak,~,.swp,.swo,.o,.la


"No Backup
set nobackup
set noswapfile


"Activation de la syntaxe
if has("syntax")
    syntax on
endif

" Afficher la position du curseur
set ruler

" Tout ce qui concerne la recherche. Incrémentale
" avec un highlight. Elle prend en compte la
" différence entre majuscule/minuscule.
set incsearch
set noignorecase
set infercase

set  wildmenu    "affiche le menu
set  wildmode =list:longest,list:full    "affiche toutes les possibilités
set  wildignore =*.o,*.r,*.so,*.sl,*.tar,*.tgz    "ignorer certains types de fichiers pour la complétion des includes

imap  <C-Space> <C-X><C-O>

set ttyfast " fast terminal connection
set wmnu " make command-line completion operates in an enhanced mode
set showmode " show current mode in the status line


"256 Colors
set t_Co=256
"Color Scheme
set background=dark
let g:solarized_termcolors=256
colorscheme solarized


"Vim Gromacs
autocmd FileType mdp.gromacs set omnifunc=mdpcomplete#Complete
autocmd BufWritePre *.gro call Update_number_of_atoms()
autocmd FileType mdp.gromacs imap <silent> <buffer> = = <C-X><C-O>
