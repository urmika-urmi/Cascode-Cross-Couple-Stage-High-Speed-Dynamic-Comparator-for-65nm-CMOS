import matplotlib.pyplot as plt
import pandas as pd

# Load waveform.csv generated manually or from ngspice
data = pd.read_csv("waveform.csv")

time = data["time"]
vinp = data["vinp"]
vout = data["outp"]

plt.plot(time, vinp, label="Vinp")
plt.plot(time, vout, label="Vout", linestyle='--')
plt.xlabel("Time (s)")
plt.ylabel("Voltage (V)")
plt.title("Comparator Simulation")
plt.legend()
plt.grid(True)
plt.show()
