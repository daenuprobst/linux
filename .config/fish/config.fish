if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "/usr/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/home/daenu/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# >>> custom functions >>>
function c
	clear
end

function ga
	git add .
end

function gc
	git commit $argv
end

function gp
	git push
end

function gca
	git add .
	git commit $argv
end

function gcap
	git add .
	git commit $argv
	git push
end
# <<< custom functions <<<
