// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player

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

// NewPublicGetPlayerBlockedPlayersV1Params creates a new PublicGetPlayerBlockedPlayersV1Params object
// with the default values initialized.
func NewPublicGetPlayerBlockedPlayersV1Params() *PublicGetPlayerBlockedPlayersV1Params {
	var ()
	return &PublicGetPlayerBlockedPlayersV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetPlayerBlockedPlayersV1ParamsWithTimeout creates a new PublicGetPlayerBlockedPlayersV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetPlayerBlockedPlayersV1ParamsWithTimeout(timeout time.Duration) *PublicGetPlayerBlockedPlayersV1Params {
	var ()
	return &PublicGetPlayerBlockedPlayersV1Params{

		timeout: timeout,
	}
}

// NewPublicGetPlayerBlockedPlayersV1ParamsWithContext creates a new PublicGetPlayerBlockedPlayersV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetPlayerBlockedPlayersV1ParamsWithContext(ctx context.Context) *PublicGetPlayerBlockedPlayersV1Params {
	var ()
	return &PublicGetPlayerBlockedPlayersV1Params{

		Context: ctx,
	}
}

// NewPublicGetPlayerBlockedPlayersV1ParamsWithHTTPClient creates a new PublicGetPlayerBlockedPlayersV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetPlayerBlockedPlayersV1ParamsWithHTTPClient(client *http.Client) *PublicGetPlayerBlockedPlayersV1Params {
	var ()
	return &PublicGetPlayerBlockedPlayersV1Params{
		HTTPClient: client,
	}
}

/*PublicGetPlayerBlockedPlayersV1Params contains all the parameters to send to the API endpoint
for the public get player blocked players v1 operation typically these are written to a http.Request
*/
type PublicGetPlayerBlockedPlayersV1Params struct {

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

// WithTimeout adds the timeout to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) WithTimeout(timeout time.Duration) *PublicGetPlayerBlockedPlayersV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) WithContext(ctx context.Context) *PublicGetPlayerBlockedPlayersV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) WithHTTPClient(client *http.Client) *PublicGetPlayerBlockedPlayersV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) WithNamespace(namespace string) *PublicGetPlayerBlockedPlayersV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get player blocked players v1 params
func (o *PublicGetPlayerBlockedPlayersV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetPlayerBlockedPlayersV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
