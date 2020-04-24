set xlabel 'x'
set ylabel 'y'
set zlabel 'z'

#条件設定
L0=5.                  #原点側ではないロープの端の座標 
gam=pi/3.              #原点で弦の接ベクトルがｚ軸となす角
m=1                    # σ の任意性のｍ
omg=m*pi*cos(gam)/L0   #縄の回る速度（角速度）
u1=L0/cos(gam)         # σ1

set parametric
set urange [0:u1]      #sigma

set xrange[-40:40] 
set yrange[-40:40] 
set zrange[0:L0] 

func1(t,u)=(L0*tan(gam)*sin(m*pi*u/u1)*cos(omg*t))/m*pi #X
func2(t,u)=(L0*tan(gam)*sin(m*pi*u/u1)*sin(omg*t))/m*pi #Y
func3(t,u)=L0*u/u1                                      #Z

t=0

while ( t < 300 ){ \
splot func1(t,u),\
      func2(t,u),\
      func3(t,u);
t=t+1; pause 0.1}
