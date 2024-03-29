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
	"github.com/go-openapi/swag"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCancelSubscriptionParams creates a new CancelSubscriptionParams object
// with the default values initialized.
func NewCancelSubscriptionParams() *CancelSubscriptionParams {
	var (
		forceDefault = bool(false)
	)
	return &CancelSubscriptionParams{
		Force: &forceDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewCancelSubscriptionParamsWithTimeout creates a new CancelSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCancelSubscriptionParamsWithTimeout(timeout time.Duration) *CancelSubscriptionParams {
	var (
		forceDefault = bool(false)
	)
	return &CancelSubscriptionParams{
		Force: &forceDefault,

		timeout: timeout,
	}
}

// NewCancelSubscriptionParamsWithContext creates a new CancelSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewCancelSubscriptionParamsWithContext(ctx context.Context) *CancelSubscriptionParams {
	var (
		forceDefault = bool(false)
	)
	return &CancelSubscriptionParams{
		Force: &forceDefault,

		Context: ctx,
	}
}

// NewCancelSubscriptionParamsWithHTTPClient creates a new CancelSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCancelSubscriptionParamsWithHTTPClient(client *http.Client) *CancelSubscriptionParams {
	var (
		forceDefault = bool(false)
	)
	return &CancelSubscriptionParams{
		Force:      &forceDefault,
		HTTPClient: client,
	}
}

/*CancelSubscriptionParams contains all the parameters to send to the API endpoint
for the cancel subscription operation typically these are written to a http.Request
*/
type CancelSubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.CancelRequest
	/*Namespace*/
	Namespace string
	/*SubscriptionID*/
	SubscriptionID string
	/*UserID*/
	UserID string
	/*Force*/
	Force *bool

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the cancel subscription params
func (o *CancelSubscriptionParams) WithTimeout(timeout time.Duration) *CancelSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the cancel subscription params
func (o *CancelSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the cancel subscription params
func (o *CancelSubscriptionParams) WithContext(ctx context.Context) *CancelSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the cancel subscription params
func (o *CancelSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the cancel subscription params
func (o *CancelSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the cancel subscription params
func (o *CancelSubscriptionParams) WithHTTPClient(client *http.Client) *CancelSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the cancel subscription params
func (o *CancelSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the cancel subscription params
func (o *CancelSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CancelSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the cancel subscription params
func (o *CancelSubscriptionParams) WithBody(body *platformclientmodels.CancelRequest) *CancelSubscriptionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the cancel subscription params
func (o *CancelSubscriptionParams) SetBody(body *platformclientmodels.CancelRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the cancel subscription params
func (o *CancelSubscriptionParams) WithNamespace(namespace string) *CancelSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the cancel subscription params
func (o *CancelSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the cancel subscription params
func (o *CancelSubscriptionParams) WithSubscriptionID(subscriptionID string) *CancelSubscriptionParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the cancel subscription params
func (o *CancelSubscriptionParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the cancel subscription params
func (o *CancelSubscriptionParams) WithUserID(userID string) *CancelSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the cancel subscription params
func (o *CancelSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithForce adds the force to the cancel subscription params
func (o *CancelSubscriptionParams) WithForce(force *bool) *CancelSubscriptionParams {
	o.SetForce(force)
	return o
}

// SetForce adds the force to the cancel subscription params
func (o *CancelSubscriptionParams) SetForce(force *bool) {
	o.Force = force
}

// WriteToRequest writes these params to a swagger request
func (o *CancelSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

	if o.Force != nil {

		// query param force
		var qrForce bool
		if o.Force != nil {
			qrForce = *o.Force
		}
		qForce := swag.FormatBool(qrForce)
		if qForce != "" {
			if err := r.SetQueryParam("force", qForce); err != nil {
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
