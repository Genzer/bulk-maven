:: This is a small BATCH file which ease the use of mvn commands.
:: version 1.0
@echo OFF

:: Note: the ~ character is for removing the quotes in arguments
set maven_commands=%~1
set specified_folders=%~2

if "%maven_commands%"=="" if "%specified_folders%"=="" (
	echo Usage: bulk-maven.bat ["maven-life-cycle-commands"] ["directory-patterns-separated-by-spaces"]
	goto:eof
)



if "%specified_folders%"=="" (
	:: If no projects specified, apply command to all 1st level sub-directory
	set projects=*
) 

if not "%specified_folders%"=="" (
	set projects=%specified_folders%
)

echo %projects%

for /D %%G in (%projects%) do mvn -f %%G %maven_commands%