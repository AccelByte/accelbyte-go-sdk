// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package operations

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

// NewProfileParams creates a new ProfileParams object
// with the default values initialized.
func NewProfileParams() *ProfileParams {
	var ()
	return &ProfileParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewProfileParamsWithTimeout creates a new ProfileParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewProfileParamsWithTimeout(timeout time.Duration) *ProfileParams {
	var ()
	return &ProfileParams{

		timeout: timeout,
	}
}

// NewProfileParamsWithContext creates a new ProfileParams object
// with the default values initialized, and the ability to set a context for a request
func NewProfileParamsWithContext(ctx context.Context) *ProfileParams {
	var ()
	return &ProfileParams{

		Context: ctx,
	}
}

// NewProfileParamsWithHTTPClient creates a new ProfileParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewProfileParamsWithHTTPClient(client *http.Client) *ProfileParams {
	var ()
	return &ProfileParams{
		HTTPClient: client,
	}
}

/*ProfileParams contains all the parameters to send to the API endpoint
for the profile operation typically these are written to a http.Request
*/
type ProfileParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the profile params
func (o *ProfileParams) WithTimeout(timeout time.Duration) *ProfileParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the profile params
func (o *ProfileParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the profile params
func (o *ProfileParams) WithContext(ctx context.Context) *ProfileParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the profile params
func (o *ProfileParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the profile params
func (o *ProfileParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the profile params
func (o *ProfileParams) WithHTTPClient(client *http.Client) *ProfileParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the profile params
func (o *ProfileParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the profile params
func (o *ProfileParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ProfileParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *ProfileParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
