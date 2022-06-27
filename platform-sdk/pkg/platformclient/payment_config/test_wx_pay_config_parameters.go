// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package payment_config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewTestWxPayConfigParams creates a new TestWxPayConfigParams object
// with the default values initialized.
func NewTestWxPayConfigParams() *TestWxPayConfigParams {
	var ()
	return &TestWxPayConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewTestWxPayConfigParamsWithTimeout creates a new TestWxPayConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewTestWxPayConfigParamsWithTimeout(timeout time.Duration) *TestWxPayConfigParams {
	var ()
	return &TestWxPayConfigParams{

		timeout: timeout,
	}
}

// NewTestWxPayConfigParamsWithContext creates a new TestWxPayConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewTestWxPayConfigParamsWithContext(ctx context.Context) *TestWxPayConfigParams {
	var ()
	return &TestWxPayConfigParams{

		Context: ctx,
	}
}

// NewTestWxPayConfigParamsWithHTTPClient creates a new TestWxPayConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewTestWxPayConfigParamsWithHTTPClient(client *http.Client) *TestWxPayConfigParams {
	var ()
	return &TestWxPayConfigParams{
		HTTPClient: client,
	}
}

/*TestWxPayConfigParams contains all the parameters to send to the API endpoint
for the test wx pay config operation typically these are written to a http.Request
*/
type TestWxPayConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.WxPayConfigRequest

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the test wx pay config params
func (o *TestWxPayConfigParams) WithTimeout(timeout time.Duration) *TestWxPayConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the test wx pay config params
func (o *TestWxPayConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the test wx pay config params
func (o *TestWxPayConfigParams) WithContext(ctx context.Context) *TestWxPayConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the test wx pay config params
func (o *TestWxPayConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the test wx pay config params
func (o *TestWxPayConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the test wx pay config params
func (o *TestWxPayConfigParams) WithHTTPClient(client *http.Client) *TestWxPayConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the test wx pay config params
func (o *TestWxPayConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the test wx pay config params
func (o *TestWxPayConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the test wx pay config params
func (o *TestWxPayConfigParams) WithBody(body *platformclientmodels.WxPayConfigRequest) *TestWxPayConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the test wx pay config params
func (o *TestWxPayConfigParams) SetBody(body *platformclientmodels.WxPayConfigRequest) {
	o.Body = body
}

// WriteToRequest writes these params to a swagger request
func (o *TestWxPayConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
