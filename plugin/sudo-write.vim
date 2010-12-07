
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

