alias ls='ls -G'
alias ll='ls -ltas'
alias cls='clear'
alias l='ls -G'
alias cr='function _conda_remove() { for env in "$@"; do conda remove --name $env --all -y; done }; _conda_remove'

conda-create() {
    local last_env=""
    for env in "$@"; do
        conda create --name "$env" python=3.10 -y
        last_env="$env"
    done
    if [ -n "$last_env" ]; then
        conda activate "$last_env"
    fi
}

alias condad='conda deactivate'
alias ca='conda activate'
alias cel='conda env list'
alias bce='bazel clean --expunge --async'
alias gits='git status'
alias gitl='git log'
alias gitpush='git push'
alias gitpull='git pull'

pipi() {
  pip install "$@"
}
alias pipu='pip uninstall "$1" -y'
alias pipl='pip list'

