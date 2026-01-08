---
description: Start the Flask development server
---

1. Navigate to the python application directory
```
cd python_app
```

2. Start the server (background process)
// turbo
```
Start-Process python -ArgumentList "run.py" -WindowStyle Hidden
```

3. Wait a moment for server to initialize
```
Start-Sleep -Seconds 3
```

4. Verify server is listening
```
netstat -ano | findstr LISTENING | findstr /C:":5000"
```
