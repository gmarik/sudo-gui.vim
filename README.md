## About

`sudo-gui.vim` is a GUI sudo for a GUI `vim`.


## Why

The original idea isn't mine, but I just couldn't get `MacVim` working with `sudo`.

## What

`sudo-gui.vim` plugin provides the `SudoWrite!` command, along with a `W!` shortcut, enabling a file with administrative priviliges to be written.
Depending on whether `vim` is run as a GUI or terminal app, a password will be requested at the console or in a GUI dialog box.

* On OS X built-in security dialog will be used.
* On Linux polkit's `pkexec` will be invoked if available.
* As a fallback you'll be able to authenticate in the console using `sudo`.

![Screenshot](http://lh5.ggpht.com/_SriKiRB4s00/TP3DWZ5mSSI/AAAAAAAAG78/ol_SQu2dM-M/s800/shot.png)

## Installation

If you're a [`Vundle`](http://github.com/gmarik/vundle/) user add the following to your `.vimrc`:

    Bundle 'gmarik/sudo-gui.vim'

and run `:BundleInstall` (a `Vim` restart is required for Vundle versions prior to v0.5).


## PS 

I know there is a `sudo.vim` but I'd rather prototype before contributing...

## TODO

* docs
* SudoRead?
* Screencast?
