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

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewDebitUserWalletByCurrencyCodeParams creates a new DebitUserWalletByCurrencyCodeParams object
// with the default values initialized.
func NewDebitUserWalletByCurrencyCodeParams() *DebitUserWalletByCurrencyCodeParams {
	var ()
	return &DebitUserWalletByCurrencyCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDebitUserWalletByCurrencyCodeParamsWithTimeout creates a new DebitUserWalletByCurrencyCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDebitUserWalletByCurrencyCodeParamsWithTimeout(timeout time.Duration) *DebitUserWalletByCurrencyCodeParams {
	var ()
	return &DebitUserWalletByCurrencyCodeParams{

		timeout: timeout,
	}
}

// NewDebitUserWalletByCurrencyCodeParamsWithContext creates a new DebitUserWalletByCurrencyCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewDebitUserWalletByCurrencyCodeParamsWithContext(ctx context.Context) *DebitUserWalletByCurrencyCodeParams {
	var ()
	return &DebitUserWalletByCurrencyCodeParams{

		Context: ctx,
	}
}

// NewDebitUserWalletByCurrencyCodeParamsWithHTTPClient creates a new DebitUserWalletByCurrencyCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDebitUserWalletByCurrencyCodeParamsWithHTTPClient(client *http.Client) *DebitUserWalletByCurrencyCodeParams {
	var ()
	return &DebitUserWalletByCurrencyCodeParams{
		HTTPClient: client,
	}
}

/*DebitUserWalletByCurrencyCodeParams contains all the parameters to send to the API endpoint
for the debit user wallet by currency code operation typically these are written to a http.Request
*/
type DebitUserWalletByCurrencyCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.DebitByCurrencyCodeRequest
	/*CurrencyCode*/
	CurrencyCode string
	/*Namespace
	  namespace

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

// WithTimeout adds the timeout to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) WithTimeout(timeout time.Duration) *DebitUserWalletByCurrencyCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) WithContext(ctx context.Context) *DebitUserWalletByCurrencyCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) WithHTTPClient(client *http.Client) *DebitUserWalletByCurrencyCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DebitUserWalletByCurrencyCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) WithBody(body *platformclientmodels.DebitByCurrencyCodeRequest) *DebitUserWalletByCurrencyCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetBody(body *platformclientmodels.DebitByCurrencyCodeRequest) {
	o.Body = body
}

// WithCurrencyCode adds the currencyCode to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) WithCurrencyCode(currencyCode string) *DebitUserWalletByCurrencyCodeParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) WithNamespace(namespace string) *DebitUserWalletByCurrencyCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) WithUserID(userID string) *DebitUserWalletByCurrencyCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the debit user wallet by currency code params
func (o *DebitUserWalletByCurrencyCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DebitUserWalletByCurrencyCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
