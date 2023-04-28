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

// NewGetUserJusticePlatformAccountParams creates a new GetUserJusticePlatformAccountParams object
// with the default values initialized.
func NewGetUserJusticePlatformAccountParams() *GetUserJusticePlatformAccountParams {
	var ()
	return &GetUserJusticePlatformAccountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserJusticePlatformAccountParamsWithTimeout creates a new GetUserJusticePlatformAccountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserJusticePlatformAccountParamsWithTimeout(timeout time.Duration) *GetUserJusticePlatformAccountParams {
	var ()
	return &GetUserJusticePlatformAccountParams{

		timeout: timeout,
	}
}

// NewGetUserJusticePlatformAccountParamsWithContext creates a new GetUserJusticePlatformAccountParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserJusticePlatformAccountParamsWithContext(ctx context.Context) *GetUserJusticePlatformAccountParams {
	var ()
	return &GetUserJusticePlatformAccountParams{

		Context: ctx,
	}
}

// NewGetUserJusticePlatformAccountParamsWithHTTPClient creates a new GetUserJusticePlatformAccountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserJusticePlatformAccountParamsWithHTTPClient(client *http.Client) *GetUserJusticePlatformAccountParams {
	var ()
	return &GetUserJusticePlatformAccountParams{
		HTTPClient: client,
	}
}

/*GetUserJusticePlatformAccountParams contains all the parameters to send to the API endpoint
for the get user justice platform account operation typically these are written to a http.Request
*/
type GetUserJusticePlatformAccountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*TargetNamespace
	  The namespace where the user Justice platform account lives

	*/
	TargetNamespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) WithTimeout(timeout time.Duration) *GetUserJusticePlatformAccountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) WithContext(ctx context.Context) *GetUserJusticePlatformAccountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) WithHTTPClient(client *http.Client) *GetUserJusticePlatformAccountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) WithNamespace(namespace string) *GetUserJusticePlatformAccountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTargetNamespace adds the targetNamespace to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) WithTargetNamespace(targetNamespace string) *GetUserJusticePlatformAccountParams {
	o.SetTargetNamespace(targetNamespace)
	return o
}

// SetTargetNamespace adds the targetNamespace to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetTargetNamespace(targetNamespace string) {
	o.TargetNamespace = targetNamespace
}

// WithUserID adds the userID to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) WithUserID(userID string) *GetUserJusticePlatformAccountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user justice platform account params
func (o *GetUserJusticePlatformAccountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserJusticePlatformAccountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param targetNamespace
	if err := r.SetPathParam("targetNamespace", o.TargetNamespace); err != nil {
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
