for file in ~/.profile.d/*; do
    source "$file"
done

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
