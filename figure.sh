#!/bin/sh


gnuplot <<EOF
set output "stringPE.eps"
set terminal postscript eps enhanced 25
set size 0.4,0.5
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("5" 5)
set ytics axis nomirror in ("5" 5)
set xrange [-2.0:2.0]
set yrange [-1.0:4.0]
set arrow from 0,0 to 2.0,0
set arrow from 0,0 to 0,4.0
unset key
set label "0" at -0.3,-0.4
set label "x" at 2.0,-0.2 font "Times-Italic,25"
set label "U(x)" at -1.2,4.0 font "Times-Italic,25"
plot x*x ls 2
EOF

gnuplot <<EOF
set output "gravityPE.eps"
set terminal postscript eps enhanced 25
set size 0.4,0.5
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("5" 5)
set ytics axis nomirror in ("5" 5)
set xrange [-0.5:4.0]
set yrange [-3.0:1.0]
set arrow from 0,0 to 4.0,0
set arrow from 0,0 to 0,1.0
unset key
set label "0" at -0.5,-0.4
set label "R" at 4.3,0.0 font "Times-Italic,25"
set label "U(R)" at -0.5,1.4 font "Times-Italic,25"
plot -1/x ls 2
EOF

gnuplot <<EOF
set output "stone.eps"
set terminal postscript eps enhanced 25
set size 0.4,0.5
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("5" 5)
set ytics axis nomirror in ("5" 5)
set xrange [0.0:4.0]
set yrange [0.0:4.5]
set arrow from 0,0 to 4.0,0
set arrow from 0,0 to 0,4.5
unset key
set label "0" at -0.5,-0.5
set label "t" at 4.3,0.0 font "Times-Italic,25"
set label "x(t)" at 0.3,4.6 font "Times-Italic,25"
plot (-x*x+8*x)/4 ls 2
EOF

gnuplot <<EOF
set output "viscos.eps"
set terminal postscript eps enhanced 25
set size 0.6,0.4
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set parametric
set xtics axis nomirror in ("5" 5)
set ytics axis nomirror in ("5" 5)
set xrange [-2.0:4.0]
set yrange [-0.2:2.9]
set arrow from 0,0 to 4.0,0
set arrow from 0,0 to 0,2.9
unset key
set label "0" at -0.3,-0.4
set label "t" at 4.3,0.0 font "Times-Italic,25"
set label "v(t)" at 0.2,3.0 font "Times-Italic,25"
set label "v(0)" at 0.2,2.0 font "Times-Italic,25"
plot t*t,exp(-t*t)*2 ls 2, -1*t*t,2
EOF

gnuplot <<EOF
set output "inert_v.eps"
set terminal postscript eps enhanced 25
set size 0.6,0.4
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set parametric
set xtics axis nomirror in ("5" 5)
set ytics axis nomirror in ("5" 5)
set xrange [-2.0:4.0]
set yrange [-0.2:2.9]
set arrow from 0,0 to 4.0,0
set arrow from 0,0 to 0,2.9
unset key
set label "0" at -0.3,-0.4
set label "t" at 4.3,0.0 font "Times-Italic,25"
set label "v(t)" at 0.2,3.0 font "Times-Italic,25"
set label "v(0)" at 0.2,2.0 font "Times-Italic,25"
plot t*t,2/(2*t*t+1) ls 2, -1*t*t,2
EOF

gnuplot <<EOF
set output "viscos_fall.eps"
set terminal postscript eps enhanced 25
set size 0.5,0.4
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set parametric
set xtics axis nomirror in ("5" 5)
set ytics axis nomirror in ("5" 5)
set xrange [-0.9:4.0]
set yrange [-1.3:0.2]
set arrow from 0,0 to 4.0,0
set arrow from 0,0 to 0,0.2
unset key
set label "0" at -0.4,-0.2
set label "t" at 4.3,0.0 font "Times-Italic,25"
set label "v(t)" at 0.1,0.2 font "Times-Italic,25"
set label "-mg/a" at -1.2,-1.1 font "Times-Italic,25"
set label "v=-gt" at 1.3,-1.2 font "Times-Italic,25"
plot t*t,exp(-t*t)-1 ls 2, t,-1 ls 4, t*t,-t*t ls 4
EOF

gnuplot <<EOF
set output "sinh.eps"
set terminal postscript eps enhanced 25
set size 0.5,0.80
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 3 pt 0
set style line 3 lt 3 lw 1 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("-2" -2, "-1" -1, "1" 1, "2" 2)
set ytics axis nomirror in ("-3" -3, "-2" -2, "-1" -1, "1" 1, "2" 2, "3" 3)
set xrange [-2.5:2.5]; 
set yrange [-3.5:3.5]
set arrow from 0,0 to 2.5,0
set arrow from 0,0 to 0,3.5
set nokey
set label "0" at -0.4,-0.35
set label "x" at 2.5,-0.4 font "Times-Italic,25"
set label "y" at -0.6,3.7 font "Times-Italic,25"
unset key

plot (exp(x)-exp(-x))/2 w l ls 2
EOF

gnuplot <<EOF
set output "cosh.eps"
set terminal postscript eps enhanced 25
set size 0.5,0.80
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 3 pt 0
set style line 3 lt 3 lw 3 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("-2" -2, "-1" -1, "1" 1, "2" 2)
set ytics axis nomirror in ("-3" -3, "-2" -2, "-1" -1, "1" 1, "2" 2, "3" 3)
set xrange [-2.5:2.5]; 
set yrange [-3.5:3.5]
set arrow from 0,0 to 2.5,0
set arrow from 0,0 to 0,3.5
set nokey
set label "0" at -0.4,-0.35
set label "x" at 2.5,-0.4 font "Times-Italic,25"
set label "y" at -0.6,3.7 font "Times-Italic,25"
unset key
plot (exp(x)+exp(-x))/2 w l ls 2, (exp(x)-exp(-x))/(exp(x)+exp(-x)) w l ls 3
EOF

gnuplot <<EOF
set output "springAcos.eps"
set terminal postscript eps enhanced 25
set size 0.7,0.6
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 3 pt 0
set style line 3 lt 3 lw 3 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("2{/Symbol p}/{/Symbol w}" 6.28, "4{/Symbol p}/{/Symbol w}" 12.56)
set ytics axis nomirror in ("-A" -1, "A" 1)
set xrange [0:15]; 
set yrange [-1.3:1.3]
set arrow from 0,0 to 15,0
set arrow from 0,0 to 0,1.3
set nokey
set label "0" at -1.0,-0.15
set label "t" at 15.0,-0.1 font "Times-Italic,25"
set label "x" at -0.6,1.4 font "Times-Italic,25"
unset key
plot cos(x) w l ls 2
EOF


gnuplot <<EOF
set output "springX0.eps"
set terminal postscript eps enhanced 25
set size 0.7,0.6
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 3 pt 0
set style line 3 lt 3 lw 3 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("2{/Symbol p}/{/Symbol w}" 6.28, "4{/Symbol p}/{/Symbol w}" 12.56)
set ytics axis nomirror in ("-X_0" -1, "X_0" 1)
set xrange [0:15]; 
set yrange [-1.3:1.3]
set arrow from 0,0 to 15,0
set arrow from 0,0 to 0,1.3
set nokey
set label "0" at -1.0,-0.15
set label "t" at 15.0,-0.1 font "Times-Italic,25"
set label "x" at -0.6,1.4 font "Times-Italic,25"
unset key
plot cos(x) w l ls 2
EOF

gnuplot <<EOF
set output "springV0.eps"
set terminal postscript eps enhanced 25
set size 0.7,0.6
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 3 pt 0
set style line 3 lt 3 lw 3 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("2{/Symbol p}/{/Symbol w}" 6.28, "4{/Symbol p}/{/Symbol w}" 12.56)
set ytics axis nomirror in ("-V_0/{/Symbol w}" -1, "V_0/{/Symbol w}" 1)
set xrange [0:15]; 
set yrange [-1.3:1.3]
set arrow from 0,0 to 15,0
set arrow from 0,0 to 0,1.3
set nokey
set label "0" at -1.0,-0.15
set label "t" at 15.0,-0.1 font "Times-Italic,25"
set label "x" at -0.6,1.4 font "Times-Italic,25"
unset key
plot sin(x) w l ls 2
EOF

echo "1 2" > dummy1
echo "-1 -2" > dummy2
echo "2 2" > dummy3
echo "-2 1" > dummy4
gnuplot <<EOF
set output "cplane.eps"
set terminal postscript eps enhanced 16
set size 0.8,0.8
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 3 pt 0
set style line 3 lt 3 lw 3 pt 0
set pointsize 2.0
set zeroaxis ls 1
set xtics axis nomirror in ("-2" -2, "-1" -1, "1" 1, "2" 2)
set ytics axis nomirror in ("-2" -2, "-1" -1, "1" 1, "2" 2)
set xrange [-3:3]
set yrange [-3:3]
set arrow from 0,0 to 3,0
set arrow from 0,0 to 0,3
set label "0" at -0.5,-0.5
set label "Re" at 3.2,-0.0
set label "Im" at -1.0,3.0
unset key
set multiplot
set origin 0.0, 0.4; set size 0.32,0.4
set label "(1) z" at -2.8,2.5
plot "dummy1" w p 7

set origin 0.4, 0.4; set size 0.32,0.4
unset label
set label "(2) -z" at -2.8,2.5
set label "0" at -0.5,-0.5
set label "Re" at 3.2,-0.0
set label "Im" at -1.0,3.0
plot "dummy2" w p 7

set origin 0.0, 0.0; set size 0.32,0.4
unset label
set label "(3) 1+z" at -2.8,2.5
set label "0" at -0.5,-0.5
set label "Re" at 3.2,-0.0
set label "Im" at -1.0,3.0
plot "dummy3" w p 7

set origin 0.4, 0.0; set size 0.32,0.4
unset label
set label "(4) iz" at -2.8,2.5
set label "0" at -0.5,-0.5
set label "Re" at 3.2,-0.0
set label "Im" at -1.0,3.0
plot "dummy4" w p 7
EOF


gnuplot <<EOF
set output "throw_ball_slant.eps"
set terminal postscript eps enhanced 24
set size 0.8,0.5
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set xtics axis nomirror in ("v_0^2sin2{/Symbol q}/(2g)" 4)
set ytics axis nomirror in ("v_0^2sin^2{/Symbol q}/(2g)" 4)
set xrange [0.0:8.0]
set yrange [0.0:5.5]
set arrow from 0,0 to 8.5,0
set arrow from 0,0 to 0,5.5
set arrow from 0,4 to 4,4 nohead ls 4
set arrow from 4,0 to 4,4 nohead ls 4
unset key
set label "0" at -0.5,-0.5
set label "x" at 8.5,-0.6 font "Times-Italic,30"
set label "y" at 0.4,5.5 font "Times-Italic,30"
plot (-x*x+8*x)/4 ls 2
EOF


gnuplot <<EOF
set output "inert_fall.eps"
set terminal postscript eps enhanced 25
set size 0.5,0.4
unset border
set style line 1 lt 1 lw 2 pt 0
set style line 2 lt 1 lw 2 pt 0
set style line 3 lt 2 lw 2 pt 0
set style line 4 lt 3 lw 1 pt 0

set zeroaxis ls 1
set parametric
set xtics axis nomirror in ("5" 5)
set ytics axis nomirror in ("5" 5)
set xrange [-0.9:4.0]
set yrange [-1.3:0.2]
set arrow from 0,0 to 4.0,0
set arrow from 0,0 to 0,0.2
unset key
set label "0" at -0.4,-0.2
set label "t" at 4.3,0.0 font "Times-Italic,25"
set label "v(t)" at 0.1,0.2 font "Times-Italic,25"
set label "-(mg/b)^{1/2}" at -1.2,-1.1 font "Times,20"
set label "v=-gt" at 1.3,-1.2 font "Times-Italic,25"
plot t*t,tanh(-t*t) ls 2, t,-1 ls 4, t*t,-t*t ls 4
EOF


