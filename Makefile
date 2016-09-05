TAG=0.1
PREFIX=bprashanth/crypto-toolbox
CC=g++
CFLAGS=-Wall
SOURCES=$(shell find . -iname "*.cc")
LDFLAGS=-lgflags
EXEC=crypto
INC=-I./

all: push

bin: $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) $(INC) -o $(EXEC) $(LDFLAGS)

container: bin
	docker build -t $(PREFIX):$(TAG) .

push: container
	docker push $(PREFIX):$(TAG)

clean:
	rm -f $(EXEC)
