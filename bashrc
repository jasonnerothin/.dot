#! /usr/bin/env bash

[[ $- != *i* ]] && return

# required order:
# functions -> completions
# git       -> prompt      -> fasd

__sourced=(
    exports
    colors
    aliases
    functions
    completions
    git
    prompt
    rvm
    see
    virtualenvwrapper
    fasd
)

for __item in ${__sourced[@]}; do
    source "${HOME}/.bash/${__item}"
done

unset __item
unset __sourced
