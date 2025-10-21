@echo off
chcp 65001 >nul
cd /d "E:\Algorithm-github"

:: 获取格式化的日期（避免特殊字符）
for /f "tokens=1-3 delims=/" %%a in ("%date%") do (
    set "commit_date=%%a-%%b-%%c"
)

git add .
git commit -m "算法打卡: %commit_date%"
git push origin main
echo 上传完成！
pause