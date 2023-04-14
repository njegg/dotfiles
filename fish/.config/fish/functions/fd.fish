function fd --description 'fuzzy find a dir and cd into it'
    cd $(find \
            ~/ \
            ~/Code \
            ~/Documents \
            ~/Documents/4-God/ \
            ~/.dotfiles \
        -mindepth 1 -maxdepth 1 -type d -name '[^.]*' \
        | fzf
    )
end
