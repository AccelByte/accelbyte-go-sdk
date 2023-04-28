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

// NewProcessUserSubscriptionNotificationParams creates a new ProcessUserSubscriptionNotificationParams object
// with the default values initialized.
func NewProcessUserSubscriptionNotificationParams() *ProcessUserSubscriptionNotificationParams {
	var ()
	return &ProcessUserSubscriptionNotificationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewProcessUserSubscriptionNotificationParamsWithTimeout creates a new ProcessUserSubscriptionNotificationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewProcessUserSubscriptionNotificationParamsWithTimeout(timeout time.Duration) *ProcessUserSubscriptionNotificationParams {
	var ()
	return &ProcessUserSubscriptionNotificationParams{

		timeout: timeout,
	}
}

// NewProcessUserSubscriptionNotificationParamsWithContext creates a new ProcessUserSubscriptionNotificationParams object
// with the default values initialized, and the ability to set a context for a request
func NewProcessUserSubscriptionNotificationParamsWithContext(ctx context.Context) *ProcessUserSubscriptionNotificationParams {
	var ()
	return &ProcessUserSubscriptionNotificationParams{

		Context: ctx,
	}
}

// NewProcessUserSubscriptionNotificationParamsWithHTTPClient creates a new ProcessUserSubscriptionNotificationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewProcessUserSubscriptionNotificationParamsWithHTTPClient(client *http.Client) *ProcessUserSubscriptionNotificationParams {
	var ()
	return &ProcessUserSubscriptionNotificationParams{
		HTTPClient: client,
	}
}

/*ProcessUserSubscriptionNotificationParams contains all the parameters to send to the API endpoint
for the process user subscription notification operation typically these are written to a http.Request
*/
type ProcessUserSubscriptionNotificationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TradeNotification
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

// WithTimeout adds the timeout to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) WithTimeout(timeout time.Duration) *ProcessUserSubscriptionNotificationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) WithContext(ctx context.Context) *ProcessUserSubscriptionNotificationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) WithHTTPClient(client *http.Client) *ProcessUserSubscriptionNotificationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) WithBody(body *platformclientmodels.TradeNotification) *ProcessUserSubscriptionNotificationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetBody(body *platformclientmodels.TradeNotification) {
	o.Body = body
}

// WithNamespace adds the namespace to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) WithNamespace(namespace string) *ProcessUserSubscriptionNotificationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) WithSubscriptionID(subscriptionID string) *ProcessUserSubscriptionNotificationParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) WithUserID(userID string) *ProcessUserSubscriptionNotificationParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the process user subscription notification params
func (o *ProcessUserSubscriptionNotificationParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ProcessUserSubscriptionNotificationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
