all:
	$(MAKE) -C loader -j
	$(MAKE) -C priiloader -j build
	$(MAKE) -C Installer build

clean:
	$(MAKE) -C loader clean
	$(MAKE) -C priiloader clean
	$(MAKE) -C Installer clean
	 
