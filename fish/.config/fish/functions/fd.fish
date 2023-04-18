function fd --description 'fuzzy find a dir and cd into it'
    if test (count $argv) -gt 0
        set dirs $argv[1]
    else
        set dirs ~/ \
                ~/Code \
                ~/Documents \
                ~/Documents/4-God/ \
                ~/.dotfiles
    end

    set dir $(find $dirs \
        -mindepth 1 -maxdepth 1 -type d -name '[^.]*' \
        | fzf
    )

    if test (count $dir) -ne 0
        cd $dir
    end
end
