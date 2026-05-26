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

// NewGetThirdPartyLoginPlatformDefaultsV3Params creates a new GetThirdPartyLoginPlatformDefaultsV3Params object
// with the default values initialized.
func NewGetThirdPartyLoginPlatformDefaultsV3Params() *GetThirdPartyLoginPlatformDefaultsV3Params {
	var ()
	return &GetThirdPartyLoginPlatformDefaultsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetThirdPartyLoginPlatformDefaultsV3ParamsWithTimeout creates a new GetThirdPartyLoginPlatformDefaultsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetThirdPartyLoginPlatformDefaultsV3ParamsWithTimeout(timeout time.Duration) *GetThirdPartyLoginPlatformDefaultsV3Params {
	var ()
	return &GetThirdPartyLoginPlatformDefaultsV3Params{

		timeout: timeout,
	}
}

// NewGetThirdPartyLoginPlatformDefaultsV3ParamsWithContext creates a new GetThirdPartyLoginPlatformDefaultsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetThirdPartyLoginPlatformDefaultsV3ParamsWithContext(ctx context.Context) *GetThirdPartyLoginPlatformDefaultsV3Params {
	var ()
	return &GetThirdPartyLoginPlatformDefaultsV3Params{

		Context: ctx,
	}
}

// NewGetThirdPartyLoginPlatformDefaultsV3ParamsWithHTTPClient creates a new GetThirdPartyLoginPlatformDefaultsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetThirdPartyLoginPlatformDefaultsV3ParamsWithHTTPClient(client *http.Client) *GetThirdPartyLoginPlatformDefaultsV3Params {
	var ()
	return &GetThirdPartyLoginPlatformDefaultsV3Params{
		HTTPClient: client,
	}
}

/*GetThirdPartyLoginPlatformDefaultsV3Params contains all the parameters to send to the API endpoint
for the get third party login platform defaults v3 operation typically these are written to a http.Request
*/
type GetThirdPartyLoginPlatformDefaultsV3Params struct {

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

// WithTimeout adds the timeout to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) WithTimeout(timeout time.Duration) *GetThirdPartyLoginPlatformDefaultsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) WithContext(ctx context.Context) *GetThirdPartyLoginPlatformDefaultsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) WithHTTPClient(client *http.Client) *GetThirdPartyLoginPlatformDefaultsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithPlatformID adds the platformID to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) WithPlatformID(platformID string) *GetThirdPartyLoginPlatformDefaultsV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the get third party login platform defaults v3 params
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *GetThirdPartyLoginPlatformDefaultsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
