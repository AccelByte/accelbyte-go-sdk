// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package o_auth2_0_extension

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

// NewPlatformTokenRefreshV3Params creates a new PlatformTokenRefreshV3Params object
// with the default values initialized.
func NewPlatformTokenRefreshV3Params() *PlatformTokenRefreshV3Params {
	var ()
	return &PlatformTokenRefreshV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPlatformTokenRefreshV3ParamsWithTimeout creates a new PlatformTokenRefreshV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPlatformTokenRefreshV3ParamsWithTimeout(timeout time.Duration) *PlatformTokenRefreshV3Params {
	var ()
	return &PlatformTokenRefreshV3Params{

		timeout: timeout,
	}
}

// NewPlatformTokenRefreshV3ParamsWithContext creates a new PlatformTokenRefreshV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPlatformTokenRefreshV3ParamsWithContext(ctx context.Context) *PlatformTokenRefreshV3Params {
	var ()
	return &PlatformTokenRefreshV3Params{

		Context: ctx,
	}
}

// NewPlatformTokenRefreshV3ParamsWithHTTPClient creates a new PlatformTokenRefreshV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPlatformTokenRefreshV3ParamsWithHTTPClient(client *http.Client) *PlatformTokenRefreshV3Params {
	var ()
	return &PlatformTokenRefreshV3Params{
		HTTPClient: client,
	}
}

/*PlatformTokenRefreshV3Params contains all the parameters to send to the API endpoint
for the platform token refresh v3 operation typically these are written to a http.Request
*/
type PlatformTokenRefreshV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*PlatformToken
	  Platform Token

	*/
	PlatformToken string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) WithTimeout(timeout time.Duration) *PlatformTokenRefreshV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) WithContext(ctx context.Context) *PlatformTokenRefreshV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) WithHTTPClient(client *http.Client) *PlatformTokenRefreshV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PlatformTokenRefreshV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformToken adds the platformToken to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) WithPlatformToken(platformToken string) *PlatformTokenRefreshV3Params {
	o.SetPlatformToken(platformToken)
	return o
}

// SetPlatformToken adds the platformToken to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) SetPlatformToken(platformToken string) {
	o.PlatformToken = platformToken
}

// WithPlatformID adds the platformID to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) WithPlatformID(platformID string) *PlatformTokenRefreshV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the platform token refresh v3 params
func (o *PlatformTokenRefreshV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PlatformTokenRefreshV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param platform_token
	frPlatformToken := o.PlatformToken
	fPlatformToken := frPlatformToken
	if fPlatformToken != "" {
		if err := r.SetFormParam("platform_token", fPlatformToken); err != nil {
			return err
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
