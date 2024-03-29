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

// NewRecurringChargeSubscriptionParams creates a new RecurringChargeSubscriptionParams object
// with the default values initialized.
func NewRecurringChargeSubscriptionParams() *RecurringChargeSubscriptionParams {
	var ()
	return &RecurringChargeSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRecurringChargeSubscriptionParamsWithTimeout creates a new RecurringChargeSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRecurringChargeSubscriptionParamsWithTimeout(timeout time.Duration) *RecurringChargeSubscriptionParams {
	var ()
	return &RecurringChargeSubscriptionParams{

		timeout: timeout,
	}
}

// NewRecurringChargeSubscriptionParamsWithContext creates a new RecurringChargeSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewRecurringChargeSubscriptionParamsWithContext(ctx context.Context) *RecurringChargeSubscriptionParams {
	var ()
	return &RecurringChargeSubscriptionParams{

		Context: ctx,
	}
}

// NewRecurringChargeSubscriptionParamsWithHTTPClient creates a new RecurringChargeSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRecurringChargeSubscriptionParamsWithHTTPClient(client *http.Client) *RecurringChargeSubscriptionParams {
	var ()
	return &RecurringChargeSubscriptionParams{
		HTTPClient: client,
	}
}

/*RecurringChargeSubscriptionParams contains all the parameters to send to the API endpoint
for the recurring charge subscription operation typically these are written to a http.Request
*/
type RecurringChargeSubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SubscriptionID*/
	SubscriptionID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) WithTimeout(timeout time.Duration) *RecurringChargeSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) WithContext(ctx context.Context) *RecurringChargeSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) WithHTTPClient(client *http.Client) *RecurringChargeSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RecurringChargeSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) WithNamespace(namespace string) *RecurringChargeSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) WithSubscriptionID(subscriptionID string) *RecurringChargeSubscriptionParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the recurring charge subscription params
func (o *RecurringChargeSubscriptionParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WriteToRequest writes these params to a swagger request
func (o *RecurringChargeSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
