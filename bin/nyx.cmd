@echo off
set "NYX_ROOT=%~dp0.."
noxc run "%~dp0..\cli.nox" -- %*
