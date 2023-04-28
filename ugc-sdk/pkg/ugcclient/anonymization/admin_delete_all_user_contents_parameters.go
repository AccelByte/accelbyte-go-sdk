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

// NewAdminDeleteAllUserContentsParams creates a new AdminDeleteAllUserContentsParams object
// with the default values initialized.
func NewAdminDeleteAllUserContentsParams() *AdminDeleteAllUserContentsParams {
	var ()
	return &AdminDeleteAllUserContentsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteAllUserContentsParamsWithTimeout creates a new AdminDeleteAllUserContentsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteAllUserContentsParamsWithTimeout(timeout time.Duration) *AdminDeleteAllUserContentsParams {
	var ()
	return &AdminDeleteAllUserContentsParams{

		timeout: timeout,
	}
}

// NewAdminDeleteAllUserContentsParamsWithContext creates a new AdminDeleteAllUserContentsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteAllUserContentsParamsWithContext(ctx context.Context) *AdminDeleteAllUserContentsParams {
	var ()
	return &AdminDeleteAllUserContentsParams{

		Context: ctx,
	}
}

// NewAdminDeleteAllUserContentsParamsWithHTTPClient creates a new AdminDeleteAllUserContentsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteAllUserContentsParamsWithHTTPClient(client *http.Client) *AdminDeleteAllUserContentsParams {
	var ()
	return &AdminDeleteAllUserContentsParams{
		HTTPClient: client,
	}
}

/*AdminDeleteAllUserContentsParams contains all the parameters to send to the API endpoint
for the admin delete all user contents operation typically these are written to a http.Request
*/
type AdminDeleteAllUserContentsParams struct {

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

// WithTimeout adds the timeout to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) WithTimeout(timeout time.Duration) *AdminDeleteAllUserContentsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) WithContext(ctx context.Context) *AdminDeleteAllUserContentsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) WithHTTPClient(client *http.Client) *AdminDeleteAllUserContentsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) WithNamespace(namespace string) *AdminDeleteAllUserContentsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) WithUserID(userID string) *AdminDeleteAllUserContentsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin delete all user contents params
func (o *AdminDeleteAllUserContentsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteAllUserContentsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
