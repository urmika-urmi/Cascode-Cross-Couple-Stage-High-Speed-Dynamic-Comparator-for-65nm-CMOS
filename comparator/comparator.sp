* Cascode Cross-Coupled High-Speed Dynamic Comparator
* Technology: 65nm CMOS
.include 65nm_model.lib

************** Supply Sources **************
VDD Vdd 0 1.2
VINP Vinp 0 PULSE(0 1.2 2n 10p 10p 10n 20n)
VINN Vinn 0 PULSE(1.2 0 2n 10p 10p 10n 20n)
VCLK clk 0 PULSE(0 1.2 1n 10p 10p 5n 10n)

************** Differential Pair **************
M1 outn Vinp Vtail 0 NMOS W=500n L=65n
M2 outp Vinn Vtail 0 NMOS W=500n L=65n

************** Cascode Load **************
M3 outn clk Vdd Vdd PMOS W=500n L=65n
M4 outp clk Vdd Vdd PMOS W=500n L=65n

************** Cross-Coupled PMOS Latch **************
M5 outn outp Vdd Vdd PMOS W=500n L=65n
M6 outp outn Vdd Vdd PMOS W=500n L=65n

************** Tail NMOS (Clocked) **************
Mtail Vtail clk 0 0 NMOS W=600n L=65n

************** Simulation Commands **************
.tran 0.01n 40n
.control
run
write waveform.raw
.endc

.end
