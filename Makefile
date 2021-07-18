
CLEAN_TARGETS = quine-c quine-c.out quine-hq9+.out quine-go.out

.PHONEY: all clean c hq9+ go

all: c hq9+ go

c: quine.c quine-c.out
	@diff -q quine.c quine-c.out && echo "$@: quine!"

quine-c: quine.c
	cc -o $@ $<

quine-c.out: quine-c
	./$< >$@

quine-hq9+.out: quine.hq9+
	hq9+ $< >$@

go: quine.go quine-go.out
	@diff -q quine.go quine-go.out && echo "$@: quine!"

quine-go.out: quine.go
	go run quine.go >$@

# HQ9+ Language
# see https://web.archive.org/web/20041214033417/http://www.cliff.biffle.org/esoterica/hq9plus.html
hq9+: quine.hq9+ quine-hq9+.out
	@diff -q quine.hq9+ quine-hq9+.out && echo "$@: quine!"

clean:
	rm -f $(CLEAN_TARGETS)
