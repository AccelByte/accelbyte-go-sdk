// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session

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

// NewAdminDeleteSessionParams creates a new AdminDeleteSessionParams object
// with the default values initialized.
func NewAdminDeleteSessionParams() *AdminDeleteSessionParams {
	var ()
	return &AdminDeleteSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteSessionParamsWithTimeout creates a new AdminDeleteSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteSessionParamsWithTimeout(timeout time.Duration) *AdminDeleteSessionParams {
	var ()
	return &AdminDeleteSessionParams{

		timeout: timeout,
	}
}

// NewAdminDeleteSessionParamsWithContext creates a new AdminDeleteSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteSessionParamsWithContext(ctx context.Context) *AdminDeleteSessionParams {
	var ()
	return &AdminDeleteSessionParams{

		Context: ctx,
	}
}

// NewAdminDeleteSessionParamsWithHTTPClient creates a new AdminDeleteSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteSessionParamsWithHTTPClient(client *http.Client) *AdminDeleteSessionParams {
	var ()
	return &AdminDeleteSessionParams{
		HTTPClient: client,
	}
}

/*AdminDeleteSessionParams contains all the parameters to send to the API endpoint
for the admin delete session operation typically these are written to a http.Request
*/
type AdminDeleteSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*SessionID
	  session ID

	*/
	SessionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin delete session params
func (o *AdminDeleteSessionParams) WithTimeout(timeout time.Duration) *AdminDeleteSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete session params
func (o *AdminDeleteSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete session params
func (o *AdminDeleteSessionParams) WithContext(ctx context.Context) *AdminDeleteSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete session params
func (o *AdminDeleteSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete session params
func (o *AdminDeleteSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete session params
func (o *AdminDeleteSessionParams) WithHTTPClient(client *http.Client) *AdminDeleteSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete session params
func (o *AdminDeleteSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete session params
func (o *AdminDeleteSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin delete session params
func (o *AdminDeleteSessionParams) WithNamespace(namespace string) *AdminDeleteSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete session params
func (o *AdminDeleteSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the admin delete session params
func (o *AdminDeleteSessionParams) WithSessionID(sessionID string) *AdminDeleteSessionParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the admin delete session params
func (o *AdminDeleteSessionParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param sessionID
	if err := r.SetPathParam("sessionID", o.SessionID); err != nil {
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
