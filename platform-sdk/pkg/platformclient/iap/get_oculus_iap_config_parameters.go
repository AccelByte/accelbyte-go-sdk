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

// NewGetOculusIAPConfigParams creates a new GetOculusIAPConfigParams object
// with the default values initialized.
func NewGetOculusIAPConfigParams() *GetOculusIAPConfigParams {
	var ()
	return &GetOculusIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetOculusIAPConfigParamsWithTimeout creates a new GetOculusIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetOculusIAPConfigParamsWithTimeout(timeout time.Duration) *GetOculusIAPConfigParams {
	var ()
	return &GetOculusIAPConfigParams{

		timeout: timeout,
	}
}

// NewGetOculusIAPConfigParamsWithContext creates a new GetOculusIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetOculusIAPConfigParamsWithContext(ctx context.Context) *GetOculusIAPConfigParams {
	var ()
	return &GetOculusIAPConfigParams{

		Context: ctx,
	}
}

// NewGetOculusIAPConfigParamsWithHTTPClient creates a new GetOculusIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetOculusIAPConfigParamsWithHTTPClient(client *http.Client) *GetOculusIAPConfigParams {
	var ()
	return &GetOculusIAPConfigParams{
		HTTPClient: client,
	}
}

/*GetOculusIAPConfigParams contains all the parameters to send to the API endpoint
for the get oculus iap config operation typically these are written to a http.Request
*/
type GetOculusIAPConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get oculus iap config params
func (o *GetOculusIAPConfigParams) WithTimeout(timeout time.Duration) *GetOculusIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get oculus iap config params
func (o *GetOculusIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get oculus iap config params
func (o *GetOculusIAPConfigParams) WithContext(ctx context.Context) *GetOculusIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get oculus iap config params
func (o *GetOculusIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get oculus iap config params
func (o *GetOculusIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get oculus iap config params
func (o *GetOculusIAPConfigParams) WithHTTPClient(client *http.Client) *GetOculusIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get oculus iap config params
func (o *GetOculusIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get oculus iap config params
func (o *GetOculusIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetOculusIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get oculus iap config params
func (o *GetOculusIAPConfigParams) WithNamespace(namespace string) *GetOculusIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get oculus iap config params
func (o *GetOculusIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetOculusIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
