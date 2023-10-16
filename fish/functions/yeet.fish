function yeet --wraps='paru -Rcns' --description 'alias yeet=paru -Rcns'
    {{first_non_empty paru pacman}} -Rcns $argv
end
