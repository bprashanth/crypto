TAG=0.1
PREFIX=bprashanth/crypto-toolbox
CC=g++
CFLAGS=-Wall
SOURCES=$(shell find . -iname "*.cc")
LDFLAGS=-lgflags
EXEC=crypto

all: push

base: $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $(EXEC) $(LDFLAGS)

container: base
	docker build -t $(PREFIX):$(TAG) .

push: container
	docker push $(PREFIX):$(TAG)

clean:
	rm -f $(EXEC)
