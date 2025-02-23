:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m landscaping.edit_moods --bits "%bits%" --src world\global\git-ignore\moods --edit see-far:1.2:1.25:1.3
if %errorlevel% neq 0 pause
popd
