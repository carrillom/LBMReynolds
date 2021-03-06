reset

set term post eps enhanced color
set term post eps enhanced 22
set output "TimeVxRe30ErrorLocation.eps"

#set ylabel "{/Italic=22 RMSE}"
#set xlabel "{/Italic=22 Number of sample points}"

set ylabel "{Relative Error of v_x %}"
set xlabel "{Time (iteration)}"

set style line 1 lt 1 lw 6 lc 0
set style line 2 lt 2 lw 6 lc 0
#set xtics 1e-8,1e-4,1
set tics font ",18" # better
#set title font "Italic,10"
#set key font "Italic,18"
#set xrange [0:85]
#set yrange [0.01:45]
#unset key
#set title "{v_x}"
#set log y
# Las lineas siguientes son los graficos con etiqueta y todo
#set key at 80, 40
#p [0:4]  'PredictionsWithErrors.csv' u ($1):($2):($7) with errorbars t '10 Hidden neurons' 

p "TS_VelRe30_RelError.dat" u 1:2 w lp t '0.3m', "" u 1:3 w lp t '0.5m', "" u 1:4 w lp t '0.7m'