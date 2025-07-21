from ltspice import Ltspice
import pandas as pd

ltspice_file = Ltspice("comparator.raw")
ltspice_file.parse()

time = ltspice_file.get_time()
vin = ltspice_file.get_data('V(in)')
vout = ltspice_file.get_data('V(out)')

df = pd.DataFrame({'time': time, 'vin': vin, 'vout': vout})
df.to_csv("waveform.csv", index=False)

print("Waveform exported to waveform.csv")
