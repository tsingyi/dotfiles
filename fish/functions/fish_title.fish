
function fish_title

    # emacs is basically the only term that can't handle it.
    if not set -q INSIDE_EMACS
        echo (status current-command) (__fish_pwd)
    else if test "$INSIDE_EMACS" = "vterm"
        # use vterm inside emacs
        echo (status current-command) (prompt_pwd)
    end
end