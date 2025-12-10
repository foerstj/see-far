call .\cleanup.bat

call .\build-release-variant.bat Autumn

:: cleanup
call .\generate-config.bat
call .\generate-moods.bat
