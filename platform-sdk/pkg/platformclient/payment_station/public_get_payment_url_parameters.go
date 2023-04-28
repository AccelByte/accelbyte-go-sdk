// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_station

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

// NewPublicGetPaymentURLParams creates a new PublicGetPaymentURLParams object
// with the default values initialized.
func NewPublicGetPaymentURLParams() *PublicGetPaymentURLParams {
	var ()
	return &PublicGetPaymentURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetPaymentURLParamsWithTimeout creates a new PublicGetPaymentURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetPaymentURLParamsWithTimeout(timeout time.Duration) *PublicGetPaymentURLParams {
	var ()
	return &PublicGetPaymentURLParams{

		timeout: timeout,
	}
}

// NewPublicGetPaymentURLParamsWithContext creates a new PublicGetPaymentURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetPaymentURLParamsWithContext(ctx context.Context) *PublicGetPaymentURLParams {
	var ()
	return &PublicGetPaymentURLParams{

		Context: ctx,
	}
}

// NewPublicGetPaymentURLParamsWithHTTPClient creates a new PublicGetPaymentURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetPaymentURLParamsWithHTTPClient(client *http.Client) *PublicGetPaymentURLParams {
	var ()
	return &PublicGetPaymentURLParams{
		HTTPClient: client,
	}
}

/*PublicGetPaymentURLParams contains all the parameters to send to the API endpoint
for the public get payment url operation typically these are written to a http.Request
*/
type PublicGetPaymentURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.PaymentURLCreate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get payment url params
func (o *PublicGetPaymentURLParams) WithTimeout(timeout time.Duration) *PublicGetPaymentURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get payment url params
func (o *PublicGetPaymentURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get payment url params
func (o *PublicGetPaymentURLParams) WithContext(ctx context.Context) *PublicGetPaymentURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get payment url params
func (o *PublicGetPaymentURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get payment url params
func (o *PublicGetPaymentURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get payment url params
func (o *PublicGetPaymentURLParams) WithHTTPClient(client *http.Client) *PublicGetPaymentURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get payment url params
func (o *PublicGetPaymentURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get payment url params
func (o *PublicGetPaymentURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public get payment url params
func (o *PublicGetPaymentURLParams) WithBody(body *platformclientmodels.PaymentURLCreate) *PublicGetPaymentURLParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public get payment url params
func (o *PublicGetPaymentURLParams) SetBody(body *platformclientmodels.PaymentURLCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the public get payment url params
func (o *PublicGetPaymentURLParams) WithNamespace(namespace string) *PublicGetPaymentURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get payment url params
func (o *PublicGetPaymentURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetPaymentURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
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
