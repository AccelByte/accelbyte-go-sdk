// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_staging_content

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

// NewDeleteUserStagingContentByIDParams creates a new DeleteUserStagingContentByIDParams object
// with the default values initialized.
func NewDeleteUserStagingContentByIDParams() *DeleteUserStagingContentByIDParams {
	var ()
	return &DeleteUserStagingContentByIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserStagingContentByIDParamsWithTimeout creates a new DeleteUserStagingContentByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserStagingContentByIDParamsWithTimeout(timeout time.Duration) *DeleteUserStagingContentByIDParams {
	var ()
	return &DeleteUserStagingContentByIDParams{

		timeout: timeout,
	}
}

// NewDeleteUserStagingContentByIDParamsWithContext creates a new DeleteUserStagingContentByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserStagingContentByIDParamsWithContext(ctx context.Context) *DeleteUserStagingContentByIDParams {
	var ()
	return &DeleteUserStagingContentByIDParams{

		Context: ctx,
	}
}

// NewDeleteUserStagingContentByIDParamsWithHTTPClient creates a new DeleteUserStagingContentByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserStagingContentByIDParamsWithHTTPClient(client *http.Client) *DeleteUserStagingContentByIDParams {
	var ()
	return &DeleteUserStagingContentByIDParams{
		HTTPClient: client,
	}
}

/*DeleteUserStagingContentByIDParams contains all the parameters to send to the API endpoint
for the delete user staging content by id operation typically these are written to a http.Request
*/
type DeleteUserStagingContentByIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
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

// WithTimeout adds the timeout to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) WithTimeout(timeout time.Duration) *DeleteUserStagingContentByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) WithContext(ctx context.Context) *DeleteUserStagingContentByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) WithHTTPClient(client *http.Client) *DeleteUserStagingContentByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) WithContentID(contentID string) *DeleteUserStagingContentByIDParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) WithNamespace(namespace string) *DeleteUserStagingContentByIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) WithUserID(userID string) *DeleteUserStagingContentByIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user staging content by id params
func (o *DeleteUserStagingContentByIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserStagingContentByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
		return err
	}

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
