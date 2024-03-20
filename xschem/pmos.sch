v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -120 -10 -50 -10 {
lab=#net1}
N -120 -70 -10 -70 {
lab=#net2}
N -10 -70 -10 -40 {
lab=#net2}
N -10 20 -10 40 {
lab=GND}
N -10 -60 20 -60 {
lab=#net2}
N 20 -60 20 -20 {
lab=#net2}
N -20 -20 20 -20 {
lab=#net2}
C {sky130_fd_pr/pfet3_01v8.sym} -30 -10 0 0 {name=M1
L=0.15
W=1
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/vsource.sym} -120 -40 0 0 {name=vgs value=3 }
C {devices/gnd.sym} -10 40 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} 140 -90 0 0 {name=s1 only_toplevel=false value="
.dc vgs 0 1.8 
.save all
.end
"}
C {devices/code.sym} -520 -60 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
