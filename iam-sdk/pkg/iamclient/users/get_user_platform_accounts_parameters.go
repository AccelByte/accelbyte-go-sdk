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

// NewGetUserPlatformAccountsParams creates a new GetUserPlatformAccountsParams object
// with the default values initialized.
func NewGetUserPlatformAccountsParams() *GetUserPlatformAccountsParams {
	var ()
	return &GetUserPlatformAccountsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserPlatformAccountsParamsWithTimeout creates a new GetUserPlatformAccountsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserPlatformAccountsParamsWithTimeout(timeout time.Duration) *GetUserPlatformAccountsParams {
	var ()
	return &GetUserPlatformAccountsParams{

		timeout: timeout,
	}
}

// NewGetUserPlatformAccountsParamsWithContext creates a new GetUserPlatformAccountsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserPlatformAccountsParamsWithContext(ctx context.Context) *GetUserPlatformAccountsParams {
	var ()
	return &GetUserPlatformAccountsParams{

		Context: ctx,
	}
}

// NewGetUserPlatformAccountsParamsWithHTTPClient creates a new GetUserPlatformAccountsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserPlatformAccountsParamsWithHTTPClient(client *http.Client) *GetUserPlatformAccountsParams {
	var ()
	return &GetUserPlatformAccountsParams{
		HTTPClient: client,
	}
}

/*GetUserPlatformAccountsParams contains all the parameters to send to the API endpoint
for the get user platform accounts operation typically these are written to a http.Request
*/
type GetUserPlatformAccountsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

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

// WithTimeout adds the timeout to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) WithTimeout(timeout time.Duration) *GetUserPlatformAccountsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) WithContext(ctx context.Context) *GetUserPlatformAccountsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) WithHTTPClient(client *http.Client) *GetUserPlatformAccountsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) WithNamespace(namespace string) *GetUserPlatformAccountsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) WithUserID(userID string) *GetUserPlatformAccountsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user platform accounts params
func (o *GetUserPlatformAccountsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserPlatformAccountsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
