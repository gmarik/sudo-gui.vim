## About

`sudo-write` is a `vim`, `MacVim`, `gvim` plugin for "sudo" operations.


## Why

The original idea isn't mine, but I just couldn't get `MacVim` working with `sudo`.

## What

`sudo-write` plugin provides `SudoWrite!` command (and a `W!` shortcut) allowing to write a file with administrative priviliges.
Depending on whether `vim` is run as a terminal app or as a GUI one a password will be requested either as a console input or as a GUI dialog box.

Currently console, and OSX GUI dialogs are provided. GTK and other - to come...

## TODO

* SudoRead
* GTK dialog
* Screencast
* docs
