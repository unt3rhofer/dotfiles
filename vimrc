autocmd BufRead,BufNewFile /home/martin/Dotfiles/i3/* setlocal filetype=i3config

syntax on

:tnoremap <esc> <C-\><C-n>
function CP2XCLIP()
:call system('xclip -selection c', @r)
endfunction
vnoremap z "ry:call CP2XCLIP()<cr>

set number
set autoindent
set tabstop=4
set shiftwidth=4
