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

// NewCheckUserSubscriptionSubscribableByItemIDParams creates a new CheckUserSubscriptionSubscribableByItemIDParams object
// with the default values initialized.
func NewCheckUserSubscriptionSubscribableByItemIDParams() *CheckUserSubscriptionSubscribableByItemIDParams {
	var ()
	return &CheckUserSubscriptionSubscribableByItemIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckUserSubscriptionSubscribableByItemIDParamsWithTimeout creates a new CheckUserSubscriptionSubscribableByItemIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckUserSubscriptionSubscribableByItemIDParamsWithTimeout(timeout time.Duration) *CheckUserSubscriptionSubscribableByItemIDParams {
	var ()
	return &CheckUserSubscriptionSubscribableByItemIDParams{

		timeout: timeout,
	}
}

// NewCheckUserSubscriptionSubscribableByItemIDParamsWithContext creates a new CheckUserSubscriptionSubscribableByItemIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckUserSubscriptionSubscribableByItemIDParamsWithContext(ctx context.Context) *CheckUserSubscriptionSubscribableByItemIDParams {
	var ()
	return &CheckUserSubscriptionSubscribableByItemIDParams{

		Context: ctx,
	}
}

// NewCheckUserSubscriptionSubscribableByItemIDParamsWithHTTPClient creates a new CheckUserSubscriptionSubscribableByItemIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckUserSubscriptionSubscribableByItemIDParamsWithHTTPClient(client *http.Client) *CheckUserSubscriptionSubscribableByItemIDParams {
	var ()
	return &CheckUserSubscriptionSubscribableByItemIDParams{
		HTTPClient: client,
	}
}

/*CheckUserSubscriptionSubscribableByItemIDParams contains all the parameters to send to the API endpoint
for the check user subscription subscribable by item id operation typically these are written to a http.Request
*/
type CheckUserSubscriptionSubscribableByItemIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ItemID*/
	ItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) WithTimeout(timeout time.Duration) *CheckUserSubscriptionSubscribableByItemIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) WithContext(ctx context.Context) *CheckUserSubscriptionSubscribableByItemIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) WithHTTPClient(client *http.Client) *CheckUserSubscriptionSubscribableByItemIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) WithNamespace(namespace string) *CheckUserSubscriptionSubscribableByItemIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) WithUserID(userID string) *CheckUserSubscriptionSubscribableByItemIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithItemID adds the itemID to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) WithItemID(itemID string) *CheckUserSubscriptionSubscribableByItemIDParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the check user subscription subscribable by item id params
func (o *CheckUserSubscriptionSubscribableByItemIDParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *CheckUserSubscriptionSubscribableByItemIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param itemId
	qrItemID := o.ItemID
	qItemID := qrItemID
	if qItemID != "" {
		if err := r.SetQueryParam("itemId", qItemID); err != nil {
			return err
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
