call .\generate-config.bat 144:108:20:24
call .\generate-moods.bat 1.20:1.25:1.3 && call .\build.bat  20

call .\generate-config.bat 180:135:20:30
call .\generate-moods.bat 1.45:1.55:1.6 && call .\build.bat  50

call .\generate-config.bat 180:135:20:30
call .\generate-moods.bat 1.85:1.95:2.0 && call .\build.bat 100

:: cleanup
call .\generate-config.bat
call .\generate-moods.bat
