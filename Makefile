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
