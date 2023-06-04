function yeet --wraps='paru -Rcns' --description 'alias yeet=paru -Rcns'
    {{first_non_empty pacman}} -S $argv
end
