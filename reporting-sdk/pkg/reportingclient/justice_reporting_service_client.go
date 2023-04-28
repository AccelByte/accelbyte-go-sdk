// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package reportingclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_configurations"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_extension_categories_and_auto_moderation_actions"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_moderation_rule"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reasons"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_reports"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/admin_tickets"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/public_reasons"
	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclient/public_reports"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice reporting service HTTP client.
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

// NewHTTPClient creates a new justice reporting service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeReportingService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice reporting service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeReportingService {
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

// New creates a new justice reporting service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeReportingService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeReportingService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AdminConfigurations = admin_configurations.New(transport, formats)
	cli.AdminExtensionCategoriesAndAutoModerationActions = admin_extension_categories_and_auto_moderation_actions.New(transport, formats)
	cli.AdminModerationRule = admin_moderation_rule.New(transport, formats)
	cli.AdminReasons = admin_reasons.New(transport, formats)
	cli.AdminReports = admin_reports.New(transport, formats)
	cli.AdminTickets = admin_tickets.New(transport, formats)
	cli.PublicReasons = public_reasons.New(transport, formats)
	cli.PublicReports = public_reports.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeReportingService {
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

// JusticeReportingService is a client for justice reporting service
type JusticeReportingService struct {
	AdminConfigurations admin_configurations.ClientService

	AdminExtensionCategoriesAndAutoModerationActions admin_extension_categories_and_auto_moderation_actions.ClientService

	AdminModerationRule admin_moderation_rule.ClientService

	AdminReasons admin_reasons.ClientService

	AdminReports admin_reports.ClientService

	AdminTickets admin_tickets.ClientService

	PublicReasons public_reasons.ClientService

	PublicReports public_reports.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeReportingService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AdminConfigurations.SetTransport(transport)
	c.AdminExtensionCategoriesAndAutoModerationActions.SetTransport(transport)
	c.AdminModerationRule.SetTransport(transport)
	c.AdminReasons.SetTransport(transport)
	c.AdminReports.SetTransport(transport)
	c.AdminTickets.SetTransport(transport)
	c.PublicReasons.SetTransport(transport)
	c.PublicReports.SetTransport(transport)
}
