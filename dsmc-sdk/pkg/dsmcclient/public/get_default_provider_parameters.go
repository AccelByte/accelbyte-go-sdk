// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public

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

// NewGetDefaultProviderParams creates a new GetDefaultProviderParams object
// with the default values initialized.
func NewGetDefaultProviderParams() *GetDefaultProviderParams {
	var ()
	return &GetDefaultProviderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetDefaultProviderParamsWithTimeout creates a new GetDefaultProviderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetDefaultProviderParamsWithTimeout(timeout time.Duration) *GetDefaultProviderParams {
	var ()
	return &GetDefaultProviderParams{

		timeout: timeout,
	}
}

// NewGetDefaultProviderParamsWithContext creates a new GetDefaultProviderParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetDefaultProviderParamsWithContext(ctx context.Context) *GetDefaultProviderParams {
	var ()
	return &GetDefaultProviderParams{

		Context: ctx,
	}
}

// NewGetDefaultProviderParamsWithHTTPClient creates a new GetDefaultProviderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetDefaultProviderParamsWithHTTPClient(client *http.Client) *GetDefaultProviderParams {
	var ()
	return &GetDefaultProviderParams{
		HTTPClient: client,
	}
}

/*GetDefaultProviderParams contains all the parameters to send to the API endpoint
for the get default provider operation typically these are written to a http.Request
*/
type GetDefaultProviderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get default provider params
func (o *GetDefaultProviderParams) WithTimeout(timeout time.Duration) *GetDefaultProviderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get default provider params
func (o *GetDefaultProviderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get default provider params
func (o *GetDefaultProviderParams) WithContext(ctx context.Context) *GetDefaultProviderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get default provider params
func (o *GetDefaultProviderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get default provider params
func (o *GetDefaultProviderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get default provider params
func (o *GetDefaultProviderParams) WithHTTPClient(client *http.Client) *GetDefaultProviderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get default provider params
func (o *GetDefaultProviderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get default provider params
func (o *GetDefaultProviderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetDefaultProviderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
