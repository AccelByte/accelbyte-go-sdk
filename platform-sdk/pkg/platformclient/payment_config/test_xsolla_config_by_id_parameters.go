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

// NewTestXsollaConfigByIDParams creates a new TestXsollaConfigByIDParams object
// with the default values initialized.
func NewTestXsollaConfigByIDParams() *TestXsollaConfigByIDParams {
	var ()
	return &TestXsollaConfigByIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewTestXsollaConfigByIDParamsWithTimeout creates a new TestXsollaConfigByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestXsollaConfigByIDParamsWithTimeout(timeout time.Duration) *TestXsollaConfigByIDParams {
	var ()
	return &TestXsollaConfigByIDParams{

		timeout: timeout,
	}
}

// NewTestXsollaConfigByIDParamsWithContext creates a new TestXsollaConfigByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestXsollaConfigByIDParamsWithContext(ctx context.Context) *TestXsollaConfigByIDParams {
	var ()
	return &TestXsollaConfigByIDParams{

		Context: ctx,
	}
}

// NewTestXsollaConfigByIDParamsWithHTTPClient creates a new TestXsollaConfigByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestXsollaConfigByIDParamsWithHTTPClient(client *http.Client) *TestXsollaConfigByIDParams {
	var ()
	return &TestXsollaConfigByIDParams{
		HTTPClient: client,
	}
}

/*TestXsollaConfigByIDParams contains all the parameters to send to the API endpoint
for the test xsolla config by id operation typically these are written to a http.Request
*/
type TestXsollaConfigByIDParams struct {

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

// WithTimeout adds the timeout to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) WithTimeout(timeout time.Duration) *TestXsollaConfigByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) WithContext(ctx context.Context) *TestXsollaConfigByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) WithHTTPClient(client *http.Client) *TestXsollaConfigByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *TestXsollaConfigByIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) WithID(idVar string) *TestXsollaConfigByIDParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the test xsolla config by id params
func (o *TestXsollaConfigByIDParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *TestXsollaConfigByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
