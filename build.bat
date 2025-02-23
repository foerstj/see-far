:: name of mod, case-sensitive
set mod_cs=sf_SeeFar

:: path of Bits dir
set bits=%~dp0.
:: path of DS installation
set ds=%DungeonSiege%
:: path of TankCreator
set tc=%TankCreator%

set copyright=CC-BY-SA 2025
set author=Johannes Förstner

:: param
set name=%1
echo %name%

:: Compile resource file
rmdir /S /Q "%tmp%\Bits"
robocopy "%bits%\config" "%tmp%\Bits\config" /E
robocopy "%bits%\world\global\moods" "%tmp%\Bits\world\global\moods" /E /xf .gitkeep
"%tc%\RTC.exe" -source "%tmp%\Bits" -out "%ds%\Resources\%mod_cs%%name%.dsres" -copyright "%copyright%" -title "%mod_cs%%name%" -author "%author%"
if %errorlevel% neq 0 pause

:: Cleanup
rmdir /S /Q "%tmp%\Bits"
