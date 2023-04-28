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

// NewPublicDisableMyEmailV4Params creates a new PublicDisableMyEmailV4Params object
// with the default values initialized.
func NewPublicDisableMyEmailV4Params() *PublicDisableMyEmailV4Params {
	var ()
	return &PublicDisableMyEmailV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDisableMyEmailV4ParamsWithTimeout creates a new PublicDisableMyEmailV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDisableMyEmailV4ParamsWithTimeout(timeout time.Duration) *PublicDisableMyEmailV4Params {
	var ()
	return &PublicDisableMyEmailV4Params{

		timeout: timeout,
	}
}

// NewPublicDisableMyEmailV4ParamsWithContext creates a new PublicDisableMyEmailV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDisableMyEmailV4ParamsWithContext(ctx context.Context) *PublicDisableMyEmailV4Params {
	var ()
	return &PublicDisableMyEmailV4Params{

		Context: ctx,
	}
}

// NewPublicDisableMyEmailV4ParamsWithHTTPClient creates a new PublicDisableMyEmailV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDisableMyEmailV4ParamsWithHTTPClient(client *http.Client) *PublicDisableMyEmailV4Params {
	var ()
	return &PublicDisableMyEmailV4Params{
		HTTPClient: client,
	}
}

/*PublicDisableMyEmailV4Params contains all the parameters to send to the API endpoint
for the public disable my email v4 operation typically these are written to a http.Request
*/
type PublicDisableMyEmailV4Params struct {

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

// WithTimeout adds the timeout to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) WithTimeout(timeout time.Duration) *PublicDisableMyEmailV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) WithContext(ctx context.Context) *PublicDisableMyEmailV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) WithHTTPClient(client *http.Client) *PublicDisableMyEmailV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) WithNamespace(namespace string) *PublicDisableMyEmailV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public disable my email v4 params
func (o *PublicDisableMyEmailV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDisableMyEmailV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
