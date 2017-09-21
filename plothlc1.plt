set terminal png truecolor
set output 'analytical_100000runs_withlocalevent.png'
set title "alpha=0.03 delta=5 lpr=0.25 epsilon=10"
set xlabel "interval size"
set xtics rotate
set ylabel "HVC to HLC ratio & Anal"

plot "wcp2" using 1:2 title "anal" with line, "wcp1_upto100000_ratiovsinterval_3proc_withlocalevent" using 1:($2/$3) title "HLC to HVC cuts ratio" with line
