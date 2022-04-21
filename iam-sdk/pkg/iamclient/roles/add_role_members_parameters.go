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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAddRoleMembersParams creates a new AddRoleMembersParams object
// with the default values initialized.
func NewAddRoleMembersParams() *AddRoleMembersParams {
	var ()
	return &AddRoleMembersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddRoleMembersParamsWithTimeout creates a new AddRoleMembersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddRoleMembersParamsWithTimeout(timeout time.Duration) *AddRoleMembersParams {
	var ()
	return &AddRoleMembersParams{

		timeout: timeout,
	}
}

// NewAddRoleMembersParamsWithContext creates a new AddRoleMembersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddRoleMembersParamsWithContext(ctx context.Context) *AddRoleMembersParams {
	var ()
	return &AddRoleMembersParams{

		Context: ctx,
	}
}

// NewAddRoleMembersParamsWithHTTPClient creates a new AddRoleMembersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddRoleMembersParamsWithHTTPClient(client *http.Client) *AddRoleMembersParams {
	var ()
	return &AddRoleMembersParams{
		HTTPClient: client,
	}
}

/*AddRoleMembersParams contains all the parameters to send to the API endpoint
for the add role members operation typically these are written to a http.Request
*/
type AddRoleMembersParams struct {

	/*Body*/
	Body *iamclientmodels.ModelRoleMembersRequest
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the add role members params
func (o *AddRoleMembersParams) WithTimeout(timeout time.Duration) *AddRoleMembersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add role members params
func (o *AddRoleMembersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add role members params
func (o *AddRoleMembersParams) WithContext(ctx context.Context) *AddRoleMembersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add role members params
func (o *AddRoleMembersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the add role members params
func (o *AddRoleMembersParams) WithHTTPClient(client *http.Client) *AddRoleMembersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add role members params
func (o *AddRoleMembersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the add role members params
func (o *AddRoleMembersParams) WithBody(body *iamclientmodels.ModelRoleMembersRequest) *AddRoleMembersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add role members params
func (o *AddRoleMembersParams) SetBody(body *iamclientmodels.ModelRoleMembersRequest) {
	o.Body = body
}

// WithRoleID adds the roleID to the add role members params
func (o *AddRoleMembersParams) WithRoleID(roleID string) *AddRoleMembersParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the add role members params
func (o *AddRoleMembersParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AddRoleMembersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
