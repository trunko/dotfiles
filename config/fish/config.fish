if status is-interactive
    set -g fish_greeting
    fish_vi_key_bindings

    function ls
        exa --icons -F -H --group-directories-first --hyperlink --git $argv
    end

    function grep
        command grep --color=auto $argv
    end

    function y
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
    end

    starship init fish | source
end
