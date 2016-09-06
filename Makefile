TAG=0.1
PREFIX=bprashanth/crypto-toolbox
CC=g++
CFLAGS=-Wall
SOURCES=$(shell find . -iname "*.cc")
JSONCPP=./third-party/jsoncpp
LDFLAGS=-lgflags -L$(JSONCPP)/build/debug/src/lib_json/ -static -ljsoncpp -lpthread
EXEC=crypto.out
INC=-I./ -I$(JSONCPP)/include

all: push

deps:
	./deps.sh

bin: deps $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) $(INC) -o $(EXEC) $(LDFLAGS)

container: bin
	docker build -t $(PREFIX):$(TAG) .

push: container
	docker push $(PREFIX):$(TAG)

clean:
	rm -f $(EXEC)
