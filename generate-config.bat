:: path of Bits dir
set bits=%~dp0.

:: param
set config_edit=%1
echo %config_edit%
if "%config_edit%"=="" (
  set config_edit=144:108:20:24
)
for /f "tokens=1,2,3,4 delims=:" %%a in ("%config_edit%") do (
  set ce[0]=%%a
  set ce[1]=%%b
  set ce[2]=%%c
  set ce[3]=%%d
)


pushd "%GasPy%"
robocopy "%bits%\git-ignore\config" "%bits%\config" /S
venv\Scripts\python -m gas.edit_gas --bits "%bits%" config/engine --edit engine_settings:minimap_max_size=%ce[0]% engine_settings:default_minimap_size=%ce[1]% engine_settings:minimap_step_zoom_meters=%ce[2]% engine_settings:discovery_radius=%ce[3]%
venv\Scripts\python -m gas.edit_gas --bits "%bits%" config/global_settings
if %errorlevel% neq 0 pause
popd
