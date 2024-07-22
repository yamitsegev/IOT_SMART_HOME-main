// arg: Name Units Place UpdateTime

start "Emulator: DHT-1" python emulator.py DHT-1 Celsius Room_1 7  
timeout 3 
start "Emulator: DHT-2" python emulator.py DHT-2 Celsius Common 11
timeout 3
start "Emulator: Electricity&Sensitivity Meter" python emulator.py ElecSensitivityMeter kWh Home 13
timeout 3
start "Emulator: Alarm" python emulator.py Alarm N air-1 5
timeout 3
start "Emulator: Motion" python emulator.py Motion km motion 8
timeout 3
start "Tesla Security Manager" python manager.py
timeout 10
start "System GUI" python gui.py