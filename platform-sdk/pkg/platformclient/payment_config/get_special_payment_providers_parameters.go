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

// NewGetSpecialPaymentProvidersParams creates a new GetSpecialPaymentProvidersParams object
// with the default values initialized.
func NewGetSpecialPaymentProvidersParams() *GetSpecialPaymentProvidersParams {
	var ()
	return &GetSpecialPaymentProvidersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSpecialPaymentProvidersParamsWithTimeout creates a new GetSpecialPaymentProvidersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSpecialPaymentProvidersParamsWithTimeout(timeout time.Duration) *GetSpecialPaymentProvidersParams {
	var ()
	return &GetSpecialPaymentProvidersParams{

		timeout: timeout,
	}
}

// NewGetSpecialPaymentProvidersParamsWithContext creates a new GetSpecialPaymentProvidersParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSpecialPaymentProvidersParamsWithContext(ctx context.Context) *GetSpecialPaymentProvidersParams {
	var ()
	return &GetSpecialPaymentProvidersParams{

		Context: ctx,
	}
}

// NewGetSpecialPaymentProvidersParamsWithHTTPClient creates a new GetSpecialPaymentProvidersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSpecialPaymentProvidersParamsWithHTTPClient(client *http.Client) *GetSpecialPaymentProvidersParams {
	var ()
	return &GetSpecialPaymentProvidersParams{
		HTTPClient: client,
	}
}

/*GetSpecialPaymentProvidersParams contains all the parameters to send to the API endpoint
for the get special payment providers operation typically these are written to a http.Request
*/
type GetSpecialPaymentProvidersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) WithTimeout(timeout time.Duration) *GetSpecialPaymentProvidersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) WithContext(ctx context.Context) *GetSpecialPaymentProvidersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) WithHTTPClient(client *http.Client) *GetSpecialPaymentProvidersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get special payment providers params
func (o *GetSpecialPaymentProvidersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetSpecialPaymentProvidersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
