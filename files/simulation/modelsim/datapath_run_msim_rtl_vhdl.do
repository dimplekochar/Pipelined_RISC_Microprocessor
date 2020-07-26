transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/SM.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/LM.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/memoryinst.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/WriteBack.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/tempreg1+flag_en.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/signextender9.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/signextender6.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/shifter7.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/RegisterRead.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/registerfile.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/pc.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P5bReg.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P4bReg.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P4aReg.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P3bReg.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P3aReg.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P2aReg.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P1Reg.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/mux8.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/mux4.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/mux2.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/memory.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/MemAccess.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/InstFetch.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/Execution.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/datapath.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/ControlStore.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/alu_add.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/alu.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/priorityencoder.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/decoder.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/subtracter8.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/tempreg16.vhd}
vcom -93 -work work {/home/shivi/Desktop/MICRO/Pipeline_29-11/P2bReg.vhd}

