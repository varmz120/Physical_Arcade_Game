# clk => 100000000Hz
create_clock -period 10.0 -name clk_0 -waveform {0.000 5.000} [get_ports clk]
set_property PACKAGE_PIN N14 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
set_property PACKAGE_PIN P6 [get_ports {rst_n}]
set_property IOSTANDARD LVCMOS33 [get_ports {rst_n}]
set_property PACKAGE_PIN P15 [get_ports {usb_rx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_rx}]
set_property PACKAGE_PIN P16 [get_ports {usb_tx}]
set_property IOSTANDARD LVCMOS33 [get_ports {usb_tx}]
set_property PACKAGE_PIN C6 [get_ports {custom_start_button}]
set_property IOSTANDARD LVCMOS33 [get_ports {custom_start_button}]
set_property PULLDOWN true [get_ports {custom_start_button}]
set_property PACKAGE_PIN D6 [get_ports {ls_1}]
set_property IOSTANDARD LVCMOS33 [get_ports {ls_1}]
set_property PULLDOWN true [get_ports {ls_1}]
set_property PACKAGE_PIN D5 [get_ports {ls_2}]
set_property IOSTANDARD LVCMOS33 [get_ports {ls_2}]
set_property PULLDOWN true [get_ports {ls_2}]
set_property PACKAGE_PIN F5 [get_ports {ls_3}]
set_property IOSTANDARD LVCMOS33 [get_ports {ls_3}]
set_property PULLDOWN true [get_ports {ls_3}]
set_property PACKAGE_PIN E5 [get_ports {ls_4}]
set_property IOSTANDARD LVCMOS33 [get_ports {ls_4}]
set_property PULLDOWN true [get_ports {ls_4}]
set_property PACKAGE_PIN A7 [get_ports {io_button[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_button[0]}]
set_property PULLDOWN true [get_ports {io_button[0]}]
set_property PACKAGE_PIN B7 [get_ports {io_button[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_button[1]}]
set_property PULLDOWN true [get_ports {io_button[1]}]
set_property PACKAGE_PIN P11 [get_ports {io_button[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_button[2]}]
set_property PULLDOWN true [get_ports {io_button[2]}]
set_property PACKAGE_PIN P8 [get_ports {io_sel[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel[0]}]
set_property PACKAGE_PIN R8 [get_ports {io_sel[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel[1]}]
set_property PACKAGE_PIN N9 [get_ports {io_sel[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel[2]}]
set_property PACKAGE_PIN P9 [get_ports {io_sel[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel[3]}]
set_property PACKAGE_PIN F2 [get_ports {io_sel2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel2[0]}]
set_property PACKAGE_PIN E1 [get_ports {io_sel2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel2[1]}]
set_property PACKAGE_PIN E3 [get_ports {io_sel2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel2[2]}]
set_property PACKAGE_PIN D3 [get_ports {io_sel2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_sel2[3]}]
set_property PACKAGE_PIN T5 [get_ports {io_seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[0]}]
set_property PACKAGE_PIN R5 [get_ports {io_seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[1]}]
set_property PACKAGE_PIN T9 [get_ports {io_seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[2]}]
set_property PACKAGE_PIN R6 [get_ports {io_seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[3]}]
set_property PACKAGE_PIN R7 [get_ports {io_seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[4]}]
set_property PACKAGE_PIN T7 [get_ports {io_seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[5]}]
set_property PACKAGE_PIN T8 [get_ports {io_seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[6]}]
set_property PACKAGE_PIN T10 [get_ports {io_seg[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg[7]}]
set_property PACKAGE_PIN G5 [get_ports {io_seg2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[0]}]
set_property PACKAGE_PIN B2 [get_ports {io_seg2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[1]}]
set_property PACKAGE_PIN C1 [get_ports {io_seg2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[2]}]
set_property PACKAGE_PIN C2 [get_ports {io_seg2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[3]}]
set_property PACKAGE_PIN C3 [get_ports {io_seg2[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[4]}]
set_property PACKAGE_PIN E2 [get_ports {io_seg2[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[5]}]
set_property PACKAGE_PIN D1 [get_ports {io_seg2[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[6]}]
set_property PACKAGE_PIN B1 [get_ports {io_seg2[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {io_seg2[7]}]
