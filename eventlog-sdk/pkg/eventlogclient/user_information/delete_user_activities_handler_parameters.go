// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_information

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

// NewDeleteUserActivitiesHandlerParams creates a new DeleteUserActivitiesHandlerParams object
// with the default values initialized.
func NewDeleteUserActivitiesHandlerParams() *DeleteUserActivitiesHandlerParams {
	var ()
	return &DeleteUserActivitiesHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserActivitiesHandlerParamsWithTimeout creates a new DeleteUserActivitiesHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserActivitiesHandlerParamsWithTimeout(timeout time.Duration) *DeleteUserActivitiesHandlerParams {
	var ()
	return &DeleteUserActivitiesHandlerParams{

		timeout: timeout,
	}
}

// NewDeleteUserActivitiesHandlerParamsWithContext creates a new DeleteUserActivitiesHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserActivitiesHandlerParamsWithContext(ctx context.Context) *DeleteUserActivitiesHandlerParams {
	var ()
	return &DeleteUserActivitiesHandlerParams{

		Context: ctx,
	}
}

// NewDeleteUserActivitiesHandlerParamsWithHTTPClient creates a new DeleteUserActivitiesHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserActivitiesHandlerParamsWithHTTPClient(client *http.Client) *DeleteUserActivitiesHandlerParams {
	var ()
	return &DeleteUserActivitiesHandlerParams{
		HTTPClient: client,
	}
}

/*DeleteUserActivitiesHandlerParams contains all the parameters to send to the API endpoint
for the delete user activities handler operation typically these are written to a http.Request
*/
type DeleteUserActivitiesHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) WithTimeout(timeout time.Duration) *DeleteUserActivitiesHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) WithContext(ctx context.Context) *DeleteUserActivitiesHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) WithHTTPClient(client *http.Client) *DeleteUserActivitiesHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) WithNamespace(namespace string) *DeleteUserActivitiesHandlerParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) WithUserID(userID string) *DeleteUserActivitiesHandlerParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user activities handler params
func (o *DeleteUserActivitiesHandlerParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserActivitiesHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
