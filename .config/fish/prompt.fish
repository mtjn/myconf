set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_showstashstate 1

set -g __fish_git_prompt_char_stagedstate ">"
set -g __fish_git_prompt_char_dirtystate '*'
set -g __fish_git_prompt_char_untrackedfiles '!'
set -g __fish_git_prompt_char_conflictedstate 'x'
set -g __fish_git_prompt_char_stashstate '$'

function fish_prompt
  set_color $fish_color_cwd
  printf '%s' (prompt_pwd)

  set_color normal
  printf '%s ' (__fish_git_prompt)
end
