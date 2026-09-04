if status is-interactive
    # Commands to run in interactive sessions can go here

    # homebrew
    if test -d /opt/homebrew
        # Homebrew is installed on MacOS
        /opt/homebrew/bin/brew shellenv | source
     end

    # starship
    if type -q starship
        starship init fish | source
    end

end

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
if test -f  ~/.orbstack/shell/init2.fish
    source ~/.orbstack/shell/init2.fish 2>/dev/null || :
end
