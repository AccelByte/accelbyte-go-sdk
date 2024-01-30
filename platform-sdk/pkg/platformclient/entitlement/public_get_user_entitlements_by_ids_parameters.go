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

// NewPublicGetUserEntitlementsByIdsParams creates a new PublicGetUserEntitlementsByIdsParams object
// with the default values initialized.
func NewPublicGetUserEntitlementsByIdsParams() *PublicGetUserEntitlementsByIdsParams {
	var (
		availablePlatformOnlyDefault = bool(true)
	)
	return &PublicGetUserEntitlementsByIdsParams{
		AvailablePlatformOnly: &availablePlatformOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserEntitlementsByIdsParamsWithTimeout creates a new PublicGetUserEntitlementsByIdsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserEntitlementsByIdsParamsWithTimeout(timeout time.Duration) *PublicGetUserEntitlementsByIdsParams {
	var (
		availablePlatformOnlyDefault = bool(true)
	)
	return &PublicGetUserEntitlementsByIdsParams{
		AvailablePlatformOnly: &availablePlatformOnlyDefault,

		timeout: timeout,
	}
}

// NewPublicGetUserEntitlementsByIdsParamsWithContext creates a new PublicGetUserEntitlementsByIdsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserEntitlementsByIdsParamsWithContext(ctx context.Context) *PublicGetUserEntitlementsByIdsParams {
	var (
		availablePlatformOnlyDefault = bool(true)
	)
	return &PublicGetUserEntitlementsByIdsParams{
		AvailablePlatformOnly: &availablePlatformOnlyDefault,

		Context: ctx,
	}
}

// NewPublicGetUserEntitlementsByIdsParamsWithHTTPClient creates a new PublicGetUserEntitlementsByIdsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserEntitlementsByIdsParamsWithHTTPClient(client *http.Client) *PublicGetUserEntitlementsByIdsParams {
	var (
		availablePlatformOnlyDefault = bool(true)
	)
	return &PublicGetUserEntitlementsByIdsParams{
		AvailablePlatformOnly: &availablePlatformOnlyDefault,
		HTTPClient:            client,
	}
}

/*PublicGetUserEntitlementsByIdsParams contains all the parameters to send to the API endpoint
for the public get user entitlements by ids operation typically these are written to a http.Request
*/
type PublicGetUserEntitlementsByIdsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*AvailablePlatformOnly*/
	AvailablePlatformOnly *bool
	/*Ids*/
	Ids []string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) WithTimeout(timeout time.Duration) *PublicGetUserEntitlementsByIdsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) WithContext(ctx context.Context) *PublicGetUserEntitlementsByIdsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) WithHTTPClient(client *http.Client) *PublicGetUserEntitlementsByIdsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserEntitlementsByIdsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) WithNamespace(namespace string) *PublicGetUserEntitlementsByIdsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) WithUserID(userID string) *PublicGetUserEntitlementsByIdsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAvailablePlatformOnly adds the availablePlatformOnly to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) WithAvailablePlatformOnly(availablePlatformOnly *bool) *PublicGetUserEntitlementsByIdsParams {
	o.SetAvailablePlatformOnly(availablePlatformOnly)
	return o
}

// SetAvailablePlatformOnly adds the availablePlatformOnly to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetAvailablePlatformOnly(availablePlatformOnly *bool) {
	o.AvailablePlatformOnly = availablePlatformOnly
}

// WithIds adds the ids to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) WithIds(ids []string) *PublicGetUserEntitlementsByIdsParams {
	o.SetIds(ids)
	return o
}

// SetIds adds the ids to the public get user entitlements by ids params
func (o *PublicGetUserEntitlementsByIdsParams) SetIds(ids []string) {
	o.Ids = ids
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserEntitlementsByIdsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AvailablePlatformOnly != nil {

		// query param availablePlatformOnly
		var qrAvailablePlatformOnly bool
		if o.AvailablePlatformOnly != nil {
			qrAvailablePlatformOnly = *o.AvailablePlatformOnly
		}
		qAvailablePlatformOnly := swag.FormatBool(qrAvailablePlatformOnly)
		if qAvailablePlatformOnly != "" {
			if err := r.SetQueryParam("availablePlatformOnly", qAvailablePlatformOnly); err != nil {
				return err
			}
		}

	}

	valuesIds := o.Ids

	joinedIds := swag.JoinByFormat(valuesIds, "multi")
	// query array param ids
	if err := r.SetQueryParam("ids", joinedIds...); err != nil {
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
