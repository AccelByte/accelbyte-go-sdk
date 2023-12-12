// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package topic

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

// NewPublicGetMutedTopicsParams creates a new PublicGetMutedTopicsParams object
// with the default values initialized.
func NewPublicGetMutedTopicsParams() *PublicGetMutedTopicsParams {
	var ()
	return &PublicGetMutedTopicsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetMutedTopicsParamsWithTimeout creates a new PublicGetMutedTopicsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetMutedTopicsParamsWithTimeout(timeout time.Duration) *PublicGetMutedTopicsParams {
	var ()
	return &PublicGetMutedTopicsParams{

		timeout: timeout,
	}
}

// NewPublicGetMutedTopicsParamsWithContext creates a new PublicGetMutedTopicsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetMutedTopicsParamsWithContext(ctx context.Context) *PublicGetMutedTopicsParams {
	var ()
	return &PublicGetMutedTopicsParams{

		Context: ctx,
	}
}

// NewPublicGetMutedTopicsParamsWithHTTPClient creates a new PublicGetMutedTopicsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetMutedTopicsParamsWithHTTPClient(client *http.Client) *PublicGetMutedTopicsParams {
	var ()
	return &PublicGetMutedTopicsParams{
		HTTPClient: client,
	}
}

/*PublicGetMutedTopicsParams contains all the parameters to send to the API endpoint
for the public get muted topics operation typically these are written to a http.Request
*/
type PublicGetMutedTopicsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get muted topics params
func (o *PublicGetMutedTopicsParams) WithTimeout(timeout time.Duration) *PublicGetMutedTopicsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get muted topics params
func (o *PublicGetMutedTopicsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get muted topics params
func (o *PublicGetMutedTopicsParams) WithContext(ctx context.Context) *PublicGetMutedTopicsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get muted topics params
func (o *PublicGetMutedTopicsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get muted topics params
func (o *PublicGetMutedTopicsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get muted topics params
func (o *PublicGetMutedTopicsParams) WithHTTPClient(client *http.Client) *PublicGetMutedTopicsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get muted topics params
func (o *PublicGetMutedTopicsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get muted topics params
func (o *PublicGetMutedTopicsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get muted topics params
func (o *PublicGetMutedTopicsParams) WithNamespace(namespace string) *PublicGetMutedTopicsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get muted topics params
func (o *PublicGetMutedTopicsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetMutedTopicsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
