## About

`sudo-gui.vim` is a GUI for a GUI `vim`.


## Why

The original idea isn't mine, but I just couldn't get `MacVim` working with `sudo`.

## What

`sudo-gui.vim` plugin provides `SudoWrite!` command (and a `W!` shortcut) allowing to write a file with administrative priviliges.
Depending on whether `vim` is run as a terminal app or as a GUI one a password will be requested either as a console input or as a GUI dialog box.

Currently console, and OSX GUI dialogs are provided. GTK and other - to come...

![Screenshot](http://lh5.ggpht.com/_SriKiRB4s00/TP3DWZ5mSSI/AAAAAAAAG78/ol_SQu2dM-M/s800/shot.png)

## Installation

If you're [`Vundle`](http://github.com/gmarik/vundle/) user add to your `.vimrc`

    Bundle 'gmarik/sudo-gui.vim'

and run `:BundleInstall` ( `Vim` restart required for Vundle prior to v0.5)

## PS 

I know ther's `sudo.vim` but I rather build prototype before contributing...

## TODO

* GTK dialog
* docs
* SudoRead?
* Screencast?
