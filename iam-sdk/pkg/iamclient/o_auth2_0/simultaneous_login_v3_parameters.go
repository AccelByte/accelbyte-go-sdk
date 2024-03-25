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
)

// Get the enum in SimultaneousLoginV3Params
const (
	SimultaneousLoginV3EpicgamesConstant = "epicgames"
	SimultaneousLoginV3SteamConstant     = "steam"
)

// NewSimultaneousLoginV3Params creates a new SimultaneousLoginV3Params object
// with the default values initialized.
func NewSimultaneousLoginV3Params() *SimultaneousLoginV3Params {
	var ()
	return &SimultaneousLoginV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewSimultaneousLoginV3ParamsWithTimeout creates a new SimultaneousLoginV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewSimultaneousLoginV3ParamsWithTimeout(timeout time.Duration) *SimultaneousLoginV3Params {
	var ()
	return &SimultaneousLoginV3Params{

		timeout: timeout,
	}
}

// NewSimultaneousLoginV3ParamsWithContext creates a new SimultaneousLoginV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewSimultaneousLoginV3ParamsWithContext(ctx context.Context) *SimultaneousLoginV3Params {
	var ()
	return &SimultaneousLoginV3Params{

		Context: ctx,
	}
}

// NewSimultaneousLoginV3ParamsWithHTTPClient creates a new SimultaneousLoginV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSimultaneousLoginV3ParamsWithHTTPClient(client *http.Client) *SimultaneousLoginV3Params {
	var ()
	return &SimultaneousLoginV3Params{
		HTTPClient: client,
	}
}

/*SimultaneousLoginV3Params contains all the parameters to send to the API endpoint
for the simultaneous login v3 operation typically these are written to a http.Request
*/
type SimultaneousLoginV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*SimultaneousPlatform
	  Simultaneous platform

	*/
	SimultaneousPlatform *string
	/*SimultaneousTicket
	  Simultaneous ticket, can be authCode,authTicket,authToken

	*/
	SimultaneousTicket *string
	/*NativePlatform
	  Native platform id

	*/
	NativePlatform string
	/*NativePlatformTicket
	  Native platform ticket

	*/
	NativePlatformTicket string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) WithTimeout(timeout time.Duration) *SimultaneousLoginV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) WithContext(ctx context.Context) *SimultaneousLoginV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) WithHTTPClient(client *http.Client) *SimultaneousLoginV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SimultaneousLoginV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithSimultaneousPlatform adds the simultaneousPlatform to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) WithSimultaneousPlatform(simultaneousPlatform *string) *SimultaneousLoginV3Params {
	o.SetSimultaneousPlatform(simultaneousPlatform)
	return o
}

// SetSimultaneousPlatform adds the simultaneousPlatform to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetSimultaneousPlatform(simultaneousPlatform *string) {
	o.SimultaneousPlatform = simultaneousPlatform
}

// WithSimultaneousTicket adds the simultaneousTicket to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) WithSimultaneousTicket(simultaneousTicket *string) *SimultaneousLoginV3Params {
	o.SetSimultaneousTicket(simultaneousTicket)
	return o
}

// SetSimultaneousTicket adds the simultaneousTicket to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetSimultaneousTicket(simultaneousTicket *string) {
	o.SimultaneousTicket = simultaneousTicket
}

// WithNativePlatform adds the nativePlatform to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) WithNativePlatform(nativePlatform string) *SimultaneousLoginV3Params {
	o.SetNativePlatform(nativePlatform)
	return o
}

// SetNativePlatform adds the nativePlatform to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetNativePlatform(nativePlatform string) {
	o.NativePlatform = nativePlatform
}

// WithNativePlatformTicket adds the nativePlatformTicket to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) WithNativePlatformTicket(nativePlatformTicket string) *SimultaneousLoginV3Params {
	o.SetNativePlatformTicket(nativePlatformTicket)
	return o
}

// SetNativePlatformTicket adds the nativePlatformTicket to the simultaneous login v3 params
func (o *SimultaneousLoginV3Params) SetNativePlatformTicket(nativePlatformTicket string) {
	o.NativePlatformTicket = nativePlatformTicket
}

// WriteToRequest writes these params to a swagger request
func (o *SimultaneousLoginV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.SimultaneousPlatform != nil {

		// form param simultaneousPlatform
		var frSimultaneousPlatform string
		if o.SimultaneousPlatform != nil {
			frSimultaneousPlatform = *o.SimultaneousPlatform
		}
		fSimultaneousPlatform := frSimultaneousPlatform
		if fSimultaneousPlatform != "" {
			if err := r.SetFormParam("simultaneousPlatform", fSimultaneousPlatform); err != nil {
				return err
			}
		}

	}

	if o.SimultaneousTicket != nil {

		// form param simultaneousTicket
		var frSimultaneousTicket string
		if o.SimultaneousTicket != nil {
			frSimultaneousTicket = *o.SimultaneousTicket
		}
		fSimultaneousTicket := frSimultaneousTicket
		if fSimultaneousTicket != "" {
			if err := r.SetFormParam("simultaneousTicket", fSimultaneousTicket); err != nil {
				return err
			}
		}

	}

	// form param nativePlatform
	frNativePlatform := o.NativePlatform
	fNativePlatform := frNativePlatform
	if fNativePlatform != "" {
		if err := r.SetFormParam("nativePlatform", fNativePlatform); err != nil {
			return err
		}
	}

	// form param nativePlatformTicket
	frNativePlatformTicket := o.NativePlatformTicket
	fNativePlatformTicket := frNativePlatformTicket
	if fNativePlatformTicket != "" {
		if err := r.SetFormParam("nativePlatformTicket", fNativePlatformTicket); err != nil {
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
