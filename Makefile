.PHONY: test
test:
	docker build -t fountain-ruby .
	docker run -ti --rm fountain-ruby rspec
