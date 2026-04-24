# make file for running test bench simulation 
questa_sim: 
	vlib.exe work 
	vlog.exe -sv  -work work -f $$(cat filelist.f)

	vsim.exe -t 1ps -L work -voptargs="+acc" tb -do "do wave.do; run -all;"

.PHONY: clean

clean:
	if [ -d "work" ]; then  vdel.exe -lib work -all; fi
	rm -rf trans* vsim* wlf*

.PHONY: questa

questa_win: questa_sim 

questa_sim_linux: 
	vlib work 
	vlog -sv  -work work -f filelist.f
	vsim -c -t 1ps -L work -voptargs="+acc" tb -do " do wave.do; run -all; "
#vsim -t 1ps -L work -voptargs="+acc" tb -do " do wave.do; run -all; "			

.PHONY: clean_linux

clean_linux:
	if [ -d "work" ]; then  vdel -lib work -all; fi
	rm -rf trans* vsim*

.PHONY: questa_linux

questa: questa_sim_linux 