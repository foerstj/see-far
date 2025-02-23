:: path of Bits dir
set bits=%~dp0.

:: param
set mood_edit=%1
echo %mood_edit%
if "%mood_edit%"=="" (
  set mood_edit=1.2:1.25:1.3
)

pushd "%GasPy%"
venv\Scripts\python -m landscaping.edit_moods --bits "%bits%" --src git-ignore\moods --edit see-far:%mood_edit%
if %errorlevel% neq 0 pause

robocopy "%bits%\git-ignore\config" "%bits%\config" /S
venv\Scripts\python -m gas.edit_gas --bits "%bits%" config/engine
venv\Scripts\python -m gas.edit_gas --bits "%bits%" config/global_settings
if %errorlevel% neq 0 pause
popd
