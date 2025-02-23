call .\generate-config.bat 144:108:20:24:85
call .\generate-moods.bat 1.20:1.25:1.3:0  && call .\build.bat  20
call .\generate-moods.bat 1.20:1.25:1.3:6  && call .\build.bat  20_Plus6
call .\generate-moods.bat 1.20:1.25:1.3:12 && call .\build.bat  20_Plus12

call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 1.45:1.55:1.6:0  && call .\build.bat  50
call .\generate-moods.bat 1.45:1.55:1.6:6  && call .\build.bat  50_Plus6
call .\generate-moods.bat 1.45:1.55:1.6:12 && call .\build.bat  50_Plus12

call .\generate-config.bat 180:135:20:30:100
call .\generate-moods.bat 1.85:1.95:2.0:0  && call .\build.bat 100
call .\generate-moods.bat 1.85:1.95:2.0:6  && call .\build.bat 100_Plus6
call .\generate-moods.bat 1.85:1.95:2.0:12 && call .\build.bat 100_Plus12

:: cleanup
call .\generate-config.bat
call .\generate-moods.bat
