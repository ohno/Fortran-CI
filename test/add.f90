program test_add
  implicit none
  integer :: result, correct

  interface
    integer function add(a, b)
      integer, intent(in) :: a, b
    end function add
  end interface

  result = add(1, 1)
  correct = 3

  if (result /= correct) then
    print *, "fail", result, correct
    stop 1
  else
    print *, "pass", result, correct
  end if
end program test_add