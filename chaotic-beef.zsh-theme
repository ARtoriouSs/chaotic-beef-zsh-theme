# get default branch from .git/safe/default_branch or use master
default-branch() {
 if test -f .git/safe/default_branch; then
   cat .git/safe/default_branch
 else
   echo master
 fi
}

# check if current branch needs to be rebased
rebase_info() {
  local latest_master_commit=$(__git_prompt_git show-ref --heads -s $(default-branch) 2> /dev/null)
  local latest_common_commit=$(__git_prompt_git merge-base $(default-branch) $(git_current_branch) 2> /dev/null)

  [ "$latest_master_commit" = "$latest_common_commit" ] && echo "" || echo "≠ "
}

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=" "

ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT=' %B%F{208}%c%f %F{039}$(git_prompt_info)$(rebase_info)%{$reset_color%}➤ '
