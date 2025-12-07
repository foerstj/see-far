:: path of Bits dir
set bits=%~dp0.

:: param
set edit=%1
echo %edit%
if "%edit%"=="" (
  set edit=1:1:1
)
set source=%2
echo %source%
if "%source%"=="" (
  set source=original
)

pushd "%GasPy%"
venv\Scripts\python -m landscaping.edit_moods --bits "%bits%" --src "source\moods\%source%" --edit see-far:%edit%
if %errorlevel% neq 0 pause
popd
