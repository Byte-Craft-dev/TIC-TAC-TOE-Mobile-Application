@echo off

:: Path to your Dart script for updating the version
set DART_SCRIPT_PATH=.\update_version.dart

:: Check if Dart is installed
where dart >nul 2>nul
if %errorlevel% neq 0 (
    echo Dart is not installed. Please install Dart to update the version.
    exit /b 1
)

:: Prompt the user for the increment type
set /p INCREMENT_TYPE="Enter the type of commit (1 for major, 2 for minor, 3 for patch): "

:: Map the input to the corresponding increment type
if "%INCREMENT_TYPE%"=="1" (
    set INCREMENT_TYPE=major
) else if "%INCREMENT_TYPE%"=="2" (
    set INCREMENT_TYPE=minor
) else if "%INCREMENT_TYPE%"=="3" (
    set INCREMENT_TYPE=patch
) else (
    echo Invalid commit type. Please enter '1', '2', or '3'.
    exit /b 1
)

:: Call the Dart script to update the version
echo Updating version to %INCREMENT_TYPE%...
call dart %DART_SCRIPT_PATH% %INCREMENT_TYPE% > dart_output.log 2>&1
if %errorlevel% neq 0 (
    echo Dart script execution failed. Check dart_output.log for details.
    exit /b 1
)

:: Prompt the user for the commit message
set /p COMMIT_MESSAGE="Enter the commit message: "

:: Stage the updated files
git add .

:: Commit the changes
git commit -m "%COMMIT_MESSAGE%"
if %errorlevel% neq 0 (
    echo Git commit failed. Aborting.
    exit /b 1
)

:: Push the changes
@REM git push
@REM if %errorlevel% neq 0 (
@REM     echo Git push failed. Please check your network or remote repository configuration.
@REM     exit /b 1
@REM )

echo Version updated and changes commited successfully.
