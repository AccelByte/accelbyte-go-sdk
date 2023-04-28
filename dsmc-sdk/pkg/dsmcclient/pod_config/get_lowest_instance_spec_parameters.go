// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package pod_config

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

// NewGetLowestInstanceSpecParams creates a new GetLowestInstanceSpecParams object
// with the default values initialized.
func NewGetLowestInstanceSpecParams() *GetLowestInstanceSpecParams {
	var ()
	return &GetLowestInstanceSpecParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetLowestInstanceSpecParamsWithTimeout creates a new GetLowestInstanceSpecParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetLowestInstanceSpecParamsWithTimeout(timeout time.Duration) *GetLowestInstanceSpecParams {
	var ()
	return &GetLowestInstanceSpecParams{

		timeout: timeout,
	}
}

// NewGetLowestInstanceSpecParamsWithContext creates a new GetLowestInstanceSpecParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetLowestInstanceSpecParamsWithContext(ctx context.Context) *GetLowestInstanceSpecParams {
	var ()
	return &GetLowestInstanceSpecParams{

		Context: ctx,
	}
}

// NewGetLowestInstanceSpecParamsWithHTTPClient creates a new GetLowestInstanceSpecParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetLowestInstanceSpecParamsWithHTTPClient(client *http.Client) *GetLowestInstanceSpecParams {
	var ()
	return &GetLowestInstanceSpecParams{
		HTTPClient: client,
	}
}

/*GetLowestInstanceSpecParams contains all the parameters to send to the API endpoint
for the get lowest instance spec operation typically these are written to a http.Request
*/
type GetLowestInstanceSpecParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) WithTimeout(timeout time.Duration) *GetLowestInstanceSpecParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) WithContext(ctx context.Context) *GetLowestInstanceSpecParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) WithHTTPClient(client *http.Client) *GetLowestInstanceSpecParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get lowest instance spec params
func (o *GetLowestInstanceSpecParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetLowestInstanceSpecParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
