// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// NewSyncSubscriptionParams creates a new SyncSubscriptionParams object
// with the default values initialized.
func NewSyncSubscriptionParams() *SyncSubscriptionParams {
	var ()
	return &SyncSubscriptionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncSubscriptionParamsWithTimeout creates a new SyncSubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncSubscriptionParamsWithTimeout(timeout time.Duration) *SyncSubscriptionParams {
	var ()
	return &SyncSubscriptionParams{

		timeout: timeout,
	}
}

// NewSyncSubscriptionParamsWithContext creates a new SyncSubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncSubscriptionParamsWithContext(ctx context.Context) *SyncSubscriptionParams {
	var ()
	return &SyncSubscriptionParams{

		Context: ctx,
	}
}

// NewSyncSubscriptionParamsWithHTTPClient creates a new SyncSubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncSubscriptionParamsWithHTTPClient(client *http.Client) *SyncSubscriptionParams {
	var ()
	return &SyncSubscriptionParams{
		HTTPClient: client,
	}
}

/*SyncSubscriptionParams contains all the parameters to send to the API endpoint
for the sync subscription operation typically these are written to a http.Request
*/
type SyncSubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the sync subscription params
func (o *SyncSubscriptionParams) WithTimeout(timeout time.Duration) *SyncSubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync subscription params
func (o *SyncSubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync subscription params
func (o *SyncSubscriptionParams) WithContext(ctx context.Context) *SyncSubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync subscription params
func (o *SyncSubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync subscription params
func (o *SyncSubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync subscription params
func (o *SyncSubscriptionParams) WithHTTPClient(client *http.Client) *SyncSubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync subscription params
func (o *SyncSubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync subscription params
func (o *SyncSubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncSubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the sync subscription params
func (o *SyncSubscriptionParams) WithID(idVar string) *SyncSubscriptionParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the sync subscription params
func (o *SyncSubscriptionParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the sync subscription params
func (o *SyncSubscriptionParams) WithNamespace(namespace string) *SyncSubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync subscription params
func (o *SyncSubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync subscription params
func (o *SyncSubscriptionParams) WithUserID(userID string) *SyncSubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync subscription params
func (o *SyncSubscriptionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncSubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
