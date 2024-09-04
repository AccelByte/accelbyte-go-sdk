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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// Get the enum in AdminUpdateRoleOverrideConfigV3Params
const (
	AdminUpdateRoleOverrideConfigV3GAMEADMINConstant = "GAME_ADMIN"
	AdminUpdateRoleOverrideConfigV3USERConstant      = "USER"
	AdminUpdateRoleOverrideConfigV3VIEWONLYConstant  = "VIEW_ONLY"
)

// NewAdminUpdateRoleOverrideConfigV3Params creates a new AdminUpdateRoleOverrideConfigV3Params object
// with the default values initialized.
func NewAdminUpdateRoleOverrideConfigV3Params() *AdminUpdateRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminUpdateRoleOverrideConfigV3Params{
		Identity: identityDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateRoleOverrideConfigV3ParamsWithTimeout creates a new AdminUpdateRoleOverrideConfigV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateRoleOverrideConfigV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminUpdateRoleOverrideConfigV3Params{
		Identity: identityDefault,

		timeout: timeout,
	}
}

// NewAdminUpdateRoleOverrideConfigV3ParamsWithContext creates a new AdminUpdateRoleOverrideConfigV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateRoleOverrideConfigV3ParamsWithContext(ctx context.Context) *AdminUpdateRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminUpdateRoleOverrideConfigV3Params{
		Identity: identityDefault,

		Context: ctx,
	}
}

// NewAdminUpdateRoleOverrideConfigV3ParamsWithHTTPClient creates a new AdminUpdateRoleOverrideConfigV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateRoleOverrideConfigV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateRoleOverrideConfigV3Params {
	var (
		identityDefault = string("USER")
	)
	return &AdminUpdateRoleOverrideConfigV3Params{
		Identity:   identityDefault,
		HTTPClient: client,
	}
}

/*AdminUpdateRoleOverrideConfigV3Params contains all the parameters to send to the API endpoint
for the admin update role override config v3 operation typically these are written to a http.Request
*/
type AdminUpdateRoleOverrideConfigV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleOverrideUpdateRequest
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

// WithTimeout adds the timeout to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) WithTimeout(timeout time.Duration) *AdminUpdateRoleOverrideConfigV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) WithContext(ctx context.Context) *AdminUpdateRoleOverrideConfigV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) WithHTTPClient(client *http.Client) *AdminUpdateRoleOverrideConfigV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateRoleOverrideConfigV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) WithBody(body *iamclientmodels.ModelRoleOverrideUpdateRequest) *AdminUpdateRoleOverrideConfigV3Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetBody(body *iamclientmodels.ModelRoleOverrideUpdateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) WithNamespace(namespace string) *AdminUpdateRoleOverrideConfigV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithIdentity adds the identity to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) WithIdentity(identity string) *AdminUpdateRoleOverrideConfigV3Params {
	o.SetIdentity(identity)
	return o
}

// SetIdentity adds the identity to the admin update role override config v3 params
func (o *AdminUpdateRoleOverrideConfigV3Params) SetIdentity(identity string) {
	o.Identity = identity
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateRoleOverrideConfigV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
