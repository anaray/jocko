
all: deps test
.PHONY: all

.PHONY: deps
deps:
	go get -u github.com/kardianos/govendor
	govendor sync 

.PHONY: test
test:
	govendor test -v -race -p=1 +local


