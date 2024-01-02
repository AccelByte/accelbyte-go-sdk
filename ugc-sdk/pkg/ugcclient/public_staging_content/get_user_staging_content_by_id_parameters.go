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

// NewGetUserStagingContentByIDParams creates a new GetUserStagingContentByIDParams object
// with the default values initialized.
func NewGetUserStagingContentByIDParams() *GetUserStagingContentByIDParams {
	var ()
	return &GetUserStagingContentByIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserStagingContentByIDParamsWithTimeout creates a new GetUserStagingContentByIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserStagingContentByIDParamsWithTimeout(timeout time.Duration) *GetUserStagingContentByIDParams {
	var ()
	return &GetUserStagingContentByIDParams{

		timeout: timeout,
	}
}

// NewGetUserStagingContentByIDParamsWithContext creates a new GetUserStagingContentByIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserStagingContentByIDParamsWithContext(ctx context.Context) *GetUserStagingContentByIDParams {
	var ()
	return &GetUserStagingContentByIDParams{

		Context: ctx,
	}
}

// NewGetUserStagingContentByIDParamsWithHTTPClient creates a new GetUserStagingContentByIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserStagingContentByIDParamsWithHTTPClient(client *http.Client) *GetUserStagingContentByIDParams {
	var ()
	return &GetUserStagingContentByIDParams{
		HTTPClient: client,
	}
}

/*GetUserStagingContentByIDParams contains all the parameters to send to the API endpoint
for the get user staging content by id operation typically these are written to a http.Request
*/
type GetUserStagingContentByIDParams struct {

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

// WithTimeout adds the timeout to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) WithTimeout(timeout time.Duration) *GetUserStagingContentByIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) WithContext(ctx context.Context) *GetUserStagingContentByIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) WithHTTPClient(client *http.Client) *GetUserStagingContentByIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) WithContentID(contentID string) *GetUserStagingContentByIDParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) WithNamespace(namespace string) *GetUserStagingContentByIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) WithUserID(userID string) *GetUserStagingContentByIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user staging content by id params
func (o *GetUserStagingContentByIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserStagingContentByIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
