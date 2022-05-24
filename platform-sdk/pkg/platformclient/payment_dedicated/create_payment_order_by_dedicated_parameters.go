// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package payment_dedicated

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewCreatePaymentOrderByDedicatedParams creates a new CreatePaymentOrderByDedicatedParams object
// with the default values initialized.
func NewCreatePaymentOrderByDedicatedParams() *CreatePaymentOrderByDedicatedParams {
	var ()
	return &CreatePaymentOrderByDedicatedParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreatePaymentOrderByDedicatedParamsWithTimeout creates a new CreatePaymentOrderByDedicatedParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreatePaymentOrderByDedicatedParamsWithTimeout(timeout time.Duration) *CreatePaymentOrderByDedicatedParams {
	var ()
	return &CreatePaymentOrderByDedicatedParams{

		timeout: timeout,
	}
}

// NewCreatePaymentOrderByDedicatedParamsWithContext creates a new CreatePaymentOrderByDedicatedParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreatePaymentOrderByDedicatedParamsWithContext(ctx context.Context) *CreatePaymentOrderByDedicatedParams {
	var ()
	return &CreatePaymentOrderByDedicatedParams{

		Context: ctx,
	}
}

// NewCreatePaymentOrderByDedicatedParamsWithHTTPClient creates a new CreatePaymentOrderByDedicatedParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreatePaymentOrderByDedicatedParamsWithHTTPClient(client *http.Client) *CreatePaymentOrderByDedicatedParams {
	var ()
	return &CreatePaymentOrderByDedicatedParams{
		HTTPClient: client,
	}
}

/*CreatePaymentOrderByDedicatedParams contains all the parameters to send to the API endpoint
for the create payment order by dedicated operation typically these are written to a http.Request
*/
type CreatePaymentOrderByDedicatedParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ExternalPaymentOrderCreate
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) WithTimeout(timeout time.Duration) *CreatePaymentOrderByDedicatedParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) WithContext(ctx context.Context) *CreatePaymentOrderByDedicatedParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) WithHTTPClient(client *http.Client) *CreatePaymentOrderByDedicatedParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) WithBody(body *platformclientmodels.ExternalPaymentOrderCreate) *CreatePaymentOrderByDedicatedParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) SetBody(body *platformclientmodels.ExternalPaymentOrderCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) WithNamespace(namespace string) *CreatePaymentOrderByDedicatedParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create payment order by dedicated params
func (o *CreatePaymentOrderByDedicatedParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CreatePaymentOrderByDedicatedParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
