" * sudo-write - is a vim plugin for "sudo" operations
" Author:       gmarik
" Homepage:     http://github.com/gmarik/sudo-write
" Readme:       http://github.com/gmarik/sudo-write/blob/master/README.md
" Version:      0.1

if exists('g:loaded_sudo_write')
  finish
endif
let g:loaded_sudo_write = 1

comm! -bang SudoWriteCli    exec 'w !sudo tee % > /dev/null' | e!
comm! -bang SudoWriteMacGUI exec 'w !security execute-with-privileges /usr/bin/tee % > /dev/null' | e!
"comm! -bang SudoWriteGtk exec TODO

comm! -bang SudoWrite SudoWriteCli
comm! -bang W SudoWrite

if has('gui_running')
  if     has('mac') | comm! -bang SudoWrite SudoWriteMacGUI
  elseif has('gtk')
    " TODO
  endif
endif



