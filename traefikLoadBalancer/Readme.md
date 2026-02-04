docker compose up -d --build --scale web=3

Windows:

Run the Windows test script in PowerShell:

```powershell
powershell -ExecutionPolicy Bypass -File .\test_lb.ps1
```