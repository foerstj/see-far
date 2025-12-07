:: param
set variant=%1
echo %variant%
set suffix=
if not "%variant%"=="" (
  set suffix=_%variant%
)

:: this one's just meant for testing
call .\generate-config.bat 120:90:25:20:75
call .\generate-moods.bat 1:1:1:0 %variant% && call .\build.bat  0%suffix%

call .\generate-config.bat 144:108:20:24:85
call .\generate-moods.bat 1.18:1.2:1.25:0  %variant% && call .\build.bat  20%suffix%
call .\generate-moods.bat 1.18:1.2:1.25:6  %variant% && call .\build.bat  20_Plus6%suffix%
call .\generate-moods.bat 1.18:1.2:1.25:12 %variant% && call .\build.bat  20_Plus12%suffix%

call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 1.45:1.5:1.55:0  %variant% && call .\build.bat  50%suffix%
call .\generate-moods.bat 1.45:1.5:1.55:6  %variant% && call .\build.bat  50_Plus6%suffix%
call .\generate-moods.bat 1.45:1.5:1.55:12 %variant% && call .\build.bat  50_Plus12%suffix%

call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 1.9:2.0:2.1:0  %variant% && call .\build.bat  100%suffix%
call .\generate-moods.bat 1.9:2.0:2.1:6  %variant% && call .\build.bat  100_Plus6%suffix%
call .\generate-moods.bat 1.9:2.0:2.1:12 %variant% && call .\build.bat  100_Plus12%suffix%

:: these ones are just meant for visuals, not gameplay
call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 2.8:3.0:3.2:12 %variant% && call .\build.bat  200_Plus12%suffix%
call .\generate-moods.bat 1:3.0:3.2:12   %variant% && call .\build.bat  200_Plus12_Nearfog%suffix%
