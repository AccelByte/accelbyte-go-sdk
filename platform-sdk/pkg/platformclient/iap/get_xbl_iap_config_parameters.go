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

// NewGetXblIAPConfigParams creates a new GetXblIAPConfigParams object
// with the default values initialized.
func NewGetXblIAPConfigParams() *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetXblIAPConfigParamsWithTimeout creates a new GetXblIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetXblIAPConfigParamsWithTimeout(timeout time.Duration) *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{

		timeout: timeout,
	}
}

// NewGetXblIAPConfigParamsWithContext creates a new GetXblIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetXblIAPConfigParamsWithContext(ctx context.Context) *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{

		Context: ctx,
	}
}

// NewGetXblIAPConfigParamsWithHTTPClient creates a new GetXblIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetXblIAPConfigParamsWithHTTPClient(client *http.Client) *GetXblIAPConfigParams {
	var ()
	return &GetXblIAPConfigParams{
		HTTPClient: client,
	}
}

/*GetXblIAPConfigParams contains all the parameters to send to the API endpoint
for the get xbl iap config operation typically these are written to a http.Request
*/
type GetXblIAPConfigParams struct {

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

// WithTimeout adds the timeout to the get xbl iap config params
func (o *GetXblIAPConfigParams) WithTimeout(timeout time.Duration) *GetXblIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get xbl iap config params
func (o *GetXblIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get xbl iap config params
func (o *GetXblIAPConfigParams) WithContext(ctx context.Context) *GetXblIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get xbl iap config params
func (o *GetXblIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get xbl iap config params
func (o *GetXblIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get xbl iap config params
func (o *GetXblIAPConfigParams) WithHTTPClient(client *http.Client) *GetXblIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get xbl iap config params
func (o *GetXblIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get xbl iap config params
func (o *GetXblIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetXblIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get xbl iap config params
func (o *GetXblIAPConfigParams) WithNamespace(namespace string) *GetXblIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get xbl iap config params
func (o *GetXblIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetXblIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
