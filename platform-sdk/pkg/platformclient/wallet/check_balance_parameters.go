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

// NewCheckBalanceParams creates a new CheckBalanceParams object
// with the default values initialized.
func NewCheckBalanceParams() *CheckBalanceParams {
	var ()
	return &CheckBalanceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckBalanceParamsWithTimeout creates a new CheckBalanceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckBalanceParamsWithTimeout(timeout time.Duration) *CheckBalanceParams {
	var ()
	return &CheckBalanceParams{

		timeout: timeout,
	}
}

// NewCheckBalanceParamsWithContext creates a new CheckBalanceParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckBalanceParamsWithContext(ctx context.Context) *CheckBalanceParams {
	var ()
	return &CheckBalanceParams{

		Context: ctx,
	}
}

// NewCheckBalanceParamsWithHTTPClient creates a new CheckBalanceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckBalanceParamsWithHTTPClient(client *http.Client) *CheckBalanceParams {
	var ()
	return &CheckBalanceParams{
		HTTPClient: client,
	}
}

/*CheckBalanceParams contains all the parameters to send to the API endpoint
for the check balance operation typically these are written to a http.Request
*/
type CheckBalanceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Request*/
	Request *platformclientmodels.DebitByWalletPlatformRequest
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
}

// WithTimeout adds the timeout to the check balance params
func (o *CheckBalanceParams) WithTimeout(timeout time.Duration) *CheckBalanceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check balance params
func (o *CheckBalanceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check balance params
func (o *CheckBalanceParams) WithContext(ctx context.Context) *CheckBalanceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check balance params
func (o *CheckBalanceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check balance params
func (o *CheckBalanceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check balance params
func (o *CheckBalanceParams) WithHTTPClient(client *http.Client) *CheckBalanceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check balance params
func (o *CheckBalanceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check balance params
func (o *CheckBalanceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithRequest adds the request to the check balance params
func (o *CheckBalanceParams) WithRequest(request *platformclientmodels.DebitByWalletPlatformRequest) *CheckBalanceParams {
	o.SetRequest(request)
	return o
}

// SetRequest adds the request to the check balance params
func (o *CheckBalanceParams) SetRequest(request *platformclientmodels.DebitByWalletPlatformRequest) {
	o.Request = request
}

// WithCurrencyCode adds the currencyCode to the check balance params
func (o *CheckBalanceParams) WithCurrencyCode(currencyCode string) *CheckBalanceParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the check balance params
func (o *CheckBalanceParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the check balance params
func (o *CheckBalanceParams) WithNamespace(namespace string) *CheckBalanceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the check balance params
func (o *CheckBalanceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the check balance params
func (o *CheckBalanceParams) WithUserID(userID string) *CheckBalanceParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the check balance params
func (o *CheckBalanceParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CheckBalanceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
