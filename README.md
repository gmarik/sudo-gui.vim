## About

`sudo-write` is a `vim`, `MacVim`, `gvim` plugin for "sudo" operations.


## Why

The original idea isn't mine, but I just couldn't get `MacVim` working with `sudo`.

## What

`sudo-write` plugin provides `SudoWrite!` command (and a `W!` shortcut) allowing to write a file with administrative priviliges.
Depending on whether `vim` is run as a terminal app or as a GUI one a password will be requested either as a console input or as a GUI dialog box.

Currently console, and OSX GUI dialogs are provided. GTK and other - to come...

![Screenshot](http://lh5.ggpht.com/_SriKiRB4s00/TP3DWZ5mSSI/AAAAAAAAG78/ol_SQu2dM-M/s800/shot.png)

## Installation

If you're [`Vundle`](http://github.com/gmarik/vundle/) user add to your `.vimrc`

    Bundle 'https://github.com/gmarik/sudo-write.git'

and run `:BundleInstall` ( `Vim` restart required for Vundle prior to v0.5)


Otherwise, run in your console:

    git clone https://github.com/gmarik/sudo-write.git ~/.vim/sudo-write.git 

And append to your `.vimrc`

    set rtp+=~/.vim/sudo-write.git

Don't forget to restart `vim`.

## PS 

I know ther's `sudo.vim` but I rather build prototype before contributing...

## TODO

* GTK dialog
* docs
* SudoRead?
* Screencast?
