EXAMPLE     = arith_unit_26
MODEL_FILES = ${EXAMPLE}.sv
RTL_FILES   = ${EXAMPLE}_rtl.sv
TB_FILES    = testbench.sv
SYNTH_FILES = synth.log
SIGNALS     = signals.vcd

# Uruchomienie syntezy yosys
rtl:
	yosys -s run.ys | tee synth.log 

# Wykonanie skompilowanego programu symulacji
sim: compile 	
	./${EXAMPLE}.iveri.run
	
# Kompilacja modulow verilog do programu wykonywalnego
compile: 
	iverilog -g2005-sv				\
		${MODEL_FILES} ${RTL_FILES} ${TB_FILES}	\
		-o ${EXAMPLE}.iveri.run			\
			|& tee ${EXAMPLE}.iveri.log

# Uruchomienie przegladarki przebiegow GTKWave
waves:
	gtkwave signals.vcd &

# Usuwanie wyników 
clear: 
	[ -f ${EXAMPLE}.iveri.run ] && rm ${EXAMPLE}.iveri.run

clar: clear	
	[ -f ${EXAMPLE}.iveri.log ] && rm ${EXAMPLE}.iveri.log 	
	[ -f ${RTL_FILES} ] && rm ${RTL_FILES}
	[ -f ${SYNTH_FILES} ] && rm ${SYNTH_FILES}
	[ -f ${SIGNALS} ] && rm ${SIGNALS}

