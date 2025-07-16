// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package override_role_config_v3

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// Deprecated: 2025-07-16 - Use AdminGetRoleSourceV3Identity<EnumValue>Constant instead.
// Get the enum in AdminGetRoleSourceV3Params
const (
	AdminGetRoleSourceV3GAMEADMINConstant = "GAME_ADMIN"
	AdminGetRoleSourceV3USERConstant      = "USER"
	AdminGetRoleSourceV3VIEWONLYConstant  = "VIEW_ONLY"
)

// Get the enum in AdminGetRoleSourceV3Params
const (
	AdminGetRoleSourceV3IdentityGAMEADMINConstant = "GAME_ADMIN"
	AdminGetRoleSourceV3IdentityUSERConstant      = "USER"
	AdminGetRoleSourceV3IdentityVIEWONLYConstant  = "VIEW_ONLY"
)

// NewAdminGetRoleSourceV3Params creates a new AdminGetRoleSourceV3Params object
// with the default values initialized.
func NewAdminGetRoleSourceV3Params() *AdminGetRoleSourceV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleSourceV3Params{
		Identity: identityDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetRoleSourceV3ParamsWithTimeout creates a new AdminGetRoleSourceV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetRoleSourceV3ParamsWithTimeout(timeout time.Duration) *AdminGetRoleSourceV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleSourceV3Params{
		Identity: identityDefault,

		timeout: timeout,
	}
}

// NewAdminGetRoleSourceV3ParamsWithContext creates a new AdminGetRoleSourceV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetRoleSourceV3ParamsWithContext(ctx context.Context) *AdminGetRoleSourceV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleSourceV3Params{
		Identity: identityDefault,

		Context: ctx,
	}
}

// NewAdminGetRoleSourceV3ParamsWithHTTPClient creates a new AdminGetRoleSourceV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetRoleSourceV3ParamsWithHTTPClient(client *http.Client) *AdminGetRoleSourceV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminGetRoleSourceV3Params{
		Identity:   identityDefault,
		HTTPClient: client,
	}
}

/*AdminGetRoleSourceV3Params contains all the parameters to send to the API endpoint
for the admin get role source v3 operation typically these are written to a http.Request
*/
type AdminGetRoleSourceV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Identity
	  Role identity

	*/
	Identity string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) WithTimeout(timeout time.Duration) *AdminGetRoleSourceV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) WithContext(ctx context.Context) *AdminGetRoleSourceV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) WithHTTPClient(client *http.Client) *AdminGetRoleSourceV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetRoleSourceV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) WithNamespace(namespace string) *AdminGetRoleSourceV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIdentity adds the identity to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) WithIdentity(identity string) *AdminGetRoleSourceV3Params {
	o.SetIdentity(identity)
	return o
}

// SetIdentity adds the identity to the admin get role source v3 params
func (o *AdminGetRoleSourceV3Params) SetIdentity(identity string) {
	o.Identity = identity
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetRoleSourceV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param identity
	qrIdentity := o.Identity
	qIdentity := qrIdentity
	if qIdentity != "" {
		if err := r.SetQueryParam("identity", qIdentity); err != nil {
			return err
		}
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
