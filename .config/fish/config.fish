set -gx fish_greeting ''

fish_vi_key_bindings

function fish_prompt
  set_color red
  printf 'CONFIG:MASTER '

  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)

  set_color normal
  printf '%s ' (__fish_git_prompt)
end

if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
end

. ~/.fishmarks/marks.fish

. ~/.config/fish/prompt.fish
. ~/.config/fish/abbreviations.fish
. ~/.config/fish/local.fish

nvm use default
