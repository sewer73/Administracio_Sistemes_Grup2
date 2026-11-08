$entorn = Get-ChildItem env:

foreach ($variable in $entorn) {
    if ($variable.Name.Contains("PROCESSOR")) {
        Write-Host “$($variable.Name) - $($variable.Value)”
    }
}