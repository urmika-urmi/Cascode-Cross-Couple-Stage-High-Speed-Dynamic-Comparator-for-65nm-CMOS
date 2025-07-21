* Cascode Cross Coupled Dynamic Comparator
.include 65nm_model.lib

Vdd Vdd 0 1.2
Vinp Vinp 0 PULSE(0 1.2 1n 10p 10p 10n 20n)
Vinn Vinn 0 PULSE(1.2 0 1n 10p 10p 10n 20n)
Clk clk 0 PULSE(0 1.2 5n 10p 10p 5n 10n)

* Differential pair
M1 outn Vinp Vdd Vdd PMOS L=65n W=500n
M2 outp Vinn Vdd Vdd PMOS L=65n W=500n

* Cascode load
M3 outn clk outn Vdd PMOS L=65n W=500n
M4 outp clk outp Vdd PMOS L=65n W=500n

* Cross-coupled inverters
M5 outn outp 0 0 NMOS L=65n W=500n
M6 outp outn 0 0 NMOS L=65n W=500n

* Clocked tail transistor
Mtail outn 0 clk 0 NMOS L=65n W=500n

.tran 0.01n 30n
.control
run
write waveform.raw
.endc
.end
