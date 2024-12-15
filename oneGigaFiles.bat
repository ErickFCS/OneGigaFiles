@echo off


for /l %%i in (%1, 1, %2) do (
    fsutil file createNew file%%i.txt 1000000 > nul
    attrib +H file%%i.txt > nul
)