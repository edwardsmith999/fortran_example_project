.PHONY: test

default: fruit.f90 fruit_test.f90
	gfortran fruit.f90 fruit_test.f90 -o ./test

test:
	./test

clean:
	rm -f *.mod
