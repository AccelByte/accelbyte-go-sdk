// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package config

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

// NewPublicGetSystemConfigV3Params creates a new PublicGetSystemConfigV3Params object
// with the default values initialized.
func NewPublicGetSystemConfigV3Params() *PublicGetSystemConfigV3Params {
	var ()
	return &PublicGetSystemConfigV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetSystemConfigV3ParamsWithTimeout creates a new PublicGetSystemConfigV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetSystemConfigV3ParamsWithTimeout(timeout time.Duration) *PublicGetSystemConfigV3Params {
	var ()
	return &PublicGetSystemConfigV3Params{

		timeout: timeout,
	}
}

// NewPublicGetSystemConfigV3ParamsWithContext creates a new PublicGetSystemConfigV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetSystemConfigV3ParamsWithContext(ctx context.Context) *PublicGetSystemConfigV3Params {
	var ()
	return &PublicGetSystemConfigV3Params{

		Context: ctx,
	}
}

// NewPublicGetSystemConfigV3ParamsWithHTTPClient creates a new PublicGetSystemConfigV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetSystemConfigV3ParamsWithHTTPClient(client *http.Client) *PublicGetSystemConfigV3Params {
	var ()
	return &PublicGetSystemConfigV3Params{
		HTTPClient: client,
	}
}

/*PublicGetSystemConfigV3Params contains all the parameters to send to the API endpoint
for the public get system config v3 operation typically these are written to a http.Request
*/
type PublicGetSystemConfigV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) WithTimeout(timeout time.Duration) *PublicGetSystemConfigV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) WithContext(ctx context.Context) *PublicGetSystemConfigV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) WithHTTPClient(client *http.Client) *PublicGetSystemConfigV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get system config v3 params
func (o *PublicGetSystemConfigV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetSystemConfigV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetSystemConfigV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
