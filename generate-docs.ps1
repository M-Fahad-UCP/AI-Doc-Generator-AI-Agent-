param(
    [Parameter(Mandatory=$true)]
    [string]$Topic
)

$uri = "https://fahad012.app.n8n.cloud/webhook-test/generate-docs"
$body = "{`"topic`": `"$Topic`"}"
$response = Invoke-RestMethod -Uri $uri -Method POST -Body $body -ContentType "application/json"
$html = $response.output
$outputPath = "$env:USERPROFILE\Desktop\$Topic.html"
$html | Out-File $outputPath -Encoding UTF8
Write-Host "Done! Opening research on: $Topic"
Start-Process $outputPath