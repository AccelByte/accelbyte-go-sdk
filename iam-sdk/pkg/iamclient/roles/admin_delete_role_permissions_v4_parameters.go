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

// NewAdminDeleteRolePermissionsV4Params creates a new AdminDeleteRolePermissionsV4Params object
// with the default values initialized.
func NewAdminDeleteRolePermissionsV4Params() *AdminDeleteRolePermissionsV4Params {
	var ()
	return &AdminDeleteRolePermissionsV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteRolePermissionsV4ParamsWithTimeout creates a new AdminDeleteRolePermissionsV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteRolePermissionsV4ParamsWithTimeout(timeout time.Duration) *AdminDeleteRolePermissionsV4Params {
	var ()
	return &AdminDeleteRolePermissionsV4Params{

		timeout: timeout,
	}
}

// NewAdminDeleteRolePermissionsV4ParamsWithContext creates a new AdminDeleteRolePermissionsV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteRolePermissionsV4ParamsWithContext(ctx context.Context) *AdminDeleteRolePermissionsV4Params {
	var ()
	return &AdminDeleteRolePermissionsV4Params{

		Context: ctx,
	}
}

// NewAdminDeleteRolePermissionsV4ParamsWithHTTPClient creates a new AdminDeleteRolePermissionsV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteRolePermissionsV4ParamsWithHTTPClient(client *http.Client) *AdminDeleteRolePermissionsV4Params {
	var ()
	return &AdminDeleteRolePermissionsV4Params{
		HTTPClient: client,
	}
}

/*AdminDeleteRolePermissionsV4Params contains all the parameters to send to the API endpoint
for the admin delete role permissions v4 operation typically these are written to a http.Request
*/
type AdminDeleteRolePermissionsV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []string
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) WithTimeout(timeout time.Duration) *AdminDeleteRolePermissionsV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) WithContext(ctx context.Context) *AdminDeleteRolePermissionsV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) WithHTTPClient(client *http.Client) *AdminDeleteRolePermissionsV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) WithBody(body []string) *AdminDeleteRolePermissionsV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) SetBody(body []string) {
	o.Body = body
}

// WithRoleID adds the roleID to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) WithRoleID(roleID string) *AdminDeleteRolePermissionsV4Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin delete role permissions v4 params
func (o *AdminDeleteRolePermissionsV4Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteRolePermissionsV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
