// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// NewSyncOculusConsumableEntitlementsParams creates a new SyncOculusConsumableEntitlementsParams object
// with the default values initialized.
func NewSyncOculusConsumableEntitlementsParams() *SyncOculusConsumableEntitlementsParams {
	var ()
	return &SyncOculusConsumableEntitlementsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncOculusConsumableEntitlementsParamsWithTimeout creates a new SyncOculusConsumableEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncOculusConsumableEntitlementsParamsWithTimeout(timeout time.Duration) *SyncOculusConsumableEntitlementsParams {
	var ()
	return &SyncOculusConsumableEntitlementsParams{

		timeout: timeout,
	}
}

// NewSyncOculusConsumableEntitlementsParamsWithContext creates a new SyncOculusConsumableEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncOculusConsumableEntitlementsParamsWithContext(ctx context.Context) *SyncOculusConsumableEntitlementsParams {
	var ()
	return &SyncOculusConsumableEntitlementsParams{

		Context: ctx,
	}
}

// NewSyncOculusConsumableEntitlementsParamsWithHTTPClient creates a new SyncOculusConsumableEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncOculusConsumableEntitlementsParamsWithHTTPClient(client *http.Client) *SyncOculusConsumableEntitlementsParams {
	var ()
	return &SyncOculusConsumableEntitlementsParams{
		HTTPClient: client,
	}
}

/*SyncOculusConsumableEntitlementsParams contains all the parameters to send to the API endpoint
for the sync oculus consumable entitlements operation typically these are written to a http.Request
*/
type SyncOculusConsumableEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) WithTimeout(timeout time.Duration) *SyncOculusConsumableEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) WithContext(ctx context.Context) *SyncOculusConsumableEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) WithHTTPClient(client *http.Client) *SyncOculusConsumableEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncOculusConsumableEntitlementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) WithNamespace(namespace string) *SyncOculusConsumableEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) WithUserID(userID string) *SyncOculusConsumableEntitlementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync oculus consumable entitlements params
func (o *SyncOculusConsumableEntitlementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncOculusConsumableEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
