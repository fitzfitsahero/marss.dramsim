# MARSS uses scons, DRAMSim uses make so this file just a hack to 
# build both

all: 
	make -C ../ramsim libdramsim.so
# the c parameter is the number of cores to compile QEMU with 
	scons debug=0 c=1

debug:
	make -C ../ramsim DEBUG=1 libdramsim.so
	scons debug=1 c=1

clean:
	make -C ../ramsim clean
	scons -c
	
