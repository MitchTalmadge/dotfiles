# Based on "steeef" theme

export VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('%F{blue}$(basename $VIRTUAL_ENV)%f') '
}
PR_GIT_UPDATE=1

setopt prompt_subst

autoload -U add-zsh-hook
autoload -Uz vcs_info

# Set colors
turquoise="%F{cyan}"
orange="%F{yellow}"
purple="%F{magenta}"
hotpink="%F{red}"
limegreen="%F{green}"

# enable VCS systems you use
zstyle ':vcs_info:*' enable git svn

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stagedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
PR_RST="%f"
FMT_BRANCH="(%{$turquoise%}%b%u%c${PR_RST})"
FMT_ACTION="(%{$limegreen%}%a${PR_RST})"
FMT_UNSTAGED="%{$orange%}●"
FMT_STAGED="%{$limegreen%}●"

zstyle ':vcs_info:*:prompt:*' unstagedstr "${FMT_UNSTAGED}"
zstyle ':vcs_info:*:prompt:*' stagedstr "${FMT_STAGED}"
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}"
zstyle ':vcs_info:*:prompt:*' formats "${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats ""

function custom_theme_preexec {
    case "$2" in
    *git*)
        PR_GIT_UPDATE=1
        ;;
    *hub*)
        PR_GIT_UPDATE=1
        ;;
    *svn*)
        PR_GIT_UPDATE=1
        ;;
    esac
}
add-zsh-hook preexec custom_theme_preexec

function custom_theme_chpwd {
    PR_GIT_UPDATE=1
}
add-zsh-hook chpwd custom_theme_chpwd

function custom_theme_precmd {
    if [[ -n "$PR_GIT_UPDATE" ]]; then
        # check for untracked files or updated submodules, since vcs_info doesn't
        if git ls-files --other --exclude-standard 2>/dev/null | grep -q "."; then
            PR_GIT_UPDATE=1
            FMT_BRANCH="(%{$turquoise%}%b%u%c%{$hotpink%}●${PR_RST})"
        else
            FMT_BRANCH="(%{$turquoise%}%b%u%c${PR_RST})"
        fi
        zstyle ':vcs_info:*:prompt:*' formats "${FMT_BRANCH} "

        vcs_info 'prompt'
        PR_GIT_UPDATE=
    fi
}
add-zsh-hook precmd custom_theme_precmd

PROMPT=$'
%{$purple%}%n${PR_RST} at %{$orange%}%m${PR_RST} in %{$limegreen%}%~${PR_RST} $vcs_info_msg_0_$(virtualenv_info)
$ '
