// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package entitlement

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
)

// NewGetUserAppEntitlementByAppIDParams creates a new GetUserAppEntitlementByAppIDParams object
// with the default values initialized.
func NewGetUserAppEntitlementByAppIDParams() *GetUserAppEntitlementByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserAppEntitlementByAppIDParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserAppEntitlementByAppIDParamsWithTimeout creates a new GetUserAppEntitlementByAppIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserAppEntitlementByAppIDParamsWithTimeout(timeout time.Duration) *GetUserAppEntitlementByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserAppEntitlementByAppIDParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetUserAppEntitlementByAppIDParamsWithContext creates a new GetUserAppEntitlementByAppIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserAppEntitlementByAppIDParamsWithContext(ctx context.Context) *GetUserAppEntitlementByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserAppEntitlementByAppIDParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetUserAppEntitlementByAppIDParamsWithHTTPClient creates a new GetUserAppEntitlementByAppIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserAppEntitlementByAppIDParamsWithHTTPClient(client *http.Client) *GetUserAppEntitlementByAppIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserAppEntitlementByAppIDParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetUserAppEntitlementByAppIDParams contains all the parameters to send to the API endpoint
for the get user app entitlement by app id operation typically these are written to a http.Request
*/
type GetUserAppEntitlementByAppIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*AppID*/
	AppID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) WithTimeout(timeout time.Duration) *GetUserAppEntitlementByAppIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) WithContext(ctx context.Context) *GetUserAppEntitlementByAppIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) WithHTTPClient(client *http.Client) *GetUserAppEntitlementByAppIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserAppEntitlementByAppIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) WithNamespace(namespace string) *GetUserAppEntitlementByAppIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) WithUserID(userID string) *GetUserAppEntitlementByAppIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) WithActiveOnly(activeOnly *bool) *GetUserAppEntitlementByAppIDParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithAppID adds the appID to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) WithAppID(appID string) *GetUserAppEntitlementByAppIDParams {
	o.SetAppID(appID)
	return o
}

// SetAppID adds the appId to the get user app entitlement by app id params
func (o *GetUserAppEntitlementByAppIDParams) SetAppID(appID string) {
	o.AppID = appID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserAppEntitlementByAppIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ActiveOnly != nil {

		// query param activeOnly
		var qrActiveOnly bool
		if o.ActiveOnly != nil {
			qrActiveOnly = *o.ActiveOnly
		}
		qActiveOnly := swag.FormatBool(qrActiveOnly)
		if qActiveOnly != "" {
			if err := r.SetQueryParam("activeOnly", qActiveOnly); err != nil {
				return err
			}
		}

	}

	// query param appId
	qrAppID := o.AppID
	qAppID := qrAppID
	if qAppID != "" {
		if err := r.SetQueryParam("appId", qAppID); err != nil {
			return err
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
