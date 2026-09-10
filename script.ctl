if { [info exists env(PROJ_DIR)] } {
    open_project $env(PROJ_DIR)
} else {
       open_project FFT
}
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
csim_design
csynth_design
exit