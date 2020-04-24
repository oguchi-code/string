! 0<t<10, 時間刻み:0.1, σ∈ [0,π]( 12分割 )のときのそれぞれの固有時τをNewton法で求める
program ex9_4_3

  implicit none

! 定数設定
  integer, parameter :: kubun = 12       ! σの分割数
  real, parameter :: pi = 3.1415926E0    ! 円周率
  real, parameter :: eps = 1.0E-5        ! Newton法 解漸近判定値
  
  real, dimension ( 1 : kubun ) :: x, xnew   ! xはτ
  real :: f, df, t = 0.0, dt = 0.10          ! fはτ(t,σ), dfはfのx微分, dtは時間の刻み幅 に対応 
  integer :: i, k                            ! i:doループ用変数 k:σ配列用DO変数
  real :: sigma( 1 : kubun ) = (/ ( pi * k / kubun, k = 1, kubun ) /)
  integer :: count( 1 : kubun ), nmax = 100

! 配列の初期化
  xnew = 0.0
  x = 10.0
  count = 0                              

! Newton法(解が収束しない場合、100回で終了)
  tim: do while ( t <= 10.0 ) 
  sig:   do i = 1, kubun
  new:     do while ( count ( i ) <= nmax .and. abs( xnew( i ) - x( i ) ) > eps )
             x( i ) = xnew( i )   
             f  = sqrt( 2.0 ) * ( x( i ) + sin( 2.0 * x( i )  ) * cos( 2 * sigma( i ) ) / 4.0 ) - t
             df = sqrt( 2.0 ) * ( 1.0 + cos( 2.0 * x( i ) ) * cos( 2 * sigma( i ) ) / 2.0 )
             xnew( i ) = x( i ) - f / df
             count( i ) = count( i ) + 1 
           end do new

           if ( count( i ) > nmax ) then         ! 結果の出力
             print *, ' Did not converge.'
           else
             print '( 1X, E12.5 )', x( i )
           end if

         end do sig

         xnew = 0.0                ! 次の時刻の計算のため配列を初期化
         x = 10.0
         count = 0
         t = t + dt 
       end do tim

end program ex9_4_3
