// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0

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

// NewPlatformTokenGrantV3Params creates a new PlatformTokenGrantV3Params object
// with the default values initialized.
func NewPlatformTokenGrantV3Params() *PlatformTokenGrantV3Params {
	var (
		createHeadlessDefault = bool(true)
		skipSetCookieDefault  = bool(false)
	)
	return &PlatformTokenGrantV3Params{
		CreateHeadless: &createHeadlessDefault,
		SkipSetCookie:  &skipSetCookieDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformTokenGrantV3ParamsWithTimeout creates a new PlatformTokenGrantV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformTokenGrantV3ParamsWithTimeout(timeout time.Duration) *PlatformTokenGrantV3Params {
	var (
		createHeadlessDefault = bool(true)
		skipSetCookieDefault  = bool(false)
	)
	return &PlatformTokenGrantV3Params{
		CreateHeadless: &createHeadlessDefault,
		SkipSetCookie:  &skipSetCookieDefault,

		timeout: timeout,
	}
}

// NewPlatformTokenGrantV3ParamsWithContext creates a new PlatformTokenGrantV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformTokenGrantV3ParamsWithContext(ctx context.Context) *PlatformTokenGrantV3Params {
	var (
		createHeadlessDefault = bool(true)
		skipSetCookieDefault  = bool(false)
	)
	return &PlatformTokenGrantV3Params{
		CreateHeadless: &createHeadlessDefault,
		SkipSetCookie:  &skipSetCookieDefault,

		Context: ctx,
	}
}

// NewPlatformTokenGrantV3ParamsWithHTTPClient creates a new PlatformTokenGrantV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformTokenGrantV3ParamsWithHTTPClient(client *http.Client) *PlatformTokenGrantV3Params {
	var (
		createHeadlessDefault = bool(true)
		skipSetCookieDefault  = bool(false)
	)
	return &PlatformTokenGrantV3Params{
		CreateHeadless: &createHeadlessDefault,
		SkipSetCookie:  &skipSetCookieDefault,
		HTTPClient:     client,
	}
}

/*PlatformTokenGrantV3Params contains all the parameters to send to the API endpoint
for the platform token grant v3 operation typically these are written to a http.Request
*/
type PlatformTokenGrantV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AdditionalData
	  Additional info, it will be passed to login success event.

	*/
	AdditionalData *string
	/*ClientID
	  Client ID, only accept UUID version 4 without hyphen

	*/
	ClientID *string
	/*CreateHeadless
	  If directly create new account when not linked yet

	*/
	CreateHeadless *bool
	/*DeviceID
	  Device/hardware identifier

	*/
	DeviceID *string
	/*MacAddress
	  Mac address of device

	*/
	MacAddress *string
	/*PlatformToken
	  Token from platform auth

	*/
	PlatformToken *string
	/*ServiceLabel
	  Service label, it's used to validate PSN app when set AppId on ps5/ps4

	*/
	ServiceLabel *float64
	/*SkipSetCookie
	  If need skip set cookie. Default is false

	*/
	SkipSetCookie *bool
	/*PlatformID
	  Platform ID to login with

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithTimeout(timeout time.Duration) *PlatformTokenGrantV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithContext(ctx context.Context) *PlatformTokenGrantV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithHTTPClient(client *http.Client) *PlatformTokenGrantV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PlatformTokenGrantV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAdditionalData adds the additionalData to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithAdditionalData(additionalData *string) *PlatformTokenGrantV3Params {
	o.SetAdditionalData(additionalData)
	return o
}

// SetAdditionalData adds the additionalData to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetAdditionalData(additionalData *string) {
	o.AdditionalData = additionalData
}

// WithClientID adds the clientID to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithClientID(clientID *string) *PlatformTokenGrantV3Params {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetClientID(clientID *string) {
	o.ClientID = clientID
}

// WithCreateHeadless adds the createHeadless to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithCreateHeadless(createHeadless *bool) *PlatformTokenGrantV3Params {
	o.SetCreateHeadless(createHeadless)
	return o
}

// SetCreateHeadless adds the createHeadless to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetCreateHeadless(createHeadless *bool) {
	o.CreateHeadless = createHeadless
}

// WithDeviceID adds the deviceID to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithDeviceID(deviceID *string) *PlatformTokenGrantV3Params {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetDeviceID(deviceID *string) {
	o.DeviceID = deviceID
}

// WithMacAddress adds the macAddress to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithMacAddress(macAddress *string) *PlatformTokenGrantV3Params {
	o.SetMacAddress(macAddress)
	return o
}

// SetMacAddress adds the macAddress to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetMacAddress(macAddress *string) {
	o.MacAddress = macAddress
}

// WithPlatformToken adds the platformToken to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithPlatformToken(platformToken *string) *PlatformTokenGrantV3Params {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetPlatformToken(platformToken *string) {
	o.PlatformToken = platformToken
}

// WithServiceLabel adds the serviceLabel to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithServiceLabel(serviceLabel *float64) *PlatformTokenGrantV3Params {
	o.SetServiceLabel(serviceLabel)
	return o
}

// SetServiceLabel adds the serviceLabel to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetServiceLabel(serviceLabel *float64) {
	o.ServiceLabel = serviceLabel
}

// WithSkipSetCookie adds the skipSetCookie to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithSkipSetCookie(skipSetCookie *bool) *PlatformTokenGrantV3Params {
	o.SetSkipSetCookie(skipSetCookie)
	return o
}

// SetSkipSetCookie adds the skipSetCookie to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetSkipSetCookie(skipSetCookie *bool) {
	o.SkipSetCookie = skipSetCookie
}

// WithPlatformID adds the platformID to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) WithPlatformID(platformID string) *PlatformTokenGrantV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform token grant v3 params
func (o *PlatformTokenGrantV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformTokenGrantV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AdditionalData != nil {

		// form param additionalData
		var frAdditionalData string
		if o.AdditionalData != nil {
			frAdditionalData = *o.AdditionalData
		}
		fAdditionalData := frAdditionalData
		if fAdditionalData != "" {
			if err := r.SetFormParam("additionalData", fAdditionalData); err != nil {
				return err
			}
		}

	}

	if o.ClientID != nil {

		// form param client_id
		var frClientID string
		if o.ClientID != nil {
			frClientID = *o.ClientID
		}
		fClientID := frClientID
		if fClientID != "" {
			if err := r.SetFormParam("client_id", fClientID); err != nil {
				return err
			}
		}

	}

	if o.CreateHeadless != nil {

		// form param createHeadless
		var frCreateHeadless bool
		if o.CreateHeadless != nil {
			frCreateHeadless = *o.CreateHeadless
		}
		fCreateHeadless := swag.FormatBool(frCreateHeadless)
		if fCreateHeadless != "" {
			if err := r.SetFormParam("createHeadless", fCreateHeadless); err != nil {
				return err
			}
		}

	}

	if o.DeviceID != nil {

		// form param device_id
		var frDeviceID string
		if o.DeviceID != nil {
			frDeviceID = *o.DeviceID
		}
		fDeviceID := frDeviceID
		if fDeviceID != "" {
			if err := r.SetFormParam("device_id", fDeviceID); err != nil {
				return err
			}
		}

	}

	if o.MacAddress != nil {

		// form param macAddress
		var frMacAddress string
		if o.MacAddress != nil {
			frMacAddress = *o.MacAddress
		}
		fMacAddress := frMacAddress
		if fMacAddress != "" {
			if err := r.SetFormParam("macAddress", fMacAddress); err != nil {
				return err
			}
		}

	}

	if o.PlatformToken != nil {

		// form param platform_token
		var frPlatformToken string
		if o.PlatformToken != nil {
			frPlatformToken = *o.PlatformToken
		}
		fPlatformToken := frPlatformToken
		if fPlatformToken != "" {
			if err := r.SetFormParam("platform_token", fPlatformToken); err != nil {
				return err
			}
		}

	}

	if o.ServiceLabel != nil {

		// form param serviceLabel
		var frServiceLabel float64
		if o.ServiceLabel != nil {
			frServiceLabel = *o.ServiceLabel
		}
		fServiceLabel := frServiceLabel
		if fServiceLabel != "" {
			if err := r.SetFormParam("serviceLabel", fServiceLabel); err != nil {
				return err
			}
		}

	}

	if o.SkipSetCookie != nil {

		// form param skipSetCookie
		var frSkipSetCookie bool
		if o.SkipSetCookie != nil {
			frSkipSetCookie = *o.SkipSetCookie
		}
		fSkipSetCookie := swag.FormatBool(frSkipSetCookie)
		if fSkipSetCookie != "" {
			if err := r.SetFormParam("skipSetCookie", fSkipSetCookie); err != nil {
				return err
			}
		}

	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
