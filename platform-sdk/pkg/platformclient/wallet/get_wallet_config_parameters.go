// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package wallet

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

// NewGetWalletConfigParams creates a new GetWalletConfigParams object
// with the default values initialized.
func NewGetWalletConfigParams() *GetWalletConfigParams {
	var ()
	return &GetWalletConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetWalletConfigParamsWithTimeout creates a new GetWalletConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetWalletConfigParamsWithTimeout(timeout time.Duration) *GetWalletConfigParams {
	var ()
	return &GetWalletConfigParams{

		timeout: timeout,
	}
}

// NewGetWalletConfigParamsWithContext creates a new GetWalletConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetWalletConfigParamsWithContext(ctx context.Context) *GetWalletConfigParams {
	var ()
	return &GetWalletConfigParams{

		Context: ctx,
	}
}

// NewGetWalletConfigParamsWithHTTPClient creates a new GetWalletConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetWalletConfigParamsWithHTTPClient(client *http.Client) *GetWalletConfigParams {
	var ()
	return &GetWalletConfigParams{
		HTTPClient: client,
	}
}

/*GetWalletConfigParams contains all the parameters to send to the API endpoint
for the get wallet config operation typically these are written to a http.Request
*/
type GetWalletConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get wallet config params
func (o *GetWalletConfigParams) WithTimeout(timeout time.Duration) *GetWalletConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get wallet config params
func (o *GetWalletConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get wallet config params
func (o *GetWalletConfigParams) WithContext(ctx context.Context) *GetWalletConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get wallet config params
func (o *GetWalletConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get wallet config params
func (o *GetWalletConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get wallet config params
func (o *GetWalletConfigParams) WithHTTPClient(client *http.Client) *GetWalletConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get wallet config params
func (o *GetWalletConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get wallet config params
func (o *GetWalletConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetWalletConfigParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get wallet config params
func (o *GetWalletConfigParams) WithNamespace(namespace string) *GetWalletConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get wallet config params
func (o *GetWalletConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetWalletConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
