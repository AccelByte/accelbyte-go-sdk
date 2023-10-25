# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

SHELL := /bin/bash

GOLANG_DOCKER_IMAGE := golang:1.18

.PHONY: samples

lint:
	rm -f lint.err
	find -type f -iname go.mod -not -path "*/.justice-codegen-sdk/*" -not -path "*/.cache/*" -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build -e GOLANGCI_LINT_CACHE=/data/.cache/go-lint golangci/golangci-lint:v1.42.1\
				sh -c "cd $$DIRECTORY && golangci-lint -v --timeout 5m --max-same-issues 0 --max-issues-per-linter 0 --color never run || touch /data/lint.err"; \
	done
	[ ! -f lint.err ] || (rm lint.err && exit 1)

lint-mod-outdated:
	rm -f lint-mod-outdated.err
	find -type f -iname go.mod -not -path "*/.justice-codegen-sdk/*" -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
				sh -c "cd $$DIRECTORY && go list -u -m -json all 2>/dev/null -D gomodirectives" \
				| docker run -i --rm psampaz/go-mod-outdated:v0.7.0 -update -direct \
				| grep "github.com/AccelByte" && touch lint-mod-outdated.err || true; \
	done
	[ ! -f lint-mod-outdated.err ] || (rm lint-mod-outdated.err && exit 1)

lint-mod-tidy:
	rm -f lint-mod-tidy.err
	find -type f -iname go.mod -not -path "*/.justice-codegen-sdk/*" -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
				sh -c "cd $$DIRECTORY && go mod tidy || touch /data/lint.err"; \
	done
	[ ! -f lint-mod-tidy.err ] || (rm lint-mod-tidy.err && exit 1)

samples:
	rm -f samples.err
	find ./samples -type f -name main.go -exec dirname {} \; | while read DIRECTORY; do \
		echo "# $$DIRECTORY"; \
		docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
				sh -c "cd '$$DIRECTORY' && go build -o bin/" || touch samples.err; \
	done
	[ ! -f samples.err ]

test_core:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	sed -i "s/\r//" "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" && \
	trap "docker stop justice-codegen-sdk-mock-server && docker rm -f mylocal_httpbin" EXIT && \
	docker run -d --name mylocal_httpbin -p 8070:80 kennethreitz/httpbin && \
	(bash "$(SDK_MOCK_SERVER_PATH)/mock-server.sh" -s /data/spec &) && \
	(for i in $$(seq 1 10); do bash -c "timeout 1 echo > /dev/tcp/127.0.0.1/8080" 2>/dev/null && exit 0 || sleep 10; done; exit 1) && \
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ --network host -e AB_HTTPBIN_URL=http://localhost -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
		sh -c "go test -v -race \
			github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils/... \
            github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/model/... \
            github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/repository/... \
            github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/service \
			github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/sdk"

test_integration:
	@test -n "$(ENV_FILE_PATH)" || (echo "ENV_FILE_PATH is not set" ; exit 1)
	docker run -t --rm -u $$(id -u):$$(id -g) --env-file $(ENV_FILE_PATH) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
			sh -c "go test -v github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/tests/integration"

test_cli:
	@test -n "$(SDK_MOCK_SERVER_PATH)" || (echo "SDK_MOCK_SERVER_PATH is not set" ; exit 1)
	rm -f test.err
	docker run -t --rm -u $$(id -u):$$(id -g) -v $$(pwd):/data/ -w /data/ -e GOCACHE=/data/.cache/go-build $(GOLANG_DOCKER_IMAGE) \
			sh -c "cd samples/cli && go build"
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

test_broken_link:
	@test -n "$(SDK_MD_CRAWLER_PATH)" || (echo "SDK_MD_CRAWLER_PATH is not set" ; exit 1)
	rm -f test.err
	bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i README.md
	# DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i CHANGELOG.md
	(for FILE in $$(find docs -type f); do \
			(set -o pipefail; DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i $$FILE) || touch test.err; \
	done)
	DOCKER_SKIP_BUILD=1 bash "$(SDK_MD_CRAWLER_PATH)/md-crawler.sh" -i "https://docs.accelbyte.io/gaming-services/services/customization/extend-sdk/getting-started-with-the-extend-sdk/"
	[ ! -f test.err ]

version:
	if [ -n "$$MAJOR" ]; then VERSION_PART=1; elif [ -n "$$PATCH" ]; then VERSION_PART=3; else VERSION_PART=2; fi && \
			VERSION_OLD=$$(cat version.txt | tr -d '\n') && \
			VERSION_NEW=$$(awk -v part=$$VERSION_PART -F. "{OFS=\".\"; \$$part+=1; print \$$0}" version.txt) && \
			echo $${VERSION_NEW} > version.txt && \
			sed -i "s/UserAgentSDK = \"AccelByteGoSDK\/v[0-9]\+\.[0-9]\+\.[0-9]\+\"/UserAgentSDK = \"AccelByteGoSDK\/v$$VERSION_NEW\"/" services-api/pkg/utils/user_agent.go && \
			sed -i "s/github.com\/AccelByte\/accelbyte-go-sdk v[0-9]\+\.[0-9]\+\.[0-9]\+/github.com\/AccelByte\/accelbyte-go-sdk v$$VERSION_OLD/" samples/getting-started/go.mod

outstanding_deprecation:
	find * -type f -iname '*.go' \
		| xargs awk ' \
				BEGIN { \
					count_ok = 0; \
					count_not_ok = 0; \
					"date +%s -d \"6 months ago\"" | getline limit_epoch; \
				} \
				match($$0,/\/\/ *[Dd]eprecated: ([0-9]{4}-[0-9]{1,2}-[0-9]{1,2})/,since_date) { \
					"date +%s -d " since_date[1] | getline since_epoch; \
					if (limit_epoch < since_epoch) { \
						count_ok += 1; \
						print "ok - " FILENAME ":" $$0; \
					} \
					else { \
						count_not_ok += 1; \
						print "not ok - " FILENAME ":" $$0; \
					} \
				} \
				END { \
					exit (count_not_ok ? 1 : 0); \
				}' \
		| tee outstanding_deprecation.out
	@echo 1..$$(grep -c '^\(not \)\?ok' outstanding_deprecation.out) 