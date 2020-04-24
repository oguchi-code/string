#円形閉弦の時間発展
set xrange[-10:10] 
set yrange[-10:10] 
set zrange[0:50] 

set xlabel 'x'
set ylabel 'y'
set zlabel 'ct'

#条件設定
R0=3                   #初期時刻の閉弦の半径

set parametric
set urange [0:2*pi]    #uは媒介変数

#閉弦の半経
#R(t) = R0*cos(c*t/R0)

func1(tt,u)=R0*cos(tt/R0)*cos(u)
func2(tt,u)=R0*cos(tt/R0)*sin(u)
func3(tt,u)=tt

tt=0                   #ttはアニメの時刻

while ( tt < 50 ){\
splot func1(tt,u),func2(tt,u),func3(tt,u);\
tt=tt+0.1; pause 0.001}
