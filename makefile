DESTDIR ?= /usr/local/bin

install:
	@sudo cp hash.py $(DESTDIR)/hashquisher
	@sudo chmod +x $(DESTDIR)/hashquisher
	@echo "Installation Successful!"

uninstall:
	@sudo rm -f $(DESTDIR)/hashquisher
	@echo "Hash-Buster has been removed"