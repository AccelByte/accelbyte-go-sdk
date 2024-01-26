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

// NewPublicGetWalletParams creates a new PublicGetWalletParams object
// with the default values initialized.
func NewPublicGetWalletParams() *PublicGetWalletParams {
	var ()
	return &PublicGetWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetWalletParamsWithTimeout creates a new PublicGetWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetWalletParamsWithTimeout(timeout time.Duration) *PublicGetWalletParams {
	var ()
	return &PublicGetWalletParams{

		timeout: timeout,
	}
}

// NewPublicGetWalletParamsWithContext creates a new PublicGetWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetWalletParamsWithContext(ctx context.Context) *PublicGetWalletParams {
	var ()
	return &PublicGetWalletParams{

		Context: ctx,
	}
}

// NewPublicGetWalletParamsWithHTTPClient creates a new PublicGetWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetWalletParamsWithHTTPClient(client *http.Client) *PublicGetWalletParams {
	var ()
	return &PublicGetWalletParams{
		HTTPClient: client,
	}
}

/*PublicGetWalletParams contains all the parameters to send to the API endpoint
for the public get wallet operation typically these are written to a http.Request
*/
type PublicGetWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*CurrencyCode*/
	CurrencyCode string
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get wallet params
func (o *PublicGetWalletParams) WithTimeout(timeout time.Duration) *PublicGetWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get wallet params
func (o *PublicGetWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get wallet params
func (o *PublicGetWalletParams) WithContext(ctx context.Context) *PublicGetWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get wallet params
func (o *PublicGetWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get wallet params
func (o *PublicGetWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get wallet params
func (o *PublicGetWalletParams) WithHTTPClient(client *http.Client) *PublicGetWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get wallet params
func (o *PublicGetWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get wallet params
func (o *PublicGetWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetWalletParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCurrencyCode adds the currencyCode to the public get wallet params
func (o *PublicGetWalletParams) WithCurrencyCode(currencyCode string) *PublicGetWalletParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the public get wallet params
func (o *PublicGetWalletParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the public get wallet params
func (o *PublicGetWalletParams) WithNamespace(namespace string) *PublicGetWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get wallet params
func (o *PublicGetWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get wallet params
func (o *PublicGetWalletParams) WithUserID(userID string) *PublicGetWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get wallet params
func (o *PublicGetWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param currencyCode
	if err := r.SetPathParam("currencyCode", o.CurrencyCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
