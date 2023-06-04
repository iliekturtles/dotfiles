function pacdiff --wraps='DIFFPROG="nvim -d" pacdiff -s' --description 'alias pacdiff=DIFFPROG="nvim -d" pacdiff -s'
    DIFFPROG="nvim -d" /usr/bin/pacdiff -s $argv
end
