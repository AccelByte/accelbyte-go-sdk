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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewGrantDaysToSubscriptionParams creates a new GrantDaysToSubscriptionParams object
// with the default values initialized.
func NewGrantDaysToSubscriptionParams() *GrantDaysToSubscriptionParams {
	var ()
	return &GrantDaysToSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGrantDaysToSubscriptionParamsWithTimeout creates a new GrantDaysToSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGrantDaysToSubscriptionParamsWithTimeout(timeout time.Duration) *GrantDaysToSubscriptionParams {
	var ()
	return &GrantDaysToSubscriptionParams{

		timeout: timeout,
	}
}

// NewGrantDaysToSubscriptionParamsWithContext creates a new GrantDaysToSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewGrantDaysToSubscriptionParamsWithContext(ctx context.Context) *GrantDaysToSubscriptionParams {
	var ()
	return &GrantDaysToSubscriptionParams{

		Context: ctx,
	}
}

// NewGrantDaysToSubscriptionParamsWithHTTPClient creates a new GrantDaysToSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGrantDaysToSubscriptionParamsWithHTTPClient(client *http.Client) *GrantDaysToSubscriptionParams {
	var ()
	return &GrantDaysToSubscriptionParams{
		HTTPClient: client,
	}
}

/*GrantDaysToSubscriptionParams contains all the parameters to send to the API endpoint
for the grant days to subscription operation typically these are written to a http.Request
*/
type GrantDaysToSubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.GrantSubscriptionDaysRequest
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

// WithTimeout adds the timeout to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) WithTimeout(timeout time.Duration) *GrantDaysToSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) WithContext(ctx context.Context) *GrantDaysToSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) WithHTTPClient(client *http.Client) *GrantDaysToSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GrantDaysToSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) WithBody(body *platformclientmodels.GrantSubscriptionDaysRequest) *GrantDaysToSubscriptionParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetBody(body *platformclientmodels.GrantSubscriptionDaysRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) WithNamespace(namespace string) *GrantDaysToSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) WithSubscriptionID(subscriptionID string) *GrantDaysToSubscriptionParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) WithUserID(userID string) *GrantDaysToSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the grant days to subscription params
func (o *GrantDaysToSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *GrantDaysToSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
