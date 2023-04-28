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

// NewRemoveRoleAdminParams creates a new RemoveRoleAdminParams object
// with the default values initialized.
func NewRemoveRoleAdminParams() *RemoveRoleAdminParams {
	var ()
	return &RemoveRoleAdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRemoveRoleAdminParamsWithTimeout creates a new RemoveRoleAdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRemoveRoleAdminParamsWithTimeout(timeout time.Duration) *RemoveRoleAdminParams {
	var ()
	return &RemoveRoleAdminParams{

		timeout: timeout,
	}
}

// NewRemoveRoleAdminParamsWithContext creates a new RemoveRoleAdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewRemoveRoleAdminParamsWithContext(ctx context.Context) *RemoveRoleAdminParams {
	var ()
	return &RemoveRoleAdminParams{

		Context: ctx,
	}
}

// NewRemoveRoleAdminParamsWithHTTPClient creates a new RemoveRoleAdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRemoveRoleAdminParamsWithHTTPClient(client *http.Client) *RemoveRoleAdminParams {
	var ()
	return &RemoveRoleAdminParams{
		HTTPClient: client,
	}
}

/*RemoveRoleAdminParams contains all the parameters to send to the API endpoint
for the remove role admin operation typically these are written to a http.Request
*/
type RemoveRoleAdminParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*RoleID
	  Role id

	*/
	RoleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the remove role admin params
func (o *RemoveRoleAdminParams) WithTimeout(timeout time.Duration) *RemoveRoleAdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the remove role admin params
func (o *RemoveRoleAdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the remove role admin params
func (o *RemoveRoleAdminParams) WithContext(ctx context.Context) *RemoveRoleAdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the remove role admin params
func (o *RemoveRoleAdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the remove role admin params
func (o *RemoveRoleAdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the remove role admin params
func (o *RemoveRoleAdminParams) WithHTTPClient(client *http.Client) *RemoveRoleAdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the remove role admin params
func (o *RemoveRoleAdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the remove role admin params
func (o *RemoveRoleAdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithRoleID adds the roleID to the remove role admin params
func (o *RemoveRoleAdminParams) WithRoleID(roleID string) *RemoveRoleAdminParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the remove role admin params
func (o *RemoveRoleAdminParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *RemoveRoleAdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
