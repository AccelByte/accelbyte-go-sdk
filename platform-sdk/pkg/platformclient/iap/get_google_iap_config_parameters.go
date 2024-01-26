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

// NewGetGoogleIAPConfigParams creates a new GetGoogleIAPConfigParams object
// with the default values initialized.
func NewGetGoogleIAPConfigParams() *GetGoogleIAPConfigParams {
	var ()
	return &GetGoogleIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGoogleIAPConfigParamsWithTimeout creates a new GetGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGoogleIAPConfigParamsWithTimeout(timeout time.Duration) *GetGoogleIAPConfigParams {
	var ()
	return &GetGoogleIAPConfigParams{

		timeout: timeout,
	}
}

// NewGetGoogleIAPConfigParamsWithContext creates a new GetGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGoogleIAPConfigParamsWithContext(ctx context.Context) *GetGoogleIAPConfigParams {
	var ()
	return &GetGoogleIAPConfigParams{

		Context: ctx,
	}
}

// NewGetGoogleIAPConfigParamsWithHTTPClient creates a new GetGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGoogleIAPConfigParamsWithHTTPClient(client *http.Client) *GetGoogleIAPConfigParams {
	var ()
	return &GetGoogleIAPConfigParams{
		HTTPClient: client,
	}
}

/*GetGoogleIAPConfigParams contains all the parameters to send to the API endpoint
for the get google iap config operation typically these are written to a http.Request
*/
type GetGoogleIAPConfigParams struct {

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

// WithTimeout adds the timeout to the get google iap config params
func (o *GetGoogleIAPConfigParams) WithTimeout(timeout time.Duration) *GetGoogleIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get google iap config params
func (o *GetGoogleIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get google iap config params
func (o *GetGoogleIAPConfigParams) WithContext(ctx context.Context) *GetGoogleIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get google iap config params
func (o *GetGoogleIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get google iap config params
func (o *GetGoogleIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get google iap config params
func (o *GetGoogleIAPConfigParams) WithHTTPClient(client *http.Client) *GetGoogleIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get google iap config params
func (o *GetGoogleIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get google iap config params
func (o *GetGoogleIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGoogleIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get google iap config params
func (o *GetGoogleIAPConfigParams) WithNamespace(namespace string) *GetGoogleIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get google iap config params
func (o *GetGoogleIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetGoogleIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
