// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package basicclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/equ8_config"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/file_upload"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/misc"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/namespace"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_action"
	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclient/user_profile"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice basic service HTTP client.
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

// NewHTTPClient creates a new justice basic service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeBasicService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice basic service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeBasicService {
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

// New creates a new justice basic service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeBasicService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeBasicService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.Anonymization = anonymization.New(transport, formats)
	cli.Config = config.New(transport, formats)
	cli.EQU8Config = equ8_config.New(transport, formats)
	cli.FileUpload = file_upload.New(transport, formats)
	cli.Misc = misc.New(transport, formats)
	cli.Namespace = namespace.New(transport, formats)
	cli.UserAction = user_action.New(transport, formats)
	cli.UserProfile = user_profile.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeBasicService {
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

// JusticeBasicService is a client for justice basic service
type JusticeBasicService struct {
	Anonymization anonymization.ClientService

	Config config.ClientService

	EQU8Config equ8_config.ClientService

	FileUpload file_upload.ClientService

	Misc misc.ClientService

	Namespace namespace.ClientService

	UserAction user_action.ClientService

	UserProfile user_profile.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeBasicService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.Anonymization.SetTransport(transport)
	c.Config.SetTransport(transport)
	c.EQU8Config.SetTransport(transport)
	c.FileUpload.SetTransport(transport)
	c.Misc.SetTransport(transport)
	c.Namespace.SetTransport(transport)
	c.UserAction.SetTransport(transport)
	c.UserProfile.SetTransport(transport)
}
