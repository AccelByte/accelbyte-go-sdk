// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_extension_categories_and_auto_moderation_actions

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewAdminCreateModActionParams creates a new AdminCreateModActionParams object
// with the default values initialized.
func NewAdminCreateModActionParams() *AdminCreateModActionParams {
	var ()
	return &AdminCreateModActionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateModActionParamsWithTimeout creates a new AdminCreateModActionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateModActionParamsWithTimeout(timeout time.Duration) *AdminCreateModActionParams {
	var ()
	return &AdminCreateModActionParams{

		timeout: timeout,
	}
}

// NewAdminCreateModActionParamsWithContext creates a new AdminCreateModActionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateModActionParamsWithContext(ctx context.Context) *AdminCreateModActionParams {
	var ()
	return &AdminCreateModActionParams{

		Context: ctx,
	}
}

// NewAdminCreateModActionParamsWithHTTPClient creates a new AdminCreateModActionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateModActionParamsWithHTTPClient(client *http.Client) *AdminCreateModActionParams {
	var ()
	return &AdminCreateModActionParams{
		HTTPClient: client,
	}
}

/*AdminCreateModActionParams contains all the parameters to send to the API endpoint
for the admin create mod action operation typically these are written to a http.Request
*/
type AdminCreateModActionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiActionAPIRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin create mod action params
func (o *AdminCreateModActionParams) WithTimeout(timeout time.Duration) *AdminCreateModActionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create mod action params
func (o *AdminCreateModActionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create mod action params
func (o *AdminCreateModActionParams) WithContext(ctx context.Context) *AdminCreateModActionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create mod action params
func (o *AdminCreateModActionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create mod action params
func (o *AdminCreateModActionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create mod action params
func (o *AdminCreateModActionParams) WithHTTPClient(client *http.Client) *AdminCreateModActionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create mod action params
func (o *AdminCreateModActionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create mod action params
func (o *AdminCreateModActionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCreateModActionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin create mod action params
func (o *AdminCreateModActionParams) WithBody(body *reportingclientmodels.RestapiActionAPIRequest) *AdminCreateModActionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create mod action params
func (o *AdminCreateModActionParams) SetBody(body *reportingclientmodels.RestapiActionAPIRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateModActionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
