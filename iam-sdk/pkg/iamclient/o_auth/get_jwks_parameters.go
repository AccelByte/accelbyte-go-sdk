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

// NewGetJWKSParams creates a new GetJWKSParams object
// with the default values initialized.
func NewGetJWKSParams() *GetJWKSParams {
	var ()
	return &GetJWKSParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetJWKSParamsWithTimeout creates a new GetJWKSParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetJWKSParamsWithTimeout(timeout time.Duration) *GetJWKSParams {
	var ()
	return &GetJWKSParams{

		timeout: timeout,
	}
}

// NewGetJWKSParamsWithContext creates a new GetJWKSParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetJWKSParamsWithContext(ctx context.Context) *GetJWKSParams {
	var ()
	return &GetJWKSParams{

		Context: ctx,
	}
}

// NewGetJWKSParamsWithHTTPClient creates a new GetJWKSParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetJWKSParamsWithHTTPClient(client *http.Client) *GetJWKSParams {
	var ()
	return &GetJWKSParams{
		HTTPClient: client,
	}
}

/*GetJWKSParams contains all the parameters to send to the API endpoint
for the get jwks operation typically these are written to a http.Request
*/
type GetJWKSParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get jwks params
func (o *GetJWKSParams) WithTimeout(timeout time.Duration) *GetJWKSParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get jwks params
func (o *GetJWKSParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get jwks params
func (o *GetJWKSParams) WithContext(ctx context.Context) *GetJWKSParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get jwks params
func (o *GetJWKSParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get jwks params
func (o *GetJWKSParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get jwks params
func (o *GetJWKSParams) WithHTTPClient(client *http.Client) *GetJWKSParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get jwks params
func (o *GetJWKSParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get jwks params
func (o *GetJWKSParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetJWKSParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WriteToRequest writes these params to a swagger request
func (o *GetJWKSParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
