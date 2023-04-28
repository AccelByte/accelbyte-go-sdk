// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package anonymization

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

// NewDeleteAllUserStatesParams creates a new DeleteAllUserStatesParams object
// with the default values initialized.
func NewDeleteAllUserStatesParams() *DeleteAllUserStatesParams {
	var ()
	return &DeleteAllUserStatesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteAllUserStatesParamsWithTimeout creates a new DeleteAllUserStatesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteAllUserStatesParamsWithTimeout(timeout time.Duration) *DeleteAllUserStatesParams {
	var ()
	return &DeleteAllUserStatesParams{

		timeout: timeout,
	}
}

// NewDeleteAllUserStatesParamsWithContext creates a new DeleteAllUserStatesParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteAllUserStatesParamsWithContext(ctx context.Context) *DeleteAllUserStatesParams {
	var ()
	return &DeleteAllUserStatesParams{

		Context: ctx,
	}
}

// NewDeleteAllUserStatesParamsWithHTTPClient creates a new DeleteAllUserStatesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteAllUserStatesParamsWithHTTPClient(client *http.Client) *DeleteAllUserStatesParams {
	var ()
	return &DeleteAllUserStatesParams{
		HTTPClient: client,
	}
}

/*DeleteAllUserStatesParams contains all the parameters to send to the API endpoint
for the delete all user states operation typically these are written to a http.Request
*/
type DeleteAllUserStatesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete all user states params
func (o *DeleteAllUserStatesParams) WithTimeout(timeout time.Duration) *DeleteAllUserStatesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete all user states params
func (o *DeleteAllUserStatesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete all user states params
func (o *DeleteAllUserStatesParams) WithContext(ctx context.Context) *DeleteAllUserStatesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete all user states params
func (o *DeleteAllUserStatesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete all user states params
func (o *DeleteAllUserStatesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete all user states params
func (o *DeleteAllUserStatesParams) WithHTTPClient(client *http.Client) *DeleteAllUserStatesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete all user states params
func (o *DeleteAllUserStatesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete all user states params
func (o *DeleteAllUserStatesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete all user states params
func (o *DeleteAllUserStatesParams) WithNamespace(namespace string) *DeleteAllUserStatesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete all user states params
func (o *DeleteAllUserStatesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete all user states params
func (o *DeleteAllUserStatesParams) WithUserID(userID string) *DeleteAllUserStatesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete all user states params
func (o *DeleteAllUserStatesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteAllUserStatesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
