# Number of trailing directory components in prompt.
# https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html
# https://superuser.com/questions/505857/set-the-terminal-prompt-in-ubuntu-to-show-only-the-working-directory-name-instea/505863
# PROMPT_DIRTRIM=1
PROMPT_DIRTRIM=2

# Custom aliases and functions.
# https://www.cyberciti.biz/faq/unix-linux-bash-script-check-if-variable-is-empty/
# https://www.cyberciti.biz/tips/bash-aliases-mac-centos-linux-unix.html
# https://stackoverflow.com/questions/20111063/bash-alias-command-with-both-single-and-double-quotes
# https://github.com/bhuvana-guna/awesome-bash-shortcuts
# https://opensource.com/article/19/7/bash-aliases
# https://vikaskyadav.github.io/awesome-bash-alias/
# https://askubuntu.com/questions/146031/bash-alias-alias-name-should-be-a-simple-dash-not-working

alias l="ls --color=auto -alhvF --group-directories-first"
alias ll="ls --color=auto -lhvF --group-directories-first"

# Alias rm to something that will remind you to not use it.
# https://github.com/andreafrancia/trash-cli
alias rm='echo "This is not the command you are looking for."; false'

# Disable the snap command.
alias snap='echo "Snap is disabled."; false'

alias emacs="emacs -nw"

# Disable viminfo completely.
# https://unix.stackexchange.com/questions/329545/disable-viminfo-completely
alias vim="vim -i NONE"
alias v="vim"

alias less="vim -R"

# alias python3=python3.9
alias python=python3

alias e="exit"
alias f="fastfetch"
alias n="neofetch"
alias o="htop"
alias p="python3"
alias q="exit"
alias r="clear"
alias x="exit"

# cd and then ls automatically.  cat if it is a file.
# https://superuser.com/questions/507697/how-do-i-cd-and-then-ls-automatically-in-linux
# https://unix.stackexchange.com/questions/20396/make-cd-automatically-ls
# https://linuxize.com/post/bash-check-if-file-exists/
c() {
    r;
    if [ -d "$1" ]; then
        cd "$@" && l;
    elif [ -f "$1" ]; then
        bat "$@";
        # cat "$@";
    else
        l;
    fi
}

# https://stackoverflow.com/questions/13547809/create-a-bash-alias-for-the-cd-command
# https://askubuntu.com/questions/1201991/shell-navigate-up-n-directories
# https://stackoverflow.com/questions/29771918/how-to-create-an-alias-in-a-shell-to-go-to-parent-directories
alias -- -="cd - && c"
alias ..="c .."
alias ...="c ../.."
alias ....="c ../../.."
alias .....="c ../../../.."
alias ......="c ../../../../.."
alias .......="c ../../../../../.."
alias .1="c .."
alias .2="c ../.."
alias .3="c ../../.."
alias .4="c ../../../.."
alias .5="c ../../../../.."
alias .6="c ../../../../../.."

alias d="c ~/Downloads/"
alias h="c ~"

# alias b=""
# alias g=""
# alias i=""
# alias s=""
# alias t=""
# alias z=""

alias u="sudo dnf upgrade --refresh"

# Homebrew (macOS or Linux).
# alias u="brew update && brew upgrade"

alias y="if [ -z \"\$CONDA_PREFIX\" ]; then conda activate py; else conda deactivate; fi"
