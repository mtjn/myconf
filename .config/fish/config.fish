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

if status --is-interactive
  abbr -a :q exit
  abbr -a la "ls -lA --group-directories-first"
  abbr -a uu "sudo apt update; sudo apt upgrade --autoremove"
  abbr -a aa "
    cd ~/apps/fpages; echo   \"fpages:   \"(git log --pretty=%h -1);
    cd ~/apps/bizadmin; echo \"bizadmin: \"(git log --pretty=%h -1);
    cd ~/apps/backend; echo  \"backend:  \"(git log --pretty=%h -1);
    cd ~/apps/admin; echo    \"admin:    \"(git log --pretty=%h -1);
  "

  abbr -a ga "git add"
  abbr -a gai "git add -i"
  abbr -a gap "git add -p"

  abbr -a gb "git branch"
  abbr -a gbd "git branch -d"
  abbr -a gbm "git branch --merged"

  abbr -a gc "git commit"
  abbr -a gca "git commit --amend"
  abbr -a gcm "git commit -m"

  abbr -a gco "git checkout"
  abbr -a gcob "git checkout -b"
  abbr -a gcom "git checkout master"

  abbr -a gd "git diff"
  abbr -a gdc "git diff --cached"

  abbr -a gf "git fetch"

  abbr -a gl "git log --graph --oneline"
  abbr -a glm "git log --graph --oneline --no-merges master.."

  abbr -a gm "git merge"

  abbr -a gps "git pull"
  abbr -a gps "git push"

  abbr -a grbm "git rebase master"
  abbr -a grbc "git rebase --continue"

  abbr -a grt "git reset"
  abbr -a grth "git reset HEAD"

  abbr -a gs "git status"

  abbr -a gsh "git stash"
  abbr -a gsha "git stash apply"
  abbr -a gshc "git stash clear"
  abbr -a gshl "git stash list"
  abbr -a gshp "git stash pop"

  # config git commands
  abbr -a cf "config"

  abbr -a cfa "config add"
  abbr -a cfai "config add -i"
  abbr -a cfap "config add -p"

  abbr -a cfb "config branch"

  abbr -a cfc "config commit"
  abbr -a cfca "config commit --amend"
  abbr -a cfcm "config commit -m"

  abbr -a cfco "config checkout"
  abbr -a cfcom "config checkout master"

  abbr -a cfd "config diff"
  abbr -a cfdc "config diff --cached"

  abbr -a cff "config fetch"

  abbr -a cfl "config log --graph --oneline"

  abbr -a cfpl "config pull"
  abbr -a cfps "config push"

  abbr -a cfrbm "config rebase master"
  abbr -a cfrbc "config rebase --continue"

  abbr -a cfs "config status"
  abbr -a cfsu "config status --untracked=no" # exclude untracked files

  abbr -a cfsh "config stash"
  abbr -a cfsha "config stash apply"
  abbr -a cfshc "config stash clear"
  abbr -a cfshl "config stash list"
  abbr -a cfshp "config stash pop"
end

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

nvm use default
