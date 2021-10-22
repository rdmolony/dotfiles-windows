## conda
conda deactivate

## oh-my-posh
Import-Module oh-my-posh
Set-PoshPrompt -Theme (Join-Path  $PSScriptRoot "\.rdmolony.omp.json")
$env:POSH_GIT_ENABLED = $true
Import-Module posh-git

## aliases
. (Join-Path  $PSScriptRoot ".\conda-aliases.ps1")
Import-Module git-aliases -DisableNameChecking

## environmental variables
$PROFILEDIR = $PSScriptRoot

# enable tab completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete

## install dependencies
# Install-Module oh-my-posh -Scope CurrentUser
# Install-Module git-aliases -Scope CurrentUser
# Install-Module posh-git -Scope CurrentUser
# Install-Module choco -Scope CurrentUser
