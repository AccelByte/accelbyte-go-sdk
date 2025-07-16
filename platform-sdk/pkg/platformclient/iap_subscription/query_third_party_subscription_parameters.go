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

// Deprecated: 2025-07-16 - Use QueryThirdPartySubscriptionPlatform<EnumValue>Constant instead.
// Get the enum in QueryThirdPartySubscriptionParams
const (
	QueryThirdPartySubscriptionAPPLEConstant       = "APPLE"
	QueryThirdPartySubscriptionEPICGAMESConstant   = "EPICGAMES"
	QueryThirdPartySubscriptionGOOGLEConstant      = "GOOGLE"
	QueryThirdPartySubscriptionOCULUSConstant      = "OCULUS"
	QueryThirdPartySubscriptionPLAYSTATIONConstant = "PLAYSTATION"
	QueryThirdPartySubscriptionSTADIAConstant      = "STADIA"
	QueryThirdPartySubscriptionSTEAMConstant       = "STEAM"
	QueryThirdPartySubscriptionTWITCHConstant      = "TWITCH"
	QueryThirdPartySubscriptionXBOXConstant        = "XBOX"
)

// Get the enum in QueryThirdPartySubscriptionParams
const (
	QueryThirdPartySubscriptionPlatformAPPLEConstant       = "APPLE"
	QueryThirdPartySubscriptionPlatformEPICGAMESConstant   = "EPICGAMES"
	QueryThirdPartySubscriptionPlatformGOOGLEConstant      = "GOOGLE"
	QueryThirdPartySubscriptionPlatformOCULUSConstant      = "OCULUS"
	QueryThirdPartySubscriptionPlatformPLAYSTATIONConstant = "PLAYSTATION"
	QueryThirdPartySubscriptionPlatformSTADIAConstant      = "STADIA"
	QueryThirdPartySubscriptionPlatformSTEAMConstant       = "STEAM"
	QueryThirdPartySubscriptionPlatformTWITCHConstant      = "TWITCH"
	QueryThirdPartySubscriptionPlatformXBOXConstant        = "XBOX"
)

// NewQueryThirdPartySubscriptionParams creates a new QueryThirdPartySubscriptionParams object
// with the default values initialized.
func NewQueryThirdPartySubscriptionParams() *QueryThirdPartySubscriptionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartySubscriptionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryThirdPartySubscriptionParamsWithTimeout creates a new QueryThirdPartySubscriptionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryThirdPartySubscriptionParamsWithTimeout(timeout time.Duration) *QueryThirdPartySubscriptionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartySubscriptionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewQueryThirdPartySubscriptionParamsWithContext creates a new QueryThirdPartySubscriptionParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryThirdPartySubscriptionParamsWithContext(ctx context.Context) *QueryThirdPartySubscriptionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartySubscriptionParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewQueryThirdPartySubscriptionParamsWithHTTPClient creates a new QueryThirdPartySubscriptionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryThirdPartySubscriptionParamsWithHTTPClient(client *http.Client) *QueryThirdPartySubscriptionParams {
	var (
		limitDefault  = int32(20)
		offsetDefault = int32(0)
	)
	return &QueryThirdPartySubscriptionParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*QueryThirdPartySubscriptionParams contains all the parameters to send to the API endpoint
for the query third party subscription operation typically these are written to a http.Request
*/
type QueryThirdPartySubscriptionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*ActiveOnly*/
	ActiveOnly *bool
	/*GroupID
	  if platform is Google, please pass google subscription product id. if platform is Apple, please pass apple subscription group id

	*/
	GroupID *string
	/*Limit
	    limit. <div style="border-left: 4px solid #ffc107; background-color: #fff8e1; padding: 10px; margin: 10px 0;">
	    For performance and stability reasons, it is recommended to keep the
	    <code>limit</code> value <strong>no greater than 100</strong>. Using higher values may lead to increased response times or degraded service performance.
	</div>


	*/
	Limit *int32
	/*Offset*/
	Offset *int32
	/*Platform*/
	Platform *string
	/*ProductID
	  if platform is Google, please pass google subscription plan id. if platform is Apple, please pass apple subscription product id

	*/
	ProductID *string
	/*UserID*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithTimeout(timeout time.Duration) *QueryThirdPartySubscriptionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithContext(ctx context.Context) *QueryThirdPartySubscriptionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithHTTPClient(client *http.Client) *QueryThirdPartySubscriptionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryThirdPartySubscriptionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithNamespace(namespace string) *QueryThirdPartySubscriptionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithActiveOnly adds the activeOnly to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithActiveOnly(activeOnly *bool) *QueryThirdPartySubscriptionParams {
	o.SetActiveOnly(activeOnly)
	return o
}

// SetActiveOnly adds the activeOnly to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetActiveOnly(activeOnly *bool) {
	o.ActiveOnly = activeOnly
}

// WithGroupID adds the groupID to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithGroupID(groupID *string) *QueryThirdPartySubscriptionParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetGroupID(groupID *string) {
	o.GroupID = groupID
}

// WithLimit adds the limit to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithLimit(limit *int32) *QueryThirdPartySubscriptionParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetLimit(limit *int32) {
	o.Limit = limit
}

// WithOffset adds the offset to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithOffset(offset *int32) *QueryThirdPartySubscriptionParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetOffset(offset *int32) {
	o.Offset = offset
}

// WithPlatform adds the platform to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithPlatform(platform *string) *QueryThirdPartySubscriptionParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WithProductID adds the productID to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithProductID(productID *string) *QueryThirdPartySubscriptionParams {
	o.SetProductID(productID)
	return o
}

// SetProductID adds the productId to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetProductID(productID *string) {
	o.ProductID = productID
}

// WithUserID adds the userID to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) WithUserID(userID *string) *QueryThirdPartySubscriptionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query third party subscription params
func (o *QueryThirdPartySubscriptionParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryThirdPartySubscriptionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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

	if o.UserID != nil {

		// query param userId
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("userId", qUserID); err != nil {
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
