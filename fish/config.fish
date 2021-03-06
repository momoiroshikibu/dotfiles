set -x EDITOR emacsclient
set -x PATH $HOME/.nodebrew/current/bin \
        $HOME/.roswell/bin \
        $PATH

# rbenv
rbenv init - | source

# alias
alias dc docker-compose
alias fig docker-compose
alias gits 'git s'
alias gulp node_modules/.bin/gulp
alias e 'emacsclient -nw $1'
alias g peco_select_ghq_repository

function fish_user_key_bindings
    bind \cx\cr peco_recentd
    bind \cr peco_select_history (commandline -b)
end

function peco
    command peco --layout=bottom-up $argv
end

function ipaddress
    ifconfig en0 | grep 'inet ' | awk '{print $2}'
end
