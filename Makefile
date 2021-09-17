# Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
# This is licensed software from AccelByte Inc, for limitations
# and restrictions contact your company contract manager.

S=-s
export S
SDK_DIR = $(S)-sdk

ifeq ($(CUSTOMER),)
    SERVICE=justice-$(S)-service
else
    SERVICE=$(CUSTOMER)-justice-$(S)-service
endif
CLIENT_PKG_SUFFIX ?= $(S)client
MODELS_PKG_SUFFIX ?= $(CLIENT_PKG_SUFFIX)models
GO_SWAGGER_TAG ?= v0.25.0
SWAGGER_YAML_FILE ?= $(S)-swagger.json

gen-client:
ifndef SERVICE
	$(error SERVICE is not set)
endif
ifndef CLIENT_PKG_SUFFIX
	$(error CLIENT_PKG_SUFFIX is not set)
endif
	rm -rf $(PWD)/$(SDK_DIR)/pkg/$(CLIENT_PKG_SUFFIX)*
	docker run --rm -it -u `id -u $(USER)` \
		-v $(PWD):$(PWD) \
		-w $(PWD) quay.io/goswagger/swagger:$(GO_SWAGGER_TAG) generate client \
		-f $(PWD)/$(SDK_DIR)/$(SWAGGER_YAML_FILE) \
		-A $(SERVICE) \
		--template-dir $(PWD)/$(SDK_DIR)/pkg/utils/swagger-templates \
		-c $(CLIENT_PKG_SUFFIX) \
		-m $(MODELS_PKG_SUFFIX) \
		-P models.Principal \
		-t $(PWD)/$(SDK_DIR)/pkg
	goimports -w $(PWD)/$(SDK_DIR)/pkg/$(CLIENT_PKG_SUFFIX)
	goimports -w $(PWD)/$(SDK_DIR)/pkg/$(MODELS_PKG_SUFFIX)

# GOAPPS ?= basic cloudsave dsmc group iam lobby platform sessionbrowser social
GOAPPS ?= lobby

gen: modify-swagger lint gen-clients

modify-swagger:
	$(foreach C, $(GOAPPS), go run ../scripts/modify-swagger/main.go $(C)-sdk/modify-swagger.conf.yaml &&) echo "==> $@ completed"

lint:
	make lint-outdated-dependencies
	make lint-swagger-schema

lint-outdated-dependencies:
	@echo "linting golang dependencies ..."
	@go list -u -m -json all 2> /dev/null | \
	docker run -i psampaz/go-mod-outdated:v0.7.0 -update -direct | \
	grep "github.com/AccelByte" && exit 1 || echo "OK"

lint-swagger-schema:
	@$(foreach C, $(GOAPPS), docker run --rm -v $(PWD):$(PWD) -w $(PWD) openapitools/openapi-generator-cli:v4.3.1 validate -i $(C)-sdk/$(C)-swagger.short.json &&) echo "==> $@ completed"

gen-clients:
	#@$(foreach C, $(GOAPPS), S=$(C) make gen-client &&) echo "==> $@ completed"
