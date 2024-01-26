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

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminAddRolePermissionsV4Params creates a new AdminAddRolePermissionsV4Params object
// with the default values initialized.
func NewAdminAddRolePermissionsV4Params() *AdminAddRolePermissionsV4Params {
	var ()
	return &AdminAddRolePermissionsV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminAddRolePermissionsV4ParamsWithTimeout creates a new AdminAddRolePermissionsV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminAddRolePermissionsV4ParamsWithTimeout(timeout time.Duration) *AdminAddRolePermissionsV4Params {
	var ()
	return &AdminAddRolePermissionsV4Params{

		timeout: timeout,
	}
}

// NewAdminAddRolePermissionsV4ParamsWithContext creates a new AdminAddRolePermissionsV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminAddRolePermissionsV4ParamsWithContext(ctx context.Context) *AdminAddRolePermissionsV4Params {
	var ()
	return &AdminAddRolePermissionsV4Params{

		Context: ctx,
	}
}

// NewAdminAddRolePermissionsV4ParamsWithHTTPClient creates a new AdminAddRolePermissionsV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminAddRolePermissionsV4ParamsWithHTTPClient(client *http.Client) *AdminAddRolePermissionsV4Params {
	var ()
	return &AdminAddRolePermissionsV4Params{
		HTTPClient: client,
	}
}

/*AdminAddRolePermissionsV4Params contains all the parameters to send to the API endpoint
for the admin add role permissions v4 operation typically these are written to a http.Request
*/
type AdminAddRolePermissionsV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.AccountcommonPermissionsV3
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

// WithTimeout adds the timeout to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) WithTimeout(timeout time.Duration) *AdminAddRolePermissionsV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) WithContext(ctx context.Context) *AdminAddRolePermissionsV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) WithHTTPClient(client *http.Client) *AdminAddRolePermissionsV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminAddRolePermissionsV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) WithBody(body *iamclientmodels.AccountcommonPermissionsV3) *AdminAddRolePermissionsV4Params {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) SetBody(body *iamclientmodels.AccountcommonPermissionsV3) {
	o.Body = body
}

// WithRoleID adds the roleID to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) WithRoleID(roleID string) *AdminAddRolePermissionsV4Params {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the admin add role permissions v4 params
func (o *AdminAddRolePermissionsV4Params) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminAddRolePermissionsV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
