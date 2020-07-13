CFILES = $(wildcard *.c)
OBJFILES = $(CFILES:.c=.o)
PREFIX=/usr/local

CC=gcc
LDFLAGS = -lb64
CFLAGS= -c $(LDFLAGS) -g -Wall -pedantic

cipherinfo: $(OBJFILES)
	$(CC) -o $@ $^ $(LDFLAGS)

.PHONY:clean
clean:
	rm -f $(OBJFILES) cipherinfo
install:
	cp cipherinfo $(DESTDIR)$(PREFIX)/bin/cipherinfo
uninstall:
	rm cipherinfo $(DESTDIR)$(PREFIX)/bin/cipherinfo

