! ｔ＝０、σ＝０のときの固有時τをNewton法で求める
program ex9_4_1

! 変数宣言 xはτに対応
  implicit none
  real :: x = 10.0, xnew = 0.0, f, df
  integer :: count = 0, nmax = 100
  real, parameter :: eps = 1.0E-5

! Newton法(解が収束しない場合、100回で終了) 
  do while ( count <= nmax .and. abs( xnew - x ) > eps )
    x = xnew   
    f  = sqrt( 2.0 ) * ( x + sin( 2.0 * x  ) * cos( 0.0 ) / 4.0 ) 
    df = sqrt( 2.0 ) * ( 1.0 + cos( 2.0 * x  ) * cos( 0.0 ) / 2.0 )
    xnew = x - f/df
    count = count + 1 
  end do

! 結果の出力
  if ( count > nmax ) then
    print *, ' Did not converge.'
  else
    print '( 1X, E12.5 )', x
  end if

end program ex9_4_1
