# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

.PHONY: samples

lint:
	rm -f lint.err
	find -type f -iname go.mod -exec dirname {} \; | while read DIRECTORY; do \
		echo "$$DIRECTORY"; \
			docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/tmp/.cache -e GOLANGCI_LINT_CACHE=/tmp/.cache golangci/golangci-lint:v1.42.1\
				sh -c "cd $$DIRECTORY && golangci-lint -v --timeout 5m --max-same-issues 0 --max-issues-per-linter 0 --color never run || touch /data/lint.err"; \
	done
	[ ! -f lint.err ] || (rm lint.err && exit 1)
	
lint-mod-outdated:
	rm -f lint-mod-outdated.err
	find -type f -iname go.mod -exec dirname {} \; | while read DIRECTORY; do \
		echo "$$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/tmp/.cache golang:1.16 \
				sh -c "cd $$DIRECTORY && go list -u -m -json all 2>/dev/null -D gomodirectives" \
				| docker run -i --rm psampaz/go-mod-outdated:v0.7.0 -update -direct \
				| grep "github.com/AccelByte" && touch lint-mod-outdated.err || true; \
	done
	[ ! -f lint-mod-outdated.err ] || (rm lint-mod-outdated.err && exit 1)

samples:
	find -type f -name main.go -exec dirname {} \; | xargs -I{} \
			sh -c 'echo "{}" && docker run -t --rm -v $$(pwd):/data/ -w /data/ golang:1.16 sh -c "cd {} && go build || exit 255"'

test_integration:
	rm -f testIntegration.err
	docker run -t --rm -v $$(pwd):/data/ -w /data/ golang:1.16 sh -c "cd samples/cli && go build" && \
	bash -c "cd services-api/pkg/tests/integration && go test -v" \
	done
	[ ! -f testIntegration.err ] || (rm testIntegration.err && exit 1)

test_cli:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test.err
	docker run -t --rm -v $$(pwd):/data/ -w /data/ golang:1.16 sh -c "cd samples/cli && go build"
	bash -c 'sed -i "s/\r//" "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" && \
			trap "docker stop justice-codegen-sdk-mock-server" EXIT && \
			(DOCKER_RUN_ARGS="-t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data -w /data --network host --name justice-codegen-sdk-mock-server" bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec &) && \
			(for i in $$(seq 1 10); do bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8080" 2>/dev/null && exit 0 || sleep 10; done; exit 1) && \
			sed -i "s/\r//" tests/sh/* && \
			(for FILE in $$(ls tests/sh/*.sh | grep -v run-go-cli-all-unit-test.sh); do PATH=samples/cli:$$PATH bash $$FILE || touch test.err; done)'
	[ ! -f test.err ]

