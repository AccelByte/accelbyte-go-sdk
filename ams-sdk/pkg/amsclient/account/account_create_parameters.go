// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package account

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ams-sdk/pkg/amsclientmodels"
)

// NewAccountCreateParams creates a new AccountCreateParams object
// with the default values initialized.
func NewAccountCreateParams() *AccountCreateParams {
	var ()
	return &AccountCreateParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAccountCreateParamsWithTimeout creates a new AccountCreateParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAccountCreateParamsWithTimeout(timeout time.Duration) *AccountCreateParams {
	var ()
	return &AccountCreateParams{

		timeout: timeout,
	}
}

// NewAccountCreateParamsWithContext creates a new AccountCreateParams object
// with the default values initialized, and the ability to set a context for a request
func NewAccountCreateParamsWithContext(ctx context.Context) *AccountCreateParams {
	var ()
	return &AccountCreateParams{

		Context: ctx,
	}
}

// NewAccountCreateParamsWithHTTPClient creates a new AccountCreateParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAccountCreateParamsWithHTTPClient(client *http.Client) *AccountCreateParams {
	var ()
	return &AccountCreateParams{
		HTTPClient: client,
	}
}

/*AccountCreateParams contains all the parameters to send to the API endpoint
for the account create operation typically these are written to a http.Request
*/
type AccountCreateParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIAccountCreateRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the account create params
func (o *AccountCreateParams) WithTimeout(timeout time.Duration) *AccountCreateParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the account create params
func (o *AccountCreateParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the account create params
func (o *AccountCreateParams) WithContext(ctx context.Context) *AccountCreateParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the account create params
func (o *AccountCreateParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the account create params
func (o *AccountCreateParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the account create params
func (o *AccountCreateParams) WithHTTPClient(client *http.Client) *AccountCreateParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the account create params
func (o *AccountCreateParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the account create params
func (o *AccountCreateParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the account create params
func (o *AccountCreateParams) WithBody(body *amsclientmodels.APIAccountCreateRequest) *AccountCreateParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the account create params
func (o *AccountCreateParams) SetBody(body *amsclientmodels.APIAccountCreateRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the account create params
func (o *AccountCreateParams) WithNamespace(namespace string) *AccountCreateParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the account create params
func (o *AccountCreateParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AccountCreateParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
