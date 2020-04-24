#異なるｍの縄を同時にプロットするアニメ
set xlabel 'z'
set ylabel 'y'
set zlabel 'x'

#条件設定
L0=5.                  #原点側ではないロープの端の座標 
gam=pi/3.              #原点で弦の接ベクトルがｚ軸となす角
u1=L0/cos(gam)         # σ1

set parametric
set urange [0:u1]      # σ

set zrange[-40:40] 
set yrange[-40:40] 
set xrange[0:L0] 

func1(t,u,m)=(L0*tan(gam)*sin(m*pi*u/u1)*cos(m*pi*cos(gam)*t/L0))/m*pi #X
func2(t,u,m)=(L0*tan(gam)*sin(m*pi*u/u1)*sin(m*pi*cos(gam)*t/L0))/m*pi #Y
func3(t,u,m)=L0*u/u1                                                   #Z

t=0

while ( t < 300 ){ \
  splot func3(t,u,1),func2(t,u,1),func1(t,u,1),\
        func3(t,u,2),func2(t,u,2),func1(t,u,2),\
        func3(t,u,3),func2(t,u,3),func1(t,u,3),\
        u,0,0 lt 0 dt 2;
t=t+1; pause 0.1}

#       func3(t,u,3),func2(t,u,3),func1(t,u,3),\


#任意のｍでアニメの縄を回すスピードを一定にする
#t=t+1./m; pause 0.1}

#m=1 t +1 pause 0.1

#m=1 縄跳びっぽい動き
#t=t+3; pause 0.1} 

#pause そのコマを画面に表示しつづける時間
