" # vim:fileencoding=utf-8:ft=conf:foldmethod=marker

" local.vim

call plug#begin("~/.vim/plugged")

Plug 'Yggdroot/indentLine'

Plug '~/.fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

"# Yggdroot/indentLine {{{



"# }}}

"# junegunn/fzf.vim {{{

    nmap <C-p> :Files<CR>
    nmap <C-e> :Buffers<CR>
    let g:fzf_action = { 'ctrl-e': 'edit' }

"# }}}
