PREFIX ?= /usr

install:
	@install -Dm755 present-posture $(DESTDIR)$(PREFIX)/bin/present-posture

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/present-posture
