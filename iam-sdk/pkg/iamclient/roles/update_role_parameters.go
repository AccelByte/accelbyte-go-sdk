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

// NewUpdateRoleParams creates a new UpdateRoleParams object
// with the default values initialized.
func NewUpdateRoleParams() *UpdateRoleParams {
	var ()
	return &UpdateRoleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateRoleParamsWithTimeout creates a new UpdateRoleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateRoleParamsWithTimeout(timeout time.Duration) *UpdateRoleParams {
	var ()
	return &UpdateRoleParams{

		timeout: timeout,
	}
}

// NewUpdateRoleParamsWithContext creates a new UpdateRoleParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateRoleParamsWithContext(ctx context.Context) *UpdateRoleParams {
	var ()
	return &UpdateRoleParams{

		Context: ctx,
	}
}

// NewUpdateRoleParamsWithHTTPClient creates a new UpdateRoleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateRoleParamsWithHTTPClient(client *http.Client) *UpdateRoleParams {
	var ()
	return &UpdateRoleParams{
		HTTPClient: client,
	}
}

/*UpdateRoleParams contains all the parameters to send to the API endpoint
for the update role operation typically these are written to a http.Request
*/
type UpdateRoleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelRoleUpdateRequest
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

// WithTimeout adds the timeout to the update role params
func (o *UpdateRoleParams) WithTimeout(timeout time.Duration) *UpdateRoleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update role params
func (o *UpdateRoleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update role params
func (o *UpdateRoleParams) WithContext(ctx context.Context) *UpdateRoleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update role params
func (o *UpdateRoleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update role params
func (o *UpdateRoleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update role params
func (o *UpdateRoleParams) WithHTTPClient(client *http.Client) *UpdateRoleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update role params
func (o *UpdateRoleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update role params
func (o *UpdateRoleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *UpdateRoleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the update role params
func (o *UpdateRoleParams) WithBody(body *iamclientmodels.ModelRoleUpdateRequest) *UpdateRoleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update role params
func (o *UpdateRoleParams) SetBody(body *iamclientmodels.ModelRoleUpdateRequest) {
	o.Body = body
}

// WithRoleID adds the roleID to the update role params
func (o *UpdateRoleParams) WithRoleID(roleID string) *UpdateRoleParams {
	o.SetRoleID(roleID)
	return o
}

// SetRoleID adds the roleId to the update role params
func (o *UpdateRoleParams) SetRoleID(roleID string) {
	o.RoleID = roleID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateRoleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
