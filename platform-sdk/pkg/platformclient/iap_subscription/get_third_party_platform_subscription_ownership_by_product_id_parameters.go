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

// Get the enum in GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams
const (
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDAPPLEConstant       = "APPLE"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDEPICGAMESConstant   = "EPICGAMES"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDGOOGLEConstant      = "GOOGLE"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDOCULUSConstant      = "OCULUS"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDPLAYSTATIONConstant = "PLAYSTATION"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDSTADIAConstant      = "STADIA"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDSTEAMConstant       = "STEAM"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDTWITCHConstant      = "TWITCH"
	GetThirdPartyPlatformSubscriptionOwnershipByProductIDXBOXConstant        = "XBOX"
)

// NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParams creates a new GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams object
// with the default values initialized.
func NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParams() *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParamsWithTimeout creates a new GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParamsWithTimeout(timeout time.Duration) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams{

		timeout: timeout,
	}
}

// NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParamsWithContext creates a new GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParamsWithContext(ctx context.Context) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams{

		Context: ctx,
	}
}

// NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParamsWithHTTPClient creates a new GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetThirdPartyPlatformSubscriptionOwnershipByProductIDParamsWithHTTPClient(client *http.Client) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	var ()
	return &GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams{
		HTTPClient: client,
	}
}

/*GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams contains all the parameters to send to the API endpoint
for the get third party platform subscription ownership by product id operation typically these are written to a http.Request
*/
type GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Platform*/
	Platform string
	/*UserID*/
	UserID string
	/*ProductID
	  if platform is Google, please pass google subscription plan id. if platform is Apple, please pass apple subscription product id

	*/
	ProductID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WithTimeout(timeout time.Duration) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WithContext(ctx context.Context) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WithHTTPClient(client *http.Client) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WithNamespace(namespace string) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WithPlatform(platform string) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WithUserID adds the userID to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WithUserID(userID string) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithProductID adds the productID to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WithProductID(productID string) *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams {
	o.SetProductID(productID)
	return o
}

// SetProductID adds the productId to the get third party platform subscription ownership by product id params
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) SetProductID(productID string) {
	o.ProductID = productID
}

// WriteToRequest writes these params to a swagger request
func (o *GetThirdPartyPlatformSubscriptionOwnershipByProductIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param productId
	qrProductID := o.ProductID
	qProductID := qrProductID
	if qProductID != "" {
		if err := r.SetQueryParam("productId", qProductID); err != nil {
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
