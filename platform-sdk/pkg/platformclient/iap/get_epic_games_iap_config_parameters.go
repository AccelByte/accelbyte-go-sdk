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

// NewGetEpicGamesIAPConfigParams creates a new GetEpicGamesIAPConfigParams object
// with the default values initialized.
func NewGetEpicGamesIAPConfigParams() *GetEpicGamesIAPConfigParams {
	var ()
	return &GetEpicGamesIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetEpicGamesIAPConfigParamsWithTimeout creates a new GetEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetEpicGamesIAPConfigParamsWithTimeout(timeout time.Duration) *GetEpicGamesIAPConfigParams {
	var ()
	return &GetEpicGamesIAPConfigParams{

		timeout: timeout,
	}
}

// NewGetEpicGamesIAPConfigParamsWithContext creates a new GetEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetEpicGamesIAPConfigParamsWithContext(ctx context.Context) *GetEpicGamesIAPConfigParams {
	var ()
	return &GetEpicGamesIAPConfigParams{

		Context: ctx,
	}
}

// NewGetEpicGamesIAPConfigParamsWithHTTPClient creates a new GetEpicGamesIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetEpicGamesIAPConfigParamsWithHTTPClient(client *http.Client) *GetEpicGamesIAPConfigParams {
	var ()
	return &GetEpicGamesIAPConfigParams{
		HTTPClient: client,
	}
}

/*GetEpicGamesIAPConfigParams contains all the parameters to send to the API endpoint
for the get epic games iap config operation typically these are written to a http.Request
*/
type GetEpicGamesIAPConfigParams struct {

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

// WithTimeout adds the timeout to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) WithTimeout(timeout time.Duration) *GetEpicGamesIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) WithContext(ctx context.Context) *GetEpicGamesIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) WithHTTPClient(client *http.Client) *GetEpicGamesIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetEpicGamesIAPConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) WithNamespace(namespace string) *GetEpicGamesIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get epic games iap config params
func (o *GetEpicGamesIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetEpicGamesIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
