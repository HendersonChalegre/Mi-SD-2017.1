CASES := $(wildcard tests/*.do)
TESTINPUTS := $(wildcard tests/*.input)
TRANSCRIPT := $(patsubst tests/%.do,results/%.transcript,$(CASES))
DOFILES := $(patsubst tests/%.do,build/%.do,$(CASES))
TESTINPUTSBUILD := $(patsubst tests/%.input,build/%.input,$(TESTINPUTS))
SRCDIR := ../src
TBDIR := ../sim/tb
SRCS := $(shell find $(SRCDIR) $(TBDIR) -name '*.v' -type f)
INC := $(shell find $(SRCDIR) $(TBDIR) -type d -exec echo -n '+incdir+../'{} \;)
STATUS := build/.status
all: $(TRANSCRIPT)

compile: $(STATUS)

$(STATUS): $(SRCS) | build/Makefile
	make -C build
	touch $@

build/Makefile:
	mkdir -p build
	(cd build; vlib work; vmap work work)
	(cd build; for file in $(SRCS); do \
	vlog +acc -source -nocovercells $(INC) ../$$file || exit 1; done)
	(cd build; vmake > Makefile)

results:
	mkdir -p results

$(DOFILES) : build/%.do : tests/%.do
	mkdir -p build
	echo 'proc start {m} {vsim work.$$m}' \
	| cat - $< > $@ 

$(TESTINPUTSBUILD) : build/% : tests/%
	cp $< $@
	
$(TRANSCRIPT) : results/%.transcript : build/%.do $(STATUS) $(TESTINPUTSBUILD) | results
	(cd build; \
	vsim < ../$< | tee ../$@)
	cp build/vsim.wlf $(patsubst %.transcript,%.wlf,$@)

clean:
	rm -rf results build

.PHONY := all clean compile
