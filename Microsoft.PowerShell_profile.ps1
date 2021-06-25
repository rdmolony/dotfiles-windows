#region conda initialize
# !! Contents within this block are managed by 'conda init' !!
(& "C:\Users\Rowan\mambaforge\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Invoke-Expression
#endregion
conda deactivate

# oh-my-posh
oh-my-posh --init --shell pwsh --config ~/.rdmolony.omp.json | Invoke-Expression
$env:POSH_GIT_ENABLED = $true
Import-Module git-aliases -DisableNameChecking
. $PSScriptRoot\conda-aliases.ps1

# clear startup screen
Clear-Host 

# enable tab completion
Set-PSReadlineKeyHandler -Key Tab -Function Complete