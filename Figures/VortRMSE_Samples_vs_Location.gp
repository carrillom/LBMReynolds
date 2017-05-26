reset

set term post eps enhanced color
set term post eps enhanced 22
set output "VortRMSE_Samples_vs_Location.eps"

#set ylabel "{/Italic=22 RMSE}"
#set xlabel "{/Italic=22 Number of sample points}"

set ylabel "{RMSE}"
set xlabel "{Number of sample points}"

set style line 1 lt 1 lw 6 lc 0
set style line 2 lt 2 lw 6 lc 0
#set xtics 1e-8,1e-4,1
set tics font ",18" # better
#set title font "Italic,10"
#set key font "Italic,18"
set xrange [0:85]
#set yrange [0.01:45]
#unset key
set title "{Vorticity}"
#set log y
# Las lineas siguientes son los graficos con etiqueta y todo
#set key at 80, 40
#p [0:4]  'PredictionsWithErrors.csv' u ($1):($2):($7) with errorbars t '10 Hidden neurons' 

p "Vort_0.3mRelError.dat" u 1:4 every ::1::6 w lp lc -1 t '0.3m', \
"Vort_0.5mRelError.dat" u 1:4 every ::1::6  w lp lc -1 t "0.5m", \
'Vort_0.7mRelError.dat' u 1:4 every ::1::6 w lp lc -1 t '0.7m', \
'Vort_1.1mRelError.dat' u 1:4 every ::1::6 w lp lc -1 t '1.1m', \
'Vort_1.9mRelError.dat' u 1:4 every ::1::6 w lp lc -1 t '1.9m'