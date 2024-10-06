#!/bin/sh

# Define a function using POSIX-compliant syntax
short_path() {
    for F in $(pwd | tr '/' '\n'); do
        echo -n /$(echo $F | cut -b 1)
    done
    echo -n $(pwd | rev | cut -d '/' -f 1 | rev | cut -b1 --complement)
}

# Set the prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]$(short_path)\[\033[00m\]\$ '
