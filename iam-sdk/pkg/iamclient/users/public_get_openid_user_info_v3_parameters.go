// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicGetOpenidUserInfoV3Params creates a new PublicGetOpenidUserInfoV3Params object
// with the default values initialized.
func NewPublicGetOpenidUserInfoV3Params() *PublicGetOpenidUserInfoV3Params {
	var ()
	return &PublicGetOpenidUserInfoV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetOpenidUserInfoV3ParamsWithTimeout creates a new PublicGetOpenidUserInfoV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetOpenidUserInfoV3ParamsWithTimeout(timeout time.Duration) *PublicGetOpenidUserInfoV3Params {
	var ()
	return &PublicGetOpenidUserInfoV3Params{

		timeout: timeout,
	}
}

// NewPublicGetOpenidUserInfoV3ParamsWithContext creates a new PublicGetOpenidUserInfoV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetOpenidUserInfoV3ParamsWithContext(ctx context.Context) *PublicGetOpenidUserInfoV3Params {
	var ()
	return &PublicGetOpenidUserInfoV3Params{

		Context: ctx,
	}
}

// NewPublicGetOpenidUserInfoV3ParamsWithHTTPClient creates a new PublicGetOpenidUserInfoV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetOpenidUserInfoV3ParamsWithHTTPClient(client *http.Client) *PublicGetOpenidUserInfoV3Params {
	var ()
	return &PublicGetOpenidUserInfoV3Params{
		HTTPClient: client,
	}
}

/*PublicGetOpenidUserInfoV3Params contains all the parameters to send to the API endpoint
for the public get openid user info v3 operation typically these are written to a http.Request
*/
type PublicGetOpenidUserInfoV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) WithTimeout(timeout time.Duration) *PublicGetOpenidUserInfoV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) WithContext(ctx context.Context) *PublicGetOpenidUserInfoV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) WithHTTPClient(client *http.Client) *PublicGetOpenidUserInfoV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get openid user info v3 params
func (o *PublicGetOpenidUserInfoV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetOpenidUserInfoV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetOpenidUserInfoV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
