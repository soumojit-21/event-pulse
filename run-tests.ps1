# Script to run tests with execution policy bypass
Write-Host "Running Client Tests..." -ForegroundColor Cyan
cd client
npm test
cd ..

Write-Host "Tests completed" -ForegroundColor Green 