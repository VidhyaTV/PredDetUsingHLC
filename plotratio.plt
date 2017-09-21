set terminal png truecolor
set output 'hvchlcratio_interval_100000runs_withlocalevent_multiplerun.png'
set title "alpha=0.03 delta=5 lpr=0.01 epsilon=10"
set xlabel "interval size"
set xtics rotate
set ylabel "HVC to HLC ratio"

plot "wcp1_upto100000_ratiovsinterval_3proc_withlocalevent_multiplerun" using 1:4 title "HVC to HLC ratio" with line

set terminal png truecolor
set output 'hvchlc_interval_100000runs_withlocalevent_multiplerun.png'
set title "alpha=0.03 delta=5 lpr=0.01 epsilon=10"
set xlabel "interval size"
set xtics rotate
set ylabel "HVC & HLC"

plot "wcp1_upto100000_ratiovsinterval_3proc_withlocalevent_multiplerun" using 1:3 title "HVC vs interval_size" with line, "wcp1_upto100000_ratiovsinterval_3proc_withlocalevent_multiplerun" using 1:2 title "HLC vs interval_size" with line

set terminal png truecolor
set output 'analytical_100000runs_withlocalevent_multiplerun.png'
set title "alpha=0.03 delta=5 lpr=0.01 epsilon=10"
set xlabel "interval size"
set xtics rotate
set ylabel "HVC to HLC ratio & Analytical"

plot "wcp2" using 1:2 title "analytical" with line, "wcp1_upto100000_ratiovsinterval_3proc_withlocalevent_multiplerun" using 1:($2/$3) title "HLC to HVC cuts ratio" with line
