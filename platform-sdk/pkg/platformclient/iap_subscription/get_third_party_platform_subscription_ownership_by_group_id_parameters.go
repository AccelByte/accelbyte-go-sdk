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
)

// Deprecated: 2025-07-16 - Use GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatform<EnumValue>Constant instead.
// Get the enum in GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams
const (
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDAPPLEConstant       = "APPLE"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDEPICGAMESConstant   = "EPICGAMES"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDGOOGLEConstant      = "GOOGLE"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDOCULUSConstant      = "OCULUS"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPLAYSTATIONConstant = "PLAYSTATION"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDSTADIAConstant      = "STADIA"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDSTEAMConstant       = "STEAM"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDTWITCHConstant      = "TWITCH"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDXBOXConstant        = "XBOX"
)

// Get the enum in GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams
const (
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformAPPLEConstant       = "APPLE"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformEPICGAMESConstant   = "EPICGAMES"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformGOOGLEConstant      = "GOOGLE"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformOCULUSConstant      = "OCULUS"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformPLAYSTATIONConstant = "PLAYSTATION"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformSTADIAConstant      = "STADIA"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformSTEAMConstant       = "STEAM"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformTWITCHConstant      = "TWITCH"
	GetThirdPartyPlatformSubscriptionOwnershipByGroupIDPlatformXBOXConstant        = "XBOX"
)

// NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams creates a new GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams object
// with the default values initialized.
func NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams() *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParamsWithTimeout creates a new GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParamsWithTimeout(timeout time.Duration) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams{

		timeout: timeout,
	}
}

// NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParamsWithContext creates a new GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParamsWithContext(ctx context.Context) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams{

		Context: ctx,
	}
}

// NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParamsWithHTTPClient creates a new GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetThirdPartyPlatformSubscriptionOwnershipByGroupIDParamsWithHTTPClient(client *http.Client) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams{
		HTTPClient: client,
	}
}

/*GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams contains all the parameters to send to the API endpoint
for the get third party platform subscription ownership by group id operation typically these are written to a http.Request
*/
type GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Platform*/
	Platform string
	/*UserID*/
	UserID string
	/*GroupID
	  if platform is Google, please pass google subscription product id. if platform is Apple, please pass apple subscription group id

	*/
	GroupID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WithTimeout(timeout time.Duration) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WithContext(ctx context.Context) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WithHTTPClient(client *http.Client) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WithNamespace(namespace string) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WithPlatform(platform string) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WithUserID adds the userID to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WithUserID(userID string) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithGroupID adds the groupID to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WithGroupID(groupID string) *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get third party platform subscription ownership by group id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WriteToRequest writes these params to a swagger request
func (o *GetThirdPartyPlatformSubscriptionOwnershipByGroupIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platform
	if err := r.SetPathParam("platform", o.Platform); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
	}

	// query param groupId
	qrGroupID := o.GroupID
	qGroupID := qrGroupID
	if qGroupID != "" {
		if err := r.SetQueryParam("groupId", qGroupID); err != nil {
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
