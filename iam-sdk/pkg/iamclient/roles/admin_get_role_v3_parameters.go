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

// NewAdminGetRoleV3Params creates a new AdminGetRoleV3Params object
// with the default values initialized.
func NewAdminGetRoleV3Params() *AdminGetRoleV3Params {
	var ()
	return &AdminGetRoleV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetRoleV3ParamsWithTimeout creates a new AdminGetRoleV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetRoleV3ParamsWithTimeout(timeout time.Duration) *AdminGetRoleV3Params {
	var ()
	return &AdminGetRoleV3Params{

		timeout: timeout,
	}
}

// NewAdminGetRoleV3ParamsWithContext creates a new AdminGetRoleV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetRoleV3ParamsWithContext(ctx context.Context) *AdminGetRoleV3Params {
	var ()
	return &AdminGetRoleV3Params{

		Context: ctx,
	}
}

// NewAdminGetRoleV3ParamsWithHTTPClient creates a new AdminGetRoleV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetRoleV3ParamsWithHTTPClient(client *http.Client) *AdminGetRoleV3Params {
	var ()
	return &AdminGetRoleV3Params{
		HTTPClient: client,
	}
}

/*AdminGetRoleV3Params contains all the parameters to send to the API endpoint
for the admin get role v3 operation typically these are written to a http.Request
*/
type AdminGetRoleV3Params struct {

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

// WithTimeout adds the timeout to the admin get role v3 params
func (o *AdminGetRoleV3Params) WithTimeout(timeout time.Duration) *AdminGetRoleV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get role v3 params
func (o *AdminGetRoleV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get role v3 params
func (o *AdminGetRoleV3Params) WithContext(ctx context.Context) *AdminGetRoleV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get role v3 params
func (o *AdminGetRoleV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get role v3 params
func (o *AdminGetRoleV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get role v3 params
func (o *AdminGetRoleV3Params) WithHTTPClient(client *http.Client) *AdminGetRoleV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get role v3 params
func (o *AdminGetRoleV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get role v3 params
func (o *AdminGetRoleV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetRoleV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithRoleID adds the roleID to the admin get role v3 params
func (o *AdminGetRoleV3Params) WithRoleID(roleID string) *AdminGetRoleV3Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin get role v3 params
func (o *AdminGetRoleV3Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetRoleV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
