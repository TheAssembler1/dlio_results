# Set terminal type and output file
set terminal pngcairo enhanced font 'Verdana,12'
set output 'posix_read_size_vs_time.png'

# Set title and labels
set title "Read Size vs Time"
set xlabel "Time"
set ylabel "Read Size"

# Set data format
set xdata time
set timefmt "%s" # Set time format to UNIX timestamp
set format x "%H:%M:%S" # Format of x-axis labels

# Plot the data
plot "nlewi26_python3.10_id22306218-1189765_2-29-9847-1709842685805305994_1.darshan.parsed" using ($5):($23) with lines lw 2 lc rgb "blue" title "Read Size vs Time"

