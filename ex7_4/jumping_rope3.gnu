#相対論的縄跳び弦を表示するアニメ
set xlabel 'z'
set ylabel 'y'
set zlabel 'x'

#条件設定
L0=5.                  #原点側ではないロープの端の座標 
gam=pi/3.              #原点で弦の接ベクトルがｚ軸となす角
m=3                    # σ の任意性のｍ
omg=m*pi*cos(gam)/L0   #縄の回る速度（角速度）
u1=L0/cos(gam)         # σ1

set parametric
set urange [0:u1]      # σ

set zrange[-40:40] 
set yrange[-40:40] 
set xrange[0:L0] 

func1(t,u)=(L0*tan(gam)*sin(m*pi*u/u1)*cos(omg*t))/m*pi #X
func2(t,u)=(L0*tan(gam)*sin(m*pi*u/u1)*sin(omg*t))/m*pi #Y
func3(t,u)=L0*u/u1                                      #Z

t=0

while ( t < 300 ){ \
  splot func3(t,u),func2(t,u),func1(t,u),\
        u,0,0 lt 0 dt 2;
t=t+1; pause 0.1}

#任意のｍでアニメの縄を回すスピードを一定にする
#t=t+1./m; pause 0.1}

#m=1 t +1 pause 0.1

#m=1 縄跳びっぽい動き
#t=t+3; pause 0.1} 

#pause そのコマを画面に表示しつづける時間
