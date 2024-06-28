# Exports
export PATH=~/.npm-global/bin:$PATH 
export PATH=$PATH:$HOME/.cargo/bin$PATH
export PATH=$PATH:$HOME/.local/bin:$PATH
export XDG_CURRENT_DESKTOP=sway
export PATH=$PATH:$HOME/.jdks/openjdk-22.0.1/bin:$PATH

# Batman for manepage
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Preview file content using bat (https://github.com/sharkdp/bat)
export FZF_CTRL_T_OPTS="
  --preview 'bat -n --color=always {}'
  --bind 'ctrl-/:change-preview-window(down|hidden|)'
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc 
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
# CTRL-Y to copy the command into clipboard using pbcopy
export FZF_CTRL_R_OPTS="
  --preview 'echo {}' --preview-window up:3:hidden:wrap
  --bind 'ctrl-/:toggle-preview'
  --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
  --color header:italic
  --header 'Press CTRL-Y to copy command into clipboard'
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc 
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="--preview 'tree -C {}'
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc 
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

# Include the same colors for fzf-tab
export FZF_PREVIEW_COMMAND="bat -n --color=always {}"

# Merge the colors with the FZF options
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS
  --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 
  --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc 
  --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"
