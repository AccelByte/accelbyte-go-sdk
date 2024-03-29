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

// NewGetRoleManagersParams creates a new GetRoleManagersParams object
// with the default values initialized.
func NewGetRoleManagersParams() *GetRoleManagersParams {
	var ()
	return &GetRoleManagersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetRoleManagersParamsWithTimeout creates a new GetRoleManagersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetRoleManagersParamsWithTimeout(timeout time.Duration) *GetRoleManagersParams {
	var ()
	return &GetRoleManagersParams{

		timeout: timeout,
	}
}

// NewGetRoleManagersParamsWithContext creates a new GetRoleManagersParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetRoleManagersParamsWithContext(ctx context.Context) *GetRoleManagersParams {
	var ()
	return &GetRoleManagersParams{

		Context: ctx,
	}
}

// NewGetRoleManagersParamsWithHTTPClient creates a new GetRoleManagersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetRoleManagersParamsWithHTTPClient(client *http.Client) *GetRoleManagersParams {
	var ()
	return &GetRoleManagersParams{
		HTTPClient: client,
	}
}

/*GetRoleManagersParams contains all the parameters to send to the API endpoint
for the get role managers operation typically these are written to a http.Request
*/
type GetRoleManagersParams struct {

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

// WithTimeout adds the timeout to the get role managers params
func (o *GetRoleManagersParams) WithTimeout(timeout time.Duration) *GetRoleManagersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get role managers params
func (o *GetRoleManagersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get role managers params
func (o *GetRoleManagersParams) WithContext(ctx context.Context) *GetRoleManagersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get role managers params
func (o *GetRoleManagersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get role managers params
func (o *GetRoleManagersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get role managers params
func (o *GetRoleManagersParams) WithHTTPClient(client *http.Client) *GetRoleManagersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get role managers params
func (o *GetRoleManagersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get role managers params
func (o *GetRoleManagersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetRoleManagersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithRoleID adds the roleID to the get role managers params
func (o *GetRoleManagersParams) WithRoleID(roleID string) *GetRoleManagersParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the get role managers params
func (o *GetRoleManagersParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *GetRoleManagersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
