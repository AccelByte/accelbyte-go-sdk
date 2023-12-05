// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/session-sdk/pkg/sessionclientmodels"
)

// NewGetSessionServerSecretParams creates a new GetSessionServerSecretParams object
// with the default values initialized.
func NewGetSessionServerSecretParams() *GetSessionServerSecretParams {
	var ()
	return &GetSessionServerSecretParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetSessionServerSecretParamsWithTimeout creates a new GetSessionServerSecretParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetSessionServerSecretParamsWithTimeout(timeout time.Duration) *GetSessionServerSecretParams {
	var ()
	return &GetSessionServerSecretParams{

		timeout: timeout,
	}
}

// NewGetSessionServerSecretParamsWithContext creates a new GetSessionServerSecretParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetSessionServerSecretParamsWithContext(ctx context.Context) *GetSessionServerSecretParams {
	var ()
	return &GetSessionServerSecretParams{

		Context: ctx,
	}
}

// NewGetSessionServerSecretParamsWithHTTPClient creates a new GetSessionServerSecretParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetSessionServerSecretParamsWithHTTPClient(client *http.Client) *GetSessionServerSecretParams {
	var ()
	return &GetSessionServerSecretParams{
		HTTPClient: client,
	}
}

/*GetSessionServerSecretParams contains all the parameters to send to the API endpoint
for the get session server secret operation typically these are written to a http.Request
*/
type GetSessionServerSecretParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsServerSecret
	/*Namespace
	  Namespace

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

// WithTimeout adds the timeout to the get session server secret params
func (o *GetSessionServerSecretParams) WithTimeout(timeout time.Duration) *GetSessionServerSecretParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get session server secret params
func (o *GetSessionServerSecretParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get session server secret params
func (o *GetSessionServerSecretParams) WithContext(ctx context.Context) *GetSessionServerSecretParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get session server secret params
func (o *GetSessionServerSecretParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get session server secret params
func (o *GetSessionServerSecretParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get session server secret params
func (o *GetSessionServerSecretParams) WithHTTPClient(client *http.Client) *GetSessionServerSecretParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get session server secret params
func (o *GetSessionServerSecretParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get session server secret params
func (o *GetSessionServerSecretParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the get session server secret params
func (o *GetSessionServerSecretParams) WithBody(body *sessionclientmodels.ApimodelsServerSecret) *GetSessionServerSecretParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the get session server secret params
func (o *GetSessionServerSecretParams) SetBody(body *sessionclientmodels.ApimodelsServerSecret) {
	o.Body = body
}

// WithNamespace adds the namespace to the get session server secret params
func (o *GetSessionServerSecretParams) WithNamespace(namespace string) *GetSessionServerSecretParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get session server secret params
func (o *GetSessionServerSecretParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the get session server secret params
func (o *GetSessionServerSecretParams) WithSessionID(sessionID string) *GetSessionServerSecretParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the get session server secret params
func (o *GetSessionServerSecretParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *GetSessionServerSecretParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param sessionId
	if err := r.SetPathParam("sessionId", o.SessionID); err != nil {
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
