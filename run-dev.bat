@echo off
echo Starting server in background...
start cmd /k "cd server && npm run dev"
echo Starting client...
cd client
call npm start
cd .. 