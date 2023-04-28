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

// NewListProvidersByRegionParams creates a new ListProvidersByRegionParams object
// with the default values initialized.
func NewListProvidersByRegionParams() *ListProvidersByRegionParams {
	var ()
	return &ListProvidersByRegionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListProvidersByRegionParamsWithTimeout creates a new ListProvidersByRegionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListProvidersByRegionParamsWithTimeout(timeout time.Duration) *ListProvidersByRegionParams {
	var ()
	return &ListProvidersByRegionParams{

		timeout: timeout,
	}
}

// NewListProvidersByRegionParamsWithContext creates a new ListProvidersByRegionParams object
// with the default values initialized, and the ability to set a context for a request
func NewListProvidersByRegionParamsWithContext(ctx context.Context) *ListProvidersByRegionParams {
	var ()
	return &ListProvidersByRegionParams{

		Context: ctx,
	}
}

// NewListProvidersByRegionParamsWithHTTPClient creates a new ListProvidersByRegionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListProvidersByRegionParamsWithHTTPClient(client *http.Client) *ListProvidersByRegionParams {
	var ()
	return &ListProvidersByRegionParams{
		HTTPClient: client,
	}
}

/*ListProvidersByRegionParams contains all the parameters to send to the API endpoint
for the list providers by region operation typically these are written to a http.Request
*/
type ListProvidersByRegionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Region
	  region of the providers

	*/
	Region string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list providers by region params
func (o *ListProvidersByRegionParams) WithTimeout(timeout time.Duration) *ListProvidersByRegionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list providers by region params
func (o *ListProvidersByRegionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list providers by region params
func (o *ListProvidersByRegionParams) WithContext(ctx context.Context) *ListProvidersByRegionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list providers by region params
func (o *ListProvidersByRegionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list providers by region params
func (o *ListProvidersByRegionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list providers by region params
func (o *ListProvidersByRegionParams) WithHTTPClient(client *http.Client) *ListProvidersByRegionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list providers by region params
func (o *ListProvidersByRegionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list providers by region params
func (o *ListProvidersByRegionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithRegion adds the region to the list providers by region params
func (o *ListProvidersByRegionParams) WithRegion(region string) *ListProvidersByRegionParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the list providers by region params
func (o *ListProvidersByRegionParams) SetRegion(region string) {
	o.Region = region
}

// WriteToRequest writes these params to a swagger request
func (o *ListProvidersByRegionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param region
	if err := r.SetPathParam("region", o.Region); err != nil {
		return err
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
