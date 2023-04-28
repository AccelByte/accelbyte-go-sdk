// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// NewListConfigParams creates a new ListConfigParams object
// with the default values initialized.
func NewListConfigParams() *ListConfigParams {
	var ()
	return &ListConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListConfigParamsWithTimeout creates a new ListConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListConfigParamsWithTimeout(timeout time.Duration) *ListConfigParams {
	var ()
	return &ListConfigParams{

		timeout: timeout,
	}
}

// NewListConfigParamsWithContext creates a new ListConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewListConfigParamsWithContext(ctx context.Context) *ListConfigParams {
	var ()
	return &ListConfigParams{

		Context: ctx,
	}
}

// NewListConfigParamsWithHTTPClient creates a new ListConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListConfigParamsWithHTTPClient(client *http.Client) *ListConfigParams {
	var ()
	return &ListConfigParams{
		HTTPClient: client,
	}
}

/*ListConfigParams contains all the parameters to send to the API endpoint
for the list config operation typically these are written to a http.Request
*/
type ListConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list config params
func (o *ListConfigParams) WithTimeout(timeout time.Duration) *ListConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list config params
func (o *ListConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list config params
func (o *ListConfigParams) WithContext(ctx context.Context) *ListConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list config params
func (o *ListConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list config params
func (o *ListConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list config params
func (o *ListConfigParams) WithHTTPClient(client *http.Client) *ListConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list config params
func (o *ListConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list config params
func (o *ListConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *ListConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
