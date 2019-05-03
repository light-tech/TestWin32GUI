REM Usage: build.bat SOURCE.cpp

@echo off

REM We assume that you install a portable version of MSVC/Clang
REM Under SYS_DIR, there should be directories `bin`, `include` and `lib`
REM which contains the compiler executables (cl.exe, link.exe, ...),
REM the system headers, and the standard C/C++ libraries.

REM TODO Set this as per your installation
set SYS_DIR=%USERPROFILE%\Downloads\BuildSystem

set PATH=%PATH%;%SYS_DIR%\bin
set SYS_INCLUDE_DIR=/I %SYS_DIR%\include\msvc /I %SYS_DIR%\include\shared /I %SYS_DIR%\include\ucrt /I %SYS_DIR%\include\um

cl.exe %SYS_INCLUDE_DIR% /I . %1 /link /libpath:%SYS_DIR%\lib
