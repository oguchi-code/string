#円形閉弦の時間発展
#世界面

set xrange[-10:10] 
set yrange[-10:10] 
set zrange[0:50] 

set xlabel 'x'
set ylabel 'y'
set zlabel 'ct'

set view 90,0,1,1

set isosamples 50 

#条件設定
R0=3                   #初期時刻の閉弦の半径

set parametric
set urange [0:2*pi]    #uは媒介変数
set vrange [0:50]    #uは媒介変数

#閉弦の半経
#R(t) = R0*cos(c*t/R0)

func1(v,u)=R0*cos(v/R0)*cos(u)
func2(v,u)=R0*cos(v/R0)*sin(u)
func3(v,u)=v

func4(m)=pi*R0*(2*m-1)/2

splot func1(v,u),func2(v,u),func3(v,u),\
      v*cos(u),v*sin(u),func4(1),\
      v*cos(u),v*sin(u),func4(2),\
      v*cos(u),v*sin(u),func4(3),\
      v*cos(u),v*sin(u),func4(4);
