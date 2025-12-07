call .\cleanup.bat

call .\build-release-variant.bat
call .\build-release-variant.bat Wintermod

:: cleanup
call .\generate-config.bat
call .\generate-moods.bat
