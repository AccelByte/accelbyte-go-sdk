# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

SHELL := /bin/bash

.PHONY: samples

#ENV_FILE_PATH ?= $(PWD)/services-api/pkg/tests/integration/integration.env

lint:
	rm -f lint.err
	find -type f -iname go.mod -exec dirname {} \; | while read DIRECTORY; do \
		echo "$$DIRECTORY"; \
			docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build -e GOLANGCI_LINT_CACHE=/data/.cache/go-lint golangci/golangci-lint:v1.42.1\
				sh -c "cd $$DIRECTORY && golangci-lint -v --timeout 5m --max-same-issues 0 --max-issues-per-linter 0 --color never run || touch /data/lint.err"; \
	done
	[ ! -f lint.err ] || (rm lint.err && exit 1)
	
lint-mod-outdated:
	rm -f lint-mod-outdated.err
	find -type f -iname go.mod -exec dirname {} \; | while read DIRECTORY; do \
		echo "$$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build golang:1.16-alpine3.15 \
				sh -c "cd $$DIRECTORY && go list -u -m -json all 2>/dev/null -D gomodirectives" \
				| docker run -i --rm psampaz/go-mod-outdated:v0.7.0 -update -direct \
				| grep "github.com/AccelByte" && touch lint-mod-outdated.err || true; \
	done
	[ ! -f lint-mod-outdated.err ] || (rm lint-mod-outdated.err && exit 1)

samples:
	find -type f -name main.go -exec dirname {} \; | xargs -I{} \
			sh -c 'echo "{}" && docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build golang:1.16-alpine3.15 \
					sh -c "cd {} && CGO_ENABLED=0 GOOS=linux go build || exit 255"'

test_core:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	sed -i "s/\r//" "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" && \
			trap "docker stop justice-codegen-sdk-mock-server" EXIT && \
			(bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec &) && \
			(for i in $$(seq 1 10); do bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8080" 2>/dev/null && exit 0 || sleep 10; done; exit 1) && \
			docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ --network host -e GOCACHE=/data/.cache/go-build golang:1.16-alpine3.15 \
						sh -c "CGO_ENABLED=0 GOOS=linux go test github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/sdk"

test_integration:
	@test -n "$(ENV_FILE_PATH)" || (echo "ENV_FILE_PATH is not set" ; exit 1)
	docker run -t --rm -u $$(id -u):$$(id -g) --env-file $(ENV_FILE_PATH) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build golang:1.16-alpine3.15 \
			sh -c "CGO_ENABLED=0 GOOS=linux go test github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"

test_cli:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test.err
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build golang:1.16-alpine3.15 \
			sh -c "cd samples/cli && CGO_ENABLED=0 GOOS=linux go build"
	sed -i "s/\r//" "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" && \
			trap "docker stop justice-codegen-sdk-mock-server" EXIT && \
			(bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec &) && \
			(for i in $$(seq 1 10); do bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8080" 2>/dev/null && exit 0 || sleep 10; done; exit 1) && \
			sed -i "s/\r//" samples/cli/tests/* && \
			rm -f samples/cli/tests/*.tap && \
			for FILE in $$(ls samples/cli/tests/*.sh); do \
					echo "# $$(basename "$$FILE")"; \
					(set -o pipefail; PATH=samples/cli:$$PATH bash $${FILE} | tee "$${FILE}.tap") || touch test.err; \
			done
	[ ! -f test.err ]
