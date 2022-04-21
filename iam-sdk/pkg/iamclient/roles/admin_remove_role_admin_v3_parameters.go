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

// NewAdminRemoveRoleAdminV3Params creates a new AdminRemoveRoleAdminV3Params object
// with the default values initialized.
func NewAdminRemoveRoleAdminV3Params() *AdminRemoveRoleAdminV3Params {
	var ()
	return &AdminRemoveRoleAdminV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminRemoveRoleAdminV3ParamsWithTimeout creates a new AdminRemoveRoleAdminV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminRemoveRoleAdminV3ParamsWithTimeout(timeout time.Duration) *AdminRemoveRoleAdminV3Params {
	var ()
	return &AdminRemoveRoleAdminV3Params{

		timeout: timeout,
	}
}

// NewAdminRemoveRoleAdminV3ParamsWithContext creates a new AdminRemoveRoleAdminV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminRemoveRoleAdminV3ParamsWithContext(ctx context.Context) *AdminRemoveRoleAdminV3Params {
	var ()
	return &AdminRemoveRoleAdminV3Params{

		Context: ctx,
	}
}

// NewAdminRemoveRoleAdminV3ParamsWithHTTPClient creates a new AdminRemoveRoleAdminV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminRemoveRoleAdminV3ParamsWithHTTPClient(client *http.Client) *AdminRemoveRoleAdminV3Params {
	var ()
	return &AdminRemoveRoleAdminV3Params{
		HTTPClient: client,
	}
}

/*AdminRemoveRoleAdminV3Params contains all the parameters to send to the API endpoint
for the admin remove role admin v3 operation typically these are written to a http.Request
*/
type AdminRemoveRoleAdminV3Params struct {

	/*RoleID
	  Role ID, should follow UUID version 4 without hyphen

	*/
	RoleID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) WithTimeout(timeout time.Duration) *AdminRemoveRoleAdminV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) WithContext(ctx context.Context) *AdminRemoveRoleAdminV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) WithHTTPClient(client *http.Client) *AdminRemoveRoleAdminV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithRoleID adds the roleID to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) WithRoleID(roleID string) *AdminRemoveRoleAdminV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminRemoveRoleAdminV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
