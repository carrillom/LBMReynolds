reset

set term post eps enhanced color
set term post eps enhanced 22
set output "VortRelError_vs_Re_Espanol.eps"

#set ylabel "{/Italic=22 Error Relativo (%)}"
#set xlabel "{/Italic=22 R}e"

set ylabel "{Error Relativo (%)}"
set xlabel "{/Italic R}e"

set style line 1 lt 1 lw 6 lc 0
set style line 2 lt 2 lw 6 lc 0
#set xtics 1e-8,1e-4,1
set tics font ",18" # better
#set title font "Italic,10"
#set key font "Italic,18"
set xrange [0:125]
#set yrange [0.01:45]
#unset key
#set title "{Vorticity}"
#set log y
# Las lineas siguientes son los graficos con etiqueta y todo
set key at 110, 3.8
#p [0:4]  'PredictionsWithErrors.csv' u ($1):($2):($7) with errorbars t '10 Hidden neurons' 

#p "RelError_Vort_82pts.dat" u 1:2 w lp lc -1 t '0.3m', \
#'' u 1:3 w lp lc -1 t '0.5m', \
#'' u 1:4 w lp lc -1 t '0.7m', \
#'' u 1:5 w lp lc -1 t '1.1m', \
#'' u 1:6 w lp lc -1 t '1.9m'

p "RelError_Vort_82pts.dat" u 1:2 w lp t 'x = 0.3m', \
'' u 1:3 w lp t 'x = 0.5m', \
'' u 1:4 w lp t 'x = 0.7m', \
'' u 1:5 w lp t 'x = 1.1m', \
'' u 1:6 w lp t 'x = 1.9m'