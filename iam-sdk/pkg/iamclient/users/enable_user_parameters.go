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

// NewEnableUserParams creates a new EnableUserParams object
// with the default values initialized.
func NewEnableUserParams() *EnableUserParams {
	var ()
	return &EnableUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewEnableUserParamsWithTimeout creates a new EnableUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewEnableUserParamsWithTimeout(timeout time.Duration) *EnableUserParams {
	var ()
	return &EnableUserParams{

		timeout: timeout,
	}
}

// NewEnableUserParamsWithContext creates a new EnableUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewEnableUserParamsWithContext(ctx context.Context) *EnableUserParams {
	var ()
	return &EnableUserParams{

		Context: ctx,
	}
}

// NewEnableUserParamsWithHTTPClient creates a new EnableUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewEnableUserParamsWithHTTPClient(client *http.Client) *EnableUserParams {
	var ()
	return &EnableUserParams{
		HTTPClient: client,
	}
}

/*EnableUserParams contains all the parameters to send to the API endpoint
for the enable user operation typically these are written to a http.Request
*/
type EnableUserParams struct {

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

// WithTimeout adds the timeout to the enable user params
func (o *EnableUserParams) WithTimeout(timeout time.Duration) *EnableUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the enable user params
func (o *EnableUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the enable user params
func (o *EnableUserParams) WithContext(ctx context.Context) *EnableUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the enable user params
func (o *EnableUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the enable user params
func (o *EnableUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the enable user params
func (o *EnableUserParams) WithHTTPClient(client *http.Client) *EnableUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the enable user params
func (o *EnableUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the enable user params
func (o *EnableUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the enable user params
func (o *EnableUserParams) WithNamespace(namespace string) *EnableUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the enable user params
func (o *EnableUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the enable user params
func (o *EnableUserParams) WithUserID(userID string) *EnableUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the enable user params
func (o *EnableUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *EnableUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
