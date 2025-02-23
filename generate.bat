:: path of Bits dir
set bits=%~dp0.

pushd "%GasPy%"
venv\Scripts\python -m landscaping.edit_moods --bits "%bits%" --src world\global\git-ignore\moods --edit fog:near-dists:mult:1.2 fog:far-dists:mult:1.25 frustum:mult:1.3
if %errorlevel% neq 0 pause
popd
