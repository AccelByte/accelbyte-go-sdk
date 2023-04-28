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

// Get the enum in GetUserEntitlementByItemIDParams
const (
	GetUserEntitlementByItemIDAPPConstant          = "APP"
	GetUserEntitlementByItemIDCODEConstant         = "CODE"
	GetUserEntitlementByItemIDENTITLEMENTConstant  = "ENTITLEMENT"
	GetUserEntitlementByItemIDLOOTBOXConstant      = "LOOTBOX"
	GetUserEntitlementByItemIDMEDIAConstant        = "MEDIA"
	GetUserEntitlementByItemIDOPTIONBOXConstant    = "OPTIONBOX"
	GetUserEntitlementByItemIDSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewGetUserEntitlementByItemIDParams creates a new GetUserEntitlementByItemIDParams object
// with the default values initialized.
func NewGetUserEntitlementByItemIDParams() *GetUserEntitlementByItemIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementByItemIDParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserEntitlementByItemIDParamsWithTimeout creates a new GetUserEntitlementByItemIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserEntitlementByItemIDParamsWithTimeout(timeout time.Duration) *GetUserEntitlementByItemIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementByItemIDParams{
		ActiveOnly: &activeOnlyDefault,

		timeout: timeout,
	}
}

// NewGetUserEntitlementByItemIDParamsWithContext creates a new GetUserEntitlementByItemIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserEntitlementByItemIDParamsWithContext(ctx context.Context) *GetUserEntitlementByItemIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementByItemIDParams{
		ActiveOnly: &activeOnlyDefault,

		Context: ctx,
	}
}

// NewGetUserEntitlementByItemIDParamsWithHTTPClient creates a new GetUserEntitlementByItemIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserEntitlementByItemIDParamsWithHTTPClient(client *http.Client) *GetUserEntitlementByItemIDParams {
	var (
		activeOnlyDefault = bool(true)
	)
	return &GetUserEntitlementByItemIDParams{
		ActiveOnly: &activeOnlyDefault,
		HTTPClient: client,
	}
}

/*GetUserEntitlementByItemIDParams contains all the parameters to send to the API endpoint
for the get user entitlement by item id operation typically these are written to a http.Request
*/
type GetUserEntitlementByItemIDParams struct {

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
	/*ItemID*/
	ItemID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithTimeout(timeout time.Duration) *GetUserEntitlementByItemIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithContext(ctx context.Context) *GetUserEntitlementByItemIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithHTTPClient(client *http.Client) *GetUserEntitlementByItemIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithNamespace(namespace string) *GetUserEntitlementByItemIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithUserID(userID string) *GetUserEntitlementByItemIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithActiveOnly(activeOnly *bool) *GetUserEntitlementByItemIDParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithEntitlementClazz adds the entitlementClazz to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithEntitlementClazz(entitlementClazz *string) *GetUserEntitlementByItemIDParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithItemID adds the itemID to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) WithItemID(itemID string) *GetUserEntitlementByItemIDParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the get user entitlement by item id params
func (o *GetUserEntitlementByItemIDParams) SetItemID(itemID string) {
	o.ItemID = itemID
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserEntitlementByItemIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
