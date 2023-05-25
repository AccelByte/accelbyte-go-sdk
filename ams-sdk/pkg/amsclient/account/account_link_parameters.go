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

// NewAccountLinkParams creates a new AccountLinkParams object
// with the default values initialized.
func NewAccountLinkParams() *AccountLinkParams {
	var ()
	return &AccountLinkParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAccountLinkParamsWithTimeout creates a new AccountLinkParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAccountLinkParamsWithTimeout(timeout time.Duration) *AccountLinkParams {
	var ()
	return &AccountLinkParams{

		timeout: timeout,
	}
}

// NewAccountLinkParamsWithContext creates a new AccountLinkParams object
// with the default values initialized, and the ability to set a context for a request
func NewAccountLinkParamsWithContext(ctx context.Context) *AccountLinkParams {
	var ()
	return &AccountLinkParams{

		Context: ctx,
	}
}

// NewAccountLinkParamsWithHTTPClient creates a new AccountLinkParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAccountLinkParamsWithHTTPClient(client *http.Client) *AccountLinkParams {
	var ()
	return &AccountLinkParams{
		HTTPClient: client,
	}
}

/*AccountLinkParams contains all the parameters to send to the API endpoint
for the account link operation typically these are written to a http.Request
*/
type AccountLinkParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *amsclientmodels.APIAccountLinkRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the account link params
func (o *AccountLinkParams) WithTimeout(timeout time.Duration) *AccountLinkParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the account link params
func (o *AccountLinkParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the account link params
func (o *AccountLinkParams) WithContext(ctx context.Context) *AccountLinkParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the account link params
func (o *AccountLinkParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the account link params
func (o *AccountLinkParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the account link params
func (o *AccountLinkParams) WithHTTPClient(client *http.Client) *AccountLinkParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the account link params
func (o *AccountLinkParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the account link params
func (o *AccountLinkParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the account link params
func (o *AccountLinkParams) WithBody(body *amsclientmodels.APIAccountLinkRequest) *AccountLinkParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the account link params
func (o *AccountLinkParams) SetBody(body *amsclientmodels.APIAccountLinkRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the account link params
func (o *AccountLinkParams) WithNamespace(namespace string) *AccountLinkParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the account link params
func (o *AccountLinkParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AccountLinkParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
