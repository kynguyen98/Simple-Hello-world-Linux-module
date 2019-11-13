0bj-m: hello.o
PWD := $(shell pwd)
KDIR := /lib/modules/$(shell uname -r)/build
all: build
build:
	$(MAKE) -C &(KDIR) SUBDIRS=$(PWD) modules

clean:
	$(MAKE) -C &(KDIR) SUBDIRS=$(PWD) clean	