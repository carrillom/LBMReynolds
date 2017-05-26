reset

set term post eps enhanced color
set term post eps enhanced 22
set output "LBMFACx4Re100vx(1).eps"

set ylabel "{/Italic=18 v_x}"
set xlabel "{/Italic=18 y}"

#set ylabel "{y}"
#set xlabel "{v_x}"

set style line 1 lt 1 lw 6 lc 0
set style line 2 lt 2 lw 6 lc 0
#set xtics 1e-8,1e-4,1
set tics font ",18" # better
#set title font "Italic,10"
#set key font "Italic,18"
set xrange [0:0.415]
set yrange [-0.25:2.35]
#unset key
#set title "{v_x}"
#set log y
# Las lineas siguientes son los graficos con etiqueta y todo
#set key at 80, 40
#p [0:4]  'PredictionsWithErrors.csv' u ($1):($2):($7) with errorbars t '10 Hidden neurons' 

p "NNFinal_LBM2DRe_100.dat" u 2:3 every 1::4980::5062 w lp t '0.3m', \
"" u 2:3 every 1::18260::18342 w lp t '1.1m', \
"" u 2:3 every 1::31540::31622 w lp t '1.9m'
#'Velx_0.7mRelError.dat' u 1:4 every ::1::6 w lp lc -1 t '0.7m', \
#'Velx_1.1mRelError.dat' u 1:4 every ::1::6 w lp lc -1 t '1.1m', \
#'Velx_1.9mRelError.dat' u 1:4 every ::1::6 w lp lc -1 t '1.9m'