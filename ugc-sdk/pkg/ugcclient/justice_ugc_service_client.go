// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package ugcclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_config"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/admin_type"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/anonymization"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_channel"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_content_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_creator"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_download_count_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_download_count_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_follow"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_group"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like_legacy"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_like_v2"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_tag"
	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclient/public_type"
)

// Default justice ugc service HTTP client.
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

	// custom transport runtime
	utils.CustomTransportRuntime(transport)

	return New(transport, transport, formats)
}

// New creates a new justice ugc service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeUgcService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeUgcService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AdminChannel = admin_channel.New(transport, formats)
	cli.AdminConfig = admin_config.New(transport, formats)
	cli.AdminContent = admin_content.New(transport, formats)
	cli.AdminContentV2 = admin_content_v2.New(transport, formats)
	cli.AdminGroup = admin_group.New(transport, formats)
	cli.AdminTag = admin_tag.New(transport, formats)
	cli.AdminType = admin_type.New(transport, formats)
	cli.Anonymization = anonymization.New(transport, formats)
	cli.PublicChannel = public_channel.New(transport, formats)
	cli.PublicContentLegacy = public_content_legacy.New(transport, formats)
	cli.PublicContentV2 = public_content_v2.New(transport, formats)
	cli.PublicCreator = public_creator.New(transport, formats)
	cli.PublicDownloadCountLegacy = public_download_count_legacy.New(transport, formats)
	cli.PublicDownloadCountV2 = public_download_count_v2.New(transport, formats)
	cli.PublicFollow = public_follow.New(transport, formats)
	cli.PublicGroup = public_group.New(transport, formats)
	cli.PublicLikeLegacy = public_like_legacy.New(transport, formats)
	cli.PublicLikeV2 = public_like_v2.New(transport, formats)
	cli.PublicTag = public_tag.New(transport, formats)
	cli.PublicType = public_type.New(transport, formats)

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

// JusticeUgcService is a client for justice ugc service
type JusticeUgcService struct {
	AdminChannel admin_channel.ClientService

	AdminConfig admin_config.ClientService

	AdminContent admin_content.ClientService

	AdminContentV2 admin_content_v2.ClientService

	AdminGroup admin_group.ClientService

	AdminTag admin_tag.ClientService

	AdminType admin_type.ClientService

	Anonymization anonymization.ClientService

	PublicChannel public_channel.ClientService

	PublicContentLegacy public_content_legacy.ClientService

	PublicContentV2 public_content_v2.ClientService

	PublicCreator public_creator.ClientService

	PublicDownloadCountLegacy public_download_count_legacy.ClientService

	PublicDownloadCountV2 public_download_count_v2.ClientService

	PublicFollow public_follow.ClientService

	PublicGroup public_group.ClientService

	PublicLikeLegacy public_like_legacy.ClientService

	PublicLikeV2 public_like_v2.ClientService

	PublicTag public_tag.ClientService

	PublicType public_type.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeUgcService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AdminChannel.SetTransport(transport)
	c.AdminConfig.SetTransport(transport)
	c.AdminContent.SetTransport(transport)
	c.AdminContentV2.SetTransport(transport)
	c.AdminGroup.SetTransport(transport)
	c.AdminTag.SetTransport(transport)
	c.AdminType.SetTransport(transport)
	c.Anonymization.SetTransport(transport)
	c.PublicChannel.SetTransport(transport)
	c.PublicContentLegacy.SetTransport(transport)
	c.PublicContentV2.SetTransport(transport)
	c.PublicCreator.SetTransport(transport)
	c.PublicDownloadCountLegacy.SetTransport(transport)
	c.PublicDownloadCountV2.SetTransport(transport)
	c.PublicFollow.SetTransport(transport)
	c.PublicGroup.SetTransport(transport)
	c.PublicLikeLegacy.SetTransport(transport)
	c.PublicLikeV2.SetTransport(transport)
	c.PublicTag.SetTransport(transport)
	c.PublicType.SetTransport(transport)
}
