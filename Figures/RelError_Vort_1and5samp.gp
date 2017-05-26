reset

set term post eps enhanced color
set term post eps enhanced 22
set output "RelativeError_1and5pts_at_1.eps"


set ylabel "{Relative Error (%)}"
set xlabel "{Re}"

set style line 1 lt 1 lw 6 lc 0
set style line 2 lt 2 lw 6 lc 0
#set xtics 1e-8,1e-4,1
set tics font ",18" # better
#set title font "Italic,10"
#set key font "Italic,18"
set xrange [0:125]
#set yrange [0.01:45]
#unset key
#set title "{Mach 5,a=0.5}"
#set log y
# Las lineas siguientes son los graficos con etiqueta y todo
#set key at 80, 40
#p [0:4]  'PredictionsWithErrors.csv' u ($1):($2):($7) with errorbars t '10 Hidden neurons' 

#p 'RelError_Vort_0.5m_1and5samp.dat' u 1:2 w lp lc -1 t 'vorticity at 0.5m', \
#'' u 1:3 w lp lc -1 t 'vorticity at 0.5m with 5 adjacent points', \

p "RelError_Vort_1.1m_1and5samp.dat" u 1:2 w lp lc -1 t "vorticity at 1.1m", \
"" u 1:3 w lp lc -1 t 'vorticity at 1.1m with 5 adjacent points'
