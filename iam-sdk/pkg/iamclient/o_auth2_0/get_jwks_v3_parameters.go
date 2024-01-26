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

// NewGetJWKSV3Params creates a new GetJWKSV3Params object
// with the default values initialized.
func NewGetJWKSV3Params() *GetJWKSV3Params {
	var ()
	return &GetJWKSV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetJWKSV3ParamsWithTimeout creates a new GetJWKSV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetJWKSV3ParamsWithTimeout(timeout time.Duration) *GetJWKSV3Params {
	var ()
	return &GetJWKSV3Params{

		timeout: timeout,
	}
}

// NewGetJWKSV3ParamsWithContext creates a new GetJWKSV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewGetJWKSV3ParamsWithContext(ctx context.Context) *GetJWKSV3Params {
	var ()
	return &GetJWKSV3Params{

		Context: ctx,
	}
}

// NewGetJWKSV3ParamsWithHTTPClient creates a new GetJWKSV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetJWKSV3ParamsWithHTTPClient(client *http.Client) *GetJWKSV3Params {
	var ()
	return &GetJWKSV3Params{
		HTTPClient: client,
	}
}

/*GetJWKSV3Params contains all the parameters to send to the API endpoint
for the get jwksv3 operation typically these are written to a http.Request
*/
type GetJWKSV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get jwksv3 params
func (o *GetJWKSV3Params) WithTimeout(timeout time.Duration) *GetJWKSV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get jwksv3 params
func (o *GetJWKSV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get jwksv3 params
func (o *GetJWKSV3Params) WithContext(ctx context.Context) *GetJWKSV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get jwksv3 params
func (o *GetJWKSV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get jwksv3 params
func (o *GetJWKSV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get jwksv3 params
func (o *GetJWKSV3Params) WithHTTPClient(client *http.Client) *GetJWKSV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get jwksv3 params
func (o *GetJWKSV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get jwksv3 params
func (o *GetJWKSV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetJWKSV3Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetJWKSV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
