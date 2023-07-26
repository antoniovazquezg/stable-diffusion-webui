@echo off
echo ########## Updating AUTOMATIC1111-stable-diffusion-webui ##########
git pull --rebase --autostash
echo ----------------------------------------------------------------------------

setlocal disabledelayedexpansion
set "extensions_folder=extensions"
CD /D "%extensions_folder%"

echo ########## Updating Extensions ##########
set /a counter = 1
for /D %%d in (*) do (
	setlocal enabledelayedexpansion
	echo Extension #!counter!: %%d
	git -C "%%d" pull
	echo ----------------------------------------------------------------------------
	endlocal
	set /a counter += 1
)