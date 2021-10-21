#conda
function Activate-Conda {
    param (
        $EnvironmentName = $null
    )
    conda activate $EnvironmentName
}
Set-Alias -Name ca -Value Activate-Conda
function Deactivate-Conda {
    conda deactivate $EnvironmentName
}
Set-Alias -Name cda -Value Deactivate-Conda