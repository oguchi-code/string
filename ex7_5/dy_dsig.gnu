# dy/dσのプロット

set xlabel 'σ'
set ylabel 'dy/dσ'

set xzeroaxis

x1=pi               # σ1
set xrange [0:x1]   # σ∈ [0,σ1]

gam=pi/10           # γ   ( 0 < γ < π/2 )

plot sin(gam*cos(pi*x/x1))
