function sshmux --wraps=ssh\ -t\ \ \'bash\ -l\ -c\ \'\"\'\"\'exec\ tmux\ new\ -A\ -s\ ssh\'\"\'\"\'\' --description alias\ sshmux=ssh\ -t\ \ \'bash\ -l\ -c\ \'\"\'\"\'exec\ tmux\ new\ -A\ -s\ ssh\'\"\'\"\'\'
    ssh -t $argv 'bash -l -c '"'"'exec tmux new -A -s ssh'"'"''
end
