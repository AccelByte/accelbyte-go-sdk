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

// Deprecated: 2025-07-16 - Use GetUserEntitlementBySkuEntitlementClazz<EnumValue>Constant instead.
// Get the enum in GetUserEntitlementBySkuParams
const (
	GetUserEntitlementBySkuAPPConstant          = "APP"
	GetUserEntitlementBySkuCODEConstant         = "CODE"
	GetUserEntitlementBySkuENTITLEMENTConstant  = "ENTITLEMENT"
	GetUserEntitlementBySkuLOOTBOXConstant      = "LOOTBOX"
	GetUserEntitlementBySkuMEDIAConstant        = "MEDIA"
	GetUserEntitlementBySkuOPTIONBOXConstant    = "OPTIONBOX"
	GetUserEntitlementBySkuSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in GetUserEntitlementBySkuParams
const (
	GetUserEntitlementBySkuEntitlementClazzAPPConstant          = "APP"
	GetUserEntitlementBySkuEntitlementClazzCODEConstant         = "CODE"
	GetUserEntitlementBySkuEntitlementClazzENTITLEMENTConstant  = "ENTITLEMENT"
	GetUserEntitlementBySkuEntitlementClazzLOOTBOXConstant      = "LOOTBOX"
	GetUserEntitlementBySkuEntitlementClazzMEDIAConstant        = "MEDIA"
	GetUserEntitlementBySkuEntitlementClazzOPTIONBOXConstant    = "OPTIONBOX"
	GetUserEntitlementBySkuEntitlementClazzSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewGetUserEntitlementBySkuParams creates a new GetUserEntitlementBySkuParams object
// with the default values initialized.
func NewGetUserEntitlementBySkuParams() *GetUserEntitlementBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEntitlementBySkuParamsWithTimeout creates a new GetUserEntitlementBySkuParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEntitlementBySkuParamsWithTimeout(timeout time.Duration) *GetUserEntitlementBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetUserEntitlementBySkuParamsWithContext creates a new GetUserEntitlementBySkuParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEntitlementBySkuParamsWithContext(ctx context.Context) *GetUserEntitlementBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementBySkuParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetUserEntitlementBySkuParamsWithHTTPClient creates a new GetUserEntitlementBySkuParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEntitlementBySkuParamsWithHTTPClient(client *http.Client) *GetUserEntitlementBySkuParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementBySkuParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetUserEntitlementBySkuParams contains all the parameters to send to the API endpoint
for the get user entitlement by sku operation typically these are written to a http.Request
*/
type GetUserEntitlementBySkuParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*Platform*/
	Platform *string
	/*Sku*/
	Sku string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithTimeout(timeout time.Duration) *GetUserEntitlementBySkuParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithContext(ctx context.Context) *GetUserEntitlementBySkuParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithHTTPClient(client *http.Client) *GetUserEntitlementBySkuParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetUserEntitlementBySkuParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithNamespace(namespace string) *GetUserEntitlementBySkuParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithUserID(userID string) *GetUserEntitlementBySkuParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithActiveOnly(activeOnly *bool) *GetUserEntitlementBySkuParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithEntitlementClazz adds the entitlementClazz to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithEntitlementClazz(entitlementClazz *string) *GetUserEntitlementBySkuParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithPlatform adds the platform to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithPlatform(platform *string) *GetUserEntitlementBySkuParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithSku adds the sku to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) WithSku(sku string) *GetUserEntitlementBySkuParams {
	o.SetSku(sku)
	return o
}

// SetSku adds the sku to the get user entitlement by sku params
func (o *GetUserEntitlementBySkuParams) SetSku(sku string) {
	o.Sku = sku
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEntitlementBySkuParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
				return err
			}
		}

	}

	// query param sku
	qrSku := o.Sku
	qSku := qrSku
	if qSku != "" {
		if err := r.SetQueryParam("sku", qSku); err != nil {
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
