// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_statistic

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

// NewDeleteUserStatItems1Params creates a new DeleteUserStatItems1Params object
// with the default values initialized.
func NewDeleteUserStatItems1Params() *DeleteUserStatItems1Params {
	var ()
	return &DeleteUserStatItems1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserStatItems1ParamsWithTimeout creates a new DeleteUserStatItems1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserStatItems1ParamsWithTimeout(timeout time.Duration) *DeleteUserStatItems1Params {
	var ()
	return &DeleteUserStatItems1Params{

		timeout: timeout,
	}
}

// NewDeleteUserStatItems1ParamsWithContext creates a new DeleteUserStatItems1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserStatItems1ParamsWithContext(ctx context.Context) *DeleteUserStatItems1Params {
	var ()
	return &DeleteUserStatItems1Params{

		Context: ctx,
	}
}

// NewDeleteUserStatItems1ParamsWithHTTPClient creates a new DeleteUserStatItems1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserStatItems1ParamsWithHTTPClient(client *http.Client) *DeleteUserStatItems1Params {
	var ()
	return &DeleteUserStatItems1Params{
		HTTPClient: client,
	}
}

/*DeleteUserStatItems1Params contains all the parameters to send to the API endpoint
for the delete user stat items 1 operation typically these are written to a http.Request
*/
type DeleteUserStatItems1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*StatCode
	  stat code

	*/
	StatCode string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) WithTimeout(timeout time.Duration) *DeleteUserStatItems1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) WithContext(ctx context.Context) *DeleteUserStatItems1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) WithHTTPClient(client *http.Client) *DeleteUserStatItems1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) WithNamespace(namespace string) *DeleteUserStatItems1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) WithStatCode(statCode string) *DeleteUserStatItems1Params {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) WithUserID(userID string) *DeleteUserStatItems1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user stat items 1 params
func (o *DeleteUserStatItems1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserStatItems1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param statCode
	if err := r.SetPathParam("statCode", o.StatCode); err != nil {
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