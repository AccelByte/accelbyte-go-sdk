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
	"github.com/go-openapi/swag"
)

// NewPublicGetUserSubscriptionBillingHistoriesParams creates a new PublicGetUserSubscriptionBillingHistoriesParams object
// with the default values initialized.
func NewPublicGetUserSubscriptionBillingHistoriesParams() *PublicGetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &PublicGetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserSubscriptionBillingHistoriesParamsWithTimeout creates a new PublicGetUserSubscriptionBillingHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserSubscriptionBillingHistoriesParamsWithTimeout(timeout time.Duration) *PublicGetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &PublicGetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicGetUserSubscriptionBillingHistoriesParamsWithContext creates a new PublicGetUserSubscriptionBillingHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserSubscriptionBillingHistoriesParamsWithContext(ctx context.Context) *PublicGetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &PublicGetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,

		Context: ctx,
	}
}

// NewPublicGetUserSubscriptionBillingHistoriesParamsWithHTTPClient creates a new PublicGetUserSubscriptionBillingHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserSubscriptionBillingHistoriesParamsWithHTTPClient(client *http.Client) *PublicGetUserSubscriptionBillingHistoriesParams {
	var (
		excludeFreeDefault = bool(false)
		limitDefault       = int32(20)
		offsetDefault      = int32(0)
	)
	return &PublicGetUserSubscriptionBillingHistoriesParams{
		ExcludeFree: &excludeFreeDefault,
		Limit:       &limitDefault,
		Offset:      &offsetDefault,
		HTTPClient:  client,
	}
}

/*PublicGetUserSubscriptionBillingHistoriesParams contains all the parameters to send to the API endpoint
for the public get user subscription billing histories operation typically these are written to a http.Request
*/
type PublicGetUserSubscriptionBillingHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*SubscriptionID*/
	SubscriptionID string
	/*UserID*/
	UserID string
	/*ExcludeFree*/
	ExcludeFree *bool
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithTimeout(timeout time.Duration) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithContext(ctx context.Context) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithHTTPClient(client *http.Client) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithNamespace(namespace string) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithSubscriptionID adds the subscriptionID to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithSubscriptionID(subscriptionID string) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetSubscriptionID(subscriptionID)
	return o
}

// SetSubscriptionID adds the subscriptionId to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetSubscriptionID(subscriptionID string) {
	o.SubscriptionID = subscriptionID
}

// WithUserID adds the userID to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithUserID(userID string) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithExcludeFree adds the excludeFree to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithExcludeFree(excludeFree *bool) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetExcludeFree(excludeFree)
	return o
}

// SetExcludeFree adds the excludeFree to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetExcludeFree(excludeFree *bool) {
	o.ExcludeFree = excludeFree
}

// WithLimit adds the limit to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithLimit(limit *int32) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WithOffset(offset *int32) *PublicGetUserSubscriptionBillingHistoriesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public get user subscription billing histories params
func (o *PublicGetUserSubscriptionBillingHistoriesParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserSubscriptionBillingHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	if o.ExcludeFree != nil {

		// query param excludeFree
		var qrExcludeFree bool
		if o.ExcludeFree != nil {
			qrExcludeFree = *o.ExcludeFree
		}
		qExcludeFree := swag.FormatBool(qrExcludeFree)
		if qExcludeFree != "" {
			if err := r.SetQueryParam("excludeFree", qExcludeFree); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int32
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt32(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int32
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt32(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
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
