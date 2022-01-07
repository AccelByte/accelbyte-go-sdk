# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

.PHONY: samples

lint:
	rm -f lint.err
	find -type f -iname go.mod -exec dirname {} \; | while read DIRECTORY; do \
		echo "$$DIRECTORY"; \
			docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/tmp/.cache -e GOLANGCI_LINT_CACHE=/tmp/.cache golangci/golangci-lint:v1.42.1-alpine\
				sh -c "cd $$DIRECTORY && golangci-lint -v --timeout 5m --max-same-issues 0 --max-issues-per-linter 0 --color never run || touch /data/lint.err"; \
	done
	[ ! -f lint.err ] || (rm lint.err && exit 1)
	
lint-mod-outdated:
	rm -f lint-mod-outdated.err
	find -type f -iname go.mod -exec dirname {} \; | while read DIRECTORY; do \
		echo "$$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/tmp/.cache golang:1.16-alpine \
				sh -c "cd $$DIRECTORY && go list -u -m -json all 2>/dev/null -D gomodirectives" \
				| docker run -i --rm psampaz/go-mod-outdated:v0.7.0 -update -direct \
				| grep "github.com/AccelByte" && touch lint-mod-outdated.err || true; \
	done
	[ ! -f lint-mod-outdated.err ] || (rm lint-mod-outdated.err && exit 1)

samples:
	find -type f -name main.go -exec dirname {} \; | xargs -I{} \
			sh -c 'echo "{}" && docker run -t --rm -v $$(pwd):/data/ -w /data/ golang:1.16-alpine sh -c "cd {} && go build || exit 255"'
