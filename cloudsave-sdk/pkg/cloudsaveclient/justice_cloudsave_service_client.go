// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package cloudsaveclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_concurrent_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/admin_tags"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/concurrent_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/plugin_config"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_game_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_binary_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_player_record"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/public_tags"
	"github.com/AccelByte/accelbyte-go-sdk/cloudsave-sdk/pkg/cloudsaveclient/ttl_config"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice cloudsave service HTTP client.
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

// NewHTTPClient creates a new justice cloudsave service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeCloudsaveService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice cloudsave service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeCloudsaveService {
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

// New creates a new justice cloudsave service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeCloudsaveService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeCloudsaveService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AdminConcurrentRecord = admin_concurrent_record.New(transport, formats)
	cli.AdminGameBinaryRecord = admin_game_binary_record.New(transport, formats)
	cli.AdminGameRecord = admin_game_record.New(transport, formats)
	cli.AdminPlayerBinaryRecord = admin_player_binary_record.New(transport, formats)
	cli.AdminPlayerRecord = admin_player_record.New(transport, formats)
	cli.AdminRecord = admin_record.New(transport, formats)
	cli.AdminTags = admin_tags.New(transport, formats)
	cli.ConcurrentRecord = concurrent_record.New(transport, formats)
	cli.PluginConfig = plugin_config.New(transport, formats)
	cli.PublicGameBinaryRecord = public_game_binary_record.New(transport, formats)
	cli.PublicGameRecord = public_game_record.New(transport, formats)
	cli.PublicPlayerBinaryRecord = public_player_binary_record.New(transport, formats)
	cli.PublicPlayerRecord = public_player_record.New(transport, formats)
	cli.PublicTags = public_tags.New(transport, formats)
	cli.TTLConfig = ttl_config.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeCloudsaveService {
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

// JusticeCloudsaveService is a client for justice cloudsave service
type JusticeCloudsaveService struct {
	AdminConcurrentRecord admin_concurrent_record.ClientService

	AdminGameBinaryRecord admin_game_binary_record.ClientService

	AdminGameRecord admin_game_record.ClientService

	AdminPlayerBinaryRecord admin_player_binary_record.ClientService

	AdminPlayerRecord admin_player_record.ClientService

	AdminRecord admin_record.ClientService

	AdminTags admin_tags.ClientService

	ConcurrentRecord concurrent_record.ClientService

	PluginConfig plugin_config.ClientService

	PublicGameBinaryRecord public_game_binary_record.ClientService

	PublicGameRecord public_game_record.ClientService

	PublicPlayerBinaryRecord public_player_binary_record.ClientService

	PublicPlayerRecord public_player_record.ClientService

	PublicTags public_tags.ClientService

	TTLConfig ttl_config.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeCloudsaveService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AdminConcurrentRecord.SetTransport(transport)
	c.AdminGameBinaryRecord.SetTransport(transport)
	c.AdminGameRecord.SetTransport(transport)
	c.AdminPlayerBinaryRecord.SetTransport(transport)
	c.AdminPlayerRecord.SetTransport(transport)
	c.AdminRecord.SetTransport(transport)
	c.AdminTags.SetTransport(transport)
	c.ConcurrentRecord.SetTransport(transport)
	c.PluginConfig.SetTransport(transport)
	c.PublicGameBinaryRecord.SetTransport(transport)
	c.PublicGameRecord.SetTransport(transport)
	c.PublicPlayerBinaryRecord.SetTransport(transport)
	c.PublicPlayerRecord.SetTransport(transport)
	c.PublicTags.SetTransport(transport)
	c.TTLConfig.SetTransport(transport)
}
