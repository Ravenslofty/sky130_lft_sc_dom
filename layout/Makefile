CELLS ?= $(wildcard spice_netlists/*.sp)
MAGIC_FILES := $(patsubst spice_netlists/%.sp,out/02-magic/%.sp,$(CELLS))

default: $(MAGIC_FILES)

StdCellLib/Tech.SKY130/librecell_tech.py:
	git submodule update --init

out/01-lclayout out/02-magic:
	mkdir -p out/01-lclayout out/02-magic

out/01-lclayout/%.gds out/01-lclayout/%.lef out/01-lclayout/%.mag out/01-lclayout/%.oas: spice_netlists/%.sp StdCellLib/Tech.SKY130/librecell_tech.py out/01-lclayout
	lclayout --out out/01-lclayout --cell $(patsubst spice_netlists/%.sp,%,$<) --netlist $< --tech StdCellLib/Tech.SKY130/librecell_tech.py

# ugh, I tried to figure out how to get magic to not be horrifically messy.
out/02-magic/%.sp %.nodes %.sim: out/01-lclayout/%.mag
	echo "extract path out/02-magic;extract all;ext2sim labels on;ext2sim;extresist tolerance 10;extresist;ext2spice lvs;ext2spice cthresh 0;ext2spice extresist on;ext2spice -p out/02-magic -o $@;quit -noprompt" | magic -d null -noconsole -T ~/.ciel/sky130A/libs.tech/magic/sky130A.tech $< 

.SUFFIXES:
.PHONY: default
.INTERMEDIATE: $(patsubst spice_netlists/%.sp,%.nodes,$(CELLS)) $(patsubst spice_netlists/%.sp,%.sim,$(CELLS))

