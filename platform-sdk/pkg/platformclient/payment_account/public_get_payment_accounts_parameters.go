// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_account

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

// NewPublicGetPaymentAccountsParams creates a new PublicGetPaymentAccountsParams object
// with the default values initialized.
func NewPublicGetPaymentAccountsParams() *PublicGetPaymentAccountsParams {
	var ()
	return &PublicGetPaymentAccountsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetPaymentAccountsParamsWithTimeout creates a new PublicGetPaymentAccountsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetPaymentAccountsParamsWithTimeout(timeout time.Duration) *PublicGetPaymentAccountsParams {
	var ()
	return &PublicGetPaymentAccountsParams{

		timeout: timeout,
	}
}

// NewPublicGetPaymentAccountsParamsWithContext creates a new PublicGetPaymentAccountsParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetPaymentAccountsParamsWithContext(ctx context.Context) *PublicGetPaymentAccountsParams {
	var ()
	return &PublicGetPaymentAccountsParams{

		Context: ctx,
	}
}

// NewPublicGetPaymentAccountsParamsWithHTTPClient creates a new PublicGetPaymentAccountsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetPaymentAccountsParamsWithHTTPClient(client *http.Client) *PublicGetPaymentAccountsParams {
	var ()
	return &PublicGetPaymentAccountsParams{
		HTTPClient: client,
	}
}

/*PublicGetPaymentAccountsParams contains all the parameters to send to the API endpoint
for the public get payment accounts operation typically these are written to a http.Request
*/
type PublicGetPaymentAccountsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) WithTimeout(timeout time.Duration) *PublicGetPaymentAccountsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) WithContext(ctx context.Context) *PublicGetPaymentAccountsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) WithHTTPClient(client *http.Client) *PublicGetPaymentAccountsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetPaymentAccountsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) WithNamespace(namespace string) *PublicGetPaymentAccountsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) WithUserID(userID string) *PublicGetPaymentAccountsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the public get payment accounts params
func (o *PublicGetPaymentAccountsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetPaymentAccountsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
