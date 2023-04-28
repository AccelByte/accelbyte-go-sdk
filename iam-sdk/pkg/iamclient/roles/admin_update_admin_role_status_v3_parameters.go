// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package roles

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

// NewAdminUpdateAdminRoleStatusV3Params creates a new AdminUpdateAdminRoleStatusV3Params object
// with the default values initialized.
func NewAdminUpdateAdminRoleStatusV3Params() *AdminUpdateAdminRoleStatusV3Params {
	var ()
	return &AdminUpdateAdminRoleStatusV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateAdminRoleStatusV3ParamsWithTimeout creates a new AdminUpdateAdminRoleStatusV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateAdminRoleStatusV3ParamsWithTimeout(timeout time.Duration) *AdminUpdateAdminRoleStatusV3Params {
	var ()
	return &AdminUpdateAdminRoleStatusV3Params{

		timeout: timeout,
	}
}

// NewAdminUpdateAdminRoleStatusV3ParamsWithContext creates a new AdminUpdateAdminRoleStatusV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateAdminRoleStatusV3ParamsWithContext(ctx context.Context) *AdminUpdateAdminRoleStatusV3Params {
	var ()
	return &AdminUpdateAdminRoleStatusV3Params{

		Context: ctx,
	}
}

// NewAdminUpdateAdminRoleStatusV3ParamsWithHTTPClient creates a new AdminUpdateAdminRoleStatusV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateAdminRoleStatusV3ParamsWithHTTPClient(client *http.Client) *AdminUpdateAdminRoleStatusV3Params {
	var ()
	return &AdminUpdateAdminRoleStatusV3Params{
		HTTPClient: client,
	}
}

/*AdminUpdateAdminRoleStatusV3Params contains all the parameters to send to the API endpoint
for the admin update admin role status v3 operation typically these are written to a http.Request
*/
type AdminUpdateAdminRoleStatusV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) WithTimeout(timeout time.Duration) *AdminUpdateAdminRoleStatusV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) WithContext(ctx context.Context) *AdminUpdateAdminRoleStatusV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) WithHTTPClient(client *http.Client) *AdminUpdateAdminRoleStatusV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithRoleID adds the roleID to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) WithRoleID(roleID string) *AdminUpdateAdminRoleStatusV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin update admin role status v3 params
func (o *AdminUpdateAdminRoleStatusV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateAdminRoleStatusV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
		return err
	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
