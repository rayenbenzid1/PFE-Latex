$filePath = 'c:\Users\rayen\OneDrive\Bureau\PFE\Report\PFE\main.tex'
$content = Get-Content -Path $filePath -Raw -Encoding UTF8
$content = $content -replace '\\usepackage\{hyperref\}', '\\usepackage[hidelinks]{hyperref}'
Set-Content -Path $filePath -Value $content -Encoding UTF8
Write-Host "✓ Les rectangles colorés des liens ont été retirés!"
