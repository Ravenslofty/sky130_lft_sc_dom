CELLS ?= $(wildcard spice_netlists/*.sp)
MAGIC_FILES := $(patsubst spice_netlists/%.sp,out/%.mag,$(CELLS))

default: $(MAGIC_FILES)

StdCellLib/Tech.SKY130/librecell_tech.py:
	git submodule update --init

out:
	mkdir out

out/%.mag: spice_netlists/%.sp StdCellLib/Tech.SKY130/librecell_tech.py out
	lclayout --out out --cell $(patsubst spice_netlists/%.sp,%,$<) --netlist $< --tech StdCellLib/Tech.SKY130/librecell_tech.py

.SUFFIXES:
.PHONY: default

