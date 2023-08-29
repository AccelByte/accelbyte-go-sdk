// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package amsclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/a_m_s_info"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/account"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/auth"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/fleet_commander"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/fleets"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/images"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/servers"
	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclient/watchdogs"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice ams service HTTP client.
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

// NewHTTPClient creates a new justice ams service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeAmsService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice ams service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeAmsService {
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

// New creates a new justice ams service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeAmsService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeAmsService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AmsInfo = a_m_s_info.New(transport, formats)
	cli.Account = account.New(transport, formats)
	cli.Auth = auth.New(transport, formats)
	cli.FleetCommander = fleet_commander.New(transport, formats)
	cli.Fleets = fleets.New(transport, formats)
	cli.Images = images.New(transport, formats)
	cli.Servers = servers.New(transport, formats)
	cli.Watchdogs = watchdogs.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeAmsService {
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

// JusticeAmsService is a client for justice ams service
type JusticeAmsService struct {
	AmsInfo a_m_s_info.ClientService

	Account account.ClientService

	Auth auth.ClientService

	FleetCommander fleet_commander.ClientService

	Fleets fleets.ClientService

	Images images.ClientService

	Servers servers.ClientService

	Watchdogs watchdogs.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeAmsService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AmsInfo.SetTransport(transport)
	c.Account.SetTransport(transport)
	c.Auth.SetTransport(transport)
	c.FleetCommander.SetTransport(transport)
	c.Fleets.SetTransport(transport)
	c.Images.SetTransport(transport)
	c.Servers.SetTransport(transport)
	c.Watchdogs.SetTransport(transport)
}
