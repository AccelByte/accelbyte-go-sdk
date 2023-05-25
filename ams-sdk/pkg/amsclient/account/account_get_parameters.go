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
)

// NewAccountGetParams creates a new AccountGetParams object
// with the default values initialized.
func NewAccountGetParams() *AccountGetParams {
	var ()
	return &AccountGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAccountGetParamsWithTimeout creates a new AccountGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAccountGetParamsWithTimeout(timeout time.Duration) *AccountGetParams {
	var ()
	return &AccountGetParams{

		timeout: timeout,
	}
}

// NewAccountGetParamsWithContext creates a new AccountGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewAccountGetParamsWithContext(ctx context.Context) *AccountGetParams {
	var ()
	return &AccountGetParams{

		Context: ctx,
	}
}

// NewAccountGetParamsWithHTTPClient creates a new AccountGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAccountGetParamsWithHTTPClient(client *http.Client) *AccountGetParams {
	var ()
	return &AccountGetParams{
		HTTPClient: client,
	}
}

/*AccountGetParams contains all the parameters to send to the API endpoint
for the account get operation typically these are written to a http.Request
*/
type AccountGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the account get params
func (o *AccountGetParams) WithTimeout(timeout time.Duration) *AccountGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the account get params
func (o *AccountGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the account get params
func (o *AccountGetParams) WithContext(ctx context.Context) *AccountGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the account get params
func (o *AccountGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the account get params
func (o *AccountGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the account get params
func (o *AccountGetParams) WithHTTPClient(client *http.Client) *AccountGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the account get params
func (o *AccountGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the account get params
func (o *AccountGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the account get params
func (o *AccountGetParams) WithNamespace(namespace string) *AccountGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the account get params
func (o *AccountGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AccountGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
