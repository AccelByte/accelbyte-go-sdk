// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package subscription

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

// NewGetUserSubscriptionParams creates a new GetUserSubscriptionParams object
// with the default values initialized.
func NewGetUserSubscriptionParams() *GetUserSubscriptionParams {
	var ()
	return &GetUserSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserSubscriptionParamsWithTimeout creates a new GetUserSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserSubscriptionParamsWithTimeout(timeout time.Duration) *GetUserSubscriptionParams {
	var ()
	return &GetUserSubscriptionParams{

		timeout: timeout,
	}
}

// NewGetUserSubscriptionParamsWithContext creates a new GetUserSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserSubscriptionParamsWithContext(ctx context.Context) *GetUserSubscriptionParams {
	var ()
	return &GetUserSubscriptionParams{

		Context: ctx,
	}
}

// NewGetUserSubscriptionParamsWithHTTPClient creates a new GetUserSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserSubscriptionParamsWithHTTPClient(client *http.Client) *GetUserSubscriptionParams {
	var ()
	return &GetUserSubscriptionParams{
		HTTPClient: client,
	}
}

/*GetUserSubscriptionParams contains all the parameters to send to the API endpoint
for the get user subscription operation typically these are written to a http.Request
*/
type GetUserSubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SubscriptionID*/
	SubscriptionID string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user subscription params
func (o *GetUserSubscriptionParams) WithTimeout(timeout time.Duration) *GetUserSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user subscription params
func (o *GetUserSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user subscription params
func (o *GetUserSubscriptionParams) WithContext(ctx context.Context) *GetUserSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user subscription params
func (o *GetUserSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user subscription params
func (o *GetUserSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user subscription params
func (o *GetUserSubscriptionParams) WithHTTPClient(client *http.Client) *GetUserSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user subscription params
func (o *GetUserSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user subscription params
func (o *GetUserSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user subscription params
func (o *GetUserSubscriptionParams) WithNamespace(namespace string) *GetUserSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user subscription params
func (o *GetUserSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the get user subscription params
func (o *GetUserSubscriptionParams) WithSubscriptionID(subscriptionID string) *GetUserSubscriptionParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the get user subscription params
func (o *GetUserSubscriptionParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the get user subscription params
func (o *GetUserSubscriptionParams) WithUserID(userID string) *GetUserSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user subscription params
func (o *GetUserSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param subscriptionId
	if err := r.SetPathParam("subscriptionId", o.SubscriptionID); err != nil {
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
