# dy/dσのプロット

set xlabel 'σ'
set ylabel 'dy/dσ'

set xzeroaxis

x1=pi               # σ1
set xrange [0:x1]   # σ∈ [0,σ1]

#gam=pi/10           # γ   ( 0 < γ < π/2 )

plot sin(pi/10*cos(pi*x/x1)),\
     sin(pi/6*cos(pi*x/x1)),\
     sin(pi/3*cos(pi*x/x1)),\
     sin(pi/4.*cos(pi*x/x1));
