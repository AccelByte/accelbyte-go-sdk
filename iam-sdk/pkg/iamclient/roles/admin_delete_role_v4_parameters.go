// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package roles

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewAdminDeleteRoleV4Params creates a new AdminDeleteRoleV4Params object
// with the default values initialized.
func NewAdminDeleteRoleV4Params() *AdminDeleteRoleV4Params {
	var ()
	return &AdminDeleteRoleV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteRoleV4ParamsWithTimeout creates a new AdminDeleteRoleV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteRoleV4ParamsWithTimeout(timeout time.Duration) *AdminDeleteRoleV4Params {
	var ()
	return &AdminDeleteRoleV4Params{

		timeout: timeout,
	}
}

// NewAdminDeleteRoleV4ParamsWithContext creates a new AdminDeleteRoleV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteRoleV4ParamsWithContext(ctx context.Context) *AdminDeleteRoleV4Params {
	var ()
	return &AdminDeleteRoleV4Params{

		Context: ctx,
	}
}

// NewAdminDeleteRoleV4ParamsWithHTTPClient creates a new AdminDeleteRoleV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteRoleV4ParamsWithHTTPClient(client *http.Client) *AdminDeleteRoleV4Params {
	var ()
	return &AdminDeleteRoleV4Params{
		HTTPClient: client,
	}
}

/*AdminDeleteRoleV4Params contains all the parameters to send to the API endpoint
for the admin delete role v4 operation typically these are written to a http.Request
*/
type AdminDeleteRoleV4Params struct {

	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) WithTimeout(timeout time.Duration) *AdminDeleteRoleV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) WithContext(ctx context.Context) *AdminDeleteRoleV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) WithHTTPClient(client *http.Client) *AdminDeleteRoleV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithRoleID adds the roleID to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) WithRoleID(roleID string) *AdminDeleteRoleV4Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin delete role v4 params
func (o *AdminDeleteRoleV4Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteRoleV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param roleId
	if err := r.SetPathParam("roleId", o.RoleID); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
