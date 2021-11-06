# windows.mk
#
# Goals:
#   Configure an environment that will allow GUI and firmware to be built
#   on a Windows system. The environment will support the current 5.0 series of the
#   Qt Library the current versions of Qt SDK and the ARM toolchain installed to either
#   their respective default installation locations, the <repo>/tools directory, or made
#   available on the system path.
#
# Requirements:
#   Qt SDK - or - Qt 4.8.x Library + Qt 4.8.x MinGW toolchain
#   msysGit
#   Python

PYTHON := python
export PYTHON

QT_SPEC ?= win32-g++

RM := del
MKDIR := pwsh -noprofile -command New-Item -itemtype "directory"
