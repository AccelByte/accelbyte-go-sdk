// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewDeleteUserParams creates a new DeleteUserParams object
// with the default values initialized.
func NewDeleteUserParams() *DeleteUserParams {
	var ()
	return &DeleteUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserParamsWithTimeout creates a new DeleteUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserParamsWithTimeout(timeout time.Duration) *DeleteUserParams {
	var ()
	return &DeleteUserParams{

		timeout: timeout,
	}
}

// NewDeleteUserParamsWithContext creates a new DeleteUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserParamsWithContext(ctx context.Context) *DeleteUserParams {
	var ()
	return &DeleteUserParams{

		Context: ctx,
	}
}

// NewDeleteUserParamsWithHTTPClient creates a new DeleteUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserParamsWithHTTPClient(client *http.Client) *DeleteUserParams {
	var ()
	return &DeleteUserParams{
		HTTPClient: client,
	}
}

/*DeleteUserParams contains all the parameters to send to the API endpoint
for the delete user operation typically these are written to a http.Request
*/
type DeleteUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete user params
func (o *DeleteUserParams) WithTimeout(timeout time.Duration) *DeleteUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user params
func (o *DeleteUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user params
func (o *DeleteUserParams) WithContext(ctx context.Context) *DeleteUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user params
func (o *DeleteUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user params
func (o *DeleteUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user params
func (o *DeleteUserParams) WithHTTPClient(client *http.Client) *DeleteUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user params
func (o *DeleteUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user params
func (o *DeleteUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete user params
func (o *DeleteUserParams) WithNamespace(namespace string) *DeleteUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user params
func (o *DeleteUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user params
func (o *DeleteUserParams) WithUserID(userID string) *DeleteUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user params
func (o *DeleteUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
