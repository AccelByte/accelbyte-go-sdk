// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package iap

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

// Get the enum in GetIAPItemMappingParams
const (
	GetIAPItemMappingAPPLEConstant       = "APPLE"
	GetIAPItemMappingEPICGAMESConstant   = "EPICGAMES"
	GetIAPItemMappingGOOGLEConstant      = "GOOGLE"
	GetIAPItemMappingOCULUSConstant      = "OCULUS"
	GetIAPItemMappingPLAYSTATIONConstant = "PLAYSTATION"
	GetIAPItemMappingSTADIAConstant      = "STADIA"
	GetIAPItemMappingSTEAMConstant       = "STEAM"
	GetIAPItemMappingTWITCHConstant      = "TWITCH"
	GetIAPItemMappingXBOXConstant        = "XBOX"
)

// NewGetIAPItemMappingParams creates a new GetIAPItemMappingParams object
// with the default values initialized.
func NewGetIAPItemMappingParams() *GetIAPItemMappingParams {
	var ()
	return &GetIAPItemMappingParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetIAPItemMappingParamsWithTimeout creates a new GetIAPItemMappingParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetIAPItemMappingParamsWithTimeout(timeout time.Duration) *GetIAPItemMappingParams {
	var ()
	return &GetIAPItemMappingParams{

		timeout: timeout,
	}
}

// NewGetIAPItemMappingParamsWithContext creates a new GetIAPItemMappingParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetIAPItemMappingParamsWithContext(ctx context.Context) *GetIAPItemMappingParams {
	var ()
	return &GetIAPItemMappingParams{

		Context: ctx,
	}
}

// NewGetIAPItemMappingParamsWithHTTPClient creates a new GetIAPItemMappingParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetIAPItemMappingParamsWithHTTPClient(client *http.Client) *GetIAPItemMappingParams {
	var ()
	return &GetIAPItemMappingParams{
		HTTPClient: client,
	}
}

/*GetIAPItemMappingParams contains all the parameters to send to the API endpoint
for the get iap item mapping operation typically these are written to a http.Request
*/
type GetIAPItemMappingParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Platform*/
	Platform *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get iap item mapping params
func (o *GetIAPItemMappingParams) WithTimeout(timeout time.Duration) *GetIAPItemMappingParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get iap item mapping params
func (o *GetIAPItemMappingParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get iap item mapping params
func (o *GetIAPItemMappingParams) WithContext(ctx context.Context) *GetIAPItemMappingParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get iap item mapping params
func (o *GetIAPItemMappingParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get iap item mapping params
func (o *GetIAPItemMappingParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get iap item mapping params
func (o *GetIAPItemMappingParams) WithHTTPClient(client *http.Client) *GetIAPItemMappingParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get iap item mapping params
func (o *GetIAPItemMappingParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get iap item mapping params
func (o *GetIAPItemMappingParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetIAPItemMappingParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get iap item mapping params
func (o *GetIAPItemMappingParams) WithNamespace(namespace string) *GetIAPItemMappingParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get iap item mapping params
func (o *GetIAPItemMappingParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatform adds the platform to the get iap item mapping params
func (o *GetIAPItemMappingParams) WithPlatform(platform *string) *GetIAPItemMappingParams {
	o.SetPlatform(platform)
	return o
}

// SetPlatform adds the platform to the get iap item mapping params
func (o *GetIAPItemMappingParams) SetPlatform(platform *string) {
	o.Platform = platform
}

// WriteToRequest writes these params to a swagger request
func (o *GetIAPItemMappingParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Platform != nil {

		// query param platform
		var qrPlatform string
		if o.Platform != nil {
			qrPlatform = *o.Platform
		}
		qPlatform := qrPlatform
		if qPlatform != "" {
			if err := r.SetQueryParam("platform", qPlatform); err != nil {
				return err
			}
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
