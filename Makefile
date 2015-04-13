# List the object files here!
OBJS = readtemp.o \
	common_dht_read.o \
	pi_2_dht_read.o \
	pi_2_mmio.o

# Set this to your preferred compiler executable:
CC=gcc

# Include the options here for compiling a c source file to an object file:
CFLAGS=-c -std=gnu99 -Wall

# The main target "all" - this is a very common target in makefiles. Almost all
# makefiles have an all target
all: readtemp

# Executable link - use the c compiler as the linker
readtemp: $(OBJS)
	$(CC) $(OBJS) -o readtemp -lrt

.c.o:
	$(CC) $(CFLAGS) $<

clean:
	rm *.o readtemp *~