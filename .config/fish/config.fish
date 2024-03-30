if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias v="nvim"
set fish_greeting
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin
starship init fish | source
fish_ssh_agent

# pnpm
set -gx PNPM_HOME "/home/alice/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

zoxide init --cmd cd fish | source
# pnpm end
