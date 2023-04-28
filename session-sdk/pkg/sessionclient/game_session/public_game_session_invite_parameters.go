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

// NewPublicGameSessionInviteParams creates a new PublicGameSessionInviteParams object
// with the default values initialized.
func NewPublicGameSessionInviteParams() *PublicGameSessionInviteParams {
	var ()
	return &PublicGameSessionInviteParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGameSessionInviteParamsWithTimeout creates a new PublicGameSessionInviteParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGameSessionInviteParamsWithTimeout(timeout time.Duration) *PublicGameSessionInviteParams {
	var ()
	return &PublicGameSessionInviteParams{

		timeout: timeout,
	}
}

// NewPublicGameSessionInviteParamsWithContext creates a new PublicGameSessionInviteParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGameSessionInviteParamsWithContext(ctx context.Context) *PublicGameSessionInviteParams {
	var ()
	return &PublicGameSessionInviteParams{

		Context: ctx,
	}
}

// NewPublicGameSessionInviteParamsWithHTTPClient creates a new PublicGameSessionInviteParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGameSessionInviteParamsWithHTTPClient(client *http.Client) *PublicGameSessionInviteParams {
	var ()
	return &PublicGameSessionInviteParams{
		HTTPClient: client,
	}
}

/*PublicGameSessionInviteParams contains all the parameters to send to the API endpoint
for the public game session invite operation typically these are written to a http.Request
*/
type PublicGameSessionInviteParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsSessionInviteRequest
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

// WithTimeout adds the timeout to the public game session invite params
func (o *PublicGameSessionInviteParams) WithTimeout(timeout time.Duration) *PublicGameSessionInviteParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public game session invite params
func (o *PublicGameSessionInviteParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public game session invite params
func (o *PublicGameSessionInviteParams) WithContext(ctx context.Context) *PublicGameSessionInviteParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public game session invite params
func (o *PublicGameSessionInviteParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public game session invite params
func (o *PublicGameSessionInviteParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public game session invite params
func (o *PublicGameSessionInviteParams) WithHTTPClient(client *http.Client) *PublicGameSessionInviteParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public game session invite params
func (o *PublicGameSessionInviteParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public game session invite params
func (o *PublicGameSessionInviteParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public game session invite params
func (o *PublicGameSessionInviteParams) WithBody(body *sessionclientmodels.ApimodelsSessionInviteRequest) *PublicGameSessionInviteParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public game session invite params
func (o *PublicGameSessionInviteParams) SetBody(body *sessionclientmodels.ApimodelsSessionInviteRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public game session invite params
func (o *PublicGameSessionInviteParams) WithNamespace(namespace string) *PublicGameSessionInviteParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public game session invite params
func (o *PublicGameSessionInviteParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public game session invite params
func (o *PublicGameSessionInviteParams) WithSessionID(sessionID string) *PublicGameSessionInviteParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public game session invite params
func (o *PublicGameSessionInviteParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGameSessionInviteParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
