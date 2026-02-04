$URL = "http://localhost"

Write-Host "Testing Traefik load balancing (no keep-alive)"
Write-Host "---------------------------------------------"

for ($i = 1; $i -le 10; $i++) {
    Write-Host -NoNewline "Request $i → "
    curl.exe -s -H "Connection: close" $URL
    Start-Sleep -Milliseconds 500
}
