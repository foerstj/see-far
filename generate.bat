:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m landscaping.edit_moods --bits "%bits%" --src world\global\git-ignore\moods
if %errorlevel% neq 0 pause
popd
