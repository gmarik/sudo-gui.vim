" * sudo-write - is a vim plugin for "sudo" operations
" Author:       gmarik
" Homepage:     http://github.com/gmarik/sudo-write
" Readme:       http://github.com/gmarik/sudo-write/blob/master/README.md
" Version:      0.1

if exists('g:loaded_sudo_write')
  finish
endif
let g:loaded_sudo_write = 1

comm! -bang SudoWriteCli    exec 'w !sudo tee %:p > /dev/null' | e!
comm! -bang SudoWriteMacGUI exec 'w !security execute-with-privileges /usr/bin/tee %:p > /dev/null' | e!
comm! -bang SudoWritePK     exec 'w !pkexec tee %:p > /dev/null' | e!

comm! -bang SudoWrite SudoWriteCli
if exists(':W') != 2
    comm! -bang W SudoWrite
endif

if has('gui_running') && has('mac') | comm! -bang SudoWrite SudoWriteMacGUI
elseif executable('pkexec') == 1    | comm! -bang SudoWrite SudoWritePK
endif
