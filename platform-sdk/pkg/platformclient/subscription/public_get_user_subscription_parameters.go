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

// NewPublicGetUserSubscriptionParams creates a new PublicGetUserSubscriptionParams object
// with the default values initialized.
func NewPublicGetUserSubscriptionParams() *PublicGetUserSubscriptionParams {
	var ()
	return &PublicGetUserSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserSubscriptionParamsWithTimeout creates a new PublicGetUserSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserSubscriptionParamsWithTimeout(timeout time.Duration) *PublicGetUserSubscriptionParams {
	var ()
	return &PublicGetUserSubscriptionParams{

		timeout: timeout,
	}
}

// NewPublicGetUserSubscriptionParamsWithContext creates a new PublicGetUserSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserSubscriptionParamsWithContext(ctx context.Context) *PublicGetUserSubscriptionParams {
	var ()
	return &PublicGetUserSubscriptionParams{

		Context: ctx,
	}
}

// NewPublicGetUserSubscriptionParamsWithHTTPClient creates a new PublicGetUserSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserSubscriptionParamsWithHTTPClient(client *http.Client) *PublicGetUserSubscriptionParams {
	var ()
	return &PublicGetUserSubscriptionParams{
		HTTPClient: client,
	}
}

/*PublicGetUserSubscriptionParams contains all the parameters to send to the API endpoint
for the public get user subscription operation typically these are written to a http.Request
*/
type PublicGetUserSubscriptionParams struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) WithTimeout(timeout time.Duration) *PublicGetUserSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) WithContext(ctx context.Context) *PublicGetUserSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) WithHTTPClient(client *http.Client) *PublicGetUserSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) WithNamespace(namespace string) *PublicGetUserSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) WithSubscriptionID(subscriptionID string) *PublicGetUserSubscriptionParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) WithUserID(userID string) *PublicGetUserSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user subscription params
func (o *PublicGetUserSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
