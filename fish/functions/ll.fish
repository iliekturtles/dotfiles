function ll --wraps=ls --wraps='ls -lFh --color=auto --group-directories-first' --description 'alias ll=ls -lFh --color=auto --group-directories-first'
    ls -lFh --color=auto --group-directories-first $argv
end
