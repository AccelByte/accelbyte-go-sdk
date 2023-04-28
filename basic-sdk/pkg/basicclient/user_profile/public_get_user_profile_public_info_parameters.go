// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_profile

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

// NewPublicGetUserProfilePublicInfoParams creates a new PublicGetUserProfilePublicInfoParams object
// with the default values initialized.
func NewPublicGetUserProfilePublicInfoParams() *PublicGetUserProfilePublicInfoParams {
	var ()
	return &PublicGetUserProfilePublicInfoParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserProfilePublicInfoParamsWithTimeout creates a new PublicGetUserProfilePublicInfoParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserProfilePublicInfoParamsWithTimeout(timeout time.Duration) *PublicGetUserProfilePublicInfoParams {
	var ()
	return &PublicGetUserProfilePublicInfoParams{

		timeout: timeout,
	}
}

// NewPublicGetUserProfilePublicInfoParamsWithContext creates a new PublicGetUserProfilePublicInfoParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserProfilePublicInfoParamsWithContext(ctx context.Context) *PublicGetUserProfilePublicInfoParams {
	var ()
	return &PublicGetUserProfilePublicInfoParams{

		Context: ctx,
	}
}

// NewPublicGetUserProfilePublicInfoParamsWithHTTPClient creates a new PublicGetUserProfilePublicInfoParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserProfilePublicInfoParamsWithHTTPClient(client *http.Client) *PublicGetUserProfilePublicInfoParams {
	var ()
	return &PublicGetUserProfilePublicInfoParams{
		HTTPClient: client,
	}
}

/*PublicGetUserProfilePublicInfoParams contains all the parameters to send to the API endpoint
for the public get user profile public info operation typically these are written to a http.Request
*/
type PublicGetUserProfilePublicInfoParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  user's id, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) WithTimeout(timeout time.Duration) *PublicGetUserProfilePublicInfoParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) WithContext(ctx context.Context) *PublicGetUserProfilePublicInfoParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) WithHTTPClient(client *http.Client) *PublicGetUserProfilePublicInfoParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) WithNamespace(namespace string) *PublicGetUserProfilePublicInfoParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) WithUserID(userID string) *PublicGetUserProfilePublicInfoParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user profile public info params
func (o *PublicGetUserProfilePublicInfoParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserProfilePublicInfoParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
