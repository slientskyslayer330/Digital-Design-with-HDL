@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.4\\bin
call %xv_path%/xelab  -wto a56551a80ebb42df83f1a27dceebd217 -m64 --debug typical --rangecheck --relax --mt 2 -L xil_defaultlib -L secureip --snapshot sim_behav xil_defaultlib.sim -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
