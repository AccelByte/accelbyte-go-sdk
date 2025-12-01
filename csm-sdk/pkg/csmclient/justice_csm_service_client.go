// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package csmclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/app_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/async_messaging"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/configuration_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/deployment"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/deployment_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/image"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/image_v2"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/managed_resources"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/messages"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/notification_subscription"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/notification_subscription_v3"
	"github.com/AccelByte/accelbyte-go-sdk/csm-sdk/pkg/csmclient/resources_limits"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice csm service HTTP client.
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

// NewHTTPClient creates a new justice csm service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeCsmService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice csm service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeCsmService {
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

// New creates a new justice csm service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeCsmService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeCsmService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.App = app.New(transport, formats)
	cli.AppV2 = app_v2.New(transport, formats)
	cli.AsyncMessaging = async_messaging.New(transport, formats)
	cli.Configuration = configuration.New(transport, formats)
	cli.ConfigurationV2 = configuration_v2.New(transport, formats)
	cli.Deployment = deployment.New(transport, formats)
	cli.DeploymentV2 = deployment_v2.New(transport, formats)
	cli.Image = image.New(transport, formats)
	cli.ImageV2 = image_v2.New(transport, formats)
	cli.ManagedResources = managed_resources.New(transport, formats)
	cli.Messages = messages.New(transport, formats)
	cli.NotificationSubscription = notification_subscription.New(transport, formats)
	cli.NotificationSubscriptionV3 = notification_subscription_v3.New(transport, formats)
	cli.ResourcesLimits = resources_limits.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeCsmService {
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

// JusticeCsmService is a client for justice csm service
type JusticeCsmService struct {
	App app.ClientService

	AppV2 app_v2.ClientService

	AsyncMessaging async_messaging.ClientService

	Configuration configuration.ClientService

	ConfigurationV2 configuration_v2.ClientService

	Deployment deployment.ClientService

	DeploymentV2 deployment_v2.ClientService

	Image image.ClientService

	ImageV2 image_v2.ClientService

	ManagedResources managed_resources.ClientService

	Messages messages.ClientService

	NotificationSubscription notification_subscription.ClientService

	NotificationSubscriptionV3 notification_subscription_v3.ClientService

	ResourcesLimits resources_limits.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeCsmService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.App.SetTransport(transport)
	c.AppV2.SetTransport(transport)
	c.AsyncMessaging.SetTransport(transport)
	c.Configuration.SetTransport(transport)
	c.ConfigurationV2.SetTransport(transport)
	c.Deployment.SetTransport(transport)
	c.DeploymentV2.SetTransport(transport)
	c.Image.SetTransport(transport)
	c.ImageV2.SetTransport(transport)
	c.ManagedResources.SetTransport(transport)
	c.Messages.SetTransport(transport)
	c.NotificationSubscription.SetTransport(transport)
	c.NotificationSubscriptionV3.SetTransport(transport)
	c.ResourcesLimits.SetTransport(transport)
}
