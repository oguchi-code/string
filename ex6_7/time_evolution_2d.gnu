#円形閉弦の時間発展

set xrange[-10:10] 
set yrange[-10:10] 

set xlabel 'x'
set ylabel 'y'

set size square        #図を正方形で表示

#条件設定
R0=3                   #初期時刻の閉弦の半径

set parametric
set trange [0:2*pi]    #tは媒介変数

#閉弦の半経
#R(t) = R0*cos(c*t/R0)

func1(tt,t)=R0*cos(tt/R0)*cos(t)
func2(tt,t)=R0*cos(tt/R0)*sin(t)

tt=0                   #ttはアニメの時刻

while ( tt < 100 ){\
plot  func1(tt,t),\
      func2(tt,t);\
tt=tt+0.1; pause 0.01}
