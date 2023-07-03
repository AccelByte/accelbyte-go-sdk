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

// NewPublicPromoteGameSessionLeaderParams creates a new PublicPromoteGameSessionLeaderParams object
// with the default values initialized.
func NewPublicPromoteGameSessionLeaderParams() *PublicPromoteGameSessionLeaderParams {
	var ()
	return &PublicPromoteGameSessionLeaderParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicPromoteGameSessionLeaderParamsWithTimeout creates a new PublicPromoteGameSessionLeaderParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicPromoteGameSessionLeaderParamsWithTimeout(timeout time.Duration) *PublicPromoteGameSessionLeaderParams {
	var ()
	return &PublicPromoteGameSessionLeaderParams{

		timeout: timeout,
	}
}

// NewPublicPromoteGameSessionLeaderParamsWithContext creates a new PublicPromoteGameSessionLeaderParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicPromoteGameSessionLeaderParamsWithContext(ctx context.Context) *PublicPromoteGameSessionLeaderParams {
	var ()
	return &PublicPromoteGameSessionLeaderParams{

		Context: ctx,
	}
}

// NewPublicPromoteGameSessionLeaderParamsWithHTTPClient creates a new PublicPromoteGameSessionLeaderParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicPromoteGameSessionLeaderParamsWithHTTPClient(client *http.Client) *PublicPromoteGameSessionLeaderParams {
	var ()
	return &PublicPromoteGameSessionLeaderParams{
		HTTPClient: client,
	}
}

/*PublicPromoteGameSessionLeaderParams contains all the parameters to send to the API endpoint
for the public promote game session leader operation typically these are written to a http.Request
*/
type PublicPromoteGameSessionLeaderParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *sessionclientmodels.ApimodelsPromoteLeaderRequest
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

// WithTimeout adds the timeout to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) WithTimeout(timeout time.Duration) *PublicPromoteGameSessionLeaderParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) WithContext(ctx context.Context) *PublicPromoteGameSessionLeaderParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) WithHTTPClient(client *http.Client) *PublicPromoteGameSessionLeaderParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) WithBody(body *sessionclientmodels.ApimodelsPromoteLeaderRequest) *PublicPromoteGameSessionLeaderParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetBody(body *sessionclientmodels.ApimodelsPromoteLeaderRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) WithNamespace(namespace string) *PublicPromoteGameSessionLeaderParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) WithSessionID(sessionID string) *PublicPromoteGameSessionLeaderParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public promote game session leader params
func (o *PublicPromoteGameSessionLeaderParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicPromoteGameSessionLeaderParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
