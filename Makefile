PREFIX ?= /usr

install:
	@go build -o present-posture main.go
	@install -Dm755 present-posture $(DESTDIR)$(PREFIX)/bin/present-posture

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/present-posture