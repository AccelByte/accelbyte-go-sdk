// Code generated by go-swagger; DO NOT EDIT.

package ugcclient

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_admin_type"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_download_count"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_follow"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_like"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/nr_public_type"
)

// Default justice ugc service HTTP client.
var Default = NewHTTPClient(nil)

const (
	// DefaultHost is the default Host
	// found in Meta (info) section of spec file
	DefaultHost string = "localhost"
	// DefaultBasePath is the default BasePath
	// found in Meta (info) section of spec file
	DefaultBasePath string = "/"
)

// DefaultSchemes are the default schemes found in Meta (info) section of spec file
var DefaultSchemes = []string{"http"}

// NewHTTPClient creates a new justice ugc service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeUgcService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice ugc service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeUgcService {
	// ensure nullable parameters have default
	if cfg == nil {
		cfg = DefaultTransportConfig()
	}

	// create transport and client
	transport := httptransport.New(cfg.Host, cfg.BasePath, cfg.Schemes)
	return New(transport, formats)
}

// New creates a new justice ugc service client
func New(transport runtime.ClientTransport, formats strfmt.Registry) *JusticeUgcService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeUgcService)
	cli.Transport = transport
	cli.Anonymization = anonymization.New(transport, formats)
	cli.NrAdminChannel = nr_admin_channel.New(transport, formats)
	cli.NrAdminContent = nr_admin_content.New(transport, formats)
	cli.NrAdminGroup = nr_admin_group.New(transport, formats)
	cli.NrAdminTag = nr_admin_tag.New(transport, formats)
	cli.NrAdminType = nr_admin_type.New(transport, formats)
	cli.NrPublicChannel = nr_public_channel.New(transport, formats)
	cli.NrPublicContent = nr_public_content.New(transport, formats)
	cli.NrPublicDownloadCount = nr_public_download_count.New(transport, formats)
	cli.NrPublicFollow = nr_public_follow.New(transport, formats)
	cli.NrPublicGroup = nr_public_group.New(transport, formats)
	cli.NrPublicLike = nr_public_like.New(transport, formats)
	cli.NrPublicTag = nr_public_tag.New(transport, formats)
	cli.NrPublicType = nr_public_type.New(transport, formats)
	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeUgcService {
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

// JusticeUgcService is a client for justice ugc service
type JusticeUgcService struct {
	Anonymization anonymization.ClientService

	NrAdminChannel nr_admin_channel.ClientService

	NrAdminContent nr_admin_content.ClientService

	NrAdminGroup nr_admin_group.ClientService

	NrAdminTag nr_admin_tag.ClientService

	NrAdminType nr_admin_type.ClientService

	NrPublicChannel nr_public_channel.ClientService

	NrPublicContent nr_public_content.ClientService

	NrPublicDownloadCount nr_public_download_count.ClientService

	NrPublicFollow nr_public_follow.ClientService

	NrPublicGroup nr_public_group.ClientService

	NrPublicLike nr_public_like.ClientService

	NrPublicTag nr_public_tag.ClientService

	NrPublicType nr_public_type.ClientService

	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeUgcService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.Anonymization.SetTransport(transport)
	c.NrAdminChannel.SetTransport(transport)
	c.NrAdminContent.SetTransport(transport)
	c.NrAdminGroup.SetTransport(transport)
	c.NrAdminTag.SetTransport(transport)
	c.NrAdminType.SetTransport(transport)
	c.NrPublicChannel.SetTransport(transport)
	c.NrPublicContent.SetTransport(transport)
	c.NrPublicDownloadCount.SetTransport(transport)
	c.NrPublicFollow.SetTransport(transport)
	c.NrPublicGroup.SetTransport(transport)
	c.NrPublicLike.SetTransport(transport)
	c.NrPublicTag.SetTransport(transport)
	c.NrPublicType.SetTransport(transport)
}
