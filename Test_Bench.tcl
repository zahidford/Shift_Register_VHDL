transcript off
vcom Shift_Register.vhd
vcom Shift_Register_Test.vhd

vsim Shift_Register

add wave sim:/Shift_Register_Test/dev_to_test/*

run 350 ns
