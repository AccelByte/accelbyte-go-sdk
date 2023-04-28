// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package policies

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

// NewRetrievePoliciesParams creates a new RetrievePoliciesParams object
// with the default values initialized.
func NewRetrievePoliciesParams() *RetrievePoliciesParams {
	var ()
	return &RetrievePoliciesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRetrievePoliciesParamsWithTimeout creates a new RetrievePoliciesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRetrievePoliciesParamsWithTimeout(timeout time.Duration) *RetrievePoliciesParams {
	var ()
	return &RetrievePoliciesParams{

		timeout: timeout,
	}
}

// NewRetrievePoliciesParamsWithContext creates a new RetrievePoliciesParams object
// with the default values initialized, and the ability to set a context for a request
func NewRetrievePoliciesParamsWithContext(ctx context.Context) *RetrievePoliciesParams {
	var ()
	return &RetrievePoliciesParams{

		Context: ctx,
	}
}

// NewRetrievePoliciesParamsWithHTTPClient creates a new RetrievePoliciesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRetrievePoliciesParamsWithHTTPClient(client *http.Client) *RetrievePoliciesParams {
	var ()
	return &RetrievePoliciesParams{
		HTTPClient: client,
	}
}

/*RetrievePoliciesParams contains all the parameters to send to the API endpoint
for the retrieve policies operation typically these are written to a http.Request
*/
type RetrievePoliciesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CountryCode
	  Country Code

	*/
	CountryCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the retrieve policies params
func (o *RetrievePoliciesParams) WithTimeout(timeout time.Duration) *RetrievePoliciesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the retrieve policies params
func (o *RetrievePoliciesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the retrieve policies params
func (o *RetrievePoliciesParams) WithContext(ctx context.Context) *RetrievePoliciesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the retrieve policies params
func (o *RetrievePoliciesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the retrieve policies params
func (o *RetrievePoliciesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the retrieve policies params
func (o *RetrievePoliciesParams) WithHTTPClient(client *http.Client) *RetrievePoliciesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the retrieve policies params
func (o *RetrievePoliciesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the retrieve policies params
func (o *RetrievePoliciesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCountryCode adds the countryCode to the retrieve policies params
func (o *RetrievePoliciesParams) WithCountryCode(countryCode string) *RetrievePoliciesParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the retrieve policies params
func (o *RetrievePoliciesParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WriteToRequest writes these params to a swagger request
func (o *RetrievePoliciesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
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
