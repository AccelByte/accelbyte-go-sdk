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

// NewSyncSubscriptionTransactionParams creates a new SyncSubscriptionTransactionParams object
// with the default values initialized.
func NewSyncSubscriptionTransactionParams() *SyncSubscriptionTransactionParams {
	var ()
	return &SyncSubscriptionTransactionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncSubscriptionTransactionParamsWithTimeout creates a new SyncSubscriptionTransactionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncSubscriptionTransactionParamsWithTimeout(timeout time.Duration) *SyncSubscriptionTransactionParams {
	var ()
	return &SyncSubscriptionTransactionParams{

		timeout: timeout,
	}
}

// NewSyncSubscriptionTransactionParamsWithContext creates a new SyncSubscriptionTransactionParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncSubscriptionTransactionParamsWithContext(ctx context.Context) *SyncSubscriptionTransactionParams {
	var ()
	return &SyncSubscriptionTransactionParams{

		Context: ctx,
	}
}

// NewSyncSubscriptionTransactionParamsWithHTTPClient creates a new SyncSubscriptionTransactionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncSubscriptionTransactionParamsWithHTTPClient(client *http.Client) *SyncSubscriptionTransactionParams {
	var ()
	return &SyncSubscriptionTransactionParams{
		HTTPClient: client,
	}
}

/*SyncSubscriptionTransactionParams contains all the parameters to send to the API endpoint
for the sync subscription transaction operation typically these are written to a http.Request
*/
type SyncSubscriptionTransactionParams struct {

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

// WithTimeout adds the timeout to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) WithTimeout(timeout time.Duration) *SyncSubscriptionTransactionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) WithContext(ctx context.Context) *SyncSubscriptionTransactionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) WithHTTPClient(client *http.Client) *SyncSubscriptionTransactionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncSubscriptionTransactionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithID adds the idVar to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) WithID(idVar string) *SyncSubscriptionTransactionParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetID(idVar string) {
	o.ID = idVar
}

// WithNamespace adds the namespace to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) WithNamespace(namespace string) *SyncSubscriptionTransactionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) WithUserID(userID string) *SyncSubscriptionTransactionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync subscription transaction params
func (o *SyncSubscriptionTransactionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncSubscriptionTransactionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
