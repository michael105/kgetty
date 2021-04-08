MCC=mini-gcc


src = $(patsubst %.c,%, $(wildcard *.c))

all: $(src) 

%: %.c
	$(eval OPT=--config $@.c)
	@echo -e "\e[36m" $(MCC) $(OPT) -o $@ $@.c "\e[37m"
	@$(MCC) $(OPT) -o bin/$@ $@.c




