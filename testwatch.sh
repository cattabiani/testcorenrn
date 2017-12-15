#!/bin/bash
set -e -x

# cmake .. -DADDITIONAL_MECHPATH=$HOME/models/testcorenrn/mod
# make -j

P='mpiexec -n 6 bin/coreneuron_exec -mpi'
P='bin/coreneuron_exec'
M=$HOME/models/testcorenrn

t_end=10
t_chkpt=.6

# standard spikes in $t_end ms
rm -rf out[0-9].dat
$P -e $t_end -d $M/testwatchdat --cell-permute 0
cat out[0-9].dat > temp
sortspike temp std${t_end}
diff -w $M/outwatch.std std${t_end}

# checkpoint at $t_chkpt
rm -rf out[0-9].dat
rm -rf checkpoint/*
$P -e $t_chkpt -d $M/testwatchdat --cell-permute 0 --checkpoint checkpoint
cat out[0-9].dat > temp
sortspike temp temp${t_chkpt}

# run checkpoint to $t_end
rm -rf out[0-9].dat
$P --tstart $t_chkpt -e $t_end -d $M/testwatchdat --restore checkpoint --cell-permute 0
cat out[0-9].dat > temp
sortspike temp temp${t_chkpt}-${t_end}
cat temp${t_chkpt} temp${t_chkpt}-${t_end} > temp0-${t_end}
meld std${t_end} temp0-${t_end}
