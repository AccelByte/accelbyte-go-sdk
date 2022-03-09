// Code generated by go-swagger; DO NOT EDIT.

package qosmclient

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/admin"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/public"
	"github.com/AccelByte/accelbyte-go-sdk/qosm-sdk/pkg/qosmclient/server"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice qosm service HTTP client.
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

// NewHTTPClient creates a new justice qosm service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeQosmService {
	return NewHTTPClientWithConfig(formats, nil, "", "")
}

// NewHTTPClientWithConfig creates a new justice qosm service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig, userAgent, XAmazonTraceId string) *JusticeQosmService {
	// ensure nullable parameters have default
	if cfg == nil {
		cfg = DefaultTransportConfig()
	}

	// create transport and client
	transport := httptransport.New(cfg.Host, cfg.BasePath, cfg.Schemes)

	// optional custom producers and consumer
	transport.Producers["*/*"] = runtime.JSONProducer()
	transport.Consumers["application/problem+json"] = runtime.JSONConsumer()
	transport.Consumers["application/x-www-form-urlencoded"] = runtime.JSONConsumer()
	transport.Consumers["application/zip"] = runtime.JSONConsumer()
	transport.Consumers["application/pdf"] = runtime.JSONConsumer()
	transport.Consumers["image/png"] = runtime.ByteStreamConsumer()

	// optional custom request header
	transport.Transport = utils.SetHeader(transport.Transport, userAgent, XAmazonTraceId)

	return New(transport, formats)
}

// New creates a new justice qosm service client
func New(transport runtime.ClientTransport, formats strfmt.Registry) *JusticeQosmService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeQosmService)
	cli.Transport = transport
	cli.Admin = admin.New(transport, formats)
	cli.Public = public.New(transport, formats)
	cli.Server = server.New(transport, formats)
	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeQosmService {
	schemes := []string{"http"}
	if strings.HasSuffix(url, ":443") {
		schemes = []string{"https"}
	}

	transport := httptransport.New(url, endpoint, schemes)
	return New(transport, strfmt.Default)
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

// JusticeQosmService is a client for justice qosm service
type JusticeQosmService struct {
	Admin admin.ClientService

	Public public.ClientService

	Server server.ClientService

	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeQosmService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.Admin.SetTransport(transport)
	c.Public.SetTransport(transport)
	c.Server.SetTransport(transport)
}
