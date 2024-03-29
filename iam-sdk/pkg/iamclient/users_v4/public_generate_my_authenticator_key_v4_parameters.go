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

// NewPublicGenerateMyAuthenticatorKeyV4Params creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized.
func NewPublicGenerateMyAuthenticatorKeyV4Params() *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGenerateMyAuthenticatorKeyV4ParamsWithTimeout creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGenerateMyAuthenticatorKeyV4ParamsWithTimeout(timeout time.Duration) *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{

		timeout: timeout,
	}
}

// NewPublicGenerateMyAuthenticatorKeyV4ParamsWithContext creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGenerateMyAuthenticatorKeyV4ParamsWithContext(ctx context.Context) *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{

		Context: ctx,
	}
}

// NewPublicGenerateMyAuthenticatorKeyV4ParamsWithHTTPClient creates a new PublicGenerateMyAuthenticatorKeyV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGenerateMyAuthenticatorKeyV4ParamsWithHTTPClient(client *http.Client) *PublicGenerateMyAuthenticatorKeyV4Params {
	var ()
	return &PublicGenerateMyAuthenticatorKeyV4Params{
		HTTPClient: client,
	}
}

/*PublicGenerateMyAuthenticatorKeyV4Params contains all the parameters to send to the API endpoint
for the public generate my authenticator key v4 operation typically these are written to a http.Request
*/
type PublicGenerateMyAuthenticatorKeyV4Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithTimeout(timeout time.Duration) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithContext(ctx context.Context) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithHTTPClient(client *http.Client) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WithNamespace(namespace string) *PublicGenerateMyAuthenticatorKeyV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public generate my authenticator key v4 params
func (o *PublicGenerateMyAuthenticatorKeyV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGenerateMyAuthenticatorKeyV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
