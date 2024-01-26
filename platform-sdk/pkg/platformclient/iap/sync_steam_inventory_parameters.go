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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewSyncSteamInventoryParams creates a new SyncSteamInventoryParams object
// with the default values initialized.
func NewSyncSteamInventoryParams() *SyncSteamInventoryParams {
	var ()
	return &SyncSteamInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncSteamInventoryParamsWithTimeout creates a new SyncSteamInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncSteamInventoryParamsWithTimeout(timeout time.Duration) *SyncSteamInventoryParams {
	var ()
	return &SyncSteamInventoryParams{

		timeout: timeout,
	}
}

// NewSyncSteamInventoryParamsWithContext creates a new SyncSteamInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncSteamInventoryParamsWithContext(ctx context.Context) *SyncSteamInventoryParams {
	var ()
	return &SyncSteamInventoryParams{

		Context: ctx,
	}
}

// NewSyncSteamInventoryParamsWithHTTPClient creates a new SyncSteamInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncSteamInventoryParamsWithHTTPClient(client *http.Client) *SyncSteamInventoryParams {
	var ()
	return &SyncSteamInventoryParams{
		HTTPClient: client,
	}
}

/*SyncSteamInventoryParams contains all the parameters to send to the API endpoint
for the sync steam inventory operation typically these are written to a http.Request
*/
type SyncSteamInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.SteamSyncRequest
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

// WithTimeout adds the timeout to the sync steam inventory params
func (o *SyncSteamInventoryParams) WithTimeout(timeout time.Duration) *SyncSteamInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync steam inventory params
func (o *SyncSteamInventoryParams) WithContext(ctx context.Context) *SyncSteamInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync steam inventory params
func (o *SyncSteamInventoryParams) WithHTTPClient(client *http.Client) *SyncSteamInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncSteamInventoryParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the sync steam inventory params
func (o *SyncSteamInventoryParams) WithBody(body *platformclientmodels.SteamSyncRequest) *SyncSteamInventoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetBody(body *platformclientmodels.SteamSyncRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the sync steam inventory params
func (o *SyncSteamInventoryParams) WithNamespace(namespace string) *SyncSteamInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the sync steam inventory params
func (o *SyncSteamInventoryParams) WithUserID(userID string) *SyncSteamInventoryParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the sync steam inventory params
func (o *SyncSteamInventoryParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *SyncSteamInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
