$repoPath = "c:\Users\m_abd\OneDrive - Carleton University\__KFUPM\Research\Abido_problem_formulation\Presentation"

while ($true) {
    Set-Location $repoPath
    $status = git status --porcelain
    if ($status) {
        git add -A
        $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
        git commit -m "Auto-commit: $timestamp"
        git push origin main
        Write-Host "[$timestamp] Committed and pushed changes."
    } else {
        Write-Host "[$(Get-Date -Format 'HH:mm')] No changes."
    }
    Start-Sleep -Seconds 600
}
