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
	"github.com/go-openapi/swag"
)

// NewDeleteRolePermissionParams creates a new DeleteRolePermissionParams object
// with the default values initialized.
func NewDeleteRolePermissionParams() *DeleteRolePermissionParams {
	var ()
	return &DeleteRolePermissionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteRolePermissionParamsWithTimeout creates a new DeleteRolePermissionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteRolePermissionParamsWithTimeout(timeout time.Duration) *DeleteRolePermissionParams {
	var ()
	return &DeleteRolePermissionParams{

		timeout: timeout,
	}
}

// NewDeleteRolePermissionParamsWithContext creates a new DeleteRolePermissionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteRolePermissionParamsWithContext(ctx context.Context) *DeleteRolePermissionParams {
	var ()
	return &DeleteRolePermissionParams{

		Context: ctx,
	}
}

// NewDeleteRolePermissionParamsWithHTTPClient creates a new DeleteRolePermissionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteRolePermissionParamsWithHTTPClient(client *http.Client) *DeleteRolePermissionParams {
	var ()
	return &DeleteRolePermissionParams{
		HTTPClient: client,
	}
}

/*DeleteRolePermissionParams contains all the parameters to send to the API endpoint
for the delete role permission operation typically these are written to a http.Request
*/
type DeleteRolePermissionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Action
	  Action

	*/
	Action int64
	/*Resource
	  Resource Name

	*/
	Resource string
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete role permission params
func (o *DeleteRolePermissionParams) WithTimeout(timeout time.Duration) *DeleteRolePermissionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete role permission params
func (o *DeleteRolePermissionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete role permission params
func (o *DeleteRolePermissionParams) WithContext(ctx context.Context) *DeleteRolePermissionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete role permission params
func (o *DeleteRolePermissionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete role permission params
func (o *DeleteRolePermissionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete role permission params
func (o *DeleteRolePermissionParams) WithHTTPClient(client *http.Client) *DeleteRolePermissionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete role permission params
func (o *DeleteRolePermissionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete role permission params
func (o *DeleteRolePermissionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithAction adds the action to the delete role permission params
func (o *DeleteRolePermissionParams) WithAction(action int64) *DeleteRolePermissionParams {
	o.SetAction(action)
	return o
}

// SetAction adds the action to the delete role permission params
func (o *DeleteRolePermissionParams) SetAction(action int64) {
	o.Action = action
}

// WithResource adds the resource to the delete role permission params
func (o *DeleteRolePermissionParams) WithResource(resource string) *DeleteRolePermissionParams {
	o.SetResource(resource)
	return o
}

// SetResource adds the resource to the delete role permission params
func (o *DeleteRolePermissionParams) SetResource(resource string) {
	o.Resource = resource
}

// WithRoleID adds the roleID to the delete role permission params
func (o *DeleteRolePermissionParams) WithRoleID(roleID string) *DeleteRolePermissionParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the delete role permission params
func (o *DeleteRolePermissionParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteRolePermissionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param action
	if err := r.SetPathParam("action", swag.FormatInt64(o.Action)); err != nil {
		return err
	}

	// path param resource
	if err := r.SetPathParam("resource", o.Resource); err != nil {
		return err
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
