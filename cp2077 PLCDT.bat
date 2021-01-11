::Because this game is such a dumpsterfire I need to make batch files to make it probably run on my old ass PC
::But segamanxero why no get refund? because eventually I will have a computer running this hot ass mess.
::Maybe by then they will polish this turd to a diamond or someshit by then...
::Anyways if you have to delete the stupid pipeline cache to get the game to LAUNCH without crashing itself and your graphics driver on start, this is for you; hopefully it will make your life slightly easier.
::Shit will still crash eventually though lol
@ECHO OFF
color e0
:BEGIN
CLS
echo    _____       __             ___   ____   ____   ___    ___  ___  ____ ____
echo   / ___/__ __ / /  ___  ____ / _ \ / __ \ / __ \ / _ \  ^|_  ^|/ _ \/_  //_  /
echo  / /__ / // // _ \/ -_)/ __// ___// /_/ // /_/ // ___/ / __// // / / /  / / 
echo  \___/ \_, //_.__/\__//_/  /_/    \____/ \____//_/    /____/\___/ /_/  /_/  
echo       /___/           Pipeline library cache deletion tool batch file
echo.
echo.
CHOICE /N /M "Do you wish to delete the game pipeline library cache? (Y for yes, N for no)"%1
IF ERRORLEVEL ==2 GOTO DECLINEACTION
IF ERRORLEVEL ==1 GOTO EXECUTEACTION
GOTO END
:DECLINEACTION
echo.
ECHO You have elected to decline deleting the pipeline library cache, aborting now.
GOTO END
:EXECUTEACTION
echo.
ECHO Executing command.
echo.
del "%LocalAppData%\CD Projekt Red\Cyberpunk 2077\cache\GamePipelineLibrary.cache"
echo.
echo Command executed.
GOTO END
:END
echo.
pause