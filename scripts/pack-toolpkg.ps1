$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$dist = Join-Path $root "dist"
$staging = Join-Path $dist "package"
$archive = Join-Path $dist "operit-daily-reporter.toolpkg"
$zip = Join-Path $dist "operit-daily-reporter.zip"

Remove-Item $staging -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item $archive -Force -ErrorAction SilentlyContinue
Remove-Item $zip -Force -ErrorAction SilentlyContinue
New-Item $staging -ItemType Directory -Force | Out-Null

Copy-Item (Join-Path $root "manifest.json") $staging
Copy-Item (Join-Path $root "main.js") $staging
Copy-Item (Join-Path $root "main.ts") $staging

Compress-Archive -Path (Join-Path $staging "*") -DestinationPath $zip -Force
Move-Item $zip $archive -Force
Remove-Item $staging -Recurse -Force

Write-Output "Created $archive"