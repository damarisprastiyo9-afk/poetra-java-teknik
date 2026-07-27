@echo off
chcp 65001 >nul
echo ========================================
echo   POETRA JAVA TEKNIK - Auto Deploy
echo ========================================
echo.

cd /d "%~dp0"

echo [1/4] Checking changes...
git add .

echo [2/4] Committing changes...
set /p msg="Masukkan pesan update: "
git commit -m "%msg%"

echo [3/4] Pushing to GitHub...
git push origin main

echo [4/4] Deploying to Vercel...
vercel --prod --yes

echo.
echo ========================================
echo   DONE! Website sudah ter-update!
echo   https://poetrajavateknikofficial.vercel.app
echo ========================================
pause
