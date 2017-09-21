set terminal png truecolor
set output 'hlcresult25p_interval5.png'
set title "alpha=0.03 delta=5 lpr=0.25 epsilon=10"
set xlabel "#processes"
set xtics rotate
set ylabel "# of cuts"

plot "wcp1_25p_upto1000_interval5" using 1:4 title "HVC to HLC cuts ratio" with line

set terminal png truecolor
set output 'hlcresult25p_interval15.png'
set title "alpha=0.03 delta=5 lpr=0.25 epsilon=10"
set xlabel "#processes"
set xtics rotate
set ylabel "# of cuts"

plot "wcp1_25p_upto1000_interval15" using 1:4 title "HVC to HLC cuts ratio" with line

set terminal png truecolor
set output 'hlcresult50p_interval15.png'
set title "alpha=0.03 delta=5 lpr=0.25 epsilon=10"
set xlabel "#processes"
set xtics rotate
set ylabel "# of cuts"
plot "wcp1_50p_upto1000_interval15" using 1:4 title "HVC to HLC cuts ratio" with line

set terminal png truecolor
set output 'hlcresult50p_interval5.png'
set title "alpha=0.03 delta=5 lpr=0.25 epsilon=10"
set xlabel "#processes"
set xtics rotate
set ylabel "# of cuts"
plot "wcp1_50p_upto1000_interval5" using 1:4 title "HVC to HLC cuts ratio" with line

set terminal png truecolor
set output 'hlcresultalphainterval15.png'
set title "nprocs=3 delta=5 lpr=0.25 epsilon=10"
set xlabel "alpha"
set xtics rotate
set ylabel "# of cuts"
plot "wcp1_3p_upto1000alpha" using 1:4 title "HVC to HLC cuts ratio" with line

set terminal png truecolor
set output 'hlcresultalphainterval5.png'
set title "nprocs=3 delta=5 lpr=0.25 epsilon=10"
set xlabel "alpha"
set xtics rotate
set ylabel "# of cuts"
plot "wcp1_3p_upto1000alpha_interval5" using 1:4 title "HVC to HLC cuts ratio" with line
