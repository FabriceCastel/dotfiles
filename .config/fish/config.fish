# replace the illegible blue with cyan
set -gx LSCOLORS gxfxcxdxbxegedabagacad

# git aliases
function gs
    git status
end

function gc
    git commit -m
end

function gb
    git checkout
end

function gbb
    git checkout -b
end

function gl
    git log
end

function ga
    git add
end

# git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow
set __fish_git_prompt_color_dirtystate red
set __fish_git_prompt_color_stagedstate green
set __fish_git_prompt_color_untrackedfiles yellow
set __fish_git_prompt_color_stashstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red

# status chars
set __fish_git_prompt_char_dirtystate 'x'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_untrackedfiles 'u'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_upstream_ahead '+'
set __fish_git_prompt_upstream_behind '-'

function fish_prompt
    set last_status $status

    set_color yellow
    echo -n (date +%b\ %-Od,\ %H:%M)

    set_color $fish_color_cwd
    echo -n \ (prompt_pwd)

    set_color normal
    echo -n (__fish_git_prompt \ [%s])

    set_color red
    echo -n " ∆ "

    set_color normal
end

function fish_title
end
