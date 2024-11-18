// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification_subscription

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

// NewDeleteSubscriptionAppNotificationV2Params creates a new DeleteSubscriptionAppNotificationV2Params object
// with the default values initialized.
func NewDeleteSubscriptionAppNotificationV2Params() *DeleteSubscriptionAppNotificationV2Params {
	var ()
	return &DeleteSubscriptionAppNotificationV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSubscriptionAppNotificationV2ParamsWithTimeout creates a new DeleteSubscriptionAppNotificationV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSubscriptionAppNotificationV2ParamsWithTimeout(timeout time.Duration) *DeleteSubscriptionAppNotificationV2Params {
	var ()
	return &DeleteSubscriptionAppNotificationV2Params{

		timeout: timeout,
	}
}

// NewDeleteSubscriptionAppNotificationV2ParamsWithContext creates a new DeleteSubscriptionAppNotificationV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSubscriptionAppNotificationV2ParamsWithContext(ctx context.Context) *DeleteSubscriptionAppNotificationV2Params {
	var ()
	return &DeleteSubscriptionAppNotificationV2Params{

		Context: ctx,
	}
}

// NewDeleteSubscriptionAppNotificationV2ParamsWithHTTPClient creates a new DeleteSubscriptionAppNotificationV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSubscriptionAppNotificationV2ParamsWithHTTPClient(client *http.Client) *DeleteSubscriptionAppNotificationV2Params {
	var ()
	return &DeleteSubscriptionAppNotificationV2Params{
		HTTPClient: client,
	}
}

/*DeleteSubscriptionAppNotificationV2Params contains all the parameters to send to the API endpoint
for the delete subscription app notification v2 operation typically these are written to a http.Request
*/
type DeleteSubscriptionAppNotificationV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*App
	  App Name

	*/
	App string
	/*Namespace
	  Game Namespace

	*/
	Namespace string
	/*SubscriptionID
	  Subscription ID

	*/
	SubscriptionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) WithTimeout(timeout time.Duration) *DeleteSubscriptionAppNotificationV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) WithContext(ctx context.Context) *DeleteSubscriptionAppNotificationV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) WithHTTPClient(client *http.Client) *DeleteSubscriptionAppNotificationV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSubscriptionAppNotificationV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) WithApp(app string) *DeleteSubscriptionAppNotificationV2Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) WithNamespace(namespace string) *DeleteSubscriptionAppNotificationV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) WithSubscriptionID(subscriptionID string) *DeleteSubscriptionAppNotificationV2Params {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the delete subscription app notification v2 params
func (o *DeleteSubscriptionAppNotificationV2Params) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSubscriptionAppNotificationV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param app
	if err := r.SetPathParam("app", o.App); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param subscriptionId
	if err := r.SetPathParam("subscriptionId", o.SubscriptionID); err != nil {
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
