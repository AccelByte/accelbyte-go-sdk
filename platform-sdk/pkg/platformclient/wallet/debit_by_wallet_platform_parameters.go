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

// NewDebitByWalletPlatformParams creates a new DebitByWalletPlatformParams object
// with the default values initialized.
func NewDebitByWalletPlatformParams() *DebitByWalletPlatformParams {
	var ()
	return &DebitByWalletPlatformParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDebitByWalletPlatformParamsWithTimeout creates a new DebitByWalletPlatformParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDebitByWalletPlatformParamsWithTimeout(timeout time.Duration) *DebitByWalletPlatformParams {
	var ()
	return &DebitByWalletPlatformParams{

		timeout: timeout,
	}
}

// NewDebitByWalletPlatformParamsWithContext creates a new DebitByWalletPlatformParams object
// with the default values initialized, and the ability to set a context for a request
func NewDebitByWalletPlatformParamsWithContext(ctx context.Context) *DebitByWalletPlatformParams {
	var ()
	return &DebitByWalletPlatformParams{

		Context: ctx,
	}
}

// NewDebitByWalletPlatformParamsWithHTTPClient creates a new DebitByWalletPlatformParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDebitByWalletPlatformParamsWithHTTPClient(client *http.Client) *DebitByWalletPlatformParams {
	var ()
	return &DebitByWalletPlatformParams{
		HTTPClient: client,
	}
}

/*DebitByWalletPlatformParams contains all the parameters to send to the API endpoint
for the debit by wallet platform operation typically these are written to a http.Request
*/
type DebitByWalletPlatformParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Request*/
	Request *platformclientmodels.DebitByWalletPlatformRequest
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
}

// WithTimeout adds the timeout to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) WithTimeout(timeout time.Duration) *DebitByWalletPlatformParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) WithContext(ctx context.Context) *DebitByWalletPlatformParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) WithHTTPClient(client *http.Client) *DebitByWalletPlatformParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithRequest adds the request to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) WithRequest(request *platformclientmodels.DebitByWalletPlatformRequest) *DebitByWalletPlatformParams {
	o.SetRequest(request)
	return o
}

// SetRequest adds the request to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetRequest(request *platformclientmodels.DebitByWalletPlatformRequest) {
	o.Request = request
}

// WithCurrencyCode adds the currencyCode to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) WithCurrencyCode(currencyCode string) *DebitByWalletPlatformParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) WithNamespace(namespace string) *DebitByWalletPlatformParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) WithUserID(userID string) *DebitByWalletPlatformParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the debit by wallet platform params
func (o *DebitByWalletPlatformParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *DebitByWalletPlatformParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Request != nil {
		if err := r.SetBodyParam(o.Request); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
