PREFIX ?= /usr/local

all: qed.1.gz

install:
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -m 755 qed $(DESTDIR)$(PREFIX)/bin/
	install -d $(DESTDIR)$(PREFIX)/share/man/man1/
	install -m 644 qed.1.gz $(DESTDIR)$(PREFIX)/share/man/man1/

clean:
	rm -f qed.1.gz

%.gz: %
	gzip -c $^ >$@
