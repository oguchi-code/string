# 世界面
set xrange[-1:1]
set yrange[-2.5:2.5]
set zrange[0:12]

set xlabel 'x1'  # x
set ylabel 'x2'  # y
set zlabel 'x0'  # 時空間 t

# 弦の運動を記述する方程式 
func1(tau,sigma)=-1./2./sqrt(2.)*sin(2.*tau)*cos(2.*sigma)
func2(tau,sigma)=2.*sin(tau)*cos(sigma)

splot 'tau.dat'  u (func1($3,$2)):(func2($3,$2)):1 \
every :::1::99 w l  ; 
