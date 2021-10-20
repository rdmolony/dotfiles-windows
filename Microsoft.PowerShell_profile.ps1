## conda
conda deactivate

## install dependencies
if (-Not (Get-Module -Name oh-my-posh)) {
    Install-Module oh-my-posh -Scope CurrentUser
} 
if (-Not (Get-Module -Name git-aliases)) {
    Install-Module git-aliases -Scope CurrentUser
}

## oh-my-posh
Set-PoshPrompt -Theme .\.rdmolony.omp.json

## aliases
. .\conda-aliases.ps1
Import-Module git-aliases -DisableNameChecking

# enable tab completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete
