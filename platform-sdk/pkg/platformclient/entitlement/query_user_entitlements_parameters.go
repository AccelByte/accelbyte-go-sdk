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

// Get the enum in QueryUserEntitlementsParams
const (
	QueryUserEntitlementsDEMOConstant     = "DEMO"
	QueryUserEntitlementsDLCConstant      = "DLC"
	QueryUserEntitlementsGAMEConstant     = "GAME"
	QueryUserEntitlementsSOFTWAREConstant = "SOFTWARE"
)

// Get the enum in QueryUserEntitlementsParams
const (
	QueryUserEntitlementsAPPConstant          = "APP"
	QueryUserEntitlementsCODEConstant         = "CODE"
	QueryUserEntitlementsENTITLEMENTConstant  = "ENTITLEMENT"
	QueryUserEntitlementsLOOTBOXConstant      = "LOOTBOX"
	QueryUserEntitlementsMEDIAConstant        = "MEDIA"
	QueryUserEntitlementsOPTIONBOXConstant    = "OPTIONBOX"
	QueryUserEntitlementsSUBSCRIPTIONConstant = "SUBSCRIPTION"
)

// Get the enum in QueryUserEntitlementsParams
const (
	QueryUserEntitlementsEpicConstant        = "Epic"
	QueryUserEntitlementsGooglePlayConstant  = "GooglePlay"
	QueryUserEntitlementsIOSConstant         = "IOS"
	QueryUserEntitlementsNintendoConstant    = "Nintendo"
	QueryUserEntitlementsOculusConstant      = "Oculus"
	QueryUserEntitlementsOtherConstant       = "Other"
	QueryUserEntitlementsPlaystationConstant = "Playstation"
	QueryUserEntitlementsSteamConstant       = "Steam"
	QueryUserEntitlementsSystemConstant      = "System"
	QueryUserEntitlementsTwitchConstant      = "Twitch"
	QueryUserEntitlementsXboxConstant        = "Xbox"
)

// NewQueryUserEntitlementsParams creates a new QueryUserEntitlementsParams object
// with the default values initialized.
func NewQueryUserEntitlementsParams() *QueryUserEntitlementsParams {
	var (
		activeOnlyDefault     = bool(true)
		fuzzyMatchNameDefault = bool(false)
		limitDefault          = int32(20)
		offsetDefault         = int32(0)
	)
	return &QueryUserEntitlementsParams{
		ActiveOnly:     &activeOnlyDefault,
		FuzzyMatchName: &fuzzyMatchNameDefault,
		Limit:          &limitDefault,
		Offset:         &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserEntitlementsParamsWithTimeout creates a new QueryUserEntitlementsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserEntitlementsParamsWithTimeout(timeout time.Duration) *QueryUserEntitlementsParams {
	var (
		activeOnlyDefault     = bool(true)
		fuzzyMatchNameDefault = bool(false)
		limitDefault          = int32(20)
		offsetDefault         = int32(0)
	)
	return &QueryUserEntitlementsParams{
		ActiveOnly:     &activeOnlyDefault,
		FuzzyMatchName: &fuzzyMatchNameDefault,
		Limit:          &limitDefault,
		Offset:         &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryUserEntitlementsParamsWithContext creates a new QueryUserEntitlementsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserEntitlementsParamsWithContext(ctx context.Context) *QueryUserEntitlementsParams {
	var (
		activeOnlyDefault     = bool(true)
		fuzzyMatchNameDefault = bool(false)
		limitDefault          = int32(20)
		offsetDefault         = int32(0)
	)
	return &QueryUserEntitlementsParams{
		ActiveOnly:     &activeOnlyDefault,
		FuzzyMatchName: &fuzzyMatchNameDefault,
		Limit:          &limitDefault,
		Offset:         &offsetDefault,

		Context: ctx,
	}
}

// NewQueryUserEntitlementsParamsWithHTTPClient creates a new QueryUserEntitlementsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserEntitlementsParamsWithHTTPClient(client *http.Client) *QueryUserEntitlementsParams {
	var (
		activeOnlyDefault     = bool(true)
		fuzzyMatchNameDefault = bool(false)
		limitDefault          = int32(20)
		offsetDefault         = int32(0)
	)
	return &QueryUserEntitlementsParams{
		ActiveOnly:     &activeOnlyDefault,
		FuzzyMatchName: &fuzzyMatchNameDefault,
		Limit:          &limitDefault,
		Offset:         &offsetDefault,
		HTTPClient:     client,
	}
}

/*QueryUserEntitlementsParams contains all the parameters to send to the API endpoint
for the query user entitlements operation typically these are written to a http.Request
*/
type QueryUserEntitlementsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*AppType*/
	AppType *string
	/*CollectionID*/
	CollectionID *string
	/*EntitlementClazz*/
	EntitlementClazz *string
	/*EntitlementName*/
	EntitlementName *string
	/*Features*/
	Features []string
	/*FuzzyMatchName*/
	FuzzyMatchName *bool
	/*ItemID*/
	ItemID []string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Origin*/
	Origin *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithTimeout(timeout time.Duration) *QueryUserEntitlementsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithContext(ctx context.Context) *QueryUserEntitlementsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithHTTPClient(client *http.Client) *QueryUserEntitlementsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryUserEntitlementsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithNamespace(namespace string) *QueryUserEntitlementsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithUserID(userID string) *QueryUserEntitlementsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithActiveOnly(activeOnly *bool) *QueryUserEntitlementsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithAppType adds the appType to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithAppType(appType *string) *QueryUserEntitlementsParams {
	o.SetAppType(appType)
	return o
}

// SetAppType adds the appType to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetAppType(appType *string) {
	o.AppType = appType
}

// WithCollectionID adds the collectionID to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithCollectionID(collectionID *string) *QueryUserEntitlementsParams {
	o.SetCollectionID(collectionID)
	return o
}

// SetCollectionID adds the collectionId to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetCollectionID(collectionID *string) {
	o.CollectionID = collectionID
}

// WithEntitlementClazz adds the entitlementClazz to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithEntitlementClazz(entitlementClazz *string) *QueryUserEntitlementsParams {
	o.SetEntitlementClazz(entitlementClazz)
	return o
}

// SetEntitlementClazz adds the entitlementClazz to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetEntitlementClazz(entitlementClazz *string) {
	o.EntitlementClazz = entitlementClazz
}

// WithEntitlementName adds the entitlementName to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithEntitlementName(entitlementName *string) *QueryUserEntitlementsParams {
	o.SetEntitlementName(entitlementName)
	return o
}

// SetEntitlementName adds the entitlementName to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetEntitlementName(entitlementName *string) {
	o.EntitlementName = entitlementName
}

// WithFeatures adds the features to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithFeatures(features []string) *QueryUserEntitlementsParams {
	o.SetFeatures(features)
	return o
}

// SetFeatures adds the features to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetFeatures(features []string) {
	o.Features = features
}

// WithFuzzyMatchName adds the fuzzyMatchName to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithFuzzyMatchName(fuzzyMatchName *bool) *QueryUserEntitlementsParams {
	o.SetFuzzyMatchName(fuzzyMatchName)
	return o
}

// SetFuzzyMatchName adds the fuzzyMatchName to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetFuzzyMatchName(fuzzyMatchName *bool) {
	o.FuzzyMatchName = fuzzyMatchName
}

// WithItemID adds the itemID to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithItemID(itemID []string) *QueryUserEntitlementsParams {
	o.SetItemID(itemID)
	return o
}

// SetItemID adds the itemId to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetItemID(itemID []string) {
	o.ItemID = itemID
}

// WithLimit adds the limit to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithLimit(limit *int32) *QueryUserEntitlementsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithOffset(offset *int32) *QueryUserEntitlementsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithOrigin adds the origin to the query user entitlements params
func (o *QueryUserEntitlementsParams) WithOrigin(origin *string) *QueryUserEntitlementsParams {
	o.SetOrigin(origin)
	return o
}

// SetOrigin adds the origin to the query user entitlements params
func (o *QueryUserEntitlementsParams) SetOrigin(origin *string) {
	o.Origin = origin
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserEntitlementsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.CollectionID != nil {

		// query param collectionId
		var qrCollectionID string
		if o.CollectionID != nil {
			qrCollectionID = *o.CollectionID
		}
		qCollectionID := qrCollectionID
		if qCollectionID != "" {
			if err := r.SetQueryParam("collectionId", qCollectionID); err != nil {
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

	if o.FuzzyMatchName != nil {

		// query param fuzzyMatchName
		var qrFuzzyMatchName bool
		if o.FuzzyMatchName != nil {
			qrFuzzyMatchName = *o.FuzzyMatchName
		}
		qFuzzyMatchName := swag.FormatBool(qrFuzzyMatchName)
		if qFuzzyMatchName != "" {
			if err := r.SetQueryParam("fuzzyMatchName", qFuzzyMatchName); err != nil {
				return err
			}
		}

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

	if o.Origin != nil {

		// query param origin
		var qrOrigin string
		if o.Origin != nil {
			qrOrigin = *o.Origin
		}
		qOrigin := qrOrigin
		if qOrigin != "" {
			if err := r.SetQueryParam("origin", qOrigin); err != nil {
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
