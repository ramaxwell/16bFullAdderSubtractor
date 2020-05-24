This is a 16 bit Full Adder and Subtractor composed of muxes that are made up of cmos inverters
and Cswitches. I have included some block level diagrams to illustrate the verilog code and some basic operation.
There are no explicit timing (rise/fall times) encoded in the verilog but there is a functional timing diagram generated
using the Icarus VVP runtime and captured in GTKWave.

I used Icarus Verilog along with GTKWave to build and test this project.


usage.txt
$> iverilog -o fullAddSub_mux_16b -c file_list.txt

$> vvp fullAddSub_mux_16b -lxt2

$> gtkwave dump.lx2
