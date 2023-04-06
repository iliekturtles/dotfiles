function tid --wraps='tig --git-dir=/home/mike/.config/.dotfiles --work-tree=/home/mike ' --wraps='tig --git-dir=$HOME/.config/.dotfiles --work-tree=$HOME ' --wraps='GIT_DIR=$HOME/.config/.dotfiles/ GIT_WORK_TREE=$HOME tig' --description 'alias tid=GIT_DIR=$HOME/.config/.dotfiles/ GIT_WORK_TREE=$HOME tig'
  GIT_DIR=$HOME/.config/.dotfiles/ GIT_WORK_TREE=$HOME tig $argv
        
end
