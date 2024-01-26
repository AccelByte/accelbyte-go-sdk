// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package wallet

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

// Get the enum in ResetPlatformWalletConfigParams
const (
	ResetPlatformWalletConfigEpicConstant        = "Epic"
	ResetPlatformWalletConfigGooglePlayConstant  = "GooglePlay"
	ResetPlatformWalletConfigIOSConstant         = "IOS"
	ResetPlatformWalletConfigNintendoConstant    = "Nintendo"
	ResetPlatformWalletConfigOculusConstant      = "Oculus"
	ResetPlatformWalletConfigOtherConstant       = "Other"
	ResetPlatformWalletConfigPlaystationConstant = "Playstation"
	ResetPlatformWalletConfigSteamConstant       = "Steam"
	ResetPlatformWalletConfigXboxConstant        = "Xbox"
)

// NewResetPlatformWalletConfigParams creates a new ResetPlatformWalletConfigParams object
// with the default values initialized.
func NewResetPlatformWalletConfigParams() *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewResetPlatformWalletConfigParamsWithTimeout creates a new ResetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewResetPlatformWalletConfigParamsWithTimeout(timeout time.Duration) *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{

		timeout: timeout,
	}
}

// NewResetPlatformWalletConfigParamsWithContext creates a new ResetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewResetPlatformWalletConfigParamsWithContext(ctx context.Context) *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{

		Context: ctx,
	}
}

// NewResetPlatformWalletConfigParamsWithHTTPClient creates a new ResetPlatformWalletConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewResetPlatformWalletConfigParamsWithHTTPClient(client *http.Client) *ResetPlatformWalletConfigParams {
	var ()
	return &ResetPlatformWalletConfigParams{
		HTTPClient: client,
	}
}

/*ResetPlatformWalletConfigParams contains all the parameters to send to the API endpoint
for the reset platform wallet config operation typically these are written to a http.Request
*/
type ResetPlatformWalletConfigParams struct {

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

// WithTimeout adds the timeout to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithTimeout(timeout time.Duration) *ResetPlatformWalletConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithContext(ctx context.Context) *ResetPlatformWalletConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithHTTPClient(client *http.Client) *ResetPlatformWalletConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ResetPlatformWalletConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithNamespace(namespace string) *ResetPlatformWalletConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) WithPlatform(platform string) *ResetPlatformWalletConfigParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the reset platform wallet config params
func (o *ResetPlatformWalletConfigParams) SetPlatform(platform string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *ResetPlatformWalletConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
