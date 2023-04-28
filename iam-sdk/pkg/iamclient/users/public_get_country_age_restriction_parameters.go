// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicGetCountryAgeRestrictionParams creates a new PublicGetCountryAgeRestrictionParams object
// with the default values initialized.
func NewPublicGetCountryAgeRestrictionParams() *PublicGetCountryAgeRestrictionParams {
	var ()
	return &PublicGetCountryAgeRestrictionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetCountryAgeRestrictionParamsWithTimeout creates a new PublicGetCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetCountryAgeRestrictionParamsWithTimeout(timeout time.Duration) *PublicGetCountryAgeRestrictionParams {
	var ()
	return &PublicGetCountryAgeRestrictionParams{

		timeout: timeout,
	}
}

// NewPublicGetCountryAgeRestrictionParamsWithContext creates a new PublicGetCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetCountryAgeRestrictionParamsWithContext(ctx context.Context) *PublicGetCountryAgeRestrictionParams {
	var ()
	return &PublicGetCountryAgeRestrictionParams{

		Context: ctx,
	}
}

// NewPublicGetCountryAgeRestrictionParamsWithHTTPClient creates a new PublicGetCountryAgeRestrictionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetCountryAgeRestrictionParamsWithHTTPClient(client *http.Client) *PublicGetCountryAgeRestrictionParams {
	var ()
	return &PublicGetCountryAgeRestrictionParams{
		HTTPClient: client,
	}
}

/*PublicGetCountryAgeRestrictionParams contains all the parameters to send to the API endpoint
for the public get country age restriction operation typically these are written to a http.Request
*/
type PublicGetCountryAgeRestrictionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CountryCode
	  Country Code

	*/
	CountryCode string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) WithTimeout(timeout time.Duration) *PublicGetCountryAgeRestrictionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) WithContext(ctx context.Context) *PublicGetCountryAgeRestrictionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) WithHTTPClient(client *http.Client) *PublicGetCountryAgeRestrictionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCountryCode adds the countryCode to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) WithCountryCode(countryCode string) *PublicGetCountryAgeRestrictionParams {
	o.SetCountryCode(countryCode)
	return o
}

// SetCountryCode adds the countryCode to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) SetCountryCode(countryCode string) {
	o.CountryCode = countryCode
}

// WithNamespace adds the namespace to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) WithNamespace(namespace string) *PublicGetCountryAgeRestrictionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get country age restriction params
func (o *PublicGetCountryAgeRestrictionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetCountryAgeRestrictionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param countryCode
	if err := r.SetPathParam("countryCode", o.CountryCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
