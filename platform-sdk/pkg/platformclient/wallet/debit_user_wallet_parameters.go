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

// NewDebitUserWalletParams creates a new DebitUserWalletParams object
// with the default values initialized.
func NewDebitUserWalletParams() *DebitUserWalletParams {
	var ()
	return &DebitUserWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDebitUserWalletParamsWithTimeout creates a new DebitUserWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDebitUserWalletParamsWithTimeout(timeout time.Duration) *DebitUserWalletParams {
	var ()
	return &DebitUserWalletParams{

		timeout: timeout,
	}
}

// NewDebitUserWalletParamsWithContext creates a new DebitUserWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewDebitUserWalletParamsWithContext(ctx context.Context) *DebitUserWalletParams {
	var ()
	return &DebitUserWalletParams{

		Context: ctx,
	}
}

// NewDebitUserWalletParamsWithHTTPClient creates a new DebitUserWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDebitUserWalletParamsWithHTTPClient(client *http.Client) *DebitUserWalletParams {
	var ()
	return &DebitUserWalletParams{
		HTTPClient: client,
	}
}

/*DebitUserWalletParams contains all the parameters to send to the API endpoint
for the debit user wallet operation typically these are written to a http.Request
*/
type DebitUserWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.DebitRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  userId

	*/
	UserID string
	/*WalletID*/
	WalletID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the debit user wallet params
func (o *DebitUserWalletParams) WithTimeout(timeout time.Duration) *DebitUserWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the debit user wallet params
func (o *DebitUserWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the debit user wallet params
func (o *DebitUserWalletParams) WithContext(ctx context.Context) *DebitUserWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the debit user wallet params
func (o *DebitUserWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the debit user wallet params
func (o *DebitUserWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the debit user wallet params
func (o *DebitUserWalletParams) WithHTTPClient(client *http.Client) *DebitUserWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the debit user wallet params
func (o *DebitUserWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the debit user wallet params
func (o *DebitUserWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the debit user wallet params
func (o *DebitUserWalletParams) WithBody(body *platformclientmodels.DebitRequest) *DebitUserWalletParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the debit user wallet params
func (o *DebitUserWalletParams) SetBody(body *platformclientmodels.DebitRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the debit user wallet params
func (o *DebitUserWalletParams) WithNamespace(namespace string) *DebitUserWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the debit user wallet params
func (o *DebitUserWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the debit user wallet params
func (o *DebitUserWalletParams) WithUserID(userID string) *DebitUserWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the debit user wallet params
func (o *DebitUserWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithWalletID adds the walletID to the debit user wallet params
func (o *DebitUserWalletParams) WithWalletID(walletID string) *DebitUserWalletParams {
	o.SetWalletID(walletID)
	return o
}

// SetWalletID adds the walletId to the debit user wallet params
func (o *DebitUserWalletParams) SetWalletID(walletID string) {
	o.WalletID = walletID
}

// WriteToRequest writes these params to a swagger request
func (o *DebitUserWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
