# Dexter AI — Push to GitHub
# Run this script after creating the repo on GitHub

$env:Path = [Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [Environment]::GetEnvironmentVariable("Path","User")
Set-Location "$PSScriptRoot"

Write-Host "Pushing Dexter AI to GitHub..." -ForegroundColor Cyan

git remote set-url origin https://github.com/elliotgilbu33-rgb/dexter-ai.git
git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✓ Success! Go to https://github.com/elliotgilbu33-rgb/dexter-ai/actions" -ForegroundColor Green
    Write-Host "  Your .exe build will start automatically." -ForegroundColor Green
} else {
    Write-Host "`nPush failed. Make sure:" -ForegroundColor Yellow
    Write-Host "1. The repo exists: https://github.com/new (name: dexter-ai)" -ForegroundColor Yellow
    Write-Host "2. You're authenticated with GitHub" -ForegroundColor Yellow
    Write-Host "`nOr use the ZIP file to upload manually." -ForegroundColor Yellow
}

Read-Host "`nPress Enter to exit"
