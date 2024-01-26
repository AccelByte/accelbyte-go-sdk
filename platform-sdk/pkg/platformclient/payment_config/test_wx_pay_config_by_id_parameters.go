// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_config

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

// NewTestWxPayConfigByIDParams creates a new TestWxPayConfigByIDParams object
// with the default values initialized.
func NewTestWxPayConfigByIDParams() *TestWxPayConfigByIDParams {
	var ()
	return &TestWxPayConfigByIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewTestWxPayConfigByIDParamsWithTimeout creates a new TestWxPayConfigByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestWxPayConfigByIDParamsWithTimeout(timeout time.Duration) *TestWxPayConfigByIDParams {
	var ()
	return &TestWxPayConfigByIDParams{

		timeout: timeout,
	}
}

// NewTestWxPayConfigByIDParamsWithContext creates a new TestWxPayConfigByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestWxPayConfigByIDParamsWithContext(ctx context.Context) *TestWxPayConfigByIDParams {
	var ()
	return &TestWxPayConfigByIDParams{

		Context: ctx,
	}
}

// NewTestWxPayConfigByIDParamsWithHTTPClient creates a new TestWxPayConfigByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestWxPayConfigByIDParamsWithHTTPClient(client *http.Client) *TestWxPayConfigByIDParams {
	var ()
	return &TestWxPayConfigByIDParams{
		HTTPClient: client,
	}
}

/*TestWxPayConfigByIDParams contains all the parameters to send to the API endpoint
for the test wx pay config by id operation typically these are written to a http.Request
*/
type TestWxPayConfigByIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) WithTimeout(timeout time.Duration) *TestWxPayConfigByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) WithContext(ctx context.Context) *TestWxPayConfigByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) WithHTTPClient(client *http.Client) *TestWxPayConfigByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TestWxPayConfigByIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) WithID(idVar string) *TestWxPayConfigByIDParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the test wx pay config by id params
func (o *TestWxPayConfigByIDParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *TestWxPayConfigByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
