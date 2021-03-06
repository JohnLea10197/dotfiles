#!/bin/sh

export XDG_DATA_HOME="$HOME"/.local/share 
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc-2.0
export WGETRC="$XDG_CONFIG_HOME"/wget/wgetrc 
export WINEPREFIX="$XDG_DATA_HOME"/wineprefix/        
export KODI_DATA="$XDG_DATA_HOME"/kodi 
export KDEHOME="$XDG_CONFIG_HOME"/kde
export ZDOTDIR="$XDG_CONFIG_HOME"/zsh   
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export LESSHISTFILE=-
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
