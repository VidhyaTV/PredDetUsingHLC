set terminal png truecolor
set output 'hvchlc_interval_100000runs_withlocalevent.png'
set title "alpha=0.03 delta=5 lpr=0.25 epsilon=10"
set xlabel "interval size"
set xtics rotate
set ylabel "HVC & HLC"

plot "wcp1_upto100000_ratiovsinterval_3proc_withlocalevent" using 1:3 title "HVC vs interval_size" with line, "wcp1_upto100000_ratiovsinterval_3proc" using 1:2 title "HLC vs interval_size" with line


