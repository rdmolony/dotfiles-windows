## conda
conda deactivate

## oh-my-posh
Set-PoshPrompt -Theme .\.rdmolony.omp.json

## aliases
. .\conda-aliases.ps1
Import-Module git-aliases -DisableNameChecking

# enable tab completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete

## install dependencies
# Install-Module oh-my-posh -Scope CurrentUser
# Install-Module git-aliases -Scope CurrentUser
