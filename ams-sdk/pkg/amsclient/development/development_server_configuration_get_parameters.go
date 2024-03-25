// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package development

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

// NewDevelopmentServerConfigurationGetParams creates a new DevelopmentServerConfigurationGetParams object
// with the default values initialized.
func NewDevelopmentServerConfigurationGetParams() *DevelopmentServerConfigurationGetParams {
	var ()
	return &DevelopmentServerConfigurationGetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDevelopmentServerConfigurationGetParamsWithTimeout creates a new DevelopmentServerConfigurationGetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDevelopmentServerConfigurationGetParamsWithTimeout(timeout time.Duration) *DevelopmentServerConfigurationGetParams {
	var ()
	return &DevelopmentServerConfigurationGetParams{

		timeout: timeout,
	}
}

// NewDevelopmentServerConfigurationGetParamsWithContext creates a new DevelopmentServerConfigurationGetParams object
// with the default values initialized, and the ability to set a context for a request
func NewDevelopmentServerConfigurationGetParamsWithContext(ctx context.Context) *DevelopmentServerConfigurationGetParams {
	var ()
	return &DevelopmentServerConfigurationGetParams{

		Context: ctx,
	}
}

// NewDevelopmentServerConfigurationGetParamsWithHTTPClient creates a new DevelopmentServerConfigurationGetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDevelopmentServerConfigurationGetParamsWithHTTPClient(client *http.Client) *DevelopmentServerConfigurationGetParams {
	var ()
	return &DevelopmentServerConfigurationGetParams{
		HTTPClient: client,
	}
}

/*DevelopmentServerConfigurationGetParams contains all the parameters to send to the API endpoint
for the development server configuration get operation typically these are written to a http.Request
*/
type DevelopmentServerConfigurationGetParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*DevelopmentServerConfigID
	  the name of the development server configuration

	*/
	DevelopmentServerConfigID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) WithTimeout(timeout time.Duration) *DevelopmentServerConfigurationGetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) WithContext(ctx context.Context) *DevelopmentServerConfigurationGetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) WithHTTPClient(client *http.Client) *DevelopmentServerConfigurationGetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DevelopmentServerConfigurationGetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithDevelopmentServerConfigID adds the developmentServerConfigID to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) WithDevelopmentServerConfigID(developmentServerConfigID string) *DevelopmentServerConfigurationGetParams {
	o.SetDevelopmentServerConfigID(developmentServerConfigID)
	return o
}

// SetDevelopmentServerConfigID adds the developmentServerConfigId to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) SetDevelopmentServerConfigID(developmentServerConfigID string) {
	o.DevelopmentServerConfigID = developmentServerConfigID
}

// WithNamespace adds the namespace to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) WithNamespace(namespace string) *DevelopmentServerConfigurationGetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the development server configuration get params
func (o *DevelopmentServerConfigurationGetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DevelopmentServerConfigurationGetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param developmentServerConfigID
	if err := r.SetPathParam("developmentServerConfigID", o.DevelopmentServerConfigID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
