// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package misc

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

// NewPublicGetCountriesParams creates a new PublicGetCountriesParams object
// with the default values initialized.
func NewPublicGetCountriesParams() *PublicGetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &PublicGetCountriesParams{
		Lang: &langDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetCountriesParamsWithTimeout creates a new PublicGetCountriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetCountriesParamsWithTimeout(timeout time.Duration) *PublicGetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &PublicGetCountriesParams{
		Lang: &langDefault,

		timeout: timeout,
	}
}

// NewPublicGetCountriesParamsWithContext creates a new PublicGetCountriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetCountriesParamsWithContext(ctx context.Context) *PublicGetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &PublicGetCountriesParams{
		Lang: &langDefault,

		Context: ctx,
	}
}

// NewPublicGetCountriesParamsWithHTTPClient creates a new PublicGetCountriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetCountriesParamsWithHTTPClient(client *http.Client) *PublicGetCountriesParams {
	var (
		langDefault = string("en")
	)
	return &PublicGetCountriesParams{
		Lang:       &langDefault,
		HTTPClient: client,
	}
}

/*PublicGetCountriesParams contains all the parameters to send to the API endpoint
for the public get countries operation typically these are written to a http.Request
*/
type PublicGetCountriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*Lang
	  language value from language tag, allowed format: en, en-US

	*/
	Lang *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get countries params
func (o *PublicGetCountriesParams) WithTimeout(timeout time.Duration) *PublicGetCountriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get countries params
func (o *PublicGetCountriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get countries params
func (o *PublicGetCountriesParams) WithContext(ctx context.Context) *PublicGetCountriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get countries params
func (o *PublicGetCountriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get countries params
func (o *PublicGetCountriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get countries params
func (o *PublicGetCountriesParams) WithHTTPClient(client *http.Client) *PublicGetCountriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get countries params
func (o *PublicGetCountriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get countries params
func (o *PublicGetCountriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get countries params
func (o *PublicGetCountriesParams) WithNamespace(namespace string) *PublicGetCountriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get countries params
func (o *PublicGetCountriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLang adds the lang to the public get countries params
func (o *PublicGetCountriesParams) WithLang(lang *string) *PublicGetCountriesParams {
	o.SetLang(lang)
	return o
}

// SetLang adds the lang to the public get countries params
func (o *PublicGetCountriesParams) SetLang(lang *string) {
	o.Lang = lang
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetCountriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Lang != nil {

		// query param lang
		var qrLang string
		if o.Lang != nil {
			qrLang = *o.Lang
		}
		qLang := qrLang
		if qLang != "" {
			if err := r.SetQueryParam("lang", qLang); err != nil {
				return err
			}
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
