# Script to run both server and client in development mode
Write-Host "Starting Server in background..." -ForegroundColor Cyan
Start-Process powershell -ArgumentList "-ExecutionPolicy Bypass -Command `"cd server; npm run dev`"" -NoNewWindow

Write-Host "Starting Client..." -ForegroundColor Cyan
cd client
npm start

# Note: The server will continue running in the background even after this script ends
# To stop it, you'll need to manually terminate the Node.js process 