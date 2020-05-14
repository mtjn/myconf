set -gx fish_greeting ''
. ~/.fishmarks/marks.fish

fish_vi_key_bindings

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

if status --is-interactive
  abbr -a :q exit
  abbr -a la "ls -lA --group-directories-first"
  abbr -a uu "sudo apt update; sudo apt upgrade --autoremove"

  abbr -a gaa "git add ."
  abbr -a gai "git add -i"
  abbr -a gap "git add -p"

  abbr -a gb "git branch"
  abbr -a gbd "git branch -d"
  abbr -a gbD "git branch -D"
  abbr -a gbm "git branch -m"
  abbr -a gbmm "git branch --merged"

  abbr -a gc "git commit"
  abbr -a gca "git commit -a"
  abbr -a gcaa "git commit --amend"
  abbr -a gcam "git commit -am"
  abbr -a gcm "git commit -m"

  abbr -a gco "git checkout"
  abbr -a gcob "git checkout -b"
  abbr -a gcom "git checkout master"

  abbr -a gd "git diff"
  abbr -a gdc "git diff --cached"

  abbr -a gf "git fetch"

  abbr -a gl "git log"
  abbr -a glg "git log --graph --oneline"
  abbr -a glgm "git log --graph --oneline --no-merges master.."
  abbr -a glm "git log --no-merges master.."

  abbr -a gm "git merge"

  abbr -a gps "git push"

  abbr -a grbm "git rebase master"
  abbr -a grbc "git rebase --continue"

  abbr -a grs "git reset"
  abbr -a grsh "git reset HEAD"

  abbr -a grr "git restore"
  abbr -a grrs "git restore --staged"

  abbr -a gs "git status"

  abbr -a gsh "git stash"
  abbr -a gsha "git stash apply"
  abbr -a gshc "git stash clear"
  abbr -a gshl "git stash list"
  abbr -a gshp "git stash pop"
end

nvm use 12.9.1
