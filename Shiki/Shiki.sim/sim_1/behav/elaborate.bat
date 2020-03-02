@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto 5f34352f967f4c808ac96ccb2bf193f4 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sim_behav xil_defaultlib.sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
