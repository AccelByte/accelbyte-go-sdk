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

// NewClearCacheParams creates a new ClearCacheParams object
// with the default values initialized.
func NewClearCacheParams() *ClearCacheParams {
	var ()
	return &ClearCacheParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewClearCacheParamsWithTimeout creates a new ClearCacheParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewClearCacheParamsWithTimeout(timeout time.Duration) *ClearCacheParams {
	var ()
	return &ClearCacheParams{

		timeout: timeout,
	}
}

// NewClearCacheParamsWithContext creates a new ClearCacheParams object
// with the default values initialized, and the ability to set a context for a request
func NewClearCacheParamsWithContext(ctx context.Context) *ClearCacheParams {
	var ()
	return &ClearCacheParams{

		Context: ctx,
	}
}

// NewClearCacheParamsWithHTTPClient creates a new ClearCacheParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewClearCacheParamsWithHTTPClient(client *http.Client) *ClearCacheParams {
	var ()
	return &ClearCacheParams{
		HTTPClient: client,
	}
}

/*ClearCacheParams contains all the parameters to send to the API endpoint
for the clear cache operation typically these are written to a http.Request
*/
type ClearCacheParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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

// WithTimeout adds the timeout to the clear cache params
func (o *ClearCacheParams) WithTimeout(timeout time.Duration) *ClearCacheParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the clear cache params
func (o *ClearCacheParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the clear cache params
func (o *ClearCacheParams) WithContext(ctx context.Context) *ClearCacheParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the clear cache params
func (o *ClearCacheParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the clear cache params
func (o *ClearCacheParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the clear cache params
func (o *ClearCacheParams) WithHTTPClient(client *http.Client) *ClearCacheParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the clear cache params
func (o *ClearCacheParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the clear cache params
func (o *ClearCacheParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ClearCacheParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the clear cache params
func (o *ClearCacheParams) WithNamespace(namespace string) *ClearCacheParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the clear cache params
func (o *ClearCacheParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ClearCacheParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
