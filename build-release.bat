:: this one's just meant for testing
call .\generate-config.bat 120:90:25:20:75
call .\generate-moods.bat 1:1:1:0  && call .\build.bat  0

call .\generate-config.bat 144:108:20:24:85
call .\generate-moods.bat 1.18:1.2:1.25:0  && call .\build.bat  20
call .\generate-moods.bat 1.18:1.2:1.25:6  && call .\build.bat  20_Plus6
call .\generate-moods.bat 1.18:1.2:1.25:12 && call .\build.bat  20_Plus12

call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 1.45:1.5:1.55:0  && call .\build.bat  50
call .\generate-moods.bat 1.45:1.5:1.55:6  && call .\build.bat  50_Plus6
call .\generate-moods.bat 1.45:1.5:1.55:12 && call .\build.bat  50_Plus12

call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 1.9:2.0:2.1:0  && call .\build.bat  100
call .\generate-moods.bat 1.9:2.0:2.1:6  && call .\build.bat  100_Plus6
call .\generate-moods.bat 1.9:2.0:2.1:12 && call .\build.bat  100_Plus12

:: these ones are just meant for visuals, not gameplay
call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 2.8:3.0:3.2:12 && call .\build.bat  200_Plus12

:: cleanup
call .\generate-config.bat
call .\generate-moods.bat
