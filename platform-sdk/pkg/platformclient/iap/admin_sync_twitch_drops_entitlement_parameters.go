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

// NewAdminSyncTwitchDropsEntitlementParams creates a new AdminSyncTwitchDropsEntitlementParams object
// with the default values initialized.
func NewAdminSyncTwitchDropsEntitlementParams() *AdminSyncTwitchDropsEntitlementParams {
	var ()
	return &AdminSyncTwitchDropsEntitlementParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSyncTwitchDropsEntitlementParamsWithTimeout creates a new AdminSyncTwitchDropsEntitlementParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSyncTwitchDropsEntitlementParamsWithTimeout(timeout time.Duration) *AdminSyncTwitchDropsEntitlementParams {
	var ()
	return &AdminSyncTwitchDropsEntitlementParams{

		timeout: timeout,
	}
}

// NewAdminSyncTwitchDropsEntitlementParamsWithContext creates a new AdminSyncTwitchDropsEntitlementParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSyncTwitchDropsEntitlementParamsWithContext(ctx context.Context) *AdminSyncTwitchDropsEntitlementParams {
	var ()
	return &AdminSyncTwitchDropsEntitlementParams{

		Context: ctx,
	}
}

// NewAdminSyncTwitchDropsEntitlementParamsWithHTTPClient creates a new AdminSyncTwitchDropsEntitlementParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSyncTwitchDropsEntitlementParamsWithHTTPClient(client *http.Client) *AdminSyncTwitchDropsEntitlementParams {
	var ()
	return &AdminSyncTwitchDropsEntitlementParams{
		HTTPClient: client,
	}
}

/*AdminSyncTwitchDropsEntitlementParams contains all the parameters to send to the API endpoint
for the admin sync twitch drops entitlement operation typically these are written to a http.Request
*/
type AdminSyncTwitchDropsEntitlementParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.TwitchSyncRequest
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

// WithTimeout adds the timeout to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) WithTimeout(timeout time.Duration) *AdminSyncTwitchDropsEntitlementParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) WithContext(ctx context.Context) *AdminSyncTwitchDropsEntitlementParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) WithHTTPClient(client *http.Client) *AdminSyncTwitchDropsEntitlementParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminSyncTwitchDropsEntitlementParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) WithBody(body *platformclientmodels.TwitchSyncRequest) *AdminSyncTwitchDropsEntitlementParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetBody(body *platformclientmodels.TwitchSyncRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) WithNamespace(namespace string) *AdminSyncTwitchDropsEntitlementParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) WithUserID(userID string) *AdminSyncTwitchDropsEntitlementParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin sync twitch drops entitlement params
func (o *AdminSyncTwitchDropsEntitlementParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSyncTwitchDropsEntitlementParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
