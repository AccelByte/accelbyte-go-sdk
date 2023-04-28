// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewPublicMakeFactorMyDefaultV4Params creates a new PublicMakeFactorMyDefaultV4Params object
// with the default values initialized.
func NewPublicMakeFactorMyDefaultV4Params() *PublicMakeFactorMyDefaultV4Params {
	var ()
	return &PublicMakeFactorMyDefaultV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicMakeFactorMyDefaultV4ParamsWithTimeout creates a new PublicMakeFactorMyDefaultV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicMakeFactorMyDefaultV4ParamsWithTimeout(timeout time.Duration) *PublicMakeFactorMyDefaultV4Params {
	var ()
	return &PublicMakeFactorMyDefaultV4Params{

		timeout: timeout,
	}
}

// NewPublicMakeFactorMyDefaultV4ParamsWithContext creates a new PublicMakeFactorMyDefaultV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicMakeFactorMyDefaultV4ParamsWithContext(ctx context.Context) *PublicMakeFactorMyDefaultV4Params {
	var ()
	return &PublicMakeFactorMyDefaultV4Params{

		Context: ctx,
	}
}

// NewPublicMakeFactorMyDefaultV4ParamsWithHTTPClient creates a new PublicMakeFactorMyDefaultV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicMakeFactorMyDefaultV4ParamsWithHTTPClient(client *http.Client) *PublicMakeFactorMyDefaultV4Params {
	var ()
	return &PublicMakeFactorMyDefaultV4Params{
		HTTPClient: client,
	}
}

/*PublicMakeFactorMyDefaultV4Params contains all the parameters to send to the API endpoint
for the public make factor my default v4 operation typically these are written to a http.Request
*/
type PublicMakeFactorMyDefaultV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Factor
	  factor

	*/
	Factor string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) WithTimeout(timeout time.Duration) *PublicMakeFactorMyDefaultV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) WithContext(ctx context.Context) *PublicMakeFactorMyDefaultV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) WithHTTPClient(client *http.Client) *PublicMakeFactorMyDefaultV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithFactor adds the factor to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) WithFactor(factor string) *PublicMakeFactorMyDefaultV4Params {
	o.SetFactor(factor)
	return o
}

// SetFactor adds the factor to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) SetFactor(factor string) {
	o.Factor = factor
}

// WithNamespace adds the namespace to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) WithNamespace(namespace string) *PublicMakeFactorMyDefaultV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public make factor my default v4 params
func (o *PublicMakeFactorMyDefaultV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicMakeFactorMyDefaultV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param factor
	frFactor := o.Factor
	fFactor := frFactor
	if fFactor != "" {
		if err := r.SetFormParam("factor", fFactor); err != nil {
			return err
		}
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
