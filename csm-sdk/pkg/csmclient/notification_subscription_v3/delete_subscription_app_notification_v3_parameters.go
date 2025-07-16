// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package notification_subscription_v3

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

// NewDeleteSubscriptionAppNotificationV3Params creates a new DeleteSubscriptionAppNotificationV3Params object
// with the default values initialized.
func NewDeleteSubscriptionAppNotificationV3Params() *DeleteSubscriptionAppNotificationV3Params {
	var ()
	return &DeleteSubscriptionAppNotificationV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteSubscriptionAppNotificationV3ParamsWithTimeout creates a new DeleteSubscriptionAppNotificationV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteSubscriptionAppNotificationV3ParamsWithTimeout(timeout time.Duration) *DeleteSubscriptionAppNotificationV3Params {
	var ()
	return &DeleteSubscriptionAppNotificationV3Params{

		timeout: timeout,
	}
}

// NewDeleteSubscriptionAppNotificationV3ParamsWithContext creates a new DeleteSubscriptionAppNotificationV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteSubscriptionAppNotificationV3ParamsWithContext(ctx context.Context) *DeleteSubscriptionAppNotificationV3Params {
	var ()
	return &DeleteSubscriptionAppNotificationV3Params{

		Context: ctx,
	}
}

// NewDeleteSubscriptionAppNotificationV3ParamsWithHTTPClient creates a new DeleteSubscriptionAppNotificationV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteSubscriptionAppNotificationV3ParamsWithHTTPClient(client *http.Client) *DeleteSubscriptionAppNotificationV3Params {
	var ()
	return &DeleteSubscriptionAppNotificationV3Params{
		HTTPClient: client,
	}
}

/*DeleteSubscriptionAppNotificationV3Params contains all the parameters to send to the API endpoint
for the delete subscription app notification v3 operation typically these are written to a http.Request
*/
type DeleteSubscriptionAppNotificationV3Params struct {

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
	/*EmailAddress
	  emailAddress

	*/
	EmailAddress *string
	/*UserID
	  userID

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) WithTimeout(timeout time.Duration) *DeleteSubscriptionAppNotificationV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) WithContext(ctx context.Context) *DeleteSubscriptionAppNotificationV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) WithHTTPClient(client *http.Client) *DeleteSubscriptionAppNotificationV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteSubscriptionAppNotificationV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithApp adds the app to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) WithApp(app string) *DeleteSubscriptionAppNotificationV3Params {
	o.SetApp(app)
	return o
}

// SetApp adds the app to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetApp(app string) {
	o.App = app
}

// WithNamespace adds the namespace to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) WithNamespace(namespace string) *DeleteSubscriptionAppNotificationV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEmailAddress adds the emailAddress to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) WithEmailAddress(emailAddress *string) *DeleteSubscriptionAppNotificationV3Params {
	o.SetEmailAddress(emailAddress)
	return o
}

// SetEmailAddress adds the emailAddress to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetEmailAddress(emailAddress *string) {
	o.EmailAddress = emailAddress
}

// WithUserID adds the userID to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) WithUserID(userID *string) *DeleteSubscriptionAppNotificationV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the delete subscription app notification v3 params
func (o *DeleteSubscriptionAppNotificationV3Params) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteSubscriptionAppNotificationV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.EmailAddress != nil {

		// query param emailAddress
		var qrEmailAddress string
		if o.EmailAddress != nil {
			qrEmailAddress = *o.EmailAddress
		}
		qEmailAddress := qrEmailAddress
		if qEmailAddress != "" {
			if err := r.SetQueryParam("emailAddress", qEmailAddress); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
