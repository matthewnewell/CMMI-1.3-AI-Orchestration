---
description: Stop the Flask development server (Port 5000)
---

1. Find and Kill process on Port 5000
// turbo
```
$ports = Get-NetTCPConnection -LocalPort 5000 -ErrorAction SilentlyContinue
if ($ports) {
    foreach ($port in $ports) {
        Stop-Process -Id $port.OwningProcess -Force -ErrorAction SilentlyContinue
        Write-Host "Killed process $($port.OwningProcess) on port 5000"
    }
} else {
    Write-Host "No process found on port 5000"
}
```

2. Verify port is free
```
netstat -ano | findstr LISTENING | findstr /C:":5000"
if ($LASTEXITCODE -eq 1) { Write-Host "Port 5000 is free" }
```
