// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package third_party_credential

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

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Params creates a new AdminCheckThirdPartyLoginPlatformAvailabilityV3Params object
// with the default values initialized.
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3Params() *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	var ()
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3ParamsWithTimeout creates a new AdminCheckThirdPartyLoginPlatformAvailabilityV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3ParamsWithTimeout(timeout time.Duration) *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	var ()
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3Params{

		timeout: timeout,
	}
}

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3ParamsWithContext creates a new AdminCheckThirdPartyLoginPlatformAvailabilityV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3ParamsWithContext(ctx context.Context) *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	var ()
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3Params{

		Context: ctx,
	}
}

// NewAdminCheckThirdPartyLoginPlatformAvailabilityV3ParamsWithHTTPClient creates a new AdminCheckThirdPartyLoginPlatformAvailabilityV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCheckThirdPartyLoginPlatformAvailabilityV3ParamsWithHTTPClient(client *http.Client) *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	var ()
	return &AdminCheckThirdPartyLoginPlatformAvailabilityV3Params{
		HTTPClient: client,
	}
}

/*AdminCheckThirdPartyLoginPlatformAvailabilityV3Params contains all the parameters to send to the API endpoint
for the admin check third party login platform availability v3 operation typically these are written to a http.Request
*/
type AdminCheckThirdPartyLoginPlatformAvailabilityV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) WithTimeout(timeout time.Duration) *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) WithContext(ctx context.Context) *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) WithHTTPClient(client *http.Client) *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) WithPlatformID(platformID string) *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the admin check third party login platform availability v3 params
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCheckThirdPartyLoginPlatformAvailabilityV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
