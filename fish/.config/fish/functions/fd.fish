function fd --description 'fuzzy find a dir and cd into it'
    if test (count $argv) -gt 0
        if test $argv[1] = '-'
            traverse

            return
        else if test $argv[1] = '-h'
            echo 'fd [-h] [-] [dir]'

            echo '
    no args:;fuzzy find directories in $FD_DIRS and cd into selected one
    dir:;fuzzy find directories in \'dir\' and cd into selected one
    -h:;print this help
    -:;traverse directories
            ' \
            | column -t -s ';'

            return
        else
            set dirs $argv[1]
        end
    else
        if test (count $FD_DIRS) -eq 0
            echo '$FD_DIRS is empty!'
            echo 'add your favourite directories to $FD_DIRS'
            echo 'example: set -gx FD_DIRS ~/Documents ~/Downloads '
            return
        end

        set dirs $FD_DIRS
    end

    set dir $(find $dirs \
        -mindepth 1 -maxdepth 1 -type d -name '[^.]*' \
        | fzf --height 20 --reverse
    )

    if test (count $dir) -ne 0
        cd $dir
    end
end

function traverse
    set dir $(pwd)

    while true
        set new_dir $(find $dir \
            -mindepth 1 -maxdepth 1 -type d -name '[^.]*'  \
            | fzf \
                --expect='<,>' --header='controls: <, >, ESC' \
                --height 20 --reverse
        )

        if test (count $new_dir[1]) -eq 0
            break
        end

        if test $new_dir[1] = "<"
            cd ..
            set dir $(pwd)
        else
            if test (count $new_dir[2]) -ne 0
                cd $new_dir[2]
                set dir $new_dir[2]
            end
        end
    end
end

