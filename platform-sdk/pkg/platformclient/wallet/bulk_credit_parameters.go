// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package wallet

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

// NewBulkCreditParams creates a new BulkCreditParams object
// with the default values initialized.
func NewBulkCreditParams() *BulkCreditParams {
	var ()
	return &BulkCreditParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBulkCreditParamsWithTimeout creates a new BulkCreditParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBulkCreditParamsWithTimeout(timeout time.Duration) *BulkCreditParams {
	var ()
	return &BulkCreditParams{

		timeout: timeout,
	}
}

// NewBulkCreditParamsWithContext creates a new BulkCreditParams object
// with the default values initialized, and the ability to set a context for a request
func NewBulkCreditParamsWithContext(ctx context.Context) *BulkCreditParams {
	var ()
	return &BulkCreditParams{

		Context: ctx,
	}
}

// NewBulkCreditParamsWithHTTPClient creates a new BulkCreditParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBulkCreditParamsWithHTTPClient(client *http.Client) *BulkCreditParams {
	var ()
	return &BulkCreditParams{
		HTTPClient: client,
	}
}

/*BulkCreditParams contains all the parameters to send to the API endpoint
for the bulk credit operation typically these are written to a http.Request
*/
type BulkCreditParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []*platformclientmodels.BulkCreditRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the bulk credit params
func (o *BulkCreditParams) WithTimeout(timeout time.Duration) *BulkCreditParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the bulk credit params
func (o *BulkCreditParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the bulk credit params
func (o *BulkCreditParams) WithContext(ctx context.Context) *BulkCreditParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the bulk credit params
func (o *BulkCreditParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the bulk credit params
func (o *BulkCreditParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the bulk credit params
func (o *BulkCreditParams) WithHTTPClient(client *http.Client) *BulkCreditParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the bulk credit params
func (o *BulkCreditParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the bulk credit params
func (o *BulkCreditParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the bulk credit params
func (o *BulkCreditParams) WithBody(body []*platformclientmodels.BulkCreditRequest) *BulkCreditParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the bulk credit params
func (o *BulkCreditParams) SetBody(body []*platformclientmodels.BulkCreditRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the bulk credit params
func (o *BulkCreditParams) WithNamespace(namespace string) *BulkCreditParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the bulk credit params
func (o *BulkCreditParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BulkCreditParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
