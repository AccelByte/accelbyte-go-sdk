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

// NewDeleteUserSubscriptionParams creates a new DeleteUserSubscriptionParams object
// with the default values initialized.
func NewDeleteUserSubscriptionParams() *DeleteUserSubscriptionParams {
	var ()
	return &DeleteUserSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteUserSubscriptionParamsWithTimeout creates a new DeleteUserSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteUserSubscriptionParamsWithTimeout(timeout time.Duration) *DeleteUserSubscriptionParams {
	var ()
	return &DeleteUserSubscriptionParams{

		timeout: timeout,
	}
}

// NewDeleteUserSubscriptionParamsWithContext creates a new DeleteUserSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteUserSubscriptionParamsWithContext(ctx context.Context) *DeleteUserSubscriptionParams {
	var ()
	return &DeleteUserSubscriptionParams{

		Context: ctx,
	}
}

// NewDeleteUserSubscriptionParamsWithHTTPClient creates a new DeleteUserSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteUserSubscriptionParamsWithHTTPClient(client *http.Client) *DeleteUserSubscriptionParams {
	var ()
	return &DeleteUserSubscriptionParams{
		HTTPClient: client,
	}
}

/*DeleteUserSubscriptionParams contains all the parameters to send to the API endpoint
for the delete user subscription operation typically these are written to a http.Request
*/
type DeleteUserSubscriptionParams struct {

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

// WithTimeout adds the timeout to the delete user subscription params
func (o *DeleteUserSubscriptionParams) WithTimeout(timeout time.Duration) *DeleteUserSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete user subscription params
func (o *DeleteUserSubscriptionParams) WithContext(ctx context.Context) *DeleteUserSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete user subscription params
func (o *DeleteUserSubscriptionParams) WithHTTPClient(client *http.Client) *DeleteUserSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteUserSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete user subscription params
func (o *DeleteUserSubscriptionParams) WithNamespace(namespace string) *DeleteUserSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the delete user subscription params
func (o *DeleteUserSubscriptionParams) WithSubscriptionID(subscriptionID string) *DeleteUserSubscriptionParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the delete user subscription params
func (o *DeleteUserSubscriptionParams) WithUserID(userID string) *DeleteUserSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete user subscription params
func (o *DeleteUserSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteUserSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
