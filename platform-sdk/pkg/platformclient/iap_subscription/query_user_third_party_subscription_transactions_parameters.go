// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap_subscription

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

// Get the enum in QueryUserThirdPartySubscriptionTransactionsParams
const (
	QueryUserThirdPartySubscriptionTransactionsAPPLEConstant       = "APPLE"
	QueryUserThirdPartySubscriptionTransactionsEPICGAMESConstant   = "EPICGAMES"
	QueryUserThirdPartySubscriptionTransactionsGOOGLEConstant      = "GOOGLE"
	QueryUserThirdPartySubscriptionTransactionsOCULUSConstant      = "OCULUS"
	QueryUserThirdPartySubscriptionTransactionsPLAYSTATIONConstant = "PLAYSTATION"
	QueryUserThirdPartySubscriptionTransactionsSTADIAConstant      = "STADIA"
	QueryUserThirdPartySubscriptionTransactionsSTEAMConstant       = "STEAM"
	QueryUserThirdPartySubscriptionTransactionsTWITCHConstant      = "TWITCH"
	QueryUserThirdPartySubscriptionTransactionsXBOXConstant        = "XBOX"
)

// NewQueryUserThirdPartySubscriptionTransactionsParams creates a new QueryUserThirdPartySubscriptionTransactionsParams object
// with the default values initialized.
func NewQueryUserThirdPartySubscriptionTransactionsParams() *QueryUserThirdPartySubscriptionTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserThirdPartySubscriptionTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryUserThirdPartySubscriptionTransactionsParamsWithTimeout creates a new QueryUserThirdPartySubscriptionTransactionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryUserThirdPartySubscriptionTransactionsParamsWithTimeout(timeout time.Duration) *QueryUserThirdPartySubscriptionTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserThirdPartySubscriptionTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryUserThirdPartySubscriptionTransactionsParamsWithContext creates a new QueryUserThirdPartySubscriptionTransactionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryUserThirdPartySubscriptionTransactionsParamsWithContext(ctx context.Context) *QueryUserThirdPartySubscriptionTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserThirdPartySubscriptionTransactionsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryUserThirdPartySubscriptionTransactionsParamsWithHTTPClient creates a new QueryUserThirdPartySubscriptionTransactionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryUserThirdPartySubscriptionTransactionsParamsWithHTTPClient(client *http.Client) *QueryUserThirdPartySubscriptionTransactionsParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryUserThirdPartySubscriptionTransactionsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryUserThirdPartySubscriptionTransactionsParams contains all the parameters to send to the API endpoint
for the query user third party subscription transactions operation typically these are written to a http.Request
*/
type QueryUserThirdPartySubscriptionTransactionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*GroupID
	  if platform is Google, please pass google subscription product id. if platform is Apple, please pass apple subscription group id

	*/
	GroupID *string
	/*Limit*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Platform*/
	Platform *string
	/*ProductID
	  if platform is Google, please pass google subscription plan id. if platform is Apple, please pass apple subscription product id

	*/
	ProductID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithTimeout(timeout time.Duration) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithContext(ctx context.Context) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithHTTPClient(client *http.Client) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithNamespace(namespace string) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithUserID(userID string) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithActiveOnly adds the activeOnly to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithActiveOnly(activeOnly *bool) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithGroupID adds the groupID to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithGroupID(groupID *string) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetGroupID(groupID *string) {
	o.GroupID = groupID
}

// WithLimit adds the limit to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithLimit(limit *int32) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithOffset(offset *int32) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithPlatform adds the platform to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithPlatform(platform *string) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithProductID adds the productID to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WithProductID(productID *string) *QueryUserThirdPartySubscriptionTransactionsParams {
	o.SetProductID(productID)
	return o
}

// SetProductID adds the productId to the query user third party subscription transactions params
func (o *QueryUserThirdPartySubscriptionTransactionsParams) SetProductID(productID *string) {
	o.ProductID = productID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryUserThirdPartySubscriptionTransactionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.GroupID != nil {

		// query param groupId
		var qrGroupID string
		if o.GroupID != nil {
			qrGroupID = *o.GroupID
		}
		qGroupID := qrGroupID
		if qGroupID != "" {
			if err := r.SetQueryParam("groupId", qGroupID); err != nil {
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

	if o.ProductID != nil {

		// query param productId
		var qrProductID string
		if o.ProductID != nil {
			qrProductID = *o.ProductID
		}
		qProductID := qrProductID
		if qProductID != "" {
			if err := r.SetQueryParam("productId", qProductID); err != nil {
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
