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
	"github.com/go-openapi/swag"
)

// NewPublicGetUserBanParams creates a new PublicGetUserBanParams object
// with the default values initialized.
func NewPublicGetUserBanParams() *PublicGetUserBanParams {
	var ()
	return &PublicGetUserBanParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserBanParamsWithTimeout creates a new PublicGetUserBanParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserBanParamsWithTimeout(timeout time.Duration) *PublicGetUserBanParams {
	var ()
	return &PublicGetUserBanParams{

		timeout: timeout,
	}
}

// NewPublicGetUserBanParamsWithContext creates a new PublicGetUserBanParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserBanParamsWithContext(ctx context.Context) *PublicGetUserBanParams {
	var ()
	return &PublicGetUserBanParams{

		Context: ctx,
	}
}

// NewPublicGetUserBanParamsWithHTTPClient creates a new PublicGetUserBanParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserBanParamsWithHTTPClient(client *http.Client) *PublicGetUserBanParams {
	var ()
	return &PublicGetUserBanParams{
		HTTPClient: client,
	}
}

/*PublicGetUserBanParams contains all the parameters to send to the API endpoint
for the public get user ban operation typically these are written to a http.Request
*/
type PublicGetUserBanParams struct {

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
	/*ActiveOnly
	  Filter ban to only returns the active one

	*/
	ActiveOnly *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public get user ban params
func (o *PublicGetUserBanParams) WithTimeout(timeout time.Duration) *PublicGetUserBanParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user ban params
func (o *PublicGetUserBanParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user ban params
func (o *PublicGetUserBanParams) WithContext(ctx context.Context) *PublicGetUserBanParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user ban params
func (o *PublicGetUserBanParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user ban params
func (o *PublicGetUserBanParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user ban params
func (o *PublicGetUserBanParams) WithHTTPClient(client *http.Client) *PublicGetUserBanParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user ban params
func (o *PublicGetUserBanParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user ban params
func (o *PublicGetUserBanParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public get user ban params
func (o *PublicGetUserBanParams) WithNamespace(namespace string) *PublicGetUserBanParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user ban params
func (o *PublicGetUserBanParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user ban params
func (o *PublicGetUserBanParams) WithUserID(userID string) *PublicGetUserBanParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user ban params
func (o *PublicGetUserBanParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the public get user ban params
func (o *PublicGetUserBanParams) WithActiveOnly(activeOnly *bool) *PublicGetUserBanParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the public get user ban params
func (o *PublicGetUserBanParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserBanParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

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
