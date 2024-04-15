// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package inventoryclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_chaining_operations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_integration_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_item_types"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_items"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/admin_tags"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_inventories"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_inventory_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_item_types"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_items"
	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclient/public_tags"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice inventory service HTTP client.
var Default = NewHTTPClient(nil)

const (
	// DefaultHost is the default Host
	// found in Meta (info) section of spec file
	DefaultHost string = "demo.accelbyte.io"
	// DefaultBasePath is the default BasePath
	// found in Meta (info) section of spec file
	DefaultBasePath string = "/"
)

// DefaultSchemes are the default schemes found in Meta (info) section of spec file
var DefaultSchemes = []string{"https"}

// NewHTTPClient creates a new justice inventory service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeInventoryService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice inventory service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeInventoryService {
	// ensure nullable parameters have default
	if cfg == nil {
		cfg = DefaultTransportConfig()
	}

	// create transport and client
	transport := httptransport.New(cfg.Host, cfg.BasePath, cfg.Schemes)

	// custom transport runtime
	utils.CustomTransportRuntime(transport)

	return New(transport, transport, formats)
}

// New creates a new justice inventory service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeInventoryService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeInventoryService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AdminChainingOperations = admin_chaining_operations.New(transport, formats)
	cli.AdminIntegrationConfigurations = admin_integration_configurations.New(transport, formats)
	cli.AdminInventories = admin_inventories.New(transport, formats)
	cli.AdminInventoryConfigurations = admin_inventory_configurations.New(transport, formats)
	cli.AdminItemTypes = admin_item_types.New(transport, formats)
	cli.AdminItems = admin_items.New(transport, formats)
	cli.AdminTags = admin_tags.New(transport, formats)
	cli.PublicInventories = public_inventories.New(transport, formats)
	cli.PublicInventoryConfigurations = public_inventory_configurations.New(transport, formats)
	cli.PublicItemTypes = public_item_types.New(transport, formats)
	cli.PublicItems = public_items.New(transport, formats)
	cli.PublicTags = public_tags.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeInventoryService {
	schemes := []string{"http"}
	if strings.HasSuffix(url, ":443") {
		schemes = []string{"https"}
	}

	transport := httptransport.New(url, endpoint, schemes)

	return New(transport, transport, strfmt.Default)
}

// DefaultTransportConfig creates a TransportConfig with the
// default settings taken from the meta section of the spec file.
func DefaultTransportConfig() *TransportConfig {
	return &TransportConfig{
		Host:     DefaultHost,
		BasePath: DefaultBasePath,
		Schemes:  DefaultSchemes,
	}
}

// TransportConfig contains the transport related info,
// found in the meta section of the spec file.
type TransportConfig struct {
	Host     string
	BasePath string
	Schemes  []string
}

// WithHost overrides the default host,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithHost(host string) *TransportConfig {
	cfg.Host = host
	return cfg
}

// WithBasePath overrides the default basePath,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithBasePath(basePath string) *TransportConfig {
	cfg.BasePath = basePath
	return cfg
}

// WithSchemes overrides the default schemes,
// provided by the meta section of the spec file.
func (cfg *TransportConfig) WithSchemes(schemes []string) *TransportConfig {
	cfg.Schemes = schemes
	return cfg
}

// JusticeInventoryService is a client for justice inventory service
type JusticeInventoryService struct {
	AdminChainingOperations admin_chaining_operations.ClientService

	AdminIntegrationConfigurations admin_integration_configurations.ClientService

	AdminInventories admin_inventories.ClientService

	AdminInventoryConfigurations admin_inventory_configurations.ClientService

	AdminItemTypes admin_item_types.ClientService

	AdminItems admin_items.ClientService

	AdminTags admin_tags.ClientService

	PublicInventories public_inventories.ClientService

	PublicInventoryConfigurations public_inventory_configurations.ClientService

	PublicItemTypes public_item_types.ClientService

	PublicItems public_items.ClientService

	PublicTags public_tags.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeInventoryService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AdminChainingOperations.SetTransport(transport)
	c.AdminIntegrationConfigurations.SetTransport(transport)
	c.AdminInventories.SetTransport(transport)
	c.AdminInventoryConfigurations.SetTransport(transport)
	c.AdminItemTypes.SetTransport(transport)
	c.AdminItems.SetTransport(transport)
	c.AdminTags.SetTransport(transport)
	c.PublicInventories.SetTransport(transport)
	c.PublicInventoryConfigurations.SetTransport(transport)
	c.PublicItemTypes.SetTransport(transport)
	c.PublicItems.SetTransport(transport)
	c.PublicTags.SetTransport(transport)
}
