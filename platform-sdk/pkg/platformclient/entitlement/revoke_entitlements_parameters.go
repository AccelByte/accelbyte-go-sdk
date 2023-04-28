// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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

// NewRevokeEntitlementsParams creates a new RevokeEntitlementsParams object
// with the default values initialized.
func NewRevokeEntitlementsParams() *RevokeEntitlementsParams {
	var ()
	return &RevokeEntitlementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRevokeEntitlementsParamsWithTimeout creates a new RevokeEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRevokeEntitlementsParamsWithTimeout(timeout time.Duration) *RevokeEntitlementsParams {
	var ()
	return &RevokeEntitlementsParams{

		timeout: timeout,
	}
}

// NewRevokeEntitlementsParamsWithContext creates a new RevokeEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRevokeEntitlementsParamsWithContext(ctx context.Context) *RevokeEntitlementsParams {
	var ()
	return &RevokeEntitlementsParams{

		Context: ctx,
	}
}

// NewRevokeEntitlementsParamsWithHTTPClient creates a new RevokeEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRevokeEntitlementsParamsWithHTTPClient(client *http.Client) *RevokeEntitlementsParams {
	var ()
	return &RevokeEntitlementsParams{
		HTTPClient: client,
	}
}

/*RevokeEntitlementsParams contains all the parameters to send to the API endpoint
for the revoke entitlements operation typically these are written to a http.Request
*/
type RevokeEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body []string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the revoke entitlements params
func (o *RevokeEntitlementsParams) WithTimeout(timeout time.Duration) *RevokeEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the revoke entitlements params
func (o *RevokeEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the revoke entitlements params
func (o *RevokeEntitlementsParams) WithContext(ctx context.Context) *RevokeEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the revoke entitlements params
func (o *RevokeEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the revoke entitlements params
func (o *RevokeEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the revoke entitlements params
func (o *RevokeEntitlementsParams) WithHTTPClient(client *http.Client) *RevokeEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the revoke entitlements params
func (o *RevokeEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the revoke entitlements params
func (o *RevokeEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the revoke entitlements params
func (o *RevokeEntitlementsParams) WithBody(body []string) *RevokeEntitlementsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the revoke entitlements params
func (o *RevokeEntitlementsParams) SetBody(body []string) {
	o.Body = body
}

// WithNamespace adds the namespace to the revoke entitlements params
func (o *RevokeEntitlementsParams) WithNamespace(namespace string) *RevokeEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the revoke entitlements params
func (o *RevokeEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RevokeEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
