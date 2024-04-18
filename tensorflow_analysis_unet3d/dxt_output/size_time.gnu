# Set terminal type and output file
set terminal pngcairo size 1000,300 enhanced font 'Monospace,12' 
set output 'size_time.png'
set datafile separator ","

set xlabel "Time (s)"
set ylabel "Read Size (KiloBytes)"

stats "test1.csv" using 8 nooutput

set xtics 5
unset key

set xrange [0:*]

# Define the coordinates of the vertical lines manually
x1 = 4.5
x2 = 9.2
x3 = 12.8
x4 = 17.9
x5 = 23
x6 = 26.6
x7 = 30.1
x8 = 33.7
x9 = 37.2
x10 = 40.9

epoch_length = 1.5

# Plot the data using all columns
set object 1 rect from x1, graph 0 to (x1 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x1, 0 to x1, 4500 nohead linecolor "red"
set arrow from (x1 + epoch_length), 0 to (x1 + epoch_length), 4500 nohead linecolor "red"

set object 2 rect from x2, graph 0 to (x2 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x2, 0 to x2, 4500 nohead linecolor "red"
set arrow from (x2 + epoch_length), 0 to (x2 + epoch_length), 4500 nohead linecolor "red"

set object 3 rect from x3, graph 0 to (x3 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x3, 0 to x3, 4500 nohead linecolor "red"
set arrow from (x3 + epoch_length), 0 to (x3 + epoch_length), 4500 nohead linecolor "red"

set object 4 rect from x4, graph 0 to (x4 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x4, 0 to x4, 4500 nohead linecolor "red"
set arrow from (x4 + epoch_length), 0 to (x4 + epoch_length), 4500 nohead linecolor "red"

set object 5 rect from x5, graph 0 to (x5 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x5, 0 to x5, 4500 nohead linecolor "red"
set arrow from (x5 + epoch_length), 0 to (x5 + epoch_length), 4500 nohead linecolor "red"

set object 6 rect from x6, graph 0 to (x6 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x6, 0 to x6, 4500 nohead linecolor "red"
set arrow from (x6 + epoch_length), 0 to (x6 + epoch_length), 4500 nohead linecolor "red"

set object 7 rect from x7, graph 0 to (x7 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x7, 0 to x7, 4500 nohead linecolor "red"
set arrow from (x7 + epoch_length), 0 to (x7 + epoch_length), 4500 nohead linecolor "red"

set object 8 rect from x8, graph 0 to (x8 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x8, 0 to x8, 4500 nohead linecolor "red"
set arrow from (x8 + epoch_length), 0 to (x8 + epoch_length), 4500 nohead linecolor "red"

set object 9 rect from x9, graph 0 to (x9 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x9, 0 to x9, 4500 nohead linecolor "red"
set arrow from (x9 + epoch_length), 0 to (x9 + epoch_length), 4500 nohead linecolor "red"

set object 10 rect from x10, graph 0 to (x10 + epoch_length), graph 1 behind fillcolor rgb "#CCCCCC" fillstyle solid 1.0 noborder
set arrow from x10, 0 to x10, 4500 nohead linecolor "red"
set arrow from (x10 + epoch_length), 0 to (x10 + epoch_length), 4500 nohead linecolor "red"

# read operation key
set key at graph 0.6, 1.3
set tmargin screen 0.8

# Manually create a key with a description for the shaded region
set label "Epoch" at 17.56, graph 1.1 center font ",12" textcolor rgb "black" front

# Manually create a red box filled with light gray at the specified position
set object 11 rect at screen 0.587, 0.861 size screen 0.01, 0.04 front fc rgb "#CCCCCC" fs solid border lc rgb "red"

set object 12 rect at screen 0.51, 0.9 size screen 0.22, 0.17 back fc rgb "white" fs solid border lc rgb "black"
plot "test1.csv" using ($8 - STATS_min + 5):($7 / 1000) with points pt 7 ps 0.5 lc rgb "blue" title "Read Operation"
