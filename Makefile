CC = gcc
uname_s = $(shell uname -s)
TARGET = kcache
LDFLAGS = -lcrypto
INSTALL_DIR = /usr/local/bin/

all : $(TARGET)

$(TARGET) : src/kcache.o src/crypto.o src/lzss.o src/util.o
	$(CC) -o $(TARGET) src/kcache.o src/crypto.o src/lzss.o src/util.o $(LDFLAGS)
	@echo "Successfully built $(TARGET) for $(uname_s)"

kcache.o : src/kcache.c
	$(CC) -c src/kcache.c -o src/kcache.o

crypto.o : src/crypto.c
	$(CC) -c src/crypto.c -o src/crypto.o

lzss.o : src/lzss.c
	$(CC) -c src/lzss.c -o src/lzss.o

util.o : src/util.c
	$(CC) -c src/lzss.c -o src/lzss.o

clean :
	rm -rf src/*.o $(TARGET)

install :
	cp $(TARGET) $(INSTALL_DIR)
