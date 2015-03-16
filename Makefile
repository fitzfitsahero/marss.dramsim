# MARSS uses scons, DRAMSim uses make so this file just a hack to 
# build both

all: 
	make -C /home/fitz/src/ramsim libdramsim.so
# the c parameter is the number of cores to compile QEMU with 
	scons debug=0 c=1 dramsim=/home/fitz/src/ramsim

no:
	make -C /home/fitz/src/ramsim clean
	scons debug=0 c=1 

trace: 
	make -C /home/fitz/src/ramsim clean
	scons pretty=0 debug=0 c=1 trace=1

debug:
	make -C /home/fitz/src/ramsim DEBUG=1 libdramsim.so
	scons debug=1 c=1 dramsim=/home/fitz/src/ramsim

clean:
	make -C /home/fitz/src/ramsim clean
	scons -c
	
