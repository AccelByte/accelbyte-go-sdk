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
)

// Deprecated: 2025-07-16 - Use PublicGetUserEntitlementByItemIDEntitlementClazz<EnumValue>Constant instead.
// Get the enum in PublicGetUserEntitlementByItemIDParams
const (
	PublicGetUserEntitlementByItemIDAPPConstant          = "APP"
	PublicGetUserEntitlementByItemIDCODEConstant         = "CODE"
	PublicGetUserEntitlementByItemIDENTITLEMENTConstant  = "ENTITLEMENT"
	PublicGetUserEntitlementByItemIDLOOTBOXConstant      = "LOOTBOX"
	PublicGetUserEntitlementByItemIDMEDIAConstant        = "MEDIA"
	PublicGetUserEntitlementByItemIDOPTIONBOXConstant    = "OPTIONBOX"
	PublicGetUserEntitlementByItemIDSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in PublicGetUserEntitlementByItemIDParams
const (
	PublicGetUserEntitlementByItemIDEntitlementClazzAPPConstant          = "APP"
	PublicGetUserEntitlementByItemIDEntitlementClazzCODEConstant         = "CODE"
	PublicGetUserEntitlementByItemIDEntitlementClazzENTITLEMENTConstant  = "ENTITLEMENT"
	PublicGetUserEntitlementByItemIDEntitlementClazzLOOTBOXConstant      = "LOOTBOX"
	PublicGetUserEntitlementByItemIDEntitlementClazzMEDIAConstant        = "MEDIA"
	PublicGetUserEntitlementByItemIDEntitlementClazzOPTIONBOXConstant    = "OPTIONBOX"
	PublicGetUserEntitlementByItemIDEntitlementClazzSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewPublicGetUserEntitlementByItemIDParams creates a new PublicGetUserEntitlementByItemIDParams object
// with the default values initialized.
func NewPublicGetUserEntitlementByItemIDParams() *PublicGetUserEntitlementByItemIDParams {
	var ()
	return &PublicGetUserEntitlementByItemIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserEntitlementByItemIDParamsWithTimeout creates a new PublicGetUserEntitlementByItemIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserEntitlementByItemIDParamsWithTimeout(timeout time.Duration) *PublicGetUserEntitlementByItemIDParams {
	var ()
	return &PublicGetUserEntitlementByItemIDParams{

		timeout: timeout,
	}
}

// NewPublicGetUserEntitlementByItemIDParamsWithContext creates a new PublicGetUserEntitlementByItemIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserEntitlementByItemIDParamsWithContext(ctx context.Context) *PublicGetUserEntitlementByItemIDParams {
	var ()
	return &PublicGetUserEntitlementByItemIDParams{

		Context: ctx,
	}
}

// NewPublicGetUserEntitlementByItemIDParamsWithHTTPClient creates a new PublicGetUserEntitlementByItemIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserEntitlementByItemIDParamsWithHTTPClient(client *http.Client) *PublicGetUserEntitlementByItemIDParams {
	var ()
	return &PublicGetUserEntitlementByItemIDParams{
		HTTPClient: client,
	}
}

/*PublicGetUserEntitlementByItemIDParams contains all the parameters to send to the API endpoint
for the public get user entitlement by item id operation typically these are written to a http.Request
*/
type PublicGetUserEntitlementByItemIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*ItemID*/
	ItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) WithTimeout(timeout time.Duration) *PublicGetUserEntitlementByItemIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) WithContext(ctx context.Context) *PublicGetUserEntitlementByItemIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) WithHTTPClient(client *http.Client) *PublicGetUserEntitlementByItemIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserEntitlementByItemIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) WithNamespace(namespace string) *PublicGetUserEntitlementByItemIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) WithUserID(userID string) *PublicGetUserEntitlementByItemIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithEntitlementClazz adds the entitlementClazz to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) WithEntitlementClazz(entitlementClazz *string) *PublicGetUserEntitlementByItemIDParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithItemID adds the itemID to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) WithItemID(itemID string) *PublicGetUserEntitlementByItemIDParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public get user entitlement by item id params
func (o *PublicGetUserEntitlementByItemIDParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserEntitlementByItemIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.EntitlementClazz != nil {

		// query param entitlementClazz
		var qrEntitlementClazz string
		if o.EntitlementClazz != nil {
			qrEntitlementClazz = *o.EntitlementClazz
		}
		qEntitlementClazz := qrEntitlementClazz
		if qEntitlementClazz != "" {
			if err := r.SetQueryParam("entitlementClazz", qEntitlementClazz); err != nil {
				return err
			}
		}

	}

	// query param itemId
	qrItemID := o.ItemID
	qItemID := qrItemID
	if qItemID != "" {
		if err := r.SetQueryParam("itemId", qItemID); err != nil {
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
