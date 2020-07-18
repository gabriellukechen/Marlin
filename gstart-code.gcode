; Custom Start G-code
G28 ; Home all axes
G1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed
G1 X-0 Y-0 F1500.0 ; move out of print volume;

M190 R{material_bed_temperature_layer_0} ; wait for heat bed to reach 80
M109 R{material_print_temperature_layer_0} ; wait for hotend to reach 230

G92 E0 ; Reset Extruder
G1 F200 E3; Extrude 3 mm of filament

G1 X10 Y.5 Z0.3 F5000.0 ; Move to start position
G1 X100 Y.5 Z0.3 F1500.0 E15 ; Draw the first line
G1 X100 Y.2 Z0.3 F5000.0 ; Move to side a little
G1 X10 Y.2 Z0.3 F1500.0 E30 ; Draw the second line

G1 Z5.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed and let out nozzle pressure
G1 X0 Y15 Z0.4; Move back to heat bed, sticking blob of filament down before travel move to free nozzle

; End of custom start GCode
