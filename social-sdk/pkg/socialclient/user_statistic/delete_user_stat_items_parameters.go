// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package user_statistic

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

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

// NewDeleteUserStatItemsParams creates a new DeleteUserStatItemsParams object
// with the default values initialized.
func NewDeleteUserStatItemsParams() *DeleteUserStatItemsParams {
	var ()
	return &DeleteUserStatItemsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserStatItemsParamsWithTimeout creates a new DeleteUserStatItemsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserStatItemsParamsWithTimeout(timeout time.Duration) *DeleteUserStatItemsParams {
	var ()
	return &DeleteUserStatItemsParams{

		timeout: timeout,
	}
}

// NewDeleteUserStatItemsParamsWithContext creates a new DeleteUserStatItemsParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserStatItemsParamsWithContext(ctx context.Context) *DeleteUserStatItemsParams {
	var ()
	return &DeleteUserStatItemsParams{

		Context: ctx,
	}
}

// NewDeleteUserStatItemsParamsWithHTTPClient creates a new DeleteUserStatItemsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserStatItemsParamsWithHTTPClient(client *http.Client) *DeleteUserStatItemsParams {
	var ()
	return &DeleteUserStatItemsParams{
		HTTPClient: client,
	}
}

/*DeleteUserStatItemsParams contains all the parameters to send to the API endpoint
for the delete user stat items operation typically these are written to a http.Request
*/
type DeleteUserStatItemsParams struct {

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

// WithTimeout adds the timeout to the delete user stat items params
func (o *DeleteUserStatItemsParams) WithTimeout(timeout time.Duration) *DeleteUserStatItemsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user stat items params
func (o *DeleteUserStatItemsParams) WithContext(ctx context.Context) *DeleteUserStatItemsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user stat items params
func (o *DeleteUserStatItemsParams) WithHTTPClient(client *http.Client) *DeleteUserStatItemsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete user stat items params
func (o *DeleteUserStatItemsParams) WithNamespace(namespace string) *DeleteUserStatItemsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStatCode adds the statCode to the delete user stat items params
func (o *DeleteUserStatItemsParams) WithStatCode(statCode string) *DeleteUserStatItemsParams {
	o.SetStatCode(statCode)
	return o
}

// SetStatCode adds the statCode to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetStatCode(statCode string) {
	o.StatCode = statCode
}

// WithUserID adds the userID to the delete user stat items params
func (o *DeleteUserStatItemsParams) WithUserID(userID string) *DeleteUserStatItemsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user stat items params
func (o *DeleteUserStatItemsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserStatItemsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
