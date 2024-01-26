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

// NewAddRoleManagersParams creates a new AddRoleManagersParams object
// with the default values initialized.
func NewAddRoleManagersParams() *AddRoleManagersParams {
	var ()
	return &AddRoleManagersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAddRoleManagersParamsWithTimeout creates a new AddRoleManagersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAddRoleManagersParamsWithTimeout(timeout time.Duration) *AddRoleManagersParams {
	var ()
	return &AddRoleManagersParams{

		timeout: timeout,
	}
}

// NewAddRoleManagersParamsWithContext creates a new AddRoleManagersParams object
// with the default values initialized, and the ability to set a context for a request
func NewAddRoleManagersParamsWithContext(ctx context.Context) *AddRoleManagersParams {
	var ()
	return &AddRoleManagersParams{

		Context: ctx,
	}
}

// NewAddRoleManagersParamsWithHTTPClient creates a new AddRoleManagersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAddRoleManagersParamsWithHTTPClient(client *http.Client) *AddRoleManagersParams {
	var ()
	return &AddRoleManagersParams{
		HTTPClient: client,
	}
}

/*AddRoleManagersParams contains all the parameters to send to the API endpoint
for the add role managers operation typically these are written to a http.Request
*/
type AddRoleManagersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleManagersRequest
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

// WithTimeout adds the timeout to the add role managers params
func (o *AddRoleManagersParams) WithTimeout(timeout time.Duration) *AddRoleManagersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the add role managers params
func (o *AddRoleManagersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the add role managers params
func (o *AddRoleManagersParams) WithContext(ctx context.Context) *AddRoleManagersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the add role managers params
func (o *AddRoleManagersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the add role managers params
func (o *AddRoleManagersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the add role managers params
func (o *AddRoleManagersParams) WithHTTPClient(client *http.Client) *AddRoleManagersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the add role managers params
func (o *AddRoleManagersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the add role managers params
func (o *AddRoleManagersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AddRoleManagersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the add role managers params
func (o *AddRoleManagersParams) WithBody(body *iamclientmodels.ModelRoleManagersRequest) *AddRoleManagersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the add role managers params
func (o *AddRoleManagersParams) SetBody(body *iamclientmodels.ModelRoleManagersRequest) {
	o.Body = body
}

// WithRoleID adds the roleID to the add role managers params
func (o *AddRoleManagersParams) WithRoleID(roleID string) *AddRoleManagersParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the add role managers params
func (o *AddRoleManagersParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *AddRoleManagersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
