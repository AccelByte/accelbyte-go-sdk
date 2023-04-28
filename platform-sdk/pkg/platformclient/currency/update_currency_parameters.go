// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package currency

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateCurrencyParams creates a new UpdateCurrencyParams object
// with the default values initialized.
func NewUpdateCurrencyParams() *UpdateCurrencyParams {
	var ()
	return &UpdateCurrencyParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateCurrencyParamsWithTimeout creates a new UpdateCurrencyParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateCurrencyParamsWithTimeout(timeout time.Duration) *UpdateCurrencyParams {
	var ()
	return &UpdateCurrencyParams{

		timeout: timeout,
	}
}

// NewUpdateCurrencyParamsWithContext creates a new UpdateCurrencyParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateCurrencyParamsWithContext(ctx context.Context) *UpdateCurrencyParams {
	var ()
	return &UpdateCurrencyParams{

		Context: ctx,
	}
}

// NewUpdateCurrencyParamsWithHTTPClient creates a new UpdateCurrencyParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateCurrencyParamsWithHTTPClient(client *http.Client) *UpdateCurrencyParams {
	var ()
	return &UpdateCurrencyParams{
		HTTPClient: client,
	}
}

/*UpdateCurrencyParams contains all the parameters to send to the API endpoint
for the update currency operation typically these are written to a http.Request
*/
type UpdateCurrencyParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CurrencyUpdate
	/*CurrencyCode
	  currencyCode

	*/
	CurrencyCode string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update currency params
func (o *UpdateCurrencyParams) WithTimeout(timeout time.Duration) *UpdateCurrencyParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update currency params
func (o *UpdateCurrencyParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update currency params
func (o *UpdateCurrencyParams) WithContext(ctx context.Context) *UpdateCurrencyParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update currency params
func (o *UpdateCurrencyParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update currency params
func (o *UpdateCurrencyParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update currency params
func (o *UpdateCurrencyParams) WithHTTPClient(client *http.Client) *UpdateCurrencyParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update currency params
func (o *UpdateCurrencyParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update currency params
func (o *UpdateCurrencyParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update currency params
func (o *UpdateCurrencyParams) WithBody(body *platformclientmodels.CurrencyUpdate) *UpdateCurrencyParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update currency params
func (o *UpdateCurrencyParams) SetBody(body *platformclientmodels.CurrencyUpdate) {
	o.Body = body
}

// WithCurrencyCode adds the currencyCode to the update currency params
func (o *UpdateCurrencyParams) WithCurrencyCode(currencyCode string) *UpdateCurrencyParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the update currency params
func (o *UpdateCurrencyParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the update currency params
func (o *UpdateCurrencyParams) WithNamespace(namespace string) *UpdateCurrencyParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update currency params
func (o *UpdateCurrencyParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateCurrencyParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
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
