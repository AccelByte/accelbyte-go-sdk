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

// NewGetWalletParams creates a new GetWalletParams object
// with the default values initialized.
func NewGetWalletParams() *GetWalletParams {
	var ()
	return &GetWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetWalletParamsWithTimeout creates a new GetWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetWalletParamsWithTimeout(timeout time.Duration) *GetWalletParams {
	var ()
	return &GetWalletParams{

		timeout: timeout,
	}
}

// NewGetWalletParamsWithContext creates a new GetWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetWalletParamsWithContext(ctx context.Context) *GetWalletParams {
	var ()
	return &GetWalletParams{

		Context: ctx,
	}
}

// NewGetWalletParamsWithHTTPClient creates a new GetWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetWalletParamsWithHTTPClient(client *http.Client) *GetWalletParams {
	var ()
	return &GetWalletParams{
		HTTPClient: client,
	}
}

/*GetWalletParams contains all the parameters to send to the API endpoint
for the get wallet operation typically these are written to a http.Request
*/
type GetWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*WalletID*/
	WalletID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get wallet params
func (o *GetWalletParams) WithTimeout(timeout time.Duration) *GetWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get wallet params
func (o *GetWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get wallet params
func (o *GetWalletParams) WithContext(ctx context.Context) *GetWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get wallet params
func (o *GetWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get wallet params
func (o *GetWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get wallet params
func (o *GetWalletParams) WithHTTPClient(client *http.Client) *GetWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get wallet params
func (o *GetWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get wallet params
func (o *GetWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetWalletParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get wallet params
func (o *GetWalletParams) WithNamespace(namespace string) *GetWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get wallet params
func (o *GetWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithWalletID adds the walletID to the get wallet params
func (o *GetWalletParams) WithWalletID(walletID string) *GetWalletParams {
	o.SetWalletID(walletID)
	return o
}

// SetWalletID adds the walletId to the get wallet params
func (o *GetWalletParams) SetWalletID(walletID string) {
	o.WalletID = walletID
}

// WriteToRequest writes these params to a swagger request
func (o *GetWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param walletId
	if err := r.SetPathParam("walletId", o.WalletID); err != nil {
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
