// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth

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

// NewNamespaceScopedPlatformTokenGrantParams creates a new NamespaceScopedPlatformTokenGrantParams object
// with the default values initialized.
func NewNamespaceScopedPlatformTokenGrantParams() *NamespaceScopedPlatformTokenGrantParams {
	var ()
	return &NamespaceScopedPlatformTokenGrantParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewNamespaceScopedPlatformTokenGrantParamsWithTimeout creates a new NamespaceScopedPlatformTokenGrantParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewNamespaceScopedPlatformTokenGrantParamsWithTimeout(timeout time.Duration) *NamespaceScopedPlatformTokenGrantParams {
	var ()
	return &NamespaceScopedPlatformTokenGrantParams{

		timeout: timeout,
	}
}

// NewNamespaceScopedPlatformTokenGrantParamsWithContext creates a new NamespaceScopedPlatformTokenGrantParams object
// with the default values initialized, and the ability to set a context for a request
func NewNamespaceScopedPlatformTokenGrantParamsWithContext(ctx context.Context) *NamespaceScopedPlatformTokenGrantParams {
	var ()
	return &NamespaceScopedPlatformTokenGrantParams{

		Context: ctx,
	}
}

// NewNamespaceScopedPlatformTokenGrantParamsWithHTTPClient creates a new NamespaceScopedPlatformTokenGrantParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewNamespaceScopedPlatformTokenGrantParamsWithHTTPClient(client *http.Client) *NamespaceScopedPlatformTokenGrantParams {
	var ()
	return &NamespaceScopedPlatformTokenGrantParams{
		HTTPClient: client,
	}
}

/*NamespaceScopedPlatformTokenGrantParams contains all the parameters to send to the API endpoint
for the namespace scoped platform token grant operation typically these are written to a http.Request
*/
type NamespaceScopedPlatformTokenGrantParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string
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

// WithTimeout adds the timeout to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithTimeout(timeout time.Duration) *NamespaceScopedPlatformTokenGrantParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithContext(ctx context.Context) *NamespaceScopedPlatformTokenGrantParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithHTTPClient(client *http.Client) *NamespaceScopedPlatformTokenGrantParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *NamespaceScopedPlatformTokenGrantParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDeviceID adds the deviceID to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithDeviceID(deviceID *string) *NamespaceScopedPlatformTokenGrantParams {
	o.SetDeviceID(deviceID)
	return o
}

// SetDeviceID adds the deviceId to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetDeviceID(deviceID *string) {
	o.DeviceID = deviceID
}

// WithMacAddress adds the macAddress to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithMacAddress(macAddress *string) *NamespaceScopedPlatformTokenGrantParams {
	o.SetMacAddress(macAddress)
	return o
}

// SetMacAddress adds the macAddress to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetMacAddress(macAddress *string) {
	o.MacAddress = macAddress
}

// WithPlatformToken adds the platformToken to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithPlatformToken(platformToken *string) *NamespaceScopedPlatformTokenGrantParams {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetPlatformToken(platformToken *string) {
	o.PlatformToken = platformToken
}

// WithNamespace adds the namespace to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithNamespace(namespace string) *NamespaceScopedPlatformTokenGrantParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) WithPlatformID(platformID string) *NamespaceScopedPlatformTokenGrantParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the namespace scoped platform token grant params
func (o *NamespaceScopedPlatformTokenGrantParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *NamespaceScopedPlatformTokenGrantParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
