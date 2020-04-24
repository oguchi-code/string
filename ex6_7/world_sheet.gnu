#円形閉弦の時間発展
#世界面

set xrange[-10:10] 
set yrange[-10:10] 
set zrange[0:50] 

set xlabel 'x'
set ylabel 'y'
set zlabel 'ct'

set isosamples 65 

#条件設定
R0=3                   #初期時刻の閉弦の半径

set parametric
set urange [0:2*pi]    #uは媒介変数
set vrange [0:15]    #uは媒介変数

#閉弦の半経
#R(t) = R0*cos(c*t/R0)

func1(v,u)=R0*cos(v/R0)*cos(u)
func2(v,u)=R0*cos(v/R0)*sin(u)
func3(v,u)=v

splot func1(v,u),\
      func2(v,u),\
      func3(v,u);\
