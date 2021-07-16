ifeq ($(CUSTOMER),)
    SERVICE=justice-cloudsave-service
else
    SERVICE=$(CUSTOMER)-justice-cloudsave-service
endif
CLIENT_PKG_SUFFIX ?= cloudsaveclient
MODELS_PKG_SUFFIX ?= $(CLIENT_PKG_SUFFIX)models
GO_SWAGGER_TAG ?= v0.25.0
SWAGGER_YAML_FILE ?= cloudsave-swagger.json

gen-client:
ifndef SERVICE
	$(error SERVICE is not set)
endif
ifndef CLIENT_PKG_SUFFIX
	$(error CLIENT_PKG_SUFFIX is not set)
endif

	rm -rf $(PWD)/pkg/$(CLIENT_PKG_SUFFIX)*
	docker run --rm -it -u `id -u $(USER)` \
		-v $(PWD):$(PWD) \
		-w $(PWD) quay.io/goswagger/swagger:$(GO_SWAGGER_TAG) generate client \
		-f $(PWD)/$(SWAGGER_YAML_FILE) \
		-A $(SERVICE) \
		--template-dir $(PWD)/pkg/utils/swagger-templates \
		-c $(CLIENT_PKG_SUFFIX) \
		-m $(MODELS_PKG_SUFFIX) \
		-P models.Principal \
		-t $(PWD)/pkg
	goimports -w $(PWD)/pkg/$(CLIENT_PKG_SUFFIX)
	goimports -w $(PWD)/pkg/$(MODELS_PKG_SUFFIX)
