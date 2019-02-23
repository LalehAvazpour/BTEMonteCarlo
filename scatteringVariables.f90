module scatteringVariables
    use globalVariables
    implicit none

    ! Constants
    real :: hbar  = 6.582119e-16     ! [eV*s]
    real :: hbarJ = 1.0545718e-34    ! [J*s]
    real :: kb    = 8.6173303e-5     ! [eV/K]
    real :: kbJ   = 1.38064852e-23   ! [J/K]
    real :: T     = 300              ! [K]
    real :: ep0   = 8.854187817e-12  ! [F/m]
    real :: e     = 1.6021766208e-19 ! [C]
    real :: m0    = 9.10938356e-31   ! [kg]

    real :: Ec    = 0                ! Energy of the Conduction Band [eV]
    
    ! GaAs
    real :: effm
    real :: rho
    real :: vs
    real :: epr0 = 12.90
    real :: eprInf = 10.92

    ! Number of Energy Steps
    integer :: nE=50
    real, dimension(:), allocatable :: Energy
    real, dimension(:), allocatable :: k
    
    ! Acoustic Phonon Scattering
    real :: Dac = 7.01 ! [eV] for gamma, L, X respectively
    
    ! Polar Optical Phonon Scattering
    real :: E0 = 3.536e-2 ![eV]
    real :: w0
    real :: N0

    ! Ionized Impurity Scattering
    real :: dNI = 100
    real :: NI = 1e23 ! [1/m^3]
    real :: Z = 1
    
    ! Counter
    integer :: i


end module scatteringVariables