import matplotlib.pyplot as plt
import pandas as pd

# Load data exported from simulator (e.g., LTspice CSV or HSPICE output)
data = pd.read_csv('waveform.csv')

# Assuming time, vin, vout are columns in CSV
time = data['time']
vin = data['vin']
vout = data['vout']

plt.figure(figsize=(10, 6))
plt.plot(time, vin, label='Input Voltage (vin)')
plt.plot(time, vout, label='Output Voltage (vout)', linestyle='--')
plt.title('Comparator Input vs Output')
plt.xlabel('Time (s)')
plt.ylabel('Voltage (V)')
plt.legend()
plt.grid(True)
plt.savefig("waveform_plot.png")
plt.show()
