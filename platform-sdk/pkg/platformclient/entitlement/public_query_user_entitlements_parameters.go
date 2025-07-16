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

// Deprecated: 2025-07-16 - Use PublicQueryUserEntitlementsAppType<EnumValue>Constant instead.
// Get the enum in PublicQueryUserEntitlementsParams
const (
	PublicQueryUserEntitlementsDEMOConstant     = "DEMO"
	PublicQueryUserEntitlementsDLCConstant      = "DLC"
	PublicQueryUserEntitlementsGAMEConstant     = "GAME"
	PublicQueryUserEntitlementsSOFTWAREConstant = "SOFTWARE"
)

// Deprecated: 2025-07-16 - Use PublicQueryUserEntitlementsEntitlementClazz<EnumValue>Constant instead.
// Get the enum in PublicQueryUserEntitlementsParams
const (
	PublicQueryUserEntitlementsAPPConstant          = "APP"
	PublicQueryUserEntitlementsCODEConstant         = "CODE"
	PublicQueryUserEntitlementsENTITLEMENTConstant  = "ENTITLEMENT"
	PublicQueryUserEntitlementsLOOTBOXConstant      = "LOOTBOX"
	PublicQueryUserEntitlementsMEDIAConstant        = "MEDIA"
	PublicQueryUserEntitlementsOPTIONBOXConstant    = "OPTIONBOX"
	PublicQueryUserEntitlementsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in PublicQueryUserEntitlementsParams
const (
	PublicQueryUserEntitlementsAppTypeDEMOConstant     = "DEMO"
	PublicQueryUserEntitlementsAppTypeDLCConstant      = "DLC"
	PublicQueryUserEntitlementsAppTypeGAMEConstant     = "GAME"
	PublicQueryUserEntitlementsAppTypeSOFTWAREConstant = "SOFTWARE"
)

// Get the enum in PublicQueryUserEntitlementsParams
const (
	PublicQueryUserEntitlementsEntitlementClazzAPPConstant          = "APP"
	PublicQueryUserEntitlementsEntitlementClazzCODEConstant         = "CODE"
	PublicQueryUserEntitlementsEntitlementClazzENTITLEMENTConstant  = "ENTITLEMENT"
	PublicQueryUserEntitlementsEntitlementClazzLOOTBOXConstant      = "LOOTBOX"
	PublicQueryUserEntitlementsEntitlementClazzMEDIAConstant        = "MEDIA"
	PublicQueryUserEntitlementsEntitlementClazzOPTIONBOXConstant    = "OPTIONBOX"
	PublicQueryUserEntitlementsEntitlementClazzSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// NewPublicQueryUserEntitlementsParams creates a new PublicQueryUserEntitlementsParams object
// with the default values initialized.
func NewPublicQueryUserEntitlementsParams() *PublicQueryUserEntitlementsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserEntitlementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicQueryUserEntitlementsParamsWithTimeout creates a new PublicQueryUserEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicQueryUserEntitlementsParamsWithTimeout(timeout time.Duration) *PublicQueryUserEntitlementsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserEntitlementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewPublicQueryUserEntitlementsParamsWithContext creates a new PublicQueryUserEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicQueryUserEntitlementsParamsWithContext(ctx context.Context) *PublicQueryUserEntitlementsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserEntitlementsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewPublicQueryUserEntitlementsParamsWithHTTPClient creates a new PublicQueryUserEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicQueryUserEntitlementsParamsWithHTTPClient(client *http.Client) *PublicQueryUserEntitlementsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &PublicQueryUserEntitlementsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*PublicQueryUserEntitlementsParams contains all the parameters to send to the API endpoint
for the public query user entitlements operation typically these are written to a http.Request
*/
type PublicQueryUserEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*AppType*/
	AppType *string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*EntitlementName*/
	EntitlementName *string
	/*Features*/
	Features []string
	/*ItemID*/
	ItemID []string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
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

// WithTimeout adds the timeout to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithTimeout(timeout time.Duration) *PublicQueryUserEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithContext(ctx context.Context) *PublicQueryUserEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithHTTPClient(client *http.Client) *PublicQueryUserEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicQueryUserEntitlementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithNamespace(namespace string) *PublicQueryUserEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithUserID(userID string) *PublicQueryUserEntitlementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithAppType adds the appType to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithAppType(appType *string) *PublicQueryUserEntitlementsParams {
	o.SetAppType(appType)
	return o
}

// SetAppType adds the appType to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetAppType(appType *string) {
	o.AppType = appType
}

// WithEntitlementClazz adds the entitlementClazz to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithEntitlementClazz(entitlementClazz *string) *PublicQueryUserEntitlementsParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithEntitlementName adds the entitlementName to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithEntitlementName(entitlementName *string) *PublicQueryUserEntitlementsParams {
	o.SetEntitlementName(entitlementName)
	return o
}

// SetEntitlementName adds the entitlementName to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetEntitlementName(entitlementName *string) {
	o.EntitlementName = entitlementName
}

// WithFeatures adds the features to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithFeatures(features []string) *PublicQueryUserEntitlementsParams {
	o.SetFeatures(features)
	return o
}

// SetFeatures adds the features to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetFeatures(features []string) {
	o.Features = features
}

// WithItemID adds the itemID to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithItemID(itemID []string) *PublicQueryUserEntitlementsParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetItemID(itemID []string) {
	o.ItemID = itemID
}

// WithLimit adds the limit to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithLimit(limit *int32) *PublicQueryUserEntitlementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) WithOffset(offset *int32) *PublicQueryUserEntitlementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the public query user entitlements params
func (o *PublicQueryUserEntitlementsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *PublicQueryUserEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.AppType != nil {

		// query param appType
		var qrAppType string
		if o.AppType != nil {
			qrAppType = *o.AppType
		}
		qAppType := qrAppType
		if qAppType != "" {
			if err := r.SetQueryParam("appType", qAppType); err != nil {
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

	if o.EntitlementName != nil {

		// query param entitlementName
		var qrEntitlementName string
		if o.EntitlementName != nil {
			qrEntitlementName = *o.EntitlementName
		}
		qEntitlementName := qrEntitlementName
		if qEntitlementName != "" {
			if err := r.SetQueryParam("entitlementName", qEntitlementName); err != nil {
				return err
			}
		}

	}

	valuesFeatures := o.Features

	joinedFeatures := swag.JoinByFormat(valuesFeatures, "multi")
	// query array param features
	if err := r.SetQueryParam("features", joinedFeatures...); err != nil {
		return err
	}

	valuesItemID := o.ItemID

	joinedItemID := swag.JoinByFormat(valuesItemID, "multi")
	// query array param itemId
	if err := r.SetQueryParam("itemId", joinedItemID...); err != nil {
		return err
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
