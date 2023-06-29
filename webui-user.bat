@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--xformers --listen --api
set DREAMBOOTH_SKIP_INSTALL=True
set SAFETENSORS_FAST_GPU=1

rem call update.bat

call webui.bat
