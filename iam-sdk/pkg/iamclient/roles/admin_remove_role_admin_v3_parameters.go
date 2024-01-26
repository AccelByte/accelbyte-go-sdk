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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
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

// SetAuthInfoWriter adds the authInfoWriter to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
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

// SetHTTPClient adds the HTTPClient Transport to the admin remove role admin v3 params
func (o *AdminRemoveRoleAdminV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminRemoveRoleAdminV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
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
