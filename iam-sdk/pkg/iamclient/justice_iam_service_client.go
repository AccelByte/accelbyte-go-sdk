// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iamclient

import (
	"strings"
	"time"

	"github.com/go-openapi/runtime"
	httptransport "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/account_identifier_tag"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/bans"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/clients_config_v3"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/config"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/country"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/devices_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/input_validations"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/login_allowlist"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_extension"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/o_auth2_0_v4"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/override_role_config_v3"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/profile_update_strategy"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/roles"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/sso"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/sso_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/sso_saml_2_0"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/third_party_credential"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users"
	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclient/users_v4"
	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
)

// Default justice iam service HTTP client.
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

// NewHTTPClient creates a new justice iam service HTTP client.
func NewHTTPClient(formats strfmt.Registry) *JusticeIamService {
	return NewHTTPClientWithConfig(formats, nil)
}

// NewHTTPClientWithConfig creates a new justice iam service HTTP client,
// using a customizable transport config.
func NewHTTPClientWithConfig(formats strfmt.Registry, cfg *TransportConfig) *JusticeIamService {
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

// New creates a new justice iam service client
func New(transport runtime.ClientTransport, runtime *httptransport.Runtime, formats strfmt.Registry) *JusticeIamService {
	// ensure nullable parameters have default
	if formats == nil {
		formats = strfmt.Default
	}

	cli := new(JusticeIamService)
	cli.Transport = transport
	cli.Runtime = runtime
	cli.AccountIdentifierTag = account_identifier_tag.New(transport, formats)
	cli.Bans = bans.New(transport, formats)
	cli.Clients = clients.New(transport, formats)
	cli.ClientsConfigV3 = clients_config_v3.New(transport, formats)
	cli.Config = config.New(transport, formats)
	cli.Country = country.New(transport, formats)
	cli.DevicesV4 = devices_v4.New(transport, formats)
	cli.InputValidations = input_validations.New(transport, formats)
	cli.LoginAllowlist = login_allowlist.New(transport, formats)
	cli.OAuth = o_auth.New(transport, formats)
	cli.OAuth20 = o_auth2_0.New(transport, formats)
	cli.OAuth20Extension = o_auth2_0_extension.New(transport, formats)
	cli.OAuth20V4 = o_auth2_0_v4.New(transport, formats)
	cli.OverrideRoleConfigV3 = override_role_config_v3.New(transport, formats)
	cli.ProfileUpdateStrategy = profile_update_strategy.New(transport, formats)
	cli.Roles = roles.New(transport, formats)
	cli.SSO = sso.New(transport, formats)
	cli.SSOCredential = sso_credential.New(transport, formats)
	cli.SSOSAML20 = sso_saml_2_0.New(transport, formats)
	cli.ThirdPartyCredential = third_party_credential.New(transport, formats)
	cli.Users = users.New(transport, formats)
	cli.UsersV4 = users_v4.New(transport, formats)

	return cli
}

func NewDateTime(t time.Time) strfmt.DateTime {
	return strfmt.DateTime(t)
}

func NewClientWithBasePath(url string, endpoint string) *JusticeIamService {
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

// JusticeIamService is a client for justice iam service
type JusticeIamService struct {
	AccountIdentifierTag account_identifier_tag.ClientService

	Bans bans.ClientService

	Clients clients.ClientService

	ClientsConfigV3 clients_config_v3.ClientService

	Config config.ClientService

	Country country.ClientService

	DevicesV4 devices_v4.ClientService

	InputValidations input_validations.ClientService

	LoginAllowlist login_allowlist.ClientService

	OAuth o_auth.ClientService

	OAuth20 o_auth2_0.ClientService

	OAuth20Extension o_auth2_0_extension.ClientService

	OAuth20V4 o_auth2_0_v4.ClientService

	OverrideRoleConfigV3 override_role_config_v3.ClientService

	ProfileUpdateStrategy profile_update_strategy.ClientService

	Roles roles.ClientService

	SSO sso.ClientService

	SSOCredential sso_credential.ClientService

	SSOSAML20 sso_saml_2_0.ClientService

	ThirdPartyCredential third_party_credential.ClientService

	Users users.ClientService

	UsersV4 users_v4.ClientService

	Runtime   *httptransport.Runtime
	Transport runtime.ClientTransport
}

// SetTransport changes the transport on the client and all its subresources
func (c *JusticeIamService) SetTransport(transport runtime.ClientTransport) {
	c.Transport = transport
	c.AccountIdentifierTag.SetTransport(transport)
	c.Bans.SetTransport(transport)
	c.Clients.SetTransport(transport)
	c.ClientsConfigV3.SetTransport(transport)
	c.Config.SetTransport(transport)
	c.Country.SetTransport(transport)
	c.DevicesV4.SetTransport(transport)
	c.InputValidations.SetTransport(transport)
	c.LoginAllowlist.SetTransport(transport)
	c.OAuth.SetTransport(transport)
	c.OAuth20.SetTransport(transport)
	c.OAuth20Extension.SetTransport(transport)
	c.OAuth20V4.SetTransport(transport)
	c.OverrideRoleConfigV3.SetTransport(transport)
	c.ProfileUpdateStrategy.SetTransport(transport)
	c.Roles.SetTransport(transport)
	c.SSO.SetTransport(transport)
	c.SSOCredential.SetTransport(transport)
	c.SSOSAML20.SetTransport(transport)
	c.ThirdPartyCredential.SetTransport(transport)
	c.Users.SetTransport(transport)
	c.UsersV4.SetTransport(transport)
}
