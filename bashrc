#! /usr/bin/env bash

[[ $- != *i* ]] && return

# required order:
# functions -> completions
# git       -> prompt      -> fasd

__sourced=(
    exports
    aliases
    functions
    state
    completions
    git
    prompt
    rvm
    see
    virtualenvwrapper
    # pysource
    fasd
)

for __item in ${__sourced[@]}; do
    source "$HOME/.bash/$__item"
done

unset __item
unset __sourced
