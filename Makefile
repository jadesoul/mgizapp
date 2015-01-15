all: install
	
update:
	svn up
	
prepare:
	test -d build || ( mkdir build ; cd build ; cmake ..)
	
install: prepare
	cd build ; make -sj install
	
clean:
	rm -rf build

