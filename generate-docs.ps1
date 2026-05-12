param(
    [Parameter(Mandatory=$true)]
    [string]$FilePath
)

$uri = "https://fahad012.app.n8n.cloud/webhook/generate-docs"
$fileBytes = [System.IO.File]::ReadAllBytes($FilePath)
$fileContent = [System.Text.Encoding]::UTF8.GetString($fileBytes)
$body = @{ fileContent = $fileContent }
$response = Invoke-RestMethod -Uri $uri -Method POST -Body ($body | ConvertTo-Json) -ContentType "application/json"
$outputPath = [System.IO.Path]::ChangeExtension($FilePath, ".md")
$response | Out-File $outputPath
Write-Host "Done! Documentation saved to $outputPath"