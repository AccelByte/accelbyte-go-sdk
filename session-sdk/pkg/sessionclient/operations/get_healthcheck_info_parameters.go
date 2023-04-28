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

// NewGetHealthcheckInfoParams creates a new GetHealthcheckInfoParams object
// with the default values initialized.
func NewGetHealthcheckInfoParams() *GetHealthcheckInfoParams {
	var ()
	return &GetHealthcheckInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetHealthcheckInfoParamsWithTimeout creates a new GetHealthcheckInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetHealthcheckInfoParamsWithTimeout(timeout time.Duration) *GetHealthcheckInfoParams {
	var ()
	return &GetHealthcheckInfoParams{

		timeout: timeout,
	}
}

// NewGetHealthcheckInfoParamsWithContext creates a new GetHealthcheckInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetHealthcheckInfoParamsWithContext(ctx context.Context) *GetHealthcheckInfoParams {
	var ()
	return &GetHealthcheckInfoParams{

		Context: ctx,
	}
}

// NewGetHealthcheckInfoParamsWithHTTPClient creates a new GetHealthcheckInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetHealthcheckInfoParamsWithHTTPClient(client *http.Client) *GetHealthcheckInfoParams {
	var ()
	return &GetHealthcheckInfoParams{
		HTTPClient: client,
	}
}

/*GetHealthcheckInfoParams contains all the parameters to send to the API endpoint
for the get healthcheck info operation typically these are written to a http.Request
*/
type GetHealthcheckInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get healthcheck info params
func (o *GetHealthcheckInfoParams) WithTimeout(timeout time.Duration) *GetHealthcheckInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get healthcheck info params
func (o *GetHealthcheckInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get healthcheck info params
func (o *GetHealthcheckInfoParams) WithContext(ctx context.Context) *GetHealthcheckInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get healthcheck info params
func (o *GetHealthcheckInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get healthcheck info params
func (o *GetHealthcheckInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get healthcheck info params
func (o *GetHealthcheckInfoParams) WithHTTPClient(client *http.Client) *GetHealthcheckInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get healthcheck info params
func (o *GetHealthcheckInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get healthcheck info params
func (o *GetHealthcheckInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetHealthcheckInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
