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

// NewPublicDisableMyAuthenticatorV4Params creates a new PublicDisableMyAuthenticatorV4Params object
// with the default values initialized.
func NewPublicDisableMyAuthenticatorV4Params() *PublicDisableMyAuthenticatorV4Params {
	var ()
	return &PublicDisableMyAuthenticatorV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDisableMyAuthenticatorV4ParamsWithTimeout creates a new PublicDisableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDisableMyAuthenticatorV4ParamsWithTimeout(timeout time.Duration) *PublicDisableMyAuthenticatorV4Params {
	var ()
	return &PublicDisableMyAuthenticatorV4Params{

		timeout: timeout,
	}
}

// NewPublicDisableMyAuthenticatorV4ParamsWithContext creates a new PublicDisableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDisableMyAuthenticatorV4ParamsWithContext(ctx context.Context) *PublicDisableMyAuthenticatorV4Params {
	var ()
	return &PublicDisableMyAuthenticatorV4Params{

		Context: ctx,
	}
}

// NewPublicDisableMyAuthenticatorV4ParamsWithHTTPClient creates a new PublicDisableMyAuthenticatorV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDisableMyAuthenticatorV4ParamsWithHTTPClient(client *http.Client) *PublicDisableMyAuthenticatorV4Params {
	var ()
	return &PublicDisableMyAuthenticatorV4Params{
		HTTPClient: client,
	}
}

/*PublicDisableMyAuthenticatorV4Params contains all the parameters to send to the API endpoint
for the public disable my authenticator v4 operation typically these are written to a http.Request
*/
type PublicDisableMyAuthenticatorV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) WithTimeout(timeout time.Duration) *PublicDisableMyAuthenticatorV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) WithContext(ctx context.Context) *PublicDisableMyAuthenticatorV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) WithHTTPClient(client *http.Client) *PublicDisableMyAuthenticatorV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) WithNamespace(namespace string) *PublicDisableMyAuthenticatorV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public disable my authenticator v4 params
func (o *PublicDisableMyAuthenticatorV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDisableMyAuthenticatorV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
