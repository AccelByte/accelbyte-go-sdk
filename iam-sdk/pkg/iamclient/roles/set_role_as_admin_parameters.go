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

// NewSetRoleAsAdminParams creates a new SetRoleAsAdminParams object
// with the default values initialized.
func NewSetRoleAsAdminParams() *SetRoleAsAdminParams {
	var ()
	return &SetRoleAsAdminParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSetRoleAsAdminParamsWithTimeout creates a new SetRoleAsAdminParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSetRoleAsAdminParamsWithTimeout(timeout time.Duration) *SetRoleAsAdminParams {
	var ()
	return &SetRoleAsAdminParams{

		timeout: timeout,
	}
}

// NewSetRoleAsAdminParamsWithContext creates a new SetRoleAsAdminParams object
// with the default values initialized, and the ability to set a context for a request
func NewSetRoleAsAdminParamsWithContext(ctx context.Context) *SetRoleAsAdminParams {
	var ()
	return &SetRoleAsAdminParams{

		Context: ctx,
	}
}

// NewSetRoleAsAdminParamsWithHTTPClient creates a new SetRoleAsAdminParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSetRoleAsAdminParamsWithHTTPClient(client *http.Client) *SetRoleAsAdminParams {
	var ()
	return &SetRoleAsAdminParams{
		HTTPClient: client,
	}
}

/*SetRoleAsAdminParams contains all the parameters to send to the API endpoint
for the set role as admin operation typically these are written to a http.Request
*/
type SetRoleAsAdminParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the set role as admin params
func (o *SetRoleAsAdminParams) WithTimeout(timeout time.Duration) *SetRoleAsAdminParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the set role as admin params
func (o *SetRoleAsAdminParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the set role as admin params
func (o *SetRoleAsAdminParams) WithContext(ctx context.Context) *SetRoleAsAdminParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the set role as admin params
func (o *SetRoleAsAdminParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the set role as admin params
func (o *SetRoleAsAdminParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the set role as admin params
func (o *SetRoleAsAdminParams) WithHTTPClient(client *http.Client) *SetRoleAsAdminParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the set role as admin params
func (o *SetRoleAsAdminParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the set role as admin params
func (o *SetRoleAsAdminParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SetRoleAsAdminParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithRoleID adds the roleID to the set role as admin params
func (o *SetRoleAsAdminParams) WithRoleID(roleID string) *SetRoleAsAdminParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the set role as admin params
func (o *SetRoleAsAdminParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *SetRoleAsAdminParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
