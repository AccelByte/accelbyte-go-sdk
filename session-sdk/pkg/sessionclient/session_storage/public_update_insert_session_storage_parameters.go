// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_storage

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

// NewPublicUpdateInsertSessionStorageParams creates a new PublicUpdateInsertSessionStorageParams object
// with the default values initialized.
func NewPublicUpdateInsertSessionStorageParams() *PublicUpdateInsertSessionStorageParams {
	var ()
	return &PublicUpdateInsertSessionStorageParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicUpdateInsertSessionStorageParamsWithTimeout creates a new PublicUpdateInsertSessionStorageParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicUpdateInsertSessionStorageParamsWithTimeout(timeout time.Duration) *PublicUpdateInsertSessionStorageParams {
	var ()
	return &PublicUpdateInsertSessionStorageParams{

		timeout: timeout,
	}
}

// NewPublicUpdateInsertSessionStorageParamsWithContext creates a new PublicUpdateInsertSessionStorageParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicUpdateInsertSessionStorageParamsWithContext(ctx context.Context) *PublicUpdateInsertSessionStorageParams {
	var ()
	return &PublicUpdateInsertSessionStorageParams{

		Context: ctx,
	}
}

// NewPublicUpdateInsertSessionStorageParamsWithHTTPClient creates a new PublicUpdateInsertSessionStorageParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicUpdateInsertSessionStorageParamsWithHTTPClient(client *http.Client) *PublicUpdateInsertSessionStorageParams {
	var ()
	return &PublicUpdateInsertSessionStorageParams{
		HTTPClient: client,
	}
}

/*PublicUpdateInsertSessionStorageParams contains all the parameters to send to the API endpoint
for the public update insert session storage operation typically these are written to a http.Request
*/
type PublicUpdateInsertSessionStorageParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body map[string]interface{}
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*SessionID
	  sessionID

	*/
	SessionID string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) WithTimeout(timeout time.Duration) *PublicUpdateInsertSessionStorageParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) WithContext(ctx context.Context) *PublicUpdateInsertSessionStorageParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) WithHTTPClient(client *http.Client) *PublicUpdateInsertSessionStorageParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) WithBody(body map[string]interface{}) *PublicUpdateInsertSessionStorageParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetBody(body map[string]interface{}) {
	o.Body = body
}

// WithNamespace adds the namespace to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) WithNamespace(namespace string) *PublicUpdateInsertSessionStorageParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSessionID adds the sessionID to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) WithSessionID(sessionID string) *PublicUpdateInsertSessionStorageParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetSessionID(sessionID string) {
	o.SessionID = sessionID
}

// WithUserID adds the userID to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) WithUserID(userID string) *PublicUpdateInsertSessionStorageParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public update insert session storage params
func (o *PublicUpdateInsertSessionStorageParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicUpdateInsertSessionStorageParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
