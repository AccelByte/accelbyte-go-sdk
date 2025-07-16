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

// Deprecated: 2025-07-16 - Use GetPlatformEntitlementConfigPlatform<EnumValue>Constant instead.
// Get the enum in GetPlatformEntitlementConfigParams
const (
	GetPlatformEntitlementConfigEpicConstant        = "Epic"
	GetPlatformEntitlementConfigGooglePlayConstant  = "GooglePlay"
	GetPlatformEntitlementConfigIOSConstant         = "IOS"
	GetPlatformEntitlementConfigNintendoConstant    = "Nintendo"
	GetPlatformEntitlementConfigOculusConstant      = "Oculus"
	GetPlatformEntitlementConfigOtherConstant       = "Other"
	GetPlatformEntitlementConfigPlaystationConstant = "Playstation"
	GetPlatformEntitlementConfigSteamConstant       = "Steam"
	GetPlatformEntitlementConfigXboxConstant        = "Xbox"
)

// Get the enum in GetPlatformEntitlementConfigParams
const (
	GetPlatformEntitlementConfigPlatformEpicConstant        = "Epic"
	GetPlatformEntitlementConfigPlatformGooglePlayConstant  = "GooglePlay"
	GetPlatformEntitlementConfigPlatformIOSConstant         = "IOS"
	GetPlatformEntitlementConfigPlatformNintendoConstant    = "Nintendo"
	GetPlatformEntitlementConfigPlatformOculusConstant      = "Oculus"
	GetPlatformEntitlementConfigPlatformOtherConstant       = "Other"
	GetPlatformEntitlementConfigPlatformPlaystationConstant = "Playstation"
	GetPlatformEntitlementConfigPlatformSteamConstant       = "Steam"
	GetPlatformEntitlementConfigPlatformXboxConstant        = "Xbox"
)

// NewGetPlatformEntitlementConfigParams creates a new GetPlatformEntitlementConfigParams object
// with the default values initialized.
func NewGetPlatformEntitlementConfigParams() *GetPlatformEntitlementConfigParams {
	var ()
	return &GetPlatformEntitlementConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPlatformEntitlementConfigParamsWithTimeout creates a new GetPlatformEntitlementConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPlatformEntitlementConfigParamsWithTimeout(timeout time.Duration) *GetPlatformEntitlementConfigParams {
	var ()
	return &GetPlatformEntitlementConfigParams{

		timeout: timeout,
	}
}

// NewGetPlatformEntitlementConfigParamsWithContext creates a new GetPlatformEntitlementConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPlatformEntitlementConfigParamsWithContext(ctx context.Context) *GetPlatformEntitlementConfigParams {
	var ()
	return &GetPlatformEntitlementConfigParams{

		Context: ctx,
	}
}

// NewGetPlatformEntitlementConfigParamsWithHTTPClient creates a new GetPlatformEntitlementConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPlatformEntitlementConfigParamsWithHTTPClient(client *http.Client) *GetPlatformEntitlementConfigParams {
	var ()
	return &GetPlatformEntitlementConfigParams{
		HTTPClient: client,
	}
}

/*GetPlatformEntitlementConfigParams contains all the parameters to send to the API endpoint
for the get platform entitlement config operation typically these are written to a http.Request
*/
type GetPlatformEntitlementConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*Platform*/
	Platform string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) WithTimeout(timeout time.Duration) *GetPlatformEntitlementConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) WithContext(ctx context.Context) *GetPlatformEntitlementConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) WithHTTPClient(client *http.Client) *GetPlatformEntitlementConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetPlatformEntitlementConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) WithNamespace(namespace string) *GetPlatformEntitlementConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) WithPlatform(platform string) *GetPlatformEntitlementConfigParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get platform entitlement config params
func (o *GetPlatformEntitlementConfigParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *GetPlatformEntitlementConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
