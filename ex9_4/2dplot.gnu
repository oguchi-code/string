set xrange[-1:1]
set yrange[-2.5:2.5]

set xlabel 'x1'
set ylabel 'x2'

func1(tau,sigma)=-1./2./sqrt(2.)*sin(2.*tau)*cos(2.*sigma)
func2(tau,sigma)=2.*sin(tau)*cos(sigma)

ii=0
while (ii<999) {\
plot 'tau2.dat'  u (func1($3,$2)):(func2($3,$2)) every :::ii::ii w l ; ii=ii+1 ; pause 0.01  }
