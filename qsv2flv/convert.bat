@echo off
cd /d %~dp0
set path=
set /P path= 请输入=
for /r %path% %%i in (*.Qsv) do (
  echo 开始转换 %%~nxi
  Qsv2Flv.exe %%~i %%~dpni.flv
  echo 转换完成 %%~ni.flv
  echo ------------------------------------
)
pause