! y(σ)をルンゲ・クッタ法で数値計算するプログラム
program y_sig

! 定数設定
  implicit none
  real, parameter :: pi = 3.1415926E0
  real, parameter :: gam = pi/10.0
  real, parameter :: x1 = pi
  
  real :: x0, xn  
  real :; dx, x
  real :: k( 1 : 4 )      ! ルンゲ・クッタ法の係数

! 関数の定義 y(σ)

! 初期化
  x = 0.0
  
! ルンゲ・クッタ法

  k( 1 ) = f( x )
  k( 2 ) = f( x )
  k( 3 ) = f( x )
  k( 4 ) = f( x )
  

  print '( 1X, F4.2, 1X, E12.5 )', 

end program y_sig

