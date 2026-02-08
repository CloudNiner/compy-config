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
