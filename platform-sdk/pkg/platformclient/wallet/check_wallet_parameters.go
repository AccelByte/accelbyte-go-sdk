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

// Get the enum in CheckWalletParams
const (
	CheckWalletEpicConstant        = "Epic"
	CheckWalletGooglePlayConstant  = "GooglePlay"
	CheckWalletIOSConstant         = "IOS"
	CheckWalletNintendoConstant    = "Nintendo"
	CheckWalletOtherConstant       = "Other"
	CheckWalletPlaystationConstant = "Playstation"
	CheckWalletSteamConstant       = "Steam"
	CheckWalletSystemConstant      = "System"
	CheckWalletTwitchConstant      = "Twitch"
	CheckWalletXboxConstant        = "Xbox"
)

// NewCheckWalletParams creates a new CheckWalletParams object
// with the default values initialized.
func NewCheckWalletParams() *CheckWalletParams {
	var ()
	return &CheckWalletParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCheckWalletParamsWithTimeout creates a new CheckWalletParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCheckWalletParamsWithTimeout(timeout time.Duration) *CheckWalletParams {
	var ()
	return &CheckWalletParams{

		timeout: timeout,
	}
}

// NewCheckWalletParamsWithContext creates a new CheckWalletParams object
// with the default values initialized, and the ability to set a context for a request
func NewCheckWalletParamsWithContext(ctx context.Context) *CheckWalletParams {
	var ()
	return &CheckWalletParams{

		Context: ctx,
	}
}

// NewCheckWalletParamsWithHTTPClient creates a new CheckWalletParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCheckWalletParamsWithHTTPClient(client *http.Client) *CheckWalletParams {
	var ()
	return &CheckWalletParams{
		HTTPClient: client,
	}
}

/*CheckWalletParams contains all the parameters to send to the API endpoint
for the check wallet operation typically these are written to a http.Request
*/
type CheckWalletParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
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
	/*Origin*/
	Origin string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the check wallet params
func (o *CheckWalletParams) WithTimeout(timeout time.Duration) *CheckWalletParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the check wallet params
func (o *CheckWalletParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the check wallet params
func (o *CheckWalletParams) WithContext(ctx context.Context) *CheckWalletParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the check wallet params
func (o *CheckWalletParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the check wallet params
func (o *CheckWalletParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the check wallet params
func (o *CheckWalletParams) WithHTTPClient(client *http.Client) *CheckWalletParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the check wallet params
func (o *CheckWalletParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the check wallet params
func (o *CheckWalletParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCurrencyCode adds the currencyCode to the check wallet params
func (o *CheckWalletParams) WithCurrencyCode(currencyCode string) *CheckWalletParams {
	o.SetCurrencyCode(currencyCode)
	return o
}

// SetCurrencyCode adds the currencyCode to the check wallet params
func (o *CheckWalletParams) SetCurrencyCode(currencyCode string) {
	o.CurrencyCode = currencyCode
}

// WithNamespace adds the namespace to the check wallet params
func (o *CheckWalletParams) WithNamespace(namespace string) *CheckWalletParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the check wallet params
func (o *CheckWalletParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the check wallet params
func (o *CheckWalletParams) WithUserID(userID string) *CheckWalletParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the check wallet params
func (o *CheckWalletParams) SetUserID(userID string) {
	o.UserID = userID
}

// WithOrigin adds the origin to the check wallet params
func (o *CheckWalletParams) WithOrigin(origin string) *CheckWalletParams {
	o.SetOrigin(origin)
	return o
}

// SetOrigin adds the origin to the check wallet params
func (o *CheckWalletParams) SetOrigin(origin string) {
	o.Origin = origin
}

// WriteToRequest writes these params to a swagger request
func (o *CheckWalletParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// query param origin
	qrOrigin := o.Origin
	qOrigin := qrOrigin
	if qOrigin != "" {
		if err := r.SetQueryParam("origin", qOrigin); err != nil {
			return err
		}
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
