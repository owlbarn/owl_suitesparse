.PHONY: all
all: build

.PHONY: depend depends
depend depends:
	dune external-lib-deps --missing @install @runtest

.PHONY: build
build: depends
	dune build @install

.PHONY: test
test: depends
	dune runtest -j 1 --no-buffer -p owl-suitesparse

.PHONY: clean
clean:
	dune clean

.PHONY: install
install: build
	dune install

.PHONY: uninstall
uninstall:
	dune uninstall

.PHONY: cleanall
cleanall: uninstall
	dune clean

.PHONY: doc
doc:
	opam install -y odoc
	dune build @doc

.PHONY: format
format:
	dune build @fmt --auto-promote

.PHONY: push
push:
	git commit -am "coding owl-suitesparse ..." && \
	git push origin `git branch | grep \* | cut -d ' ' -f2`