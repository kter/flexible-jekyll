serve: _posts _config.yml
	bundle exec jekyll serve

build: _posts _config.yml
	bundle exec jekyll build

push: _site  _config.yml
	$(eval DATE := $(shell date +%Y%m%d%H%M%s))
	docker build -t kter/blog:$(DATE) .
	docker push kter/blog:${DATE}

.PHONY: serve build push
