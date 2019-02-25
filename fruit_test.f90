module fns

    contains 

    function square(x)
        double precision :: x, square
        square = x**2
    end function square

end module fns

program test
    use fns
    use fruit
    implicit none

    double precision, parameter    :: tol=1e-12

    !Unit testing in Fortran
    call init_fruit
    call assert_equals(4.d0, square(2.d0), tol)
    call fruit_summary
    call fruit_finalize

end program test

